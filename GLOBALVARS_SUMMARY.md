# Global Variables Summary

## Overview

This repository now includes named variable declarations for all global variables identified in the Dune game disassembly.

## Files Added

### globalvars.asm
A new assembly file containing:
- 94 named global variable declarations
- Organized by memory region (Low Memory, Mid Memory, High Memory, Graphics Area, System Area, etc.)
- Meaningful variable names derived from usage patterns
- Complete with data type specifications (byte, word, dword, buffer)
- Cross-reference annotations showing access counts

## Variable Naming Convention

Variables are named based on their observed purpose in the code:

### Examples:
- `frameCounter` (0x0002) - Frame counter or time variable
- `positionX` (0x0006) - X-axis coordinate
- `positionY` (0x0004) - Y-axis coordinate  
- `resourceCounter` (0x002a) - Most frequently accessed (36 times), likely score/health/resources
- `displayModeFlag` (0x46eb) - Major graphics/display mode flag (32 accesses)
- `videoSegmentPrimary` (0xdbda) - Primary video memory segment (23 accesses)

## Memory Regions

Variables are organized into logical memory regions:

1. **Low Memory (0x0000-0x00ff)** - 16 variables
   - Frequently accessed variables, counters, coordinates, and flags
   
2. **Mid Memory (0x1000-0x1fff)** - 18 variables
   - Entity data, control states, and pointers
   
3. **High Memory (0x2000-0x2fff)** - 7 variables
   - Game state, configuration, and lookup tables
   
4. **Graphics Area (0x4000-0x4fff)** - 27 variables
   - Display buffers, graphics state, and video mode flags
   
5. **High Memory Data (0xce00-0xcfff)** - 2 variables
   - Tables and arrays
   
6. **System Area (0xd800-0xdfff)** - 24 variables
   - Video segments, hardware parameters, and system configuration

## Usage

The globalvars.asm file can be:
- Imported into disassembly tools for better code readability
- Used as reference when analyzing the assembly files (01.asm - 04.asm)
- Cross-referenced with globalvars.md for detailed documentation

## Documentation Updates

- **readme.md** - Updated to reference globalvars.asm
- **globalvars.md** - Updated to reference globalvars.asm for assembly declarations

All 94 global variables documented in globalvars.md now have corresponding named declarations in globalvars.asm.
