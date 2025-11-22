;;
;; Global Variables Data Section
;; This file contains named declarations for all global variables
;; identified in the Dune game disassembly
;;

                             //
                             // DATA SEGMENT - Global Variables
                             // ram:0000:0000-ram:0000:ffff
                             //

;;
;; Low Memory Area (0x0000-0x00ff) - Frequently accessed variables
;;

                             // Frame counter or time variable
                             frameCounter                                    XREF[19]
       0000:0002              word ptr [0x2]

                             // Coordinate or position variable (Y-axis or secondary position)
                             positionY                                       XREF[22]
       0000:0004              word ptr [0x4]

                             // Coordinate or position variable (likely X-axis or primary position)  
                             positionX                                       XREF[17]
       0000:0006              word ptr [0x6]

                             // General purpose register backup or counter
                             registerBackup                                  XREF[9]
       0000:0008              word ptr [0x8]

                             // Status flag or configuration byte
                             statusFlag                                      XREF[7]
       0000:000a              byte ptr [0xa]

                             // Bit mask or flags register
                             flagsRegister                                   XREF[10]
       0000:0010              word ptr [0x10]

                             // Secondary bit mask or flags
                             flagsRegister2                                  XREF[5]
       0000:0012              word ptr [0x12]

                             // Tertiary bit mask or flags
                             flagsRegister3                                  XREF[4]
       0000:0014              word ptr [0x14]

                             // Counter or offset value
                             counterOffset                                   XREF[4]
       0000:0016              word ptr [0x16]

                             // Configuration or state byte
                             configByte1                                     XREF[7]
       0000:0018              byte ptr [0x18]

                             // Secondary state byte
                             configByte2                                     XREF[4]
       0000:0019              byte ptr [0x19]

                             // Tertiary state byte
                             configByte3                                     XREF[4]
       0000:001a              byte ptr [0x1a]

                             // Quaternary state byte
                             configByte4                                     XREF[4]
       0000:001b              byte ptr [0x1b]

                             // Game state or level indicator
                             gameState                                       XREF[13]
       0000:0023              byte ptr [0x23]

                             // Score, health, or resource counter (most frequently accessed)
                             resourceCounter                                 XREF[36]
       0000:002a              byte ptr [0x2a]

                             // Secondary status flag or game mode indicator
                             gameMode                                        XREF[12]
       0000:002b              byte ptr [0x2b]

                             // Configuration flag
                             configFlag                                      XREF[7]
       0000:0030              byte ptr [0x30]

                             // Mode or state flag
                             modeFlag1                                       XREF[7]
       0000:00c5              byte ptr [0xc5]

                             // Secondary mode flag
                             modeFlag2                                       XREF[7]
       0000:00c6              byte ptr [0xc6]

                             // Entity counter or object index
                             entityCounter                                   XREF[12]
       0000:00ea              byte ptr [0xea]

                             // Status or flag byte
                             statusByte                                      XREF[10]
       0000:00fb              byte ptr [0xfb]

