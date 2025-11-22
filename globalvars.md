# Global Variables

This document contains a table of global variables found in the disassembled code, along with their data types and likely meanings based on usage patterns.

## Global Variable Table

| Memory Address | Data Type | Access Count | Likely Meaning/Purpose |
|----------------|-----------|--------------|------------------------|
| 0x0002 | word | 19 | Frame counter or time variable (incremented, compared to values like 0x16c5) |
| 0x0004 | word | 22 | Coordinate or position variable (Y-axis or secondary position) |
| 0x0006 | word | 17 | Coordinate or position variable (likely X-axis or primary position) |
| 0x0008 | word | 9 | General purpose register backup or counter |
| 0x000a | byte | 7 | Status flag or configuration byte |
| 0x0010 | word | 10 | Bit mask or flags register |
| 0x0012 | word | 5 | Secondary bit mask or flags |
| 0x0014 | word | 4 | Tertiary bit mask or flags |
| 0x0016 | word | 4 | Counter or offset value |
| 0x0018 | byte | 7 | Configuration or state byte |
| 0x0019 | byte | 4 | Secondary state byte |
| 0x001a | byte | 4 | Tertiary state byte |
| 0x001b | byte | 4 | Quaternary state byte |
| 0x0023 | byte | 13 | Game state or level indicator (compared to values like 0x3, 0x4, 0x64) |
| 0x002a | byte | 36 | Score, health, or resource counter (most frequently accessed, values range 0x14-0xc8) |
| 0x002b | byte | 12 | Secondary status flag or game mode indicator |
| 0x0030 | byte | 7 | Configuration flag |
| 0x00c5 | byte | 7 | Mode or state flag |
| 0x00c6 | byte | 7 | Secondary mode flag |
| 0x00ea | byte | 12 | Entity counter or object index (compared to 0xe, 0xff) |
| 0x00fb | byte | 10 | Status or flag byte |
| 0x10a7 | byte | 6 | Hardware or configuration flag (tested with 0x10) |
| 0x114e | word | 20 | Pointer or index to data structure |
| 0x1150 | word | 7 | Secondary pointer or index |
| 0x1152 | byte | 6 | Entity slot or ID |
| 0x1153 | byte | 6 | Secondary entity slot or ID |
| 0x115a | word | 5 | Pointer or reference value |
| 0x11c5 | word | 11 | Coordinate or position value |
| 0x11c7 | byte | 8 | State or flag byte |
| 0x11c8 | byte | 6 | Secondary state byte |
| 0x11c9 | byte | 17 | Input/control state flag (frequently tested against 0) |
| 0x11ca | byte | 5 | Related control flag |
| 0x11cb | byte | 6 | Tertiary control flag |
| 0x11cc | word | 8 | Counter or accumulator |
| 0x11db | word | 8 | Pointer to entity or object |
| 0x11fd | word | 6 | Calculated or derived value |
| 0x197c | word | 6 | Save/restore position X coordinate |
| 0x197e | word | 10 | Save/restore position Y coordinate |
| 0x1980 | word | 8 | Backup coordinate X |
| 0x1982 | word | 8 | Backup coordinate Y |
| 0x1be4 | word | 8 | Graphics buffer pointer or offset |
| 0x1bea | word | 6 | Secondary buffer value |
| 0x1c06 | word | 7 | Display or rendering parameter |
| 0x227d | byte | 11 | Game mode or special state flag |
| 0x22a6 | word | 6 | Cached value or lookup result |
| 0x22d9 | byte | 8 | Status or configuration byte |
| 0x22fc | word | 8 | Graphics or screen buffer pointer (points to 0x4c60 area) |
| 0x2772 | word | 6 | Timer or sequence counter (values like 0x5555, 0xffff) |
| 0x28e7 | byte | 12 | Graphics mode or video mode flag (set to 0, 1) |
| 0x289e | byte | 4 | Configuration byte (set to 0x8c) |
| 0x3810 | byte | 7 | High memory flag or configuration |
| 0x46d7 | byte | 7 | Graphics/display state flag |
| 0x46d9 | byte | 11 | Graphics mode indicator |
| 0x46df | byte | 10 | Screen update flag |
| 0x46eb | byte | 32 | Major graphics/display mode flag (frequently checked) |
| 0x4728 | word | 10 | Graphics buffer or data pointer |
| 0x4731 | word | 8 | Display coordinate or offset |
| 0x4752 | word | 6 | Array or table pointer |
| 0x4774 | word | 8 | Data structure pointer |
| 0x4788 | word | 7 | Display dimension or offset |
| 0x4799 | byte | 8 | Graphics flags or state byte |
| 0x479e | word | 11 | Graphics context or mode identifier |
| 0x47a4 | byte | 8 | Graphics state flag |
| 0x47c2 | byte | 6 | Graphics configuration byte (set to 0x20, 0x80) |
| 0x47c4 | word | 35 | Current graphics context ID (frequently accessed, values 0x9-0x10, 0xffff) |
| 0x47ca | word | 7 | Pointer to graphics data |
| 0x47cc | word | 6 | Secondary graphics pointer |
| 0x47ce | byte | 7 | Graphics state byte |
| 0x47d0 | byte | 7 | Graphics parameter byte |
| 0x47d1 | byte | 8 | Graphics flags byte |
| 0x47de | word | 8 | Graphics coordinate or offset |
| 0x47e1 | word | 11 | Graphics state or flag word |
| 0x4c60 | buffer | - | Large graphics/screen buffer area (referenced by 0x22fc) |
| 0xce7a | word | 12 | Data table or array pointer |
| 0xce80 | byte | 4 | High memory initialization flag (set to 0xff) |
| 0xd824 | word | 6 | System parameter or hardware value |
| 0xd826 | word | 4 | Secondary system parameter |
| 0xd828 | word | 4 | Tertiary system parameter |
| 0xd82c | word | 8 | Display coordinate or position |
| 0xd83a | word | 6 | Coordinate or boundary value |
| 0xdbb0 | dword | 8 | Far pointer to data segment (segment:offset pair) |
| 0xdbb2 | word | 12 | Segment address for data |
| 0xdbcd | word | 9 | System configuration value |
| 0xdbd6 | word | 19 | Video segment address (commonly used with ES) |
| 0xdbd8 | word | 16 | Secondary video segment address |
| 0xdbda | word | 23 | Primary video segment address (most used video segment) |
| 0xdbde | word | 8 | Tertiary video segment address |
| 0xdbe4 | byte | 11 | Color or attribute byte for graphics |
| 0xdcfe | word | 4 | System or hardware parameter |
| 0xdc26 | word | 6 | Hardware configuration value |
| 0xdc42 | word | 6 | Mouse or cursor X coordinate |
| 0xdc44 | word | 6 | Mouse or cursor Y coordinate |
| 0xdc46 | byte | 4 | Mouse or cursor state flag |
| 0xdd00 | word | 8 | Segment address for extended data |

