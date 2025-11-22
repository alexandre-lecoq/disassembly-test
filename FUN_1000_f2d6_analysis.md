# Analysis of FUN_1000_f2d6

## Function Location
- **File**: 04.asm
- **Address**: `1000:f2d6`
- **Type**: `undefined __cdecl16near`

## Function Summary
`FUN_1000_f2d6` is a DOS file positioning function that seeks to a specified position in a file from the beginning. It wraps the DOS INT 21h function 42h (LSEEK) with AL=00h to set the file pointer.

## Low-Level Analysis

### Assembly Code
```asm
FUN_1000_f2d6                                   XREF[2]:     FUN_1000_e741:1000:e745(c), 
                                                             FUN_1000_f2a7:1000:f2d0(c)  
1000:f2d6 51              PUSH       CX           ; Save CX register (will be used for high word of offset)
1000:f2d7 36 8b 1e        MOV        BX,word ptr SS:[0xdbba]  ; Load file handle from SS:[0xdbba] into BX
          ba db
1000:f2dc 8b ca           MOV        CX,DX        ; Move DX (high word of offset) to CX
1000:f2de 8b d0           MOV        DX,AX        ; Move AX (low word of offset) to DX (now CX:DX = 32-bit offset)
1000:f2e0 b8 00 42        MOV        AX,0x4200    ; DOS function 42h: LSEEK, AL=00h (seek from beginning of file)
1000:f2e3 cd 21           INT        0x21         ; Call DOS interrupt
1000:f2e5 59              POP        CX           ; Restore CX register
1000:f2e6 c3              RET                     ; Return (DX:AX contains new file position)
```

### Parameter Passing (Low-Level View)

#### Input Parameters
The function expects the following parameters in registers before being called:

1. **AX register**: Low word (bits 0-15) of the 32-bit file offset
2. **DX register**: High word (bits 16-31) of the 32-bit file offset
3. **SS:[0xdbba]**: Memory location containing the DOS file handle (word/16-bit value)

#### Register Transformations
The function performs the following register manipulations:
1. **CX** is pushed onto the stack to preserve it
2. **BX** is loaded with the file handle from `SS:[0xdbba]`
3. **CX** receives the value from **DX** (high word of offset)
4. **DX** receives the value from **AX** (low word of offset)
5. **AX** is set to `0x4200` (DOS LSEEK function with seek from beginning)

#### DOS Interrupt Parameters
When `INT 0x21` is called:
- **AH** = 0x42 (LSEEK function)
- **AL** = 0x00 (seek mode: from beginning of file)
- **BX** = file handle
- **CX:DX** = 32-bit offset (CX = high word, DX = low word)

#### Return Values
After the DOS interrupt returns:
- **DX:AX** = new file position (32-bit value)
- **Carry Flag (CF)** = set if error occurred, clear if successful
- **AX** = error code if CF is set

## High-Level Analysis

### Function Purpose
`FUN_1000_f2d6` is a file seek wrapper that positions the file pointer at a specific absolute offset from the beginning of a file. This is essential for:
- Random access to file data
- Reading specific sections of files
- Positioning before read/write operations

### Call Sites and Context

#### Call Site 1: FUN_1000_e741 (at 1000:e745)

**Context**: Function `FUN_1000_e741` appears to be initializing or reading from a file at the start.

```asm
1000:e741 33 c0           XOR        AX,AX        ; AX = 0
1000:e743 33 d2           XOR        DX,DX        ; DX = 0
1000:e745 e8 8e 0b        CALL       FUN_1000_f2d6
```

**Parameters Passed**:
- **AX** = 0x0000 (low word of offset)
- **DX** = 0x0000 (high word of offset)
- **Combined offset** = 0x00000000 (offset 0)

**High-Level Interpretation**: This call seeks to the beginning of the file (offset 0). This is typically done to:
- Reset the file pointer to the start before reading
- Initialize file operations
- Restart reading from the beginning

**Parent Call Chain**:
- Called from `FUN_1000_e675` at `1000:e6a9` (after opening a file with DOS function 3Dh)
- Called from `FUN_1000_e826` at `1000:e82d` (appears to be a file processing function)

#### Call Site 2: FUN_1000_f2a7 (at 1000:f2d0)

**Context**: Function `FUN_1000_f2a7` appears to be accessing a data structure (possibly a file table or directory entry) stored in ES:DI.