;;
;; Mid Memory Area (0x1000-0x1fff) - Entity data and pointers
;;

                             // Hardware or configuration flag
                             hardwareFlag                                    XREF[6]
       0000:10a7              byte ptr [0x10a7]

                             // Pointer or index to data structure
                             dataPointer                                     XREF[20]
       0000:114e              word ptr [0x114e]

                             // Secondary pointer or index
                             dataPointer2                                    XREF[7]
       0000:1150              word ptr [0x1150]

                             // Entity slot or ID
                             entitySlot1                                     XREF[6]
       0000:1152              byte ptr [0x1152]

                             // Secondary entity slot or ID
                             entitySlot2                                     XREF[6]
       0000:1153              byte ptr [0x1153]

                             // Pointer or reference value
                             referenceValue                                  XREF[5]
       0000:115a              word ptr [0x115a]

                             // Coordinate or position value
                             coordinateValue                                 XREF[11]
       0000:11c5              word ptr [0x11c5]

                             // State or flag byte
                             stateByte1                                      XREF[8]
       0000:11c7              byte ptr [0x11c7]

                             // Secondary state byte
                             stateByte2                                      XREF[6]
       0000:11c8              byte ptr [0x11c8]

                             // Input/control state flag (frequently tested against 0)
                             controlState                                    XREF[17]
       0000:11c9              byte ptr [0x11c9]

                             // Related control flag
                             controlFlag1                                    XREF[5]
       0000:11ca              byte ptr [0x11ca]

                             // Tertiary control flag
                             controlFlag2                                    XREF[6]
       0000:11cb              byte ptr [0x11cb]

                             // Counter or accumulator
                             accumulator                                     XREF[8]
       0000:11cc              word ptr [0x11cc]

                             // Pointer to entity or object
                             entityPointer                                   XREF[8]
       0000:11db              word ptr [0x11db]

                             // Calculated or derived value
                             derivedValue                                    XREF[6]
       0000:11fd              word ptr [0x11fd]

                             // Save/restore position X coordinate
                             savedPositionX                                  XREF[6]
       0000:197c              word ptr [0x197c]

                             // Save/restore position Y coordinate
                             savedPositionY                                  XREF[10]
       0000:197e              word ptr [0x197e]

                             // Backup coordinate X
                             backupPositionX                                 XREF[8]
       0000:1980              word ptr [0x1980]

                             // Backup coordinate Y
                             backupPositionY                                 XREF[8]
       0000:1982              word ptr [0x1982]

                             // Graphics buffer pointer or offset
                             graphicsBufferPtr                               XREF[8]
       0000:1be4              word ptr [0x1be4]

                             // Secondary buffer value
                             bufferValue2                                    XREF[6]
       0000:1bea              word ptr [0x1bea]

                             // Display or rendering parameter
                             displayParam                                    XREF[7]
       0000:1c06              word ptr [0x1c06]

;;
;; High Memory Area (0x2000-0x2fff) - Game state and configuration
;;

                             // Game mode or special state flag
                             specialStateFlag                                XREF[11]
       0000:227d              byte ptr [0x227d]

                             // Cached value or lookup result
                             cachedValue                                     XREF[6]
       0000:22a6              word ptr [0x22a6]

                             // Status or configuration byte
                             statusConfig                                    XREF[8]
       0000:22d9              byte ptr [0x22d9]

                             // Graphics or screen buffer pointer (points to 0x4c60 area)
                             screenBufferPtr                                 XREF[8]
       0000:22fc              word ptr [0x22fc]

                             // Timer or sequence counter
                             timerCounter                                    XREF[6]
       0000:2772              word ptr [0x2772]

                             // Graphics mode or video mode flag
                             videoModeFlag                                   XREF[12]
       0000:28e7              byte ptr [0x28e7]

                             // Configuration byte (set to 0x8c)
                             config8c                                        XREF[4]
       0000:289e              byte ptr [0x289e]

                             // High memory flag or configuration
                             highMemoryFlag                                  XREF[7]
       0000:3810              byte ptr [0x3810]

;;
;; Graphics Area (0x4000-0x4fff) - Display buffers and graphics state
;;

                             // Graphics/display state flag
                             displayStateFlag                                XREF[7]
       0000:46d7              byte ptr [0x46d7]

                             // Graphics mode indicator
                             graphicsModeIndicator                           XREF[11]
       0000:46d9              byte ptr [0x46d9]

                             // Screen update flag
                             screenUpdateFlag                                XREF[10]
       0000:46df              byte ptr [0x46df]

                             // Major graphics/display mode flag (frequently checked)
                             displayModeFlag                                 XREF[32]
       0000:46eb              byte ptr [0x46eb]

                             // Graphics buffer or data pointer
                             graphicsDataPtr                                 XREF[10]
       0000:4728              word ptr [0x4728]

                             // Display coordinate or offset
                             displayCoord                                    XREF[8]
       0000:4731              word ptr [0x4731]

                             // Array or table pointer
                             tablePointer                                    XREF[6]
       0000:4752              word ptr [0x4752]

                             // Data structure pointer
                             structurePointer                                XREF[8]
       0000:4774              word ptr [0x4774]

                             // Display dimension or offset
                             displayDimension                                XREF[7]
       0000:4788              word ptr [0x4788]

                             // Graphics flags or state byte
                             graphicsFlags                                   XREF[8]
       0000:4799              byte ptr [0x4799]

                             // Graphics context or mode identifier
                             graphicsContextId                               XREF[11]
       0000:479e              word ptr [0x479e]

                             // Graphics state flag
                             graphicsState                                   XREF[8]
       0000:47a4              byte ptr [0x47a4]

                             // Graphics configuration byte
                             graphicsConfig                                  XREF[6]
       0000:47c2              byte ptr [0x47c2]

                             // Current graphics context ID (frequently accessed)
                             currentGraphicsContext                          XREF[35]
       0000:47c4              word ptr [0x47c4]

                             // Pointer to graphics data
                             graphicsDataPtr2                                XREF[7]
       0000:47ca              word ptr [0x47ca]

                             // Secondary graphics pointer
                             graphicsPointer2                                XREF[6]
       0000:47cc              word ptr [0x47cc]

                             // Graphics state byte
                             graphicsStateByte                               XREF[7]
       0000:47ce              byte ptr [0x47ce]

                             // Graphics parameter byte
                             graphicsParam                                   XREF[7]
       0000:47d0              byte ptr [0x47d0]

                             // Graphics flags byte
                             graphicsFlagsByte                               XREF[8]
       0000:47d1              byte ptr [0x47d1]

                             // Graphics coordinate or offset
                             graphicsCoord                                   XREF[8]
       0000:47de              word ptr [0x47de]

                             // Graphics state or flag word
                             graphicsStateWord                               XREF[11]
       0000:47e1              word ptr [0x47e1]

                             // Large graphics/screen buffer area
                             screenBuffer                                    XREF[...]
       0000:4c60              buffer

