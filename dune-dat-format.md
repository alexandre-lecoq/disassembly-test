# dune.dat Archive File Format

## Overview

`dune.dat` is the main archive file used by the 1992 Dune game by Cryo Interactive. It contains all game resources including graphics, sounds, dialogue, and game data in a custom packed archive format. The game reads the archive directory at startup and accesses individual files by seeking to their offsets within the archive.

## File Structure

The archive consists of two main sections:

1. **Archive Directory** - Located at the beginning of the file, contains metadata for all packed files
2. **File Data Section** - Contains the actual file data referenced by the directory

```
+------------------+
| Archive Header   | 2 bytes - Initial word (possibly entry count or offset)
+------------------+
| Directory Entry  | 25 bytes per entry
| Directory Entry  | 25 bytes per entry
| ...              |
| Directory Entry  | 25 bytes per entry
+------------------+
| End Marker       | 1 byte (0x00)
+------------------+
| File Data        | Variable size - actual file contents
| File Data        |
| ...              |
+------------------+
```

## Archive Directory Format

### Directory Header

The directory begins with a 2-byte word (little-endian) at offset 0x0000. Based on the assembly code analysis, this word is read but not actively used in the entry processing loop - the code immediately begins processing entries after reading it. Its purpose may be:
- A format version identifier
- A magic number for file type validation  
- Reserved for future use
- Simply skipped padding

The entries are processed sequentially until a 0x00 terminator byte is found, so the header word is not used as an entry count.

### Directory Entry Format

Each file in the archive is represented by a 25-byte (0x19) directory entry:

```
Offset  Size  Description
------  ----  -----------
0x00    16    Filename (null-terminated or special encoded format)
0x10     2    File ID (word) - Used for internal lookups
0x12     1    File metadata/type byte
0x13     1    Padding/Reserved byte
0x14     2    File offset in archive (low word)
0x16     2    File offset in archive (high word)
0x18     1    (Implied end of 25-byte structure)
```

**Total entry size: 25 bytes (0x19)**

### Filename Encoding

The archive supports two filename formats:

#### 1. Standard Format
Regular null-terminated ASCII filenames up to 16 characters, such as:
- `ICONES.HSQ`
- `DIALOGUE.HSQ`
- `PALACE.SAL`

#### 2. Encoded Format (Compressed)
Filenames starting with `\P` (0x5C50) use a special compressed encoding to save space:

**Format:** `\P` + `XX` + `T` + `HHH` + `F` + `N`

Where:
- `\P` (2 bytes): Magic prefix identifying encoded filename
- `XX` (2 bytes): Two bytes skipped by the decoder (at offset +2 and +3 of filename field)
  - Purpose undetermined from assembly analysis - may be file attributes, extended flags, or reserved space
  - The decoder simply skips them with `ADD SI,0x4` (skipping `\P` + these 2 bytes)
- `T` (1 byte): Type identifier (subtract 0x40 to get actual type)
- `HHH` (3 bytes): Three hexadecimal digits (0-9, A-F) forming a 12-bit file ID
  - Each character is converted: '0'-'9' → 0-9, 'A'-'F' → 10-15
  - Combined as: (digit1 << 8) | (digit2 << 4) | digit3
- `F` (1 byte): Flag byte (if equal to 'O'/0x4F, a flag bit is set)
- `N` (1 byte, optional): Upper nibble byte ('A'-'Z'), provides additional 4 bits to file ID
  - If present, converted: (byte - 0x41) << 4, added to upper byte of ID

**Example Decoding:**

Input: `\P??A123O ` (where ?? are two bytes that are skipped)
- Skip `\P` and 2 bytes
- Read 'A' (0x41), subtract 0x40 = 0x01 → Type = 1
- Read '1' → 1, '2' → 2, '3' → 3
- Combine: (1 << 8) | (2 << 4) | 3 = 0x0123
- Read 'O' (0x4F) → Flag is set (rotate into type byte)
- No upper nibble byte present (or non-letter)
- Result: File ID = 0x0123, Type = 1 (with flag)

This encoding allows the game to compress frequently-used internal file references.

### Directory Terminator

The directory entries are followed by a single 0x00 byte, marking the end of the directory section.

## In-Memory Directory Structure

When the game loads the archive, it processes the directory into an optimized in-memory format:

### Processed Entry Format (10 bytes)

```
Offset  Size  Description
------  ----  -----------
0x0      2    File ID (word) - Decoded from filename
0x2      1    File type/flags (byte) - From encoded filename or entry metadata
0x3      2    Metadata from archive entry offset 0x10
0x5      1    Metadata from archive entry offset 0x12
0x6      2    File offset in archive (low word) - from entry offset 0x14
0x8      2    File offset in archive (high word) - from entry offset 0x16
```

**Total processed entry size: 10 bytes (0x0A)**

## File Access Process