```asm
1000:f2bc 33 c9           XOR        CX,CX        ; CX = 0
1000:f2be 26 8a 4d 05     MOV        CL,byte ptr ES:[DI + 0x5]  ; Load byte from structure at offset +5
1000:f2c2 8b e9           MOV        BP,CX        ; Save to BP
1000:f2c4 26 8b 4d 03     MOV        CX,word ptr ES:[DI + 0x3]  ; Load word from structure at offset +3
1000:f2c8 26 8b 45 06     MOV        AX,word ptr ES:[DI + 0x6]  ; Load word from structure at offset +6 into AX
1000:f2cc 26 8b 55 08     MOV        DX,word ptr ES:[DI + 0x8]  ; Load word from structure at offset +8 into DX
1000:f2d0 e8 03 00        CALL       FUN_1000_f2d6
```

**Parameters Passed**:
- **AX** = `word ptr ES:[DI + 0x6]` (low word of offset from structure)
- **DX** = `word ptr ES:[DI + 0x8]` (high word of offset from structure)
- **Combined offset** = 32-bit value stored at structure offsets +6 and +8

**High-Level Interpretation**: This call seeks to a position specified by a data structure, likely:
- A file allocation table (FAT) entry
- A directory entry with file position information
- An index or catalog entry pointing to specific file data

The structure being accessed appears to contain:
- Offset +3: Some count or size value (word)
- Offset +5: A byte value (possibly flags or type)
- Offset +6: Low word of file offset
- Offset +8: High word of file offset

**Parent Call Chain**:
- Called from `FUN_1000_f1fb` at `1000:f1fc`
- `FUN_1000_f1fb` is called from multiple locations including `FUN_1000_e675` and `FUN_1000_a90b`

### Data Structure Analysis

Based on the second call site, the data structure pointed to by ES:DI appears to be (at least 10 bytes):

```
Offset +0: Unknown (2 bytes, not accessed in this code path)
Offset +2: Unknown (1 byte, not accessed in this code path)
Offset +3: Word value (2 bytes) - possibly size or count (loaded into CX)
Offset +5: Byte value (1 byte) - possibly flags or type (loaded into BP via CL)
Offset +6: Word value (2 bytes) - low word of file offset (passed in AX)
Offset +8: Word value (2 bytes) - high word of file offset (passed in DX)
```

Note: The structure is at least 10 bytes long. Offsets +0 through +2 are not accessed in this particular code path but may be used elsewhere.

This structure is likely a file entry descriptor or resource catalog entry used by the game to locate data within resource files.

### Global Variable

**SS:[0xdbba]** - Global file handle storage
- This memory location stores the currently active file handle
- Set by file open operations (DOS function 3Dh)
- Used by all file I/O functions in this codebase
- Represents the "current file" being operated on

## Summary

### Low-Level Summary
`FUN_1000_f2d6` is a thin wrapper around DOS interrupt 21h, function 42h (LSEEK). It:
1. Takes a 32-bit offset as input parameters in AX:DX (AX = low word bits 0-15, DX = high word bits 16-31)
2. Retrieves the file handle from SS:[0xdbba]
3. Reorganizes registers to match DOS calling convention (CX:DX for offset, BX for handle)
4. Calls INT 21h with AX=0x4200 (seek from beginning)
5. Returns new file position in DX:AX (DX = high word, AX = low word)

### High-Level Summary
From a high-level perspective, `FUN_1000_f2d6` serves as the game's file positioning mechanism:

1. **First Usage (FUN_1000_e741)**: Seeks to offset 0 to reset the file pointer to the beginning, typically used after opening a file or when restarting a read operation.

2. **Second Usage (FUN_1000_f2a7)**: Seeks to a position specified by a data structure, suggesting the game uses an internal catalog or index system to locate specific data within resource files. This is common in games that pack multiple resources (graphics, sounds, etc.) into larger archive files.

The function is part of the game's resource management system, enabling random access to data stored in the game's various resource files (like the .HSQ, .SAL, and .BIN files mentioned in the readme).

## Related Functions

- **FUN_1000_e741**: File initialization function that seeks to offset 0
- **FUN_1000_f2a7**: Resource access function that uses structure-based offsets
- **FUN_1000_f2ea**: File read function (called after seek operations)
- **FUN_1000_f314**: Another file-related utility function
- **FUN_1000_f3a7**: Another file-related utility function
