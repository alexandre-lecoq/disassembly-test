# Dune Game Disassembly

This repository contains disassembled x86 assembly code from the classic Dune game by Cryo Interactive (1992).

## Repository Contents

The repository contains four assembly files representing different sections of the disassembled Dune executable:

### Assembly Files

- **01.asm** (6,895 lines)
  - Contains CODE_0 segment (ram:1000:0000-ram:1000:f4af)
  - Main program entry point and core game functions
  - Includes initialization routines and primary game logic

- **02.asm** (5,763 lines)
  - Additional game functions and procedures
  - Memory management and utility routines

- **03.asm** (5,709 lines)
  - Game mechanics and algorithm implementations
  - Player interaction handling

- **04.asm** (6,858 lines)
  - Contains CODE_1 segment (ram:1f4b:0000-ram:1f4b:3cbb)
  - Data segment with game resources
  - File references and resource strings

## Technical Details

### Architecture
- **Platform**: x86 16-bit (MS-DOS)
- **Segment Model**: Multiple code and data segments
- **Addressing**: Real mode memory addressing

### Memory Organization
- **CODE_0**: Primary code segment at 0x1000
- **CODE_1**: Secondary code/data segment at 0x1f4b
- **Stack**: SS = 0x1f4b, SP = 0x3cbc (at entry)

### Game Resources Referenced

The disassembly reveals references to various game resource files:

#### Graphics Resources
- `TABLAT.BIN` - Table/tileset data
- `DNCHAR.BIN`, `DNCHAR2.BIN` - Character graphics
- `ICONES.HSQ` - Icon graphics

#### Location Data
- `SIET.SAL`, `SIET.LOP` - Sietch (Fremen village)
- `PALACE.SAL`, `PALACE.LOP`, `PALACE.HNM` - Palace locations
- `VILG.SAL` - Village data
- `HARK.SAL` - Harkonnen locations

#### Cutscenes & Media
- `PALACE.HNM` - Palace video sequence
- `PLANT.HNM` - Plant/spice video
- `CREDITS.HNM` - Credits sequence
- `PRESENT.HNM` - Presentation video
- `SEKENCE.HSQ` - Sequence data

#### Audio Resources
- `CRYOMUS.HSQ` - Cryo music
- `ARRAKIS.HSQ` - Arrakis theme
- `WARSONG.HSQ` - War music
- `MORNING.HSQ` - Morning theme
- `WATER.HSQ` - Water-related sounds
- `WORMSUIT.HSQ` - Stillsuit sounds
- `WORMINTR.HSQ` - Worm interaction sounds

#### Game Data
- `GLOBDATA.HSQ` - Global game data
- `DIALOGUE.HSQ` - Dialogue text
- `CONDIT.HSQ` - Conditions/logic
- `VER.BIN` - Version information
- `dune.dat` - Main game data
- `dune37s0.sav` - Save game format

#### Command & UI Resources
- `COMMAND1.HSQ` through `COMMAND7.HSQ` - Command interfaces
- `PHRASE11.HSQ`, `PHRASE32.HSQ` - Phrase/text data
- `GENERIC.HSQ` - Generic UI elements
- `PROUGE.HSQ` - Red/UI elements
- `BALCON.HSQ` - Balcony scenes

#### Special Locations
- `SERRE.HSQ` - Greenhouse/conservatory
- `PALPLAN.HSQ` - Palace plans
- `CHANKISS.HSQ` - Character kiss scenes
- `STARS.HSQ` - Starfield/space
- `MIRROR.HSQ` - Mirror scenes
- `PALAIS.HSQ` - Palace interiors
- `FINAL.HSQ` - Final sequence

## Disassembly Information

The code appears to have been disassembled using Ghidra or a similar reverse engineering tool, as evidenced by:
- Function naming convention (FUN_1000_xxxx)
- Cross-reference annotations (XREF)
- Undefined function signatures
- Memory address comments

### Key Functions Identified

- **Entry Point**: `entry()` at 1000:0000
- **Memory Management**: Various memory allocation and deallocation routines
- **File I/O**: DOS interrupt-based file operations (INT 0x21)
- **Graphics**: VGA/MCGA graphics routines
- **Sound**: Audio playback and music management
- **Game Logic**: State management, resource loading, and game mechanics

## Error Messages Found

The code includes various error handling messages:
- "Not enough standard memory for sounds"
- "Not enough standard memory for music"
- "Not enough standard memory to run Dune"
- "File not found: [filename]"

## Historical Context

**Dune** (1992) was an adventure-strategy game developed by Cryo Interactive and published by Virgin Games. It was based on Frank Herbert's science fiction novel "Dune" and preceded the more famous "Dune II" real-time strategy game by Westwood Studios.

The game combined:
- Adventure game elements with dialogue and exploration
- Strategic resource management (spice harvesting)
- Character interaction and diplomacy
- Real-time strategy elements

## Legal Notice

This repository contains disassembled code for educational and preservation purposes. The original game "Dune" is copyrighted by Cryo Interactive (now defunct) and Virgin Games. This disassembly is intended for:
- Educational study of classic game programming
- Software preservation
- Understanding historical game development techniques

**No game assets or executable files are included in this repository.**

## Documentation Files

The repository includes several documentation files that provide additional information about the disassembled code:

- **[functions.md](functions.md)** - Complete list of all 718 functions with addresses and auto-generated descriptions
- **[globalvars.md](globalvars.md)** - Documentation of global variables and their likely purposes
- **[globalvars.asm](globalvars.asm)** - Assembly declarations with named variables for all global variables in the code
- **[GLOBALVARS_SUMMARY.md](GLOBALVARS_SUMMARY.md)** - Summary of global variable naming conventions and organization
- **[strings.md](strings.md)** - Collection of all strings found in the code, including file names and resources

## File Format

All assembly files use:
- CRLF line endings (Windows/DOS style)
- ASCII text encoding
- Intel x86 assembly syntax
- Ghidra-style annotations and comments

## Contributing

If you identify game functions or data structures in the code, contributions documenting these findings are welcome.

## References

- Original Game: Dune (1992) by Cryo Interactive
- Platform: MS-DOS
- Publisher: Virgin Games
- Based on: "Dune" novel by Frank Herbert