;;
;; High Memory Data Area (0xce00-0xcfff) - Tables and arrays
;;

                             // Data table or array pointer
                             dataTablePtr                                    XREF[12]
       0000:ce7a              word ptr [0xce7a]

                             // High memory initialization flag
                             highMemInitFlag                                 XREF[4]
       0000:ce80              byte ptr [0xce80]

;;
;; System Area (0xd800-0xdfff) - Video segments and hardware parameters
;;

                             // System parameter or hardware value
                             systemParam1                                    XREF[6]
       0000:d824              word ptr [0xd824]

                             // Secondary system parameter
                             systemParam2                                    XREF[4]
       0000:d826              word ptr [0xd826]

                             // Tertiary system parameter
                             systemParam3                                    XREF[4]
       0000:d828              word ptr [0xd828]

                             // Display coordinate or position
                             displayPosition                                 XREF[8]
       0000:d82c              word ptr [0xd82c]

                             // Coordinate or boundary value
                             boundaryValue                                   XREF[6]
       0000:d83a              word ptr [0xd83a]

;;
;; Segment Addresses (0xdb00-0xdbff) - Far pointers and video memory segments
;;

                             // Far pointer to data segment (segment:offset pair)
                             dataSegmentPtr                                  XREF[8]
       0000:dbb0              dword ptr [0xdbb0]

                             // Segment address for data
                             dataSegment                                     XREF[12]
       0000:dbb2              word ptr [0xdbb2]

                             // System configuration value
                             systemConfig                                    XREF[9]
       0000:dbcd              word ptr [0xdbcd]

                             // Video segment address (commonly used with ES)
                             videoSegment1                                   XREF[19]
       0000:dbd6              word ptr [0xdbd6]

                             // Secondary video segment address
                             videoSegment2                                   XREF[16]
       0000:dbd8              word ptr [0xdbd8]

                             // Primary video segment address (most used video segment)
                             videoSegmentPrimary                             XREF[23]
       0000:dbda              word ptr [0xdbda]

                             // Tertiary video segment address
                             videoSegment3                                   XREF[8]
       0000:dbde              word ptr [0xdbde]

                             // Color or attribute byte for graphics
                             colorAttribute                                  XREF[11]
       0000:dbe4              byte ptr [0xdbe4]

                             // System or hardware parameter
                             hardwareParam1                                  XREF[4]
       0000:dcfe              word ptr [0xdcfe]

                             // Hardware configuration value
                             hardwareConfig                                  XREF[6]
       0000:dc26              word ptr [0xdc26]

                             // Mouse or cursor X coordinate
                             mouseX                                          XREF[6]
       0000:dc42              word ptr [0xdc42]

                             // Mouse or cursor Y coordinate
                             mouseY                                          XREF[6]
       0000:dc44              word ptr [0xdc44]

                             // Mouse or cursor state flag
                             mouseState                                      XREF[4]
       0000:dc46              byte ptr [0xdc46]

                             // Segment address for extended data
                             extendedDataSegment                             XREF[8]
       0000:dd00              word ptr [0xdd00]