## Notes

### Memory Regions
- **0x0000-0x00ff**: Low memory area - frequently accessed variables, counters, coordinates, and flags
- **0x1000-0x1fff**: Mid memory area - entity data, control states, and pointers
- **0x2000-0x2fff**: High memory area - game state, configuration, and lookup tables
- **0x4000-0x4fff**: Graphics area - display buffers, graphics state, and video mode flags
- **0xce00-0xcfff**: High memory data - tables and arrays
- **0xd800-0xdfff**: System area - video segments, hardware parameters, and system configuration
- **0xdb00-0xdbff**: Segment addresses - far pointers and video memory segments

### Data Type Conventions
- **byte**: 8-bit value (AL, byte ptr)
- **word**: 16-bit value (AX, word ptr)
- **dword**: 32-bit value (segment:offset pairs)
- **buffer**: Large contiguous memory region

### Usage Patterns
Variables are categorized by their usage:
1. **Coordinates**: Pairs of X/Y values for positioning (0x0004/0x0006, 0x197c/0x197e)
2. **Flags**: Single byte or bit values for state tracking (0x002b, 0x11c9, 0x227d)
3. **Counters**: Values that increment or track quantities (0x0002, 0x002a, 0x00ea)
4. **Pointers**: Addresses or references to other data (0x114e, 0x11db, 0xdbb0)
5. **Segment Addresses**: Video and data segment selectors (0xdbb2, 0xdbd6, 0xdbda)
6. **Graphics State**: Display modes and rendering parameters (0x46eb, 0x47c4, 0x479e)

### Most Critical Variables
The most frequently accessed variables (indicating their importance to the program):
1. **0x002a** (36 accesses): Likely the primary game counter (score, health, or resources)
2. **0x47c4** (35 accesses): Current graphics context/mode
3. **0x46eb** (32 accesses): Main graphics mode flag
4. **0xdbda** (23 accesses): Primary video memory segment
5. **0x0004** (22 accesses): Secondary coordinate/position value

## Data Relationships
Several variables appear to work together as coordinate pairs or related state groups:
- **Position Coordinates**: 0x0004 (Y) and 0x0006 (X)
- **Saved Positions**: 0x197c/0x197e and 0x1980/0x1982
- **Video Segments**: 0xdbd6, 0xdbd8, 0xdbda, 0xdbde (multiple video buffers)
- **Graphics State**: 0x46d9, 0x46df, 0x46eb (display configuration)
- **Entity IDs**: 0x1152, 0x1153 (dual entity/slot system)