### Loading the Archive

1. **Open File:** The game opens `dune.dat` using DOS function 0x3D (read-only mode)
2. **Read Directory:** Reads up to 65535 bytes (0xFFFF) from the start of the file
   - This reads the entire directory section into memory
3. **Parse Entries:** Processes each 25-byte entry:
   - Decodes the filename (standard or compressed format)
   - Converts to a 10-byte in-memory entry
   - Stores in an indexed directory structure
4. **Build Index:** Creates a searchable index organized by file ID and type

### Accessing Individual Files

To read a file from the archive:

1. **Lookup Entry:** Search the in-memory directory by filename or file ID
2. **Seek to Offset:** Use DOS function 0x42 (LSEEK) with the 32-bit file offset
   - Offset comes from directory entry bytes +0x6 (low word) and +0x8 (high word)
3. **Read Data:** Read the file content from the current position
4. **Decompress (if needed):** Many files use .HSQ compression and are decompressed after reading

## Related Functions in Assembly Code

The archive format is handled by several key functions in `04.asm`:

- **FUN_1000_e675** (1000:e675) - Opens dune.dat and loads the directory
- **FUN_1000_e741** (1000:e741) - Reads archive directory from file start
- **FUN_1000_e75b** (1000:e75b) - Stores processed 10-byte directory entries
- **FUN_1000_f314** (1000:f314) - Parses and decodes filenames (both formats)
- **FUN_1000_f3a7** (1000:f3a7) - Searches directory for file entries
- **FUN_1000_f2a7** (1000:f2a7) - Seeks to file offset within archive
- **FUN_1000_f2d6** (1000:f2d6) - DOS LSEEK wrapper for file positioning
- **FUN_1000_f2ea** (1000:f2ea) - DOS read wrapper for reading file data

## Archive Contents

Based on the disassembly and file references, `dune.dat` contains numerous game resources:

### Graphics Resources
- Character graphics (DNCHAR.BIN, DNCHAR2.BIN)
- Icons (ICONES.HSQ)
- UI elements (COMMAND*.HSQ, GENERIC.HSQ)
- Location graphics (PALACE.HSQ, SERRE.HSQ, BALCON.HSQ)

### Audio Resources
- Music tracks (CRYOMUS.HSQ, ARRAKIS.HSQ, WARSONG.HSQ, MORNING.HSQ)
- Sound effects (WATER.HSQ, WORMSUIT.HSQ, WORMINTR.HSQ)

### Game Data
- Dialogue text (DIALOGUE.HSQ)
- Global game data (GLOBDATA.HSQ)
- Conditions/logic (CONDIT.HSQ)
- Sequence data (SEKENCE.HSQ)

### Location Data
- Sietch locations (SIET.SAL, SIET.LOP)
- Palace data (PALACE.SAL, PALACE.LOP)
- Village data (VILG.SAL)
- Harkonnen locations (HARK.SAL)

### Video Sequences
- Cutscenes (PALACE.HNM, PLANT.HNM, CREDITS.HNM, PRESENT.HNM)

See [readme.md](readme.md) for a complete list of game resources.

## Technical Notes

### Memory Management
- The archive file handle is stored at memory location [0xdbba]
- The directory base pointer is stored at [0xdbbc:0xdbbe] (segment:offset)
- Current directory end position is tracked at [0xd820]

### File Offset Storage
File offsets are stored as 32-bit little-endian values split into two 16-bit words:
- Low word (bits 0-15): Stored at entry offset +0x6
- High word (bits 16-31): Stored at entry offset +0x8
- Maximum supported file size: ~4 GB (though MS-DOS file size limits apply)

### Directory Size Limit
The directory is read with a maximum size of 65535 bytes (0xFFFF), which limits the total number of files that can be stored:
- Maximum theoretical entries: 65535 / 25 = 2621 files
- Practical limit is likely much lower due to the directory structure

### Filename Encoding Purpose
The `\P` encoded format appears designed to:
1. Save space in the directory (compressed filenames)
2. Provide efficient numeric lookups (file ID directly encoded)
3. Support internal resource references that don't need readable names

## Historical Context

The `dune.dat` archive format is typical of early 1990s game archives:
- Custom binary format optimized for the game's specific needs
- Directory-based random access (no sequential scanning required)
- Support for both human-readable and compressed internal references
- DOS-era file I/O patterns (file handles, LSEEK, etc.)

Similar archive formats were used by many MS-DOS games of the era to:
- Reduce file count on floppy disks
- Improve loading times (fewer file open operations)
- Provide some level of content protection
- Manage memory more efficiently

## See Also

- [FUN_1000_f2d6_analysis.md](FUN_1000_f2d6_analysis.md) - Detailed analysis of the file seek function
- [functions.md](functions.md) - Complete function reference
- [readme.md](readme.md) - Repository overview and game resources list
