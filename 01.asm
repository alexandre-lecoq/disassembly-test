                             //
                             // CODE_0 
                             // ram:1000:0000-ram:1000:f4af
                             //
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t entry(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AH (uint8_t): 8-bit output value in AH register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   DL (uint8_t): 8-bit output value in DL register
                             //
                             // Memory Access:
                             //   Read from: word ptr [DAT_1f4b_3cbc]                      = ??
                             //   Write to: byte ptr [0x3810]
                             //   Write to: word ptr [0x2]
                             //   Write to: byte ptr [0xce80]
                             //
                             // System Calls:
                             //   INT 0x33
                             //   INT 0x10
                             //   INT 0x10
                             //
                             undefined entry()
                               assume CS = 0x1000
                               assume SP = 0x3cbc
                               assume SS = 0x1f4b
             undefined         <UNASSIGNED>   <RETURN>
                             entry                                           XREF[1]:     Entry Point(*)  
       1000:0000 b8 1d dd        MOV        AX,0xdd1d
             assume SS = <UNKNOWN>
             assume SP = <UNKNOWN>
       1000:0003 e8 a7 e4        CALL       FUN_1000_e4ad                                    undefined FUN_1000_e4ad()
       1000:0006 e8 8b e5        CALL       FUN_1000_e594                                    undefined FUN_1000_e594()
       1000:0009 e8 a4 00        CALL       FUN_1000_00b0                                    undefined FUN_1000_00b0()
       1000:000c fb              STI
       1000:000d e8 70 05        CALL       FUN_1000_0580                                    undefined FUN_1000_0580()
       1000:0010 e8 f6 02        CALL       FUN_1000_0309                                    undefined FUN_1000_0309()
       1000:0013 e8 06 02        CALL       FUN_1000_021c                                    undefined FUN_1000_021c()
       1000:0016 e8 9e ae        CALL       FUN_1000_aeb7                                    undefined FUN_1000_aeb7()
       1000:0019 c6 06 10        MOV        byte ptr [0x3810],0x0
                 38 00
       1000:001e c7 06 02        MOV        word ptr [0x2],0x2
                 00 02 00
       1000:0024 e8 5c 00        CALL       FUN_1000_0083                                    undefined FUN_1000_0083()
       1000:0027 b1 ff           MOV        CL,0xff
       1000:0029 e8 5d b3        CALL       FUN_1000_b389                                    undefined FUN_1000_b389()
       1000:002c e8 31 18        CALL       FUN_1000_1860                                    undefined FUN_1000_1860()
       1000:002f c6 06 80        MOV        byte ptr [0xce80],0xff
                 ce ff
       1000:0034 e8 87 b2        CALL       FUN_1000_b2be                                    undefined FUN_1000_b2be()
       1000:0037 e8 db d7        CALL       FUN_1000_d815                                    undefined FUN_1000_d815()
                             LAB_1000_003a                                   XREF[2]:     FUN_1000_f0ff:1000:f13c(j), 
                                                                                          FUN_1000_f229:1000:f241(j)  
       1000:003a fc              CLD
       1000:003b 33 c0           XOR        AX,AX                        ; AX = 0 (function 0: Reset mouse driver)
       1000:003d cd 33           INT        0x33                         ; INT 33h, AX=00h: Reset mouse driver and get status
       1000:003f b8 4b 1f        MOV        AX,0x1f4b
       1000:0042 8e d8           MOV        DS,AX
       1000:0044 e8 8e e8        CALL       FUN_1000_e8d5                                    undefined FUN_1000_e8d5()
       1000:0047 83 3e 77        CMP        word ptr [DAT_1f4b_3977],0x0
                 39 00
       1000:004c 74 08           JZ         LAB_1000_0056
       1000:004e ff 1e 75 39     CALLF      [0x3975]=>DAT_1f4b_3977                          = 0106h
       1000:0052 ff 1e 8d 39     CALLF      [0x398d]=>DAT_1f4b_398f                          = 0103h
                             LAB_1000_0056                                   XREF[1]:     1000:004c(j)  
       1000:0056 b8 03 00        MOV        AX,0x3                       ; AH=0, AL=3: Set video mode to 80x25 text mode
       1000:0059 cd 10           INT        0x10                         ; INT 10h, AH=00h: Set video mode
       1000:005b 8b 36 bc 3c     MOV        SI,word ptr [DAT_1f4b_3cbc]                      = ??
       1000:005f 0b f6           OR         SI,SI
       1000:0061 74 0b           JZ         LAB_1000_006e
                             LAB_1000_0063                                   XREF[1]:     1000:006c(j)  
       1000:0063 ac              LODSB      SI
       1000:0064 0a c0           OR         AL,AL
       1000:0066 74 06           JZ         LAB_1000_006e
       1000:0068 b4 0e           MOV        AH,0xe                       ; AH=0Eh: Teletype output
                                                                        ; AL=character to output, BH=page number, BL=foreground color
       1000:006a cd 10           INT        0x10                         ; INT 10h, AH=0Eh: Write character in teletype mode
       1000:006c eb f5           JMP        LAB_1000_0063
                             LAB_1000_006e                                   XREF[2]:     1000:0061(j), 1000:0066(j)  
       1000:006e b8 0d 0e        MOV        AX,0xe0d                     ; AH=0Eh (teletype output), AL=0Dh (carriage return)
       1000:0071 cd 10           INT        0x10                         ; INT 10h, AH=0Eh: Write CR character
       1000:0073 b8 0a 0e        MOV        AX,0xe0a                     ; AH=0Eh (teletype output), AL=0Ah (line feed)
       1000:0076 cd 10           INT        0x10                         ; INT 10h, AH=0Eh: Write LF character
       1000:0078 b2 ff           MOV        DL,0xff                      ; DL=0FFh: Check console input status without waiting
       1000:007a b8 06 0c        MOV        AX,0xc06                     ; AH=0Ch: Flush input buffer and read stdin
                                                                        ; AL=06h: Direct console I/O function
       1000:007d cd 21           INT        0x21                         ; INT 21h, AH=0Ch: Flush buffer and invoke DOS function AL
       1000:007f b4 4c           MOV        AH,0x4c                      ; AH=4Ch: Terminate program with return code
                                                                        ; AL=return code (0 = success)
       1000:0081 cd 21           INT        0x21                         ; INT 21h, AH=4Ch: Exit to DOS
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_0083(void);
                             //
                             //
                             undefined FUN_1000_0083()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0083                                   XREF[1]:     entry:1000:0024(c)  
       1000:0083 e8 1a cf        CALL       FUN_1000_cfa0                                    undefined FUN_1000_cfa0()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_0086(void);
                             //
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_0086()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0086                                   XREF[1]:     FUN_1000_3723:1000:3768(c)  
       1000:0086 e8 f3 bf        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:0089 e8 21 c0        CALL       FUN_1000_c0ad                                    undefined FUN_1000_c0ad()
       1000:008c be e4 1a        MOV        SI,0x1ae4
       1000:008f bd ef d1        MOV        BP,0xd1ef
       1000:0092 e8 02 c0        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:0095 e9 ff 16        JMP        FUN_1000_1797                                    undefined FUN_1000_1797()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0098(uint16_t di);
                             //
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   ES (uint16_t): Segment register input value
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             // Memory Access:
                             //   Read from: word ptr ES:[DI]
                             //   Read from: word ptr ES:[DI]
                             //
                             undefined __cdecl16near FUN_1000_0098()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0098                                   XREF[5]:     FUN_1000_00d1:1000:0123(c), 
                                                                                          FUN_1000_00d1:1000:0134(c), 
                                                                                          FUN_1000_2d74:1000:2dad(c), 
                                                                                          FUN_1000_cfb9:1000:d00a(c), 
                                                                                          FUN_1000_d00f:1000:d036(c)  
       1000:0098 26 8b 0d        MOV        CX,word ptr ES:[DI]
       1000:009b d1 e9           SHR        CX,0x1
       1000:009d 8b df           MOV        BX,DI
                             LAB_1000_009f                                   XREF[1]:     1000:00a5(j)  
       1000:009f 26 8b 05        MOV        AX,word ptr ES:[DI]
       1000:00a2 03 c3           ADD        AX,BX
       1000:00a4 ab              STOSW      ES:DI
       1000:00a5 e2 f8           LOOP       LAB_1000_009f
       1000:00a7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_00b0(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: ES:[0x46c]
                             //   Write to: [0xd824]
                             //   Write to: [0xd826]
                             //   Write to: [0xd828]
                             //
                             undefined __cdecl16near FUN_1000_00b0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_00b0                                   XREF[1]:     entry:1000:0009(c)  
       1000:00b0 e8 1e 00        CALL       FUN_1000_00d1                                    undefined FUN_1000_00d1()
       1000:00b3 e8 b3 00        CALL       FUN_1000_0169                                    undefined FUN_1000_0169()
       1000:00b6 e8 9a d9        CALL       FUN_1000_da53                                    undefined FUN_1000_da53()
       1000:00b9 e8 be b0        CALL       FUN_1000_b17a                                    undefined FUN_1000_b17a()
       1000:00bc e8 bb b0        CALL       FUN_1000_b17a                                    undefined FUN_1000_b17a()
       1000:00bf 33 c0           XOR        AX,AX
       1000:00c1 8e c0           MOV        ES,AX
       1000:00c3 26 a1 6c 04     MOV        AX,ES:[0x46c]
       1000:00c7 a3 24 d8        MOV        [0xd824],AX
       1000:00ca a3 26 d8        MOV        [0xd826],AX
       1000:00cd a3 28 d8        MOV        [0xd828],AX
       1000:00d0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_00d1(void);
                             //
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI]
                             //   Write to: [0xdcfe]
                             //   Write to: word ptr [0xdd00]
                             //   Write to: word ptr [0xaa72]
                             //
                             undefined FUN_1000_00d1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_00d1                                   XREF[1]:     FUN_1000_00b0:1000:00b0(c)  
       1000:00d1 1e              PUSH       DS
       1000:00d2 07              POP        ES
       1000:00d3 bf 48 49        MOV        DI,0x4948
       1000:00d6 be ba 00        MOV        SI,0xba
       1000:00d9 e8 dd ef        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:00dc b9 8c 01        MOV        CX,0x18c
       1000:00df 8b f7           MOV        SI,DI
                             LAB_1000_00e1                                   XREF[1]:     1000:00e5(j)  
       1000:00e1 ad              LODSW      SI
       1000:00e2 86 e0           XCHG       AL,AH
       1000:00e4 ab              STOSW      ES:DI
       1000:00e5 e2 fa           LOOP       LAB_1000_00e1
       1000:00e7 bf 80 48        MOV        DI,0x4880
       1000:00ea b9 63 00        MOV        CX,0x63
       1000:00ed be 4a 49        MOV        SI,0x494a
                             LAB_1000_00f0                                   XREF[1]:     1000:0104(j)  
       1000:00f0 33 c0           XOR        AX,AX
       1000:00f2 ba 01 00        MOV        DX,0x1
       1000:00f5 8b 1c           MOV        BX,word ptr [SI]
       1000:00f7 d1 e3           SHL        BX,0x1
       1000:00f9 f7 f3           DIV        BX
       1000:00fb 39 14           CMP        word ptr [SI],DX
       1000:00fd 15 00 00        ADC        AX,0x0
       1000:0100 ab              STOSW      ES:DI
       1000:0101 83 c6 08        ADD        SI,0x8
       1000:0104 e2 ea           LOOP       LAB_1000_00f0
       1000:0106 be bf 00        MOV        SI,0xbf
       1000:0109 e8 ad ef        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:010c 8b c7           MOV        AX,DI
       1000:010e 05 fc 62        ADD        AX,0x62fc
       1000:0111 a3 fe dc        MOV        [0xdcfe],AX
       1000:0114 8c 06 00 dd     MOV        word ptr [0xdd00],ES
       1000:0118 1e              PUSH       DS
       1000:0119 07              POP        ES
       1000:011a bf 76 aa        MOV        DI,0xaa76
       1000:011d be bd 00        MOV        SI,0xbd
       1000:0120 e8 7d ef        CALL       FUN_1000_f0a0                                    undefined FUN_1000_f0a0()
       1000:0123 e8 72 ff        CALL       FUN_1000_0098                                    undefined FUN_1000_0098()
       1000:0126 be bc 00        MOV        SI,0xbc
       1000:0129 e8 8d ef        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:012c 89 3e 72 aa     MOV        word ptr [0xaa72],DI
       1000:0130 8c 06 74 aa     MOV        word ptr [0xaa74],ES
       1000:0134 e8 61 ff        CALL       FUN_1000_0098                                    undefined FUN_1000_0098()
       1000:0137 c4 06 b7 39     LES        AX,[0x39b7]
       1000:013b a3 ac 47        MOV        [0x47ac],AX
       1000:013e 8c 06 ae 47     MOV        word ptr [0x47ae],ES
       1000:0142 b9 4c 1d        MOV        CX,0x1d4c
       1000:0145 e8 b7 ef        CALL       FUN_1000_f0ff                                    undefined FUN_1000_f0ff()
       1000:0148 c4 06 b7 39     LES        AX,[0x39b7]
       1000:014c a3 b0 47        MOV        [0x47b0],AX
       1000:014f 8c 06 b2 47     MOV        word ptr [0x47b2],ES
       1000:0153 b9 d4 ad        MOV        CX,0xadd4
       1000:0156 e8 a6 ef        CALL       FUN_1000_f0ff                                    undefined FUN_1000_f0ff()
       1000:0159 e8 5d ce        CALL       FUN_1000_cfb9                                    undefined FUN_1000_cfb9()
       1000:015c e9 d8 bf        JMP        FUN_1000_c137                                    undefined FUN_1000_c137()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             DAT_1000_0167                                   XREF[1]:     FUN_1000_4d6c:1000:4d76(R)  
       1000:0167 00 00           undefined2 0000h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_0169(void);
                             //
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BL (uint8_t): 8-bit output value in BL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x2]
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: word ptr [0xdbb2]
                             //   Write to: word ptr [SI + 0x2]
                             //   Write to: word ptr [SI + 0x6]
                             //   Write to: byte ptr [SI + 0x10]
                             //
                             undefined __cdecl16near FUN_1000_0169()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0169                                   XREF[1]:     FUN_1000_00b0:1000:00b3(c)  
       1000:0169 b8 3a 00        MOV        AX,0x3a
       1000:016c e8 cf bf        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:016f 1e              PUSH       DS
       1000:0170 07              POP        ES
       1000:0171 bf 60 4c        MOV        DI,0x4c60
       1000:0174 57              PUSH       DI
       1000:0175 b8 07 00        MOV        AX,0x7
       1000:0178 b9 00 01        MOV        CX,0x100
       1000:017b f3 ab           STOSW.REP  ES:DI
       1000:017d 5f              POP        DI
       1000:017e c4 36 b0 db     LES        SI,[0xdbb0]
       1000:0182 b9 f9 c5        MOV        CX,0xc5f9
                             LAB_1000_0185                                   XREF[1]:     1000:018d(j)  
       1000:0185 26 ac           LODSB      ES:SI
       1000:0187 8b d8           MOV        BX,AX
       1000:0189 d1 e3           SHL        BX,0x1
       1000:018b ff 01           INC        word ptr [BX + DI]
       1000:018d e2 f6           LOOP       LAB_1000_0185
       1000:018f be 00 01        MOV        SI,0x100
                             LAB_1000_0192                                   XREF[1]:     1000:01c6(j)  
       1000:0192 8b 54 02        MOV        DX,word ptr [SI + 0x2]
       1000:0195 8b 5c 04        MOV        BX,word ptr [SI + 0x4]
       1000:0198 e8 2a b4        CALL       FUN_1000_b5c5                                    undefined FUN_1000_b5c5()
       1000:019b 89 54 02        MOV        word ptr [SI + 0x2],DX
       1000:019e 89 7c 06        MOV        word ptr [SI + 0x6],DI
       1000:01a1 26 80 0d 40     OR         byte ptr ES:[DI],0x40
       1000:01a5 8e 06 b2 db     MOV        ES,word ptr [0xdbb2]
       1000:01a9 26 8a 05        MOV        AL,byte ptr ES:[DI]
       1000:01ac 88 44 10        MOV        byte ptr [SI + 0x10],AL
       1000:01af 33 db           XOR        BX,BX
       1000:01b1 8a d8           MOV        BL,AL
       1000:01b3 d1 e3           SHL        BX,0x1
       1000:01b5 8b 87 60 4c     MOV        AX,word ptr [BX + 0x4c60]
       1000:01b9 b1 04           MOV        CL,0x4
       1000:01bb d3 e8           SHR        AX,CL
       1000:01bd 88 44 11        MOV        byte ptr [SI + 0x11],AL
       1000:01c0 83 c6 1c        ADD        SI,0x1c
       1000:01c3 80 3c ff        CMP        byte ptr [SI],0xff
       1000:01c6 75 ca           JNZ        LAB_1000_0192
       1000:01c8 bf 00 01        MOV        DI,0x100
                             LAB_1000_01cb                                   XREF[1]:     1000:01dd(j)  
       1000:01cb bd e0 01        MOV        BP,0x1e0
       1000:01ce 8b 55 02        MOV        DX,word ptr [DI + 0x2]
       1000:01d1 8b 5d 04        MOV        BX,word ptr [DI + 0x4]
       1000:01d4 e8 2c 64        CALL       FUN_1000_6603                                    undefined FUN_1000_6603()
       1000:01d7 83 c7 1c        ADD        DI,0x1c
       1000:01da 80 3d ff        CMP        byte ptr [DI],0xff
       1000:01dd 75 ec           JNZ        LAB_1000_01cb
       1000:01df c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_021c(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BL (uint8_t): 8-bit output value in BL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbd8]
                             //   Write to: byte ptr [0x289e]
                             //   Write to: byte ptr [0x28e7]
                             //   Write to: byte ptr [0x46df]
                             //
                             undefined FUN_1000_021c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_021c                                   XREF[1]:     entry:1000:0013(c)  
       1000:021c c6 06 9e        MOV        byte ptr [0x289e],0x8c
                 28 8c
       1000:0221 c6 06 e7        MOV        byte ptr [0x28e7],0x1
                 28 01
       1000:0226 74 6a           JZ         LAB_1000_0292
       1000:0228 e8 25 ab        CALL       FUN_1000_ad50                                    undefined FUN_1000_ad50()
       1000:022b b8 e8 03        MOV        AX,0x3e8
       1000:022e be 01 00        MOV        SI,0x1
                             LAB_1000_0231                                   XREF[1]:     1000:0262(j)  
       1000:0231 56              PUSH       SI
       1000:0232 bd c1 02        MOV        BP,0x2c1
       1000:0235 e8 ca be        CALL       FUN_1000_c102                                    undefined FUN_1000_c102()
       1000:0238 e8 a5 ab        CALL       FUN_1000_ade0                                    undefined FUN_1000_ade0()
       1000:023b 58              POP        AX
       1000:023c 50              PUSH       AX
       1000:023d e8 0f a9        CALL       FUN_1000_ab4f                                    undefined FUN_1000_ab4f()
       1000:0240 5e              POP        SI
       1000:0241 e8 10 dc        CALL       FUN_1000_de54                                    undefined FUN_1000_de54()
       1000:0244 74 4c           JZ         LAB_1000_0292
       1000:0246 56              PUSH       SI
       1000:0247 b8 20 03        MOV        AX,0x320
       1000:024a b8 a0 0f        MOV        AX,0xfa0
       1000:024d e8 60 db        CALL       FUN_1000_ddb0                                    undefined FUN_1000_ddb0()
       1000:0250 9c              PUSHF
       1000:0251 e8 bd 06        CALL       FUN_1000_0911                                    undefined FUN_1000_0911()
       1000:0254 e8 bd a9        CALL       FUN_1000_ac14                                    undefined FUN_1000_ac14()
       1000:0257 e8 93 ab        CALL       FUN_1000_aded                                    undefined FUN_1000_aded()
       1000:025a 9d              POPF
       1000:025b 5e              POP        SI
       1000:025c 74 34           JZ         LAB_1000_0292
       1000:025e 46              INC        SI
       1000:025f 83 fe 08        CMP        SI,0x8
       1000:0262 76 cd           JBE        LAB_1000_0231
       1000:0264 bd 01 03        MOV        BP,0x301
       1000:0267 b0 10           MOV        AL,0x10
       1000:0269 e8 9c be        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:026c b8 c8 00        MOV        AX,0xc8
       1000:026f e8 3e db        CALL       FUN_1000_ddb0                                    undefined FUN_1000_ddb0()
       1000:0272 b3 0c           MOV        BL,0xc
       1000:0274 e8 7a 36        CALL       FUN_1000_38f1                                    undefined FUN_1000_38f1()
       1000:0277 c6 06 df        MOV        byte ptr [0x46df],0x1
                 46 01
       1000:027c b8 b0 04        MOV        AX,0x4b0
       1000:027f e8 2e db        CALL       FUN_1000_ddb0                                    undefined FUN_1000_ddb0()
       1000:0282 e8 cb 36        CALL       FUN_1000_3950                                    undefined FUN_1000_3950()
       1000:0285 c6 06 df        MOV        byte ptr [0x46df],0x0
                 46 00
       1000:028a bd ad c0        MOV        BP,0xc0ad
       1000:028d b0 10           MOV        AL,0x10
       1000:028f e8 76 be        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
                             LAB_1000_0292                                   XREF[3]:     1000:0226(j), 1000:0244(j), 
                                                                                          1000:025c(j)  
       1000:0292 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:0296 ff 1e d5 38     CALLF      [0x38d5]
       1000:029a e8 77 a9        CALL       FUN_1000_ac14                                    undefined FUN_1000_ac14()
       1000:029d c6 06 7d        MOV        byte ptr [0x227d],0x0
                 22 00
       1000:02a2 c6 06 c5        MOV        byte ptr [0xc5],0x0
                 00 00
       1000:02a7 e8 67 06        CALL       FUN_1000_0911                                    undefined FUN_1000_0911()
       1000:02aa c6 06 e7        MOV        byte ptr [0x28e7],0x0
                 28 00
       1000:02af c6 06 e6        MOV        byte ptr [0xdbe6],0x6
                 db 06
       1000:02b4 fe 06 15 01     INC        byte ptr [0x115]
       1000:02b8 ba 0a 20        MOV        DX,0x200a
       1000:02bb bb 80 01        MOV        BX,0x180
       1000:02be e9 2f 06        JMP        FUN_1000_08f0                                    undefined FUN_1000_08f0()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0309(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             undefined __cdecl16near FUN_1000_0309()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0309                                   XREF[1]:     entry:1000:0010(c)  
       1000:0309 74 26           JZ         LAB_1000_0331
       1000:030b e8 40 db        CALL       FUN_1000_de4e                                    undefined FUN_1000_de4e()
       1000:030e e8 6b bd        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:0311 e8 99 bd        CALL       FUN_1000_c0ad                                    undefined FUN_1000_c0ad()
       1000:0314 b8 18 00        MOV        AX,0x18
       1000:0317 ff 1e 39 39     CALLF      [0x3939]
       1000:031b bd ef 09        MOV        BP,0x9ef
       1000:031e e8 e1 bd        CALL       FUN_1000_c102                                    undefined FUN_1000_c102()
       1000:0321 e8 2c aa        CALL       FUN_1000_ad50                                    undefined FUN_1000_ad50()
                             LAB_1000_0324                                   XREF[1]:     1000:032f(j)  
       1000:0324 e8 ef 06        CALL       FUN_1000_0a16                                    undefined FUN_1000_0a16()
       1000:0327 e8 5b c9        CALL       FUN_1000_cc85                                    undefined FUN_1000_cc85()
       1000:032a 75 05           JNZ        LAB_1000_0331
       1000:032c e8 34 da        CALL       FUN_1000_dd63                                    undefined FUN_1000_dd63()
       1000:032f 73 f3           JNC        LAB_1000_0324
                             LAB_1000_0331                                   XREF[2]:     1000:0309(j), 1000:032a(j)  
       1000:0331 9c              PUSHF
       1000:0332 e8 44 02        CALL       FUN_1000_0579                                    undefined FUN_1000_0579()
       1000:0335 9d              POPF
       1000:0336 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0579(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_0579()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0579                                   XREF[2]:     FUN_1000_0309:1000:0332(c), 
                                                                                          FUN_1000_0580:1000:060b(c)  
       1000:0579 33 c0           XOR        AX,AX
       1000:057b ff 1e 39 39     CALLF      [0x3939]
       1000:057f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0580(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbd8]
                             //   Write to: word ptr [0x2]
                             //
                             undefined __cdecl16near FUN_1000_0580()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0580                                   XREF[2]:     entry:1000:000d(c), 1000:05a1(j)  
       1000:0580 e8 d1 d8        CALL       FUN_1000_de54                                    undefined FUN_1000_de54()
       1000:0583 74 78           JZ         LAB_1000_05fd
       1000:0585 ff 1e 59 39     CALLF      [0x3959]
       1000:0589 e8 2b a9        CALL       FUN_1000_aeb7                                    undefined FUN_1000_aeb7()
       1000:058c be 37 03        MOV        SI,0x337
       1000:058f e8 b3 03        CALL       FUN_1000_0945                                    undefined FUN_1000_0945()
                             LAB_1000_0592                                   XREF[2]:     1000:05f6(j), 1000:05fb(j)  
       1000:0592 b8 18 00        MOV        AX,0x18
       1000:0595 ff 1e 39 39     CALLF      [0x3939]
       1000:0599 e8 a3 03        CALL       FUN_1000_093f                                    undefined FUN_1000_093f()
       1000:059c 8b d8           MOV        BX,AX
       1000:059e 40              INC        AX
       1000:059f 75 02           JNZ        LAB_1000_05a3
       1000:05a1 eb dd           JMP        FUN_1000_0580
                             LAB_1000_05a3                                   XREF[1]:     1000:059f(j)  
       1000:05a3 e8 66 d8        CALL       FUN_1000_de0c                                    undefined FUN_1000_de0c()
       1000:05a6 72 55           JC         LAB_1000_05fd
       1000:05a8 e8 66 03        CALL       FUN_1000_0911                                    undefined FUN_1000_0911()
       1000:05ab ff 1e 59 39     CALLF      [0x3959]
       1000:05af e8 8d 03        CALL       FUN_1000_093f                                    undefined FUN_1000_093f()
       1000:05b2 8b e8           MOV        BP,AX
       1000:05b4 e8 e0 ba        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:05b7 80 26 d1        AND        byte ptr [0x47d1],0x7f
                 47 7f
       1000:05bc e8 27 34        CALL       FUN_1000_39e6                                    undefined FUN_1000_39e6()
       1000:05bf e8 7d 03        CALL       FUN_1000_093f                                    undefined FUN_1000_093f()
       1000:05c2 8b d8           MOV        BX,AX
       1000:05c4 e8 45 d8        CALL       FUN_1000_de0c                                    undefined FUN_1000_de0c()
       1000:05c7 72 34           JC         LAB_1000_05fd
       1000:05c9 e8 73 03        CALL       FUN_1000_093f                                    undefined FUN_1000_093f()
       1000:05cc 0b c0           OR         AX,AX
       1000:05ce 78 0c           JS         LAB_1000_05dc
       1000:05d0 bd 66 0f        MOV        BP,0xf66
       1000:05d3 e8 32 bb        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:05d6 e8 1b bb        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:05d9 e8 a0 34        CALL       FUN_1000_3a7c                                    undefined FUN_1000_3a7c()
                             LAB_1000_05dc                                   XREF[1]:     1000:05ce(j)  
       1000:05dc e8 9d ba        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:05df 80 0e d1        OR         byte ptr [0x47d1],0x80
                 47 80
       1000:05e4 e8 7c d7        CALL       FUN_1000_dd63                                    undefined FUN_1000_dd63()
       1000:05e7 72 14           JC         LAB_1000_05fd
       1000:05e9 e8 53 03        CALL       FUN_1000_093f                                    undefined FUN_1000_093f()
       1000:05ec f8              CLC
       1000:05ed ff d0           CALL       AX
       1000:05ef 72 0c           JC         LAB_1000_05fd
       1000:05f1 e8 4b 03        CALL       FUN_1000_093f                                    undefined FUN_1000_093f()
       1000:05f4 0b c0           OR         AX,AX
       1000:05f6 74 9a           JZ         LAB_1000_0592
       1000:05f8 e8 f5 d7        CALL       FUN_1000_ddf0                                    undefined FUN_1000_ddf0()
       1000:05fb 73 95           JNC        LAB_1000_0592
                             LAB_1000_05fd                                   XREF[5]:     1000:0583(j), 1000:05a6(j), 
                                                                                          1000:05c7(j), 1000:05e7(j), 
                                                                                          1000:05ef(j)  
       1000:05fd 9c              PUSHF
       1000:05fe e8 84 93        CALL       FUN_1000_9985                                    undefined FUN_1000_9985()
       1000:0601 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:0605 ff 1e d5 38     CALLF      [0x38d5]
       1000:0609 9d              POPF
       1000:060a 9c              PUSHF
       1000:060b e8 6b ff        CALL       FUN_1000_0579                                    undefined FUN_1000_0579()
       1000:060e e8 f0 c3        CALL       FUN_1000_ca01                                    undefined FUN_1000_ca01()
       1000:0611 c7 06 02        MOV        word ptr [0x2],0x2
                 00 02 00
       1000:0617 e8 f7 02        CALL       FUN_1000_0911                                    undefined FUN_1000_0911()
       1000:061a 9d              POPF
       1000:061b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_08f0(uint16_t bx, uint8_t dh);
                             //
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DH (uint8_t): 8-bit input value in DH register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: [0x47a4]
                             //   Write to: [0x46df]
                             //   Write to: word ptr [0x4]
                             //
                             undefined FUN_1000_08f0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_08f0                                   XREF[1]:     FUN_1000_021c:1000:02be(c)  
       1000:08f0 32 c0           XOR        AL,AL
       1000:08f2 a2 a4 47        MOV        [0x47a4],AL
       1000:08f5 a2 df 46        MOV        [0x46df],AL
       1000:08f8 89 16 04 00     MOV        word ptr [0x4],DX
       1000:08fc 89 1e 06 00     MOV        word ptr [0x6],BX
       1000:0900 88 36 08 00     MOV        byte ptr [0x8],DH
       1000:0904 b0 1c           MOV        AL,0x1c
       1000:0906 f6 e7           MUL        BH
       1000:0908 05 e4 00        ADD        AX,0xe4
       1000:090b a3 4e 11        MOV        [0x114e],AX
       1000:090e e9 63 24        JMP        FUN_1000_2d74                                    undefined FUN_1000_2d74()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_0911(void);
                             //
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x22e3]
                             //   Write to: byte ptr [0x46d7]
                             //
                             undefined FUN_1000_0911()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0911                                   XREF[4]:     FUN_1000_021c:1000:0251(c), 
                                                                                          FUN_1000_021c:1000:02a7(c), 
                                                                                          FUN_1000_0580:1000:05a8(c), 
                                                                                          FUN_1000_0580:1000:0617(c)  
       1000:0911 e8 d2 30        CALL       FUN_1000_39e6                                    undefined FUN_1000_39e6()
       1000:0914 e8 19 b0        CALL       FUN_1000_b930                                    undefined FUN_1000_b930()
       1000:0917 e8 07 02        CALL       FUN_1000_0b21                                    undefined FUN_1000_0b21()
       1000:091a e8 68 90        CALL       FUN_1000_9985                                    undefined FUN_1000_9985()
       1000:091d e8 c6 8f        CALL       FUN_1000_98e6                                    undefined FUN_1000_98e6()
       1000:0920 c6 06 e3        MOV        byte ptr [0x22e3],0x1
                 22 01
       1000:0925 c6 06 d7        MOV        byte ptr [0x46d7],0x0
                 46 00
       1000:092a be 0c 07        MOV        SI,0x70c
       1000:092d e8 2f d1        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:0930 be 16 39        MOV        SI,0x3916
       1000:0933 e8 29 d1        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:0936 e8 05 01        CALL       FUN_1000_0a3e                                    undefined FUN_1000_0a3e()
       1000:0939 be 26 08        MOV        SI,0x826
       1000:093c e9 20 d1        JMP        FUN_1000_da5f                                    undefined FUN_1000_da5f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_093f(void);
                             //
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x4854]
                             //
                             undefined FUN_1000_093f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_093f                                   XREF[6]:     FUN_1000_0580:1000:0599(c), 
                                                                                          FUN_1000_0580:1000:05af(c), 
                                                                                          FUN_1000_0580:1000:05bf(c), 
                                                                                          FUN_1000_0580:1000:05c9(c), 
                                                                                          FUN_1000_0580:1000:05e9(c), 
                                                                                          FUN_1000_0580:1000:05f1(c)  
       1000:093f 8b 36 54 48     MOV        SI,word ptr [0x4854]
       1000:0943 2e ad           LODSW      CS:SI
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_0945(uint16_t si);
                             //
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x4854]
                             //
                             undefined __cdecl16near FUN_1000_0945()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0945                                   XREF[1]:     FUN_1000_0580:1000:058f(c)  
       1000:0945 89 36 54 48     MOV        word ptr [0x4854],SI
       1000:0949 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_0a16(void);
                             //
                             //
                             undefined __cdecl16near FUN_1000_0a16()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0a16                                   XREF[1]:     FUN_1000_0309:1000:0324(c)  
       1000:0a16 ff 36 da db     PUSH       word ptr [0xdbda]
       1000:0a1a e8 06 00        CALL       FUN_1000_0a23                                    undefined FUN_1000_0a23()
       1000:0a1d 8f 06 da db     POP        word ptr [0xdbda]
                             LAB_1000_0a21                                   XREF[1]:     FUN_1000_0a23:1000:0a36(j)  
       1000:0a21 f8              CLC
       1000:0a22 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_0a23(void);
                             //
                             //
                             undefined FUN_1000_0a23()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0a23                                   XREF[1]:     FUN_1000_0a16:1000:0a1a(c)  
       1000:0a23 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:0a28 74 06           JZ         LAB_1000_0a30
       1000:0a2a e8 61 b6        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:0a2d e9 30 c0        JMP        FUN_1000_ca60                                    undefined FUN_1000_ca60()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_0a30                                   XREF[1]:     1000:0a28(j)  
       1000:0a30 e8 49 b6        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:0a33 e8 be bf        CALL       FUN_1000_c9f4                                    undefined FUN_1000_c9f4()
       1000:0a36 74 e9           JZ         LAB_1000_0a21
       1000:0a38 e8 a2 ba        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
       1000:0a3b e9 ae d1        JMP        FUN_1000_dbec                                    undefined FUN_1000_dbec()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_0a3e(void);
                             //
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_0a3e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0a3e                                   XREF[1]:     FUN_1000_0911:1000:0936(c)  
       1000:0a3e be 16 0a        MOV        SI,0xa16
       1000:0a41 e9 1b d0        JMP        FUN_1000_da5f                                    undefined FUN_1000_da5f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0acd(void);
                             //
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbda]
                             //   Write to: word ptr [0x2786]
                             //   Write to: byte ptr CS:[FUN_1000_c13b+1]
                             //
                             undefined FUN_1000_0acd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0acd                                   XREF[1]:     FUN_1000_2db1:1000:2dec(c)  
       1000:0acd c7 06 86        MOV        word ptr [0x2786],0xc827
                 27 27 c8
       1000:0ad3 2e c6 06        MOV        byte ptr CS:[FUN_1000_c13b+1],0x2b
                 3c c1 2b
       1000:0ad9 e8 5f b6        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:0adc e8 9d b5        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:0adf be 82 15        MOV        SI,0x1582
       1000:0ae2 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:0ae6 b8 02 00        MOV        AX,0x2
       1000:0ae9 e8 84 b8        CALL       FUN_1000_c370                                    undefined FUN_1000_c370()
       1000:0aec be 8a 15        MOV        SI,0x158a
       1000:0aef b8 03 00        MOV        AX,0x3
       1000:0af2 e8 7b b8        CALL       FUN_1000_c370                                    undefined FUN_1000_c370()
       1000:0af5 be dd 11        MOV        SI,0x11dd
       1000:0af8 e8 20 b7        CALL       FUN_1000_c21b                                    undefined FUN_1000_c21b()
       1000:0afb e8 a2 50        CALL       FUN_1000_5ba0                                    undefined FUN_1000_5ba0()
       1000:0afe bf 56 48        MOV        DI,0x4856
       1000:0b01 33 c0           XOR        AX,AX
       1000:0b03 1e              PUSH       DS
       1000:0b04 07              POP        ES
       1000:0b05 b9 08 00        MOV        CX,0x8
       1000:0b08 f3 aa           STOSB.REP  ES:DI
       1000:0b0a be 45 0b        MOV        SI,0xb45
       1000:0b0d e8 4f cf        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:0b10 be 45 0b        MOV        SI,0xb45
       1000:0b13 bd 03 00        MOV        BP,0x3
       1000:0b16 e8 0c cf        CALL       FUN_1000_da25                                    undefined FUN_1000_da25()
       1000:0b19 e8 f6 b8        CALL       FUN_1000_c412                                    undefined FUN_1000_c412()
       1000:0b1c b0 03           MOV        AL,0x3
       1000:0b1e e9 f4 9f        JMP        FUN_1000_ab15                                    undefined FUN_1000_ab15()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_0b21(void);
                             //
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Write to: byte ptr CS:[FUN_1000_c13b+1]
                             //   Write to: word ptr [0x3cbe]
                             //
                             undefined __cdecl16near FUN_1000_0b21()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0b21                                   XREF[4]:     FUN_1000_0911:1000:0917(c), 
                                                                                          FUN_1000_18ba:1000:18ea(c), 
                                                                                          FUN_1000_1b23:1000:1bcc(c), 
                                                                                          FUN_1000_1bec:1000:1c0e(c)  
       1000:0b21 e8 0c a1        CALL       FUN_1000_ac30                                    undefined FUN_1000_ac30()
       1000:0b24 2e c6 06        MOV        byte ptr CS:[FUN_1000_c13b+1],0x25
                 3c c1 25
       1000:0b2a be 45 0b        MOV        SI,0xb45
       1000:0b2d e8 2f cf        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:0b30 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:0b35 75 07           JNZ        LAB_1000_0b3e
       1000:0b37 80 3e fb        CMP        byte ptr [0xfb],0x0
                 00 00
       1000:0b3c 78 06           JS         LAB_1000_0b44
                             LAB_1000_0b3e                                   XREF[1]:     1000:0b35(j)  
       1000:0b3e c7 06 be        MOV        word ptr [0x3cbe],0x0
                 3c 00 00
                             LAB_1000_0b44                                   XREF[1]:     1000:0b3c(j)  
       1000:0b44 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0d45(void);
                             //
                             // Input/Output Parameters:
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BL (uint8_t): 8-bit output value in BL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x46d7]
                             //
                             undefined __cdecl16near FUN_1000_0d45()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0d45                                   XREF[1]:     FUN_1000_0d8e:1000:0db3(c)  
       1000:0d45 e8 14 2c        CALL       FUN_1000_395c                                    undefined FUN_1000_395c()
       1000:0d48 e8 26 2c        CALL       FUN_1000_3971                                    undefined FUN_1000_3971()
       1000:0d4b e8 6b 2c        CALL       FUN_1000_39b9                                    undefined FUN_1000_39b9()
       1000:0d4e fe 06 7d 22     INC        byte ptr [0x227d]
       1000:0d52 b9 03 00        MOV        CX,0x3
                             LAB_1000_0d55                                   XREF[1]:     1000:0d77(j)  
       1000:0d55 51              PUSH       CX
       1000:0d56 b3 28           MOV        BL,0x28
       1000:0d58 e8 16 2c        CALL       FUN_1000_3971                                    undefined FUN_1000_3971()
       1000:0d5b e8 2e 2c        CALL       FUN_1000_398c                                    undefined FUN_1000_398c()
       1000:0d5e e8 93 b3        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:0d61 c6 06 d7        MOV        byte ptr [0x46d7],0x20
                 46 20
                             LAB_1000_0d66                                   XREF[1]:     1000:0d74(j)  
       1000:0d66 bd 1d 39        MOV        BP,0x391d
       1000:0d69 b8 03 00        MOV        AX,0x3
       1000:0d6c e8 e4 d5        CALL       FUN_1000_e353                                    undefined FUN_1000_e353()
       1000:0d6f 80 3e d7        CMP        byte ptr [0x46d7],0x10
                 46 10
       1000:0d74 73 f0           JNC        LAB_1000_0d66
       1000:0d76 59              POP        CX
       1000:0d77 e2 dc           LOOP       LAB_1000_0d55
                             LAB_1000_0d79                                   XREF[1]:     1000:0d87(j)  
       1000:0d79 bd 1d 39        MOV        BP,0x391d
       1000:0d7c b8 03 00        MOV        AX,0x3
       1000:0d7f e8 d1 d5        CALL       FUN_1000_e353                                    undefined FUN_1000_e353()
       1000:0d82 80 3e d7        CMP        byte ptr [0x46d7],0x0
                 46 00
       1000:0d87 75 f0           JNZ        LAB_1000_0d79
       1000:0d89 fe 0e 7d 22     DEC        byte ptr [0x227d]
       1000:0d8d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_0d8e(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x2254]
                             //   Read from: word ptr [0x2256]
                             //   Write to: [0x473b]
                             //   Write to: [0x46ec]
                             //   Write to: word ptr [0x2]
                             //
                             undefined __cdecl16near FUN_1000_0d8e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0d8e                                   XREF[1]:     FUN_1000_d815:1000:d848(c)  
       1000:0d8e 80 3e a9        CMP        byte ptr [0x47a9],0x0
                 47 00
       1000:0d93 75 08           JNZ        LAB_1000_0d9d
       1000:0d95 33 c0           XOR        AX,AX
       1000:0d97 38 06 d9 46     CMP        byte ptr [0x46d9],AL
       1000:0d9b 79 01           JNS        LAB_1000_0d9e
                             LAB_1000_0d9d                                   XREF[1]:     1000:0d93(j)  
       1000:0d9d c3              RET
                             LAB_1000_0d9e                                   XREF[1]:     1000:0d9b(j)  
       1000:0d9e a2 3b 47        MOV        [0x473b],AL
       1000:0da1 a2 ec 46        MOV        [0x46ec],AL
       1000:0da4 38 06 fb 00     CMP        byte ptr [0xfb],AL
       1000:0da8 79 06           JNS        LAB_1000_0db0
       1000:0daa e8 05 ce        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:0dad e9 bb 0a        JMP        LAB_1000_186b
                             LAB_1000_0db0                                   XREF[1]:     1000:0da8(j)  
       1000:0db0 e8 0a c5        CALL       FUN_1000_d2bd                                    undefined FUN_1000_d2bd()
       1000:0db3 e8 8f ff        CALL       FUN_1000_0d45                                    undefined FUN_1000_0d45()
       1000:0db6 e8 f9 cd        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:0db9 e8 2a 8b        CALL       FUN_1000_98e6                                    undefined FUN_1000_98e6()
       1000:0dbc c7 06 02        MOV        word ptr [0x2],0x16c5
                 00 c5 16
       1000:0dc2 e8 a1 00        CALL       FUN_1000_0e66                                    undefined FUN_1000_0e66()
       1000:0dc5 c6 06 ca        MOV        byte ptr [0x11ca],0x1
                 11 01
       1000:0dca e8 73 91        CALL       FUN_1000_9f40                                    undefined FUN_1000_9f40()
       1000:0dcd c7 06 c4        MOV        word ptr [0x47c4],0xffff
                 47 ff ff
       1000:0dd3 b0 80           MOV        AL,0x80
       1000:0dd5 86 06 d9 46     XCHG       byte ptr [0x46d9],AL
       1000:0dd9 32 e4           XOR        AH,AH
       1000:0ddb 50              PUSH       AX
       1000:0ddc 05 ba 00        ADD        AX,0xba
       1000:0ddf e8 1f 8b        CALL       FUN_1000_9901                                    undefined FUN_1000_9901()
       1000:0de2 e8 ca 7a        CALL       FUN_1000_88af                                    undefined FUN_1000_88af()
       1000:0de5 e8 19 8b        CALL       FUN_1000_9901                                    undefined FUN_1000_9901()
       1000:0de8 be 54 22        MOV        SI,0x2254
       1000:0deb e8 2d 6d        CALL       FUN_1000_7b1b                                    undefined FUN_1000_7b1b()
       1000:0dee e8 62 cc        CALL       FUN_1000_da53                                    undefined FUN_1000_da53()
       1000:0df1 58              POP        AX
       1000:0df2 bb 5d 22        MOV        BX,0x225d
       1000:0df5 d7              XLAT       BX
       1000:0df6 0a c0           OR         AL,AL
       1000:0df8 78 28           JS         LAB_1000_0e22
       1000:0dfa e8 a3 83        CALL       FUN_1000_91a0                                    undefined FUN_1000_91a0()
       1000:0dfd c4 36 b0 db     LES        SI,[0xdbb0]
       1000:0e01 26 ad           LODSW      ES:SI
       1000:0e03 d1 e8           SHR        AX,0x1
       1000:0e05 2d 03 00        SUB        AX,0x3
       1000:0e08 8b 16 54 22     MOV        DX,word ptr [0x2254]
       1000:0e0c 8b 1e 56 22     MOV        BX,word ptr [0x2256]
       1000:0e10 42              INC        DX
       1000:0e11 43              INC        BX
       1000:0e12 50              PUSH       AX
       1000:0e13 e8 e7 b4        CALL       FUN_1000_c2fd                                    undefined FUN_1000_c2fd()
       1000:0e16 58              POP        AX
       1000:0e17 40              INC        AX
       1000:0e18 e8 14 b4        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:0e1b ff 1e 35 39     CALLF      [0x3935]
       1000:0e1f e8 db 90        CALL       FUN_1000_9efd                                    undefined FUN_1000_9efd()
                             LAB_1000_0e22                                   XREF[1]:     1000:0df8(j)  
       1000:0e22 e8 a8 b6        CALL       FUN_1000_c4cd                                    undefined FUN_1000_c4cd()
       1000:0e25 c6 06 27        MOV        byte ptr [0x4727],0x0
                 47 00
       1000:0e2a e8 14 c9        CALL       FUN_1000_d741                                    undefined FUN_1000_d741()
       1000:0e2d c6 06 a7        MOV        byte ptr [0x47a7],0x1
                 47 01
       1000:0e32 bd a2 20        MOV        BP,0x20a2
       1000:0e35 bb 66 0f        MOV        BX,0xf66
       1000:0e38 e8 e8 c4        CALL       FUN_1000_d323                                    undefined FUN_1000_d323()
       1000:0e3b e9 ae cd        JMP        FUN_1000_dbec                                    undefined FUN_1000_dbec()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0e66(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             undefined FUN_1000_0e66()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0e66                                   XREF[1]:     FUN_1000_0d8e:1000:0dc2(c)  
       1000:0e66 e8 f5 9e        CALL       FUN_1000_ad5e                                    undefined FUN_1000_ad5e()
       1000:0e69 b8 0c 00        MOV        AX,0xc
       1000:0e6c 50              PUSH       AX
       1000:0e6d e8 35 99        CALL       FUN_1000_a7a5                                    undefined FUN_1000_a7a5()
       1000:0e70 58              POP        AX
       1000:0e71 bd 1e 18        MOV        BP,0x181e
       1000:0e74 e9 84 ba        JMP        FUN_1000_c8fb                                    undefined FUN_1000_c8fb()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0e77(void);
                             //
                             // Input/Output Parameters:
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             undefined FUN_1000_0e77()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0e77                                   XREF[1]:     FUN_1000_3723:1000:3757(c)  
       1000:0e77 e8 d6 9e        CALL       FUN_1000_ad50                                    undefined FUN_1000_ad50()
       1000:0e7a e8 ff b1        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:0e7d b8 0b 00        MOV        AX,0xb
       1000:0e80 e8 98 bb        CALL       FUN_1000_ca1b                                    undefined FUN_1000_ca1b()
       1000:0e83 e8 57 b6        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
       1000:0e86 e8 6b b2        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:0e89 b9 05 00        MOV        CX,0x5
                             LAB_1000_0e8c                                   XREF[1]:     1000:0e9b(j)  
       1000:0e8c 51              PUSH       CX
                             LAB_1000_0e8d                                   XREF[1]:     1000:0e90(j)  
       1000:0e8d e8 64 bb        CALL       FUN_1000_c9f4                                    undefined FUN_1000_c9f4()
       1000:0e90 74 fb           JZ         LAB_1000_0e8d
       1000:0e92 b0 3c           MOV        AL,0x3c
       1000:0e94 bd 97 17        MOV        BP,0x1797
       1000:0e97 e8 6e b2        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:0e9a 59              POP        CX
       1000:0e9b e2 ef           LOOP       LAB_1000_0e8c
       1000:0e9d e8 61 bb        CALL       FUN_1000_ca01                                    undefined FUN_1000_ca01()
       1000:0ea0 e8 6f b5        CALL       FUN_1000_c412                                    undefined FUN_1000_c412()
       1000:0ea3 e9 78 09        JMP        FUN_1000_181e                                    undefined FUN_1000_181e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             switchD_1000:6c21::caseD_3                      XREF[1]:     1000:6c21(j)  
                             switchD_1000:6c21::caseD_4
                             switchD_1000:6c21::caseD_5
                             switchD_1000:6c21::caseD_6
                             switchD_1000:6c21::caseD_7
                             switchD_1000:6c21::caseD_9
                             switchD_1000:6c21::caseD_a
                             switchD_1000:6c21::caseD_b
                             switchD_1000:6c21::caseD_c
                             switchD_1000:6c21::caseD_d
                             switchD_1000:6c21::caseD_e
                             switchD_1000:6c21::caseD_f
                             switchD_1000:6c21::caseD_2
       1000:0f66 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0fa7(void);
                             //
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             undefined FUN_1000_0fa7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0fa7                                   XREF[2]:     FUN_1000_1707:1000:175f(c), 
                                                                                          FUN_1000_1b23:1000:1be6(c)  
       1000:0fa7 e8 08 cc        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:0faa b0 2a           MOV        AL,0x2a
       1000:0fac e8 eb 08        CALL       FUN_1000_189a                                    undefined FUN_1000_189a()
       1000:0faf e9 b1 c7        JMP        FUN_1000_d763                                    undefined FUN_1000_d763()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_0fd9(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x146e]
                             //   Write to: byte ptr [0x46da]
                             //   Write to: [0x46db]
                             //   Write to: byte ptr [0x46dd]
                             //
                             undefined __cdecl16near FUN_1000_0fd9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_0fd9                                   XREF[3]:     1000:1003(j), 
                                                                                          FUN_1000_3723:1000:375d(c), 
                                                                                          FUN_1000_4b3b:1000:4b4a(c)  
       1000:0fd9 c6 06 da        MOV        byte ptr [0x46da],0x1
                 46 01
       1000:0fde e8 dd a2        CALL       FUN_1000_b2be                                    undefined FUN_1000_b2be()
       1000:0fe1 0b c9           OR         CX,CX
       1000:0fe3 7e 20           JLE        LAB_1000_1005
       1000:0fe5 51              PUSH       CX
       1000:0fe6 a1 6e 14        MOV        AX,[0x146e]
       1000:0fe9 a3 db 46        MOV        [0x46db],AX
       1000:0fec 80 3e dd        CMP        byte ptr [0x46dd],0x0
                 46 00
       1000:0ff1 74 03           JZ         LAB_1000_0ff6
       1000:0ff3 e8 2d 0b        CALL       FUN_1000_1b23                                    undefined FUN_1000_1b23()
                             LAB_1000_0ff6                                   XREF[1]:     1000:0ff1(j)  
       1000:0ff6 ff 06 02 00     INC        word ptr [0x2]
       1000:0ffa c6 06 dd        MOV        byte ptr [0x46dd],0x1
                 46 01
       1000:0fff e8 21 0b        CALL       FUN_1000_1b23                                    undefined FUN_1000_1b23()
       1000:1002 59              POP        CX
       1000:1003 e2 d4           LOOP       FUN_1000_0fd9
                             LAB_1000_1005                                   XREF[1]:     1000:0fe3(j)  
       1000:1005 c6 06 da        MOV        byte ptr [0x46da],0x0
                 46 00
       1000:100a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1071(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0xff]
                             //   Write to: byte ptr [0x2a]
                             //   Write to: byte ptr [0xfdb]
                             //
                             undefined FUN_1000_1071()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1071                                   XREF[1]:     FUN_1000_2b2a:1000:2bbe(c)  
       1000:1071 c6 06 ff        MOV        byte ptr [0xff],0x0
                 00 00
       1000:1076 c6 06 2a        MOV        byte ptr [0x2a],0x15
                 00 15
       1000:107b c6 06 db        MOV        byte ptr [0xfdb],0x1
                 0f 01
       1000:1080 c7 06 18        MOV        word ptr [0x1018],0x200b
                 10 0b 20
       1000:1086 c7 06 1a        MOV        word ptr [0x101a],0x180
                 10 80 01
       1000:108c c6 06 e8        MOV        byte ptr [0xfe8],0xa
                 0f 0a
       1000:1091 c6 06 d5        MOV        byte ptr [0xd5],0xff
                 00 ff
       1000:1096 e8 f7 0f        CALL       FUN_1000_2090                                    undefined FUN_1000_2090()
       1000:1099 80 0e 0a        OR         byte ptr [0xa],0x1
                 00 01
       1000:109e b8 01 00        MOV        AX,0x1
       1000:10a1 e9 4a 19        JMP        FUN_1000_29ee                                    undefined FUN_1000_29ee()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_11cb(uint16_t bx, uint16_t dx);
                             //
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   DL (uint8_t): 8-bit output value in DL register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0xff]
                             //   Write to: byte ptr [0x2a]
                             //   Write to: word ptr [0x1048]
                             //
                             undefined __cdecl16near FUN_1000_11cb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_11cb                                   XREF[1]:     FUN_1000_1eda:1000:1f0d(c)  
       1000:11cb c6 06 ff        MOV        byte ptr [0xff],0x0
                 00 00
       1000:11d0 c6 06 2a        MOV        byte ptr [0x2a],0x60
                 00 60
       1000:11d5 bf 1c 01        MOV        DI,0x11c
       1000:11d8 e8 d3 2e        CALL       FUN_1000_40ae                                    undefined FUN_1000_40ae()
       1000:11db b2 02           MOV        DL,0x2
       1000:11dd 89 16 48 10     MOV        word ptr [0x1048],DX
       1000:11e1 89 1e 4a 10     MOV        word ptr [0x104a],BX
       1000:11e5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_121f(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0x2a]
                             //   Write to: [0x2a]
                             //   Write to: byte ptr [0xff]
                             //
                             undefined __cdecl16near FUN_1000_121f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_121f                                   XREF[3]:     FUN_1000_1ebe:1000:1ed3(c), 
                                                                                          FUN_1000_425b:1000:427e(c), 
                                                                                          FUN_1000_6c46:1000:6c6b(c)  
       1000:121f 3a 06 2a 00     CMP        AL,byte ptr [0x2a]
       1000:1223 76 1d           JBE        LAB_1000_1242
       1000:1225 a2 2a 00        MOV        [0x2a],AL
       1000:1228 c6 06 ff        MOV        byte ptr [0xff],0x0
                 00 00
       1000:122d e8 4a 9f        CALL       FUN_1000_b17a                                    undefined FUN_1000_b17a()
       1000:1230 8a 1e 2a 00     MOV        BL,byte ptr [0x2a]
       1000:1234 80 fb 6c        CMP        BL,0x6c
       1000:1237 77 09           JA         LAB_1000_1242
       1000:1239 32 ff           XOR        BH,BH
       1000:123b d1 eb           SHR        BX,0x1
       1000:123d 2e ff 97        CALL       word ptr CS:[BX + 0x11e7]
                 e7 11
                             LAB_1000_1242                                   XREF[2]:     1000:1223(j), 1000:1237(j)  
       1000:1242 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_1243(void);
                             //
                             // Input/Output Parameters:
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             undefined __cdecl16near FUN_1000_1243()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1243                                   XREF[1]:     FUN_1000_9f40:1000:9f51(c)  
       1000:1243 bd 69 12        MOV        BP,0x1269
       1000:1246 33 d2           XOR        DX,DX
       1000:1248 33 db           XOR        BX,BX
       1000:124a e8 0b 00        CALL       FUN_1000_1258                                    undefined FUN_1000_1258()
       1000:124d 81 fb e8 03     CMP        BX,0x3e8
       1000:1251 72 04           JC         LAB_1000_1257
       1000:1253 fe 06 c2 00     INC        byte ptr [0xc2]
                             LAB_1000_1257                                   XREF[1]:     1000:1251(j)  
       1000:1257 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_1258(void);
                             //
                             // Input/Output Parameters:
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             undefined __cdecl16near FUN_1000_1258()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1258                                   XREF[1]:     FUN_1000_1243:1000:124a(c)  
       1000:1258 bf 38 01        MOV        DI,0x138
       1000:125b b9 03 00        MOV        CX,0x3
                             LAB_1000_125e                                   XREF[1]:     1000:1266(j)  
       1000:125e 51              PUSH       CX
       1000:125f e8 bb 53        CALL       FUN_1000_661d                                    undefined FUN_1000_661d()
       1000:1262 59              POP        CX
       1000:1263 83 c7 1c        ADD        DI,0x1c
       1000:1266 e2 f6           LOOP       LAB_1000_125e
       1000:1268 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_127c(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //
                             undefined __cdecl16near FUN_1000_127c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_127c                                   XREF[2]:     FUN_1000_3d2f:1000:3d5b(c), 
                                                                                          FUN_1000_9908:1000:9940(c)  
       1000:127c 3c 04           CMP        AL,0x4
       1000:127e 75 0d           JNZ        LAB_1000_128d
       1000:1280 80 3e 2a        CMP        byte ptr [0x2a],0x15
                 00 15
       1000:1285 72 06           JC         LAB_1000_128d
       1000:1287 80 3e 2a        CMP        byte ptr [0x2a],0x20
                 00 20
       1000:128c c3              RET
                             LAB_1000_128d                                   XREF[2]:     1000:127e(j), 1000:1285(j)  
       1000:128d f8              CLC
       1000:128e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_16fc(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x2a]
                             //
                             undefined FUN_1000_16fc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_16fc                                   XREF[1]:     FUN_1000_3f15:1000:4078(c)  
       1000:16fc c6 06 2a        MOV        byte ptr [0x2a],0xc8
                 00 c8
       1000:1701 b8 8f 12        MOV        AX,0x128f
       1000:1704 e8 6a 00        CALL       FUN_1000_1771                                    undefined FUN_1000_1771()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1707(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x477a]
                             //   Read from: [0x4776]
                             //   Write to: byte ptr [0xce9d]
                             //   Write to: word ptr [0x477a]
                             //   Write to: [0x4]
                             //
                             undefined FUN_1000_1707()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1707                                   XREF[1]:     FUN_1000_d815:1000:d8ab(c)  
       1000:1707 81 3e 20        CMP        word ptr [0x2220],0x1fae
                 22 ae 1f
       1000:170d 75 0b           JNZ        LAB_1000_171a
       1000:170f bf 56 1b        MOV        DI,0x1b56
       1000:1712 e8 e9 bf        CALL       FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
       1000:1715 73 03           JNC        LAB_1000_171a
       1000:1717 e9 bb 87        JMP        FUN_1000_9ed5                                    undefined FUN_1000_9ed5()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_171a                                   XREF[2]:     1000:170d(j), 1000:1715(j)  
       1000:171a c6 06 9d        MOV        byte ptr [0xce9d],0x0
                 ce 00
       1000:171f 8b 36 7a 47     MOV        SI,word ptr [0x477a]
       1000:1723 2e ac           LODSB      CS:SI
       1000:1725 3c ff           CMP        AL,0xff
       1000:1727 74 0d           JZ         LAB_1000_1736
       1000:1729 89 36 7a 47     MOV        word ptr [0x477a],SI
       1000:172d 32 e4           XOR        AH,AH
       1000:172f 8b d8           MOV        BX,AX
       1000:1731 2e ff a7        JMP        word ptr CS:[BX + 0x1475]
                 75 14
                             LAB_1000_1736                                   XREF[1]:     1000:1727(j)  
       1000:1736 be 6b 17        MOV        SI,0x176b
       1000:1739 e8 23 c3        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:173c a1 76 47        MOV        AX,[0x4776]
       1000:173f a2 04 00        MOV        [0x4],AL
       1000:1742 88 26 e0 46     MOV        byte ptr [0x46e0],AH
       1000:1746 32 c0           XOR        AL,AL
       1000:1748 a2 74 47        MOV        [0x4774],AL
       1000:174b 80 3e 2a        CMP        byte ptr [0x2a],0x48
                 00 48
       1000:1750 74 03           JZ         LAB_1000_1755
       1000:1752 e8 69 96        CALL       FUN_1000_adbe                                    undefined FUN_1000_adbe()
                             LAB_1000_1755                                   XREF[1]:     1000:1750(j)  
       1000:1755 e8 66 9b        CALL       FUN_1000_b2be                                    undefined FUN_1000_b2be()
       1000:1758 80 3e fb        CMP        byte ptr [0xfb],0x0
                 00 00
       1000:175d 78 03           JS         LAB_1000_1762
       1000:175f e9 45 f8        JMP        FUN_1000_0fa7                                    undefined FUN_1000_0fa7()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_1762                                   XREF[1]:     1000:175d(j)  
       1000:1762 e8 f9 95        CALL       FUN_1000_ad5e                                    undefined FUN_1000_ad5e()
       1000:1765 e8 83 51        CALL       FUN_1000_68eb                                    undefined FUN_1000_68eb()
       1000:1768 e9 9f 60        JMP        FUN_1000_780a                                    undefined FUN_1000_780a()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1771(uint16_t ax);
                             //
                             // Input Parameters:
                             //   AX (uint16_t): 16-bit input value in AX register
                             //
                             // Return Values:
                             //   AH (uint8_t): 8-bit output value in AH register
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [0x4]
                             //   Read from: byte ptr [0x46e0]
                             //   Write to: [0x477a]
                             //   Write to: word ptr [0x4778]
                             //   Write to: [0x4776]
                             //
                             undefined FUN_1000_1771()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1771                                   XREF[1]:     FUN_1000_16fc:1000:1704(c)  
       1000:1771 a3 7a 47        MOV        [0x477a],AX
       1000:1774 c7 06 78        MOV        word ptr [0x4778],0x0
                 47 00 00
       1000:177a fe 06 74 47     INC        byte ptr [0x4774]
       1000:177e e8 38 9b        CALL       FUN_1000_b2b9                                    undefined FUN_1000_b2b9()
       1000:1781 e8 da 95        CALL       FUN_1000_ad5e                                    undefined FUN_1000_ad5e()
       1000:1784 a0 04 00        MOV        AL,[0x4]
       1000:1787 8a 26 e0 46     MOV        AH,byte ptr [0x46e0]
       1000:178b a3 76 47        MOV        [0x4776],AX
       1000:178e bd 64 00        MOV        BP,0x64
       1000:1791 be 6b 17        MOV        SI,0x176b
       1000:1794 e9 8e c2        JMP        FUN_1000_da25                                    undefined FUN_1000_da25()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_1797(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             undefined FUN_1000_1797()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1797                                   XREF[6]:     FUN_1000_0086:1000:0095(c), 
                                                                                          FUN_1000_17be:1000:17df(c), 
                                                                                          FUN_1000_2db1:1000:2def(c), 
                                                                                          FUN_1000_2db1:1000:2e26(c), 
                                                                                          FUN_1000_c4fb:1000:c517(c), 
                                                                                          FUN_1000_c6ad:1000:c79f(c)  
       1000:1797 ff 36 84 27     PUSH       word ptr [0x2784]
       1000:179b e8 99 a9        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:179e ba 7e 00        MOV        DX,0x7e
       1000:17a1 bb 94 00        MOV        BX,0x94
       1000:17a4 b8 0f 00        MOV        AX,0xf
       1000:17a7 e8 85 aa        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:17aa b8 10 00        MOV        AX,0x10
       1000:17ad 02 06 e8 00     ADD        AL,byte ptr [0xe8]
       1000:17b1 ba 96 00        MOV        DX,0x96
       1000:17b4 bb 89 00        MOV        BX,0x89
       1000:17b7 e8 75 aa        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:17ba 58              POP        AX
       1000:17bb e9 80 a9        JMP        FUN_1000_c13e                                    undefined FUN_1000_c13e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_17be(void);
                             //
                             // Input/Output Parameters:
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbd6]
                             //
                             undefined FUN_1000_17be()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_17be                                   XREF[4]:     FUN_1000_17e6:1000:17f8(c), 
                                                                                          FUN_1000_181e:1000:1829(c), 
                                                                                          FUN_1000_1843:1000:184f(c), 
                                                                                          FUN_1000_1843:1000:185d(c)  
       1000:17be e8 bb a8        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:17c1 be 6e 1e        MOV        SI,0x1e6e
       1000:17c4 56              PUSH       SI
       1000:17c5 80 3e 66        CMP        byte ptr [0xce66],0x0
                 ce 00
       1000:17ca 75 05           JNZ        LAB_1000_17d1
       1000:17cc e8 77 ac        CALL       FUN_1000_c446                                    undefined FUN_1000_c446()
       1000:17cf eb 0e           JMP        LAB_1000_17df
                             LAB_1000_17d1                                   XREF[1]:     1000:17ca(j)  
       1000:17d1 bd 76 1e        MOV        BP,0x1e76
       1000:17d4 be 9e cd        MOV        SI,0xcd9e
       1000:17d7 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:17db ff 1e 1d 39     CALLF      [0x391d]
                             LAB_1000_17df                                   XREF[1]:     1000:17cf(j)  
       1000:17df e8 b5 ff        CALL       FUN_1000_1797                                    undefined FUN_1000_1797()
       1000:17e2 5e              POP        SI
       1000:17e3 e9 0a ad        JMP        FUN_1000_c4f0                                    undefined FUN_1000_c4f0()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_17e6(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             undefined __cdecl16near FUN_1000_17e6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_17e6                                   XREF[5]:     1000:1801(j), 
                                                                                          FUN_1000_189a:1000:18b7(c), 
                                                                                          FUN_1000_2db1:1000:2df8(c), 
                                                                                          FUN_1000_2e52:1000:2e7a(c), 
                                                                                          FUN_1000_5a1a:1000:5a3a(c)  
       1000:17e6 80 3e c9        CMP        byte ptr [0x11c9],0x0
                 11 00
       1000:17eb 75 30           JNZ        LAB_1000_181d
       1000:17ed 80 3e e8        CMP        byte ptr [0xe8],0xa
                 00 0a
       1000:17f2 74 29           JZ         LAB_1000_181d
       1000:17f4 fe 06 e8 00     INC        byte ptr [0xe8]
       1000:17f8 e8 c3 ff        CALL       FUN_1000_17be                                    undefined FUN_1000_17be()
       1000:17fb b8 08 00        MOV        AX,0x8
       1000:17fe e8 86 cb        CALL       FUN_1000_e387                                    undefined FUN_1000_e387()
       1000:1801 eb e3           JMP        FUN_1000_17e6
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_1803(void);
                             //
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0xce66]
                             //
                             undefined __cdecl16near FUN_1000_1803()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1803                                   XREF[1]:     FUN_1000_9f9e:1000:9fec(c)  
       1000:1803 80 3e e7        CMP        byte ptr [0x28e7],0x0
                 28 00
       1000:1808 75 13           JNZ        LAB_1000_181d
       1000:180a 80 3e e8        CMP        byte ptr [0xe8],0x0
                 00 00
       1000:180f 74 0c           JZ         LAB_1000_181d
       1000:1811 c6 06 66        MOV        byte ptr [0xce66],0x1
                 ce 01
       1000:1816 e8 05 00        CALL       FUN_1000_181e                                    undefined FUN_1000_181e()
       1000:1819 fe 0e 66 ce     DEC        byte ptr [0xce66]
                             LAB_1000_181d                                   XREF[6]:     FUN_1000_17e6:1000:17eb(j), 
                                                                                          FUN_1000_17e6:1000:17f2(j), 
                                                                                          1000:1808(j), 1000:180f(j), 
                                                                                          FUN_1000_181e:1000:1823(j), 
                                                                                          FUN_1000_1843:1000:1848(j)  
       1000:181d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_181e(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             undefined __cdecl16near FUN_1000_181e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_181e                                   XREF[3]:     FUN_1000_0e77:1000:0ea3(c), 
                                                                                          FUN_1000_1803:1000:1816(c), 
                                                                                          1000:1832(j)  
       1000:181e 80 3e e8        CMP        byte ptr [0xe8],0x0
                 00 00
       1000:1823 74 f8           JZ         LAB_1000_181d
       1000:1825 fe 0e e8 00     DEC        byte ptr [0xe8]
       1000:1829 e8 92 ff        CALL       FUN_1000_17be                                    undefined FUN_1000_17be()
       1000:182c b8 08 00        MOV        AX,0x8
       1000:182f e8 55 cb        CALL       FUN_1000_e387                                    undefined FUN_1000_e387()
       1000:1832 eb ea           JMP        FUN_1000_181e
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_1834(void);
                             //
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbd6]
                             //
                             undefined __cdecl16near FUN_1000_1834()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1834                                   XREF[2]:     FUN_1000_2db1:1000:2e23(c), 
                                                                                          FUN_1000_9381:1000:93cf(c)  
       1000:1834 be 9e cd        MOV        SI,0xcd9e
       1000:1837 bd 76 1e        MOV        BP,0x1e76
       1000:183a 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:183e ff 1e 19 39     CALLF      [0x3919]
       1000:1842 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1843(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0xe8]
                             //   Write to: byte ptr [0xe8]
                             //
                             undefined FUN_1000_1843()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1843                                   XREF[1]:     FUN_1000_1860:1000:1868(c)  
       1000:1843 80 3e e8        CMP        byte ptr [0xe8],0x0
                 00 00
       1000:1848 74 d3           JZ         LAB_1000_181d
       1000:184a c6 06 e8        MOV        byte ptr [0xe8],0x9
                 00 09
       1000:184f e8 6c ff        CALL       FUN_1000_17be                                    undefined FUN_1000_17be()
       1000:1852 b8 08 00        MOV        AX,0x8
       1000:1855 e8 2f cb        CALL       FUN_1000_e387                                    undefined FUN_1000_e387()
       1000:1858 c6 06 e8        MOV        byte ptr [0xe8],0x8
                 00 08
       1000:185d e9 5e ff        JMP        FUN_1000_17be                                    undefined FUN_1000_17be()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1860(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: [0x28e8]
                             //   Write to: [0x28e7]
                             //   Write to: word ptr [0x1c14]
                             //   Write to: word ptr [0x1c22]
                             //
                             undefined __cdecl16near FUN_1000_1860()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1860                                   XREF[1]:     entry:1000:002c(c)  
       1000:1860 80 3e c9        CMP        byte ptr [0x11c9],0x0
                 11 00
       1000:1865 74 01           JZ         LAB_1000_1868
       1000:1867 c3              RET
                             LAB_1000_1868                                   XREF[1]:     1000:1865(j)  
       1000:1868 e8 d8 ff        CALL       FUN_1000_1843                                    undefined FUN_1000_1843()
                             LAB_1000_186b                                   XREF[1]:     FUN_1000_0d8e:1000:0dad(j)  
       1000:186b e8 35 c2        CALL       FUN_1000_daa3                                    undefined FUN_1000_daa3()
       1000:186e f6 1e fb 00     NEG        byte ptr [0xfb]
       1000:1872 79 03           JNS        LAB_1000_1877
       1000:1874 e9 a3 41        JMP        FUN_1000_5a1a                                    undefined FUN_1000_5a1a()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_1877                                   XREF[1]:     1000:1872(j)  
       1000:1877 e8 43 ba        CALL       FUN_1000_d2bd                                    undefined FUN_1000_d2bd()
       1000:187a e8 62 42        CALL       FUN_1000_5adf                                    undefined FUN_1000_5adf()
       1000:187d a0 e8 28        MOV        AL,[0x28e8]
       1000:1880 a2 e7 28        MOV        [0x28e7],AL
       1000:1883 e8 aa a0        CALL       FUN_1000_b930                                    undefined FUN_1000_b930()
       1000:1886 c7 06 14        MOV        word ptr [0x1c14],0x80
                 1c 80 00
       1000:188c c7 06 22        MOV        word ptr [0x1c22],0x80
                 1c 80 00
       1000:1892 bd 5a d7        MOV        BP,0xd75a
       1000:1895 e8 ff a7        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:1898 b0 34           MOV        AL,0x34
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_189a(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: [0xce7a]
                             //   Write to: [0xdc5a]
                             //
                             undefined FUN_1000_189a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_189a                                   XREF[2]:     FUN_1000_0fa7:1000:0fac(c), 
                                                                                          FUN_1000_2b2a:1000:2c8c(c)  
       1000:189a bd b1 2d        MOV        BP,0x2db1
       1000:189d 80 3e d9        CMP        byte ptr [0x46d9],0x0
                 46 00
       1000:18a2 74 02           JZ         LAB_1000_18a6
       1000:18a4 ff e5           JMP        BP
                             LAB_1000_18a6                                   XREF[1]:     1000:18a2(j)  
       1000:18a6 33 d2           XOR        DX,DX
       1000:18a8 e8 5d a8        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:18ab e8 ce a7        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:18ae e8 53 95        CALL       FUN_1000_ae04                                    undefined FUN_1000_ae04()
       1000:18b1 a1 7a ce        MOV        AX,[0xce7a]
       1000:18b4 a3 5a dc        MOV        [0xdc5a],AX
       1000:18b7 e9 2c ff        JMP        FUN_1000_17e6                                    undefined FUN_1000_17e6()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_18ba(void);
                             //
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x1c06]
                             //   Write to: word ptr [0x1c14]
                             //   Write to: word ptr [0x1c22]
                             //
                             undefined __cdecl16near FUN_1000_18ba()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_18ba                                   XREF[1]:     FUN_1000_5a1a:1000:5a1f(c)  
       1000:18ba c7 06 06        MOV        word ptr [0x1c06],0x0
                 1c 00 00
       1000:18c0 c7 06 14        MOV        word ptr [0x1c14],0x0
                 1c 00 00
       1000:18c6 c7 06 22        MOV        word ptr [0x1c22],0x0
                 1c 00 00
       1000:18cc e8 17 21        CALL       FUN_1000_39e6                                    undefined FUN_1000_39e6()
       1000:18cf e8 5e 93        CALL       FUN_1000_ac30                                    undefined FUN_1000_ac30()
       1000:18d2 e8 2b 34        CALL       FUN_1000_4d00                                    undefined FUN_1000_4d00()
       1000:18d5 e8 e5 b9        CALL       FUN_1000_d2bd                                    undefined FUN_1000_d2bd()
       1000:18d8 e8 ef 31        CALL       FUN_1000_4aca                                    undefined FUN_1000_4aca()
       1000:18db e8 08 80        CALL       FUN_1000_98e6                                    undefined FUN_1000_98e6()
       1000:18de c6 06 df        MOV        byte ptr [0x46df],0x0
                 46 00
       1000:18e3 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:18e8 74 03           JZ         LAB_1000_18ed
       1000:18ea e8 34 f2        CALL       FUN_1000_0b21                                    undefined FUN_1000_0b21()
                             LAB_1000_18ed                                   XREF[1]:     1000:18e8(j)  
       1000:18ed c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1a0f(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined __cdecl16near FUN_1000_1a0f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1a0f                                   XREF[1]:     FUN_1000_1b23:1000:1b40(c)  
       1000:1a0f 83 3e fe        CMP        word ptr [0x1afe],0x0
                 1a 00
       1000:1a14 75 1d           JNZ        LAB_1000_1a33
       1000:1a16 e8 99 c1        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:1a19 ff 36 84 27     PUSH       word ptr [0x2784]
       1000:1a1d e8 17 a7        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:1a20 be f4 1a        MOV        SI,0x1af4
       1000:1a23 e8 da b7        CALL       FUN_1000_d200                                    undefined FUN_1000_d200()
       1000:1a26 e8 0b 00        CALL       FUN_1000_1a34                                    undefined FUN_1000_1a34()
       1000:1a29 be 06 1f        MOV        SI,0x1f06
       1000:1a2c e8 7b aa        CALL       FUN_1000_c4aa                                    undefined FUN_1000_c4aa()
       1000:1a2f 58              POP        AX
       1000:1a30 e8 0b a7        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
                             LAB_1000_1a33                                   XREF[2]:     1000:1a14(j), 
                                                                                          FUN_1000_1a34:1000:1a39(j)  
       1000:1a33 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_1a34(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [0x2]
                             //   Write to: word ptr [0xdbe4]
                             //
                             undefined __cdecl16near FUN_1000_1a34()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1a34                                   XREF[3]:     FUN_1000_1a0f:1000:1a26(c), 
                                                                                          FUN_1000_d23d:1000:d265(c), 
                                                                                          FUN_1000_d23d:1000:d27c(c)  
       1000:1a34 83 3e fe        CMP        word ptr [0x1afe],0x0
                 1a 00
       1000:1a39 75 f8           JNZ        LAB_1000_1a33
       1000:1a3b ff 36 da db     PUSH       word ptr [0xdbda]
       1000:1a3f e8 4c a6        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:1a42 a1 02 00        MOV        AX,[0x2]
       1000:1a45 25 0f 00        AND        AX,0xf
       1000:1a48 d1 e0           SHL        AX,0x1
       1000:1a4a d1 e0           SHL        AX,0x1
       1000:1a4c d1 e0           SHL        AX,0x1
       1000:1a4e 05 7e 1e        ADD        AX,0x1e7e
       1000:1a51 8b f0           MOV        SI,AX
       1000:1a53 b8 4a 00        MOV        AX,0x4a
       1000:1a56 e8 42 00        CALL       FUN_1000_1a9b                                    undefined FUN_1000_1a9b()
       1000:1a59 b8 4b 00        MOV        AX,0x4b
       1000:1a5c e8 3c 00        CALL       FUN_1000_1a9b                                    undefined FUN_1000_1a9b()
       1000:1a5f e8 13 b6        CALL       FUN_1000_d075                                    undefined FUN_1000_d075()
       1000:1a62 c7 06 e4        MOV        word ptr [0xdbe4],0xf1fa
                 db fa f1
       1000:1a68 e8 66 00        CALL       FUN_1000_1ad1                                    undefined FUN_1000_1ad1()
       1000:1a6b bb 6d 01        MOV        BX,0x16d
       1000:1a6e 03 c3           ADD        AX,BX
                             LAB_1000_1a70                                   XREF[1]:     1000:1a74(j)  
       1000:1a70 2b c3           SUB        AX,BX
       1000:1a72 3b c3           CMP        AX,BX
       1000:1a74 73 fa           JNC        LAB_1000_1a70
       1000:1a76 40              INC        AX
       1000:1a77 ba 0b 00        MOV        DX,0xb
       1000:1a7a bb be 00        MOV        BX,0xbe
       1000:1a7d 3d 64 00        CMP        AX,0x64
       1000:1a80 73 0b           JNC        LAB_1000_1a8d
       1000:1a82 80 ea 02        SUB        DL,0x2
       1000:1a85 3d 0a 00        CMP        AX,0xa
       1000:1a88 73 03           JNC        LAB_1000_1a8d
       1000:1a8a 80 ea 02        SUB        DL,0x2
                             LAB_1000_1a8d                                   XREF[2]:     1000:1a80(j), 1000:1a88(j)  
       1000:1a8d e8 00 c8        CALL       FUN_1000_e290                                    undefined FUN_1000_e290()
       1000:1a90 b0 20           MOV        AL,0x20
       1000:1a92 ff 16 18 25     CALL       word ptr [0x2518]
       1000:1a96 8f 06 da db     POP        word ptr [0xdbda]
       1000:1a9a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_1a9b(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbd8]
                             //
                             undefined __cdecl16near FUN_1000_1a9b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1a9b                                   XREF[2]:     FUN_1000_1a34:1000:1a56(c), 
                                                                                          FUN_1000_1a34:1000:1a5c(c)  
       1000:1a9b 50              PUSH       AX
       1000:1a9c ad              LODSW      SI
       1000:1a9d 8b d0           MOV        DX,AX
       1000:1a9f ad              LODSW      SI
       1000:1aa0 8b d8           MOV        BX,AX
       1000:1aa2 58              POP        AX
       1000:1aa3 0b d2           OR         DX,DX
       1000:1aa5 74 1d           JZ         LAB_1000_1ac4
       1000:1aa7 56              PUSH       SI
       1000:1aa8 e8 49 a7        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:1aab 1e              PUSH       DS
       1000:1aac 06              PUSH       ES
       1000:1aad 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:1ab1 1f              POP        DS
       1000:1ab2 ad              LODSW      SI
       1000:1ab3 8b f8           MOV        DI,AX
       1000:1ab5 ad              LODSW      SI
       1000:1ab6 8b c8           MOV        CX,AX
       1000:1ab8 32 ed           XOR        CH,CH
       1000:1aba bd fe 1e        MOV        BP,0x1efe
       1000:1abd 36 ff 1e        CALLF      [0x38cd]
                 cd 38
       1000:1ac2 1f              POP        DS
       1000:1ac3 5e              POP        SI
                             LAB_1000_1ac4                                   XREF[1]:     1000:1aa5(j)  
       1000:1ac4 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t divide_by_16(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x2]
                             //
                             undefined __cdecl16near divide_by_16()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             divide_by_16                                   XREF[5]:     FUN_1000_1e43:1000:1e43(c), 
                                                                                          FUN_1000_2090:1000:2090(c), 
                                                                                          FUN_1000_2566:1000:25cd(c), 
                                                                                          FUN_1000_31f6:1000:328d(c), 
                                                                                          FUN_1000_7429:1000:744e(c)  
       1000:1ac5 a1 02 00        MOV        AX,[0x2]
       1000:1ac8 d1 e8           SHR        AX,0x1
       1000:1aca d1 e8           SHR        AX,0x1
       1000:1acc d1 e8           SHR        AX,0x1
       1000:1ace d1 e8           SHR        AX,0x1
       1000:1ad0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1ad1(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x2]
                             //
                             undefined __cdecl16near FUN_1000_1ad1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1ad1                                   XREF[2]:     FUN_1000_1a34:1000:1a68(c), 
                                                                                          FUN_1000_bdfa:1000:bdfd(c)  
       1000:1ad1 a1 02 00        MOV        AX,[0x2]
       1000:1ad4 05 03 00        ADD        AX,0x3
       1000:1ad7 d1 e8           SHR        AX,0x1
       1000:1ad9 d1 e8           SHR        AX,0x1
       1000:1adb d1 e8           SHR        AX,0x1
       1000:1add d1 e8           SHR        AX,0x1
       1000:1adf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1ae0(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x2]
                             //
                             undefined __cdecl16near FUN_1000_1ae0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1ae0                                   XREF[2]:     FUN_1000_1b23:1000:1b76(c), 
                                                                                          FUN_1000_2efb:1000:2fc6(c)  
       1000:1ae0 a1 02 00        MOV        AX,[0x2]
       1000:1ae3 25 0f 00        AND        AX,0xf
       1000:1ae6 c3              RET
                             LAB_1000_1b0c                                   XREF[4]:     1000:1b10(j), 1000:1b17(j), 
                                                                                          1000:1b1e(j), 
                                                                                          FUN_1000_1b23:1000:1b28(j)  
       1000:1b0c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_1b0d(void);
                             //
                             //
                             undefined __cdecl16near FUN_1000_1b0d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1b0d                                   XREF[1]:     FUN_1000_d815:1000:d83b(c)  
       1000:1b0d e8 bc 90        CALL       FUN_1000_abcc                                    undefined FUN_1000_abcc()
       1000:1b10 75 fa           JNZ        LAB_1000_1b0c
       1000:1b12 80 3e 88        CMP        byte ptr [0x2788],0x0
                 27 00
       1000:1b17 75 f3           JNZ        LAB_1000_1b0c
       1000:1b19 80 3e 2a        CMP        byte ptr [0x2a],0xc8
                 00 c8
       1000:1b1e 73 ec           JNC        LAB_1000_1b0c
       1000:1b20 e8 07 10        CALL       FUN_1000_2b2a                                    undefined FUN_1000_2b2a()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1b23(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [0xf4]
                             //   Read from: [0x2]
                             //   Read from: word ptr [0x114e]
                             //   Write to: byte ptr [0x46dd]
                             //   Write to: [0xf5]
                             //   Write to: [0xf4]
                             //
                             undefined FUN_1000_1b23()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1b23                                   XREF[2]:     FUN_1000_0fd9:1000:0ff3(c), 
                                                                                          FUN_1000_0fd9:1000:0fff(c)  
       1000:1b23 80 3e dd        CMP        byte ptr [0x46dd],0x0
                 46 00
       1000:1b28 74 e2           JZ         LAB_1000_1b0c
       1000:1b2a c6 06 dd        MOV        byte ptr [0x46dd],0x0
                 46 00
       1000:1b2f a0 f4 00        MOV        AL,[0xf4]
       1000:1b32 fe c8           DEC        AL
       1000:1b34 3c 10           CMP        AL,0x10
       1000:1b36 7d 05           JGE        LAB_1000_1b3d
       1000:1b38 32 c0           XOR        AL,AL
       1000:1b3a a2 f5 00        MOV        [0xf5],AL
                             LAB_1000_1b3d                                   XREF[1]:     1000:1b36(j)  
       1000:1b3d a2 f4 00        MOV        [0xf4],AL
       1000:1b40 e8 cc fe        CALL       FUN_1000_1a0f                                    undefined FUN_1000_1a0f()
       1000:1b43 e8 9b 1d        CALL       FUN_1000_38e1                                    undefined FUN_1000_38e1()
       1000:1b46 a1 02 00        MOV        AX,[0x2]
       1000:1b49 8b c8           MOV        CX,AX
       1000:1b4b 87 06 74 11     XCHG       word ptr [0x1174],AX
       1000:1b4f 24 f0           AND        AL,0xf0
       1000:1b51 80 e1 f0        AND        CL,0xf0
       1000:1b54 2a c1           SUB        AL,CL
       1000:1b56 a2 de 46        MOV        [0x46de],AL
       1000:1b59 74 03           JZ         LAB_1000_1b5e
       1000:1b5b e8 e8 00        CALL       FUN_1000_1c46                                    undefined FUN_1000_1c46()
                             LAB_1000_1b5e                                   XREF[1]:     1000:1b59(j)  
       1000:1b5e 80 3e c2        CMP        byte ptr [0xc2],0x7
                 00 07
       1000:1b63 73 4d           JNC        FUN_1000_1bb2
       1000:1b65 e8 37 02        CALL       FUN_1000_1d9f                                    undefined FUN_1000_1d9f()
       1000:1b68 ff 36 f7 11     PUSH       word ptr [0x11f7]
       1000:1b6c ff 36 ce 11     PUSH       word ptr [0x11ce]
       1000:1b70 e8 fc 50        CALL       FUN_1000_6c6f                                    undefined FUN_1000_6c6f()
       1000:1b73 e8 7a 48        CALL       FUN_1000_63f0                                    undefined FUN_1000_63f0()
       1000:1b76 e8 67 ff        CALL       FUN_1000_1ae0                                    undefined FUN_1000_1ae0()
       1000:1b79 d1 e0           SHL        AX,0x1
       1000:1b7b 8b f0           MOV        SI,AX
       1000:1b7d 2e ff 94        CALL       word ptr CS:[SI + 0x1db3]
                 b3 1d
       1000:1b82 e8 93 00        CALL       FUN_1000_1c18                                    undefined FUN_1000_1c18()
       1000:1b85 5f              POP        DI
       1000:1b86 e8 95 17        CALL       FUN_1000_331e                                    undefined FUN_1000_331e()
       1000:1b89 8f 06 f7 11     POP        word ptr [0x11f7]
       1000:1b8d e8 5c 00        CALL       FUN_1000_1bec                                    undefined FUN_1000_1bec()
       1000:1b90 80 3e d9        CMP        byte ptr [0x46d9],0x0
                 46 00
       1000:1b95 75 1b           JNZ        FUN_1000_1bb2
       1000:1b97 80 3e ec        CMP        byte ptr [0x46ec],0x0
                 46 00
       1000:1b9c 74 03           JZ         LAB_1000_1ba1
       1000:1b9e e8 cc 41        CALL       FUN_1000_5d6d                                    undefined FUN_1000_5d6d()
                             LAB_1000_1ba1                                   XREF[1]:     1000:1b9c(j)  
       1000:1ba1 8b 3e 4e 11     MOV        DI,word ptr [0x114e]
       1000:1ba5 0b ff           OR         DI,DI
       1000:1ba7 74 09           JZ         FUN_1000_1bb2
       1000:1ba9 80 3e 3b        CMP        byte ptr [0x473b],0x0
                 47 00
       1000:1bae 78 22           JS         LAB_1000_1bd2
       1000:1bb0 77 06           JA         LAB_1000_1bb8
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_1bb2(void);
                             //
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x473b]
                             //
                             undefined __cdecl16near FUN_1000_1bb2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1bb2                                   XREF[8]:     FUN_1000_1b23:1000:1b63(j), 
                                                                                          FUN_1000_1b23:1000:1b95(j), 
                                                                                          FUN_1000_1b23:1000:1ba7(j), 
                                                                                          FUN_1000_1b23:1000:1bbd(j), 
                                                                                          FUN_1000_1b23:1000:1bc4(j), 
                                                                                          FUN_1000_1b23:1000:1bc9(c), 
                                                                                          FUN_1000_1b23:1000:1bd2(c), 
                                                                                          FUN_1000_1b23:1000:1be1(j)  
       1000:1bb2 c6 06 3b        MOV        byte ptr [0x473b],0x0
                 47 00
       1000:1bb7 c3              RET
                             LAB_1000_1bb8                                   XREF[1]:     1000:1bb0(j)  
       1000:1bb8 80 3e fb        CMP        byte ptr [0xfb],0x0
                 00 00
       1000:1bbd 78 f3           JS         FUN_1000_1bb2
       1000:1bbf 80 3e da        CMP        byte ptr [0x46da],0x0
                 46 00
       1000:1bc4 75 ec           JNZ        FUN_1000_1bb2
       1000:1bc6 e8 e9 bf        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:1bc9 e8 e6 ff        CALL       FUN_1000_1bb2                                    undefined FUN_1000_1bb2()
       1000:1bcc e8 52 ef        CALL       FUN_1000_0b21                                    undefined FUN_1000_0b21()
       1000:1bcf e9 df 11        JMP        FUN_1000_2db1                                    undefined FUN_1000_2db1()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_1bd2                                   XREF[1]:     1000:1bae(j)  
       1000:1bd2 e8 dd ff        CALL       FUN_1000_1bb2                                    undefined FUN_1000_1bb2()
       1000:1bd5 80 3e fb        CMP        byte ptr [0xfb],0x0
                 00 00
       1000:1bda 78 0d           JS         LAB_1000_1be9
       1000:1bdc 80 3e da        CMP        byte ptr [0x46da],0x0
                 46 00
       1000:1be1 75 cf           JNZ        FUN_1000_1bb2
       1000:1be3 e8 d7 b6        CALL       FUN_1000_d2bd                                    undefined FUN_1000_d2bd()
       1000:1be6 e9 be f3        JMP        FUN_1000_0fa7                                    undefined FUN_1000_0fa7()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_1be9                                   XREF[1]:     1000:1bda(j)  
       1000:1be9 e9 81 41        JMP        FUN_1000_5d6d                                    undefined FUN_1000_5d6d()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_1bec(void);
                             //
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x114e]
                             //   Write to: byte ptr [0x46d9]
                             //
                             undefined __cdecl16near FUN_1000_1bec()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1bec                                   XREF[1]:     FUN_1000_1b23:1000:1b8d(c)  
       1000:1bec 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:1bf1 74 24           JZ         LAB_1000_1c17
       1000:1bf3 8b 3e 4e 11     MOV        DI,word ptr [0x114e]
       1000:1bf7 e8 42 34        CALL       FUN_1000_503c                                    undefined FUN_1000_503c()
       1000:1bfa 80 3e d9        CMP        byte ptr [0x46d9],0x0
                 46 00
       1000:1bff 74 05           JZ         LAB_1000_1c06
       1000:1c01 c6 06 d9        MOV        byte ptr [0x46d9],0x6
                 46 06
                             LAB_1000_1c06                                   XREF[1]:     1000:1bff(j)  
       1000:1c06 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:1c0b 75 0a           JNZ        LAB_1000_1c17
       1000:1c0d 57              PUSH       DI
       1000:1c0e e8 10 ef        CALL       FUN_1000_0b21                                    undefined FUN_1000_0b21()
       1000:1c11 5f              POP        DI
       1000:1c12 80 0e 3b        OR         byte ptr [0x473b],0x1
                 47 01
                             LAB_1000_1c17                                   XREF[2]:     1000:1bf1(j), 1000:1c0b(j)  
       1000:1c17 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_1c18(void);
                             //
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x46fa]
                             //   Read from: word ptr [0x46f8]
                             //
                             undefined __cdecl16near FUN_1000_1c18()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1c18                                   XREF[2]:     FUN_1000_1b23:1000:1b82(c), 
                                                                                          FUN_1000_5d6d:1000:5dbc(c)  
       1000:1c18 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:1c1d 79 1a           JNS        LAB_1000_1c39
       1000:1c1f e8 19 a5        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:1c22 8b 36 fa 46     MOV        SI,word ptr [0x46fa]
       1000:1c26 0b f6           OR         SI,SI
       1000:1c28 74 03           JZ         LAB_1000_1c2d
       1000:1c2a e8 bc 5c        CALL       FUN_1000_78e9                                    undefined FUN_1000_78e9()
                             LAB_1000_1c2d                                   XREF[1]:     1000:1c28(j)  
       1000:1c2d 8b 3e f8 46     MOV        DI,word ptr [0x46f8]
       1000:1c31 0b ff           OR         DI,DI
       1000:1c33 74 03           JZ         LAB_1000_1c38
       1000:1c35 e8 d6 43        CALL       FUN_1000_600e                                    undefined FUN_1000_600e()
                             LAB_1000_1c38                                   XREF[1]:     1000:1c33(j)  
       1000:1c38 c3              RET
                             LAB_1000_1c39                                   XREF[1]:     1000:1c1d(j)  
       1000:1c39 75 0a           JNZ        LAB_1000_1c45
       1000:1c3b 80 3e fb        CMP        byte ptr [0xfb],0x0
                 00 00
       1000:1c40 79 03           JNS        LAB_1000_1c45
       1000:1c42 e8 76 a1        CALL       FUN_1000_bdbb                                    undefined FUN_1000_bdbb()
                             LAB_1000_1c45                                   XREF[2]:     1000:1c39(j), 1000:1c40(j)  
       1000:1c45 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1c46(uint8_t bl);
                             //
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x2a]
                             //   Read from: [0xd5]
                             //   Read from: word ptr [0xa0]
                             //   Write to: byte ptr [0xff]
                             //   Write to: [0xd5]
                             //   Write to: [0xa6]
                             //
                             undefined __cdecl16near FUN_1000_1c46()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1c46                                   XREF[1]:     FUN_1000_1b23:1000:1b5b(c)  
       1000:1c46 a0 2a 00        MOV        AL,[0x2a]
       1000:1c49 8a e0           MOV        AH,AL
       1000:1c4b 86 06 fe 00     XCHG       byte ptr [0xfe],AL
       1000:1c4f 3a c4           CMP        AL,AH
       1000:1c51 74 05           JZ         LAB_1000_1c58
       1000:1c53 c6 06 ff        MOV        byte ptr [0xff],0x0
                 00 00
                             LAB_1000_1c58                                   XREF[1]:     1000:1c51(j)  
       1000:1c58 fe 06 ff 00     INC        byte ptr [0xff]
       1000:1c5c e8 07 01        CALL       FUN_1000_1d66                                    undefined FUN_1000_1d66()
       1000:1c5f e8 e1 01        CALL       FUN_1000_1e43                                    undefined FUN_1000_1e43()
       1000:1c62 a0 d5 00        MOV        AL,[0xd5]
       1000:1c65 fe c0           INC        AL
       1000:1c67 3c 02           CMP        AL,0x2
       1000:1c69 72 03           JC         LAB_1000_1c6e
       1000:1c6b a2 d5 00        MOV        [0xd5],AL
                             LAB_1000_1c6e                                   XREF[1]:     1000:1c69(j)  
       1000:1c6e 33 c0           XOR        AX,AX
       1000:1c70 87 06 72 11     XCHG       word ptr [0x1172],AX
       1000:1c74 8b 1e a0 00     MOV        BX,word ptr [0xa0]
       1000:1c78 03 c3           ADD        AX,BX
       1000:1c7a 87 1e 70 11     XCHG       word ptr [0x1170],BX
       1000:1c7e 2b c3           SUB        AX,BX
       1000:1c80 73 02           JNC        LAB_1000_1c84
       1000:1c82 33 c0           XOR        AX,AX
                             LAB_1000_1c84                                   XREF[1]:     1000:1c80(j)  
       1000:1c84 a3 a6 00        MOV        [0xa6],AX
       1000:1c87 87 06 ae 00     XCHG       word ptr [0xae],AX
       1000:1c8b 33 db           XOR        BX,BX
       1000:1c8d 2b 06 a6 00     SUB        AX,word ptr [0xa6]
       1000:1c91 73 03           JNC        LAB_1000_1c96
       1000:1c93 f7 d8           NEG        AX
       1000:1c95 93              XCHG       AX,BX
                             LAB_1000_1c96                                   XREF[1]:     1000:1c91(j)  
       1000:1c96 a3 b2 00        MOV        [0xb2],AX
       1000:1c99 89 1e b0 00     MOV        word ptr [0xb0],BX
       1000:1c9d e8 3a 00        CALL       FUN_1000_1cda                                    undefined FUN_1000_1cda()
       1000:1ca0 e8 8b a3        CALL       FUN_1000_c02e                                    undefined FUN_1000_c02e()
       1000:1ca3 e8 80 a2        CALL       FUN_1000_bf26                                    undefined FUN_1000_bf26()
       1000:1ca6 e8 23 c7        CALL       FUN_1000_e3cc                                    undefined FUN_1000_e3cc()
       1000:1ca9 8b d8           MOV        BX,AX
       1000:1cab be d8 10        MOV        SI,0x10d8
                             LAB_1000_1cae                                   XREF[1]:     1000:1cd7(j)  
       1000:1cae f6 44 02 08     TEST       byte ptr [SI + 0x2],0x8
       1000:1cb2 74 1d           JZ         LAB_1000_1cd1
       1000:1cb4 bd 04 00        MOV        BP,0x4
                             LAB_1000_1cb7                                   XREF[1]:     1000:1ccf(j)  
       1000:1cb7 80 7a 04 00     CMP        byte ptr [BP + SI + 0x4],0x0
       1000:1cbb 75 11           JNZ        LAB_1000_1cce
       1000:1cbd 80 7a 09 00     CMP        byte ptr [BP + SI + 0x9],0x0
       1000:1cc1 79 0b           JNS        LAB_1000_1cce
       1000:1cc3 d1 c3           ROL        BX,0x1
       1000:1cc5 d1 c3           ROL        BX,0x1
       1000:1cc7 8a c3           MOV        AL,BL
       1000:1cc9 24 03           AND        AL,0x3
       1000:1ccb 88 42 04        MOV        byte ptr [BP + SI + 0x4],AL
                             LAB_1000_1cce                                   XREF[2]:     1000:1cbb(j), 1000:1cc1(j)  
       1000:1cce 4d              DEC        BP
       1000:1ccf 79 e6           JNS        LAB_1000_1cb7
                             LAB_1000_1cd1                                   XREF[1]:     1000:1cb2(j)  
       1000:1cd1 83 c6 11        ADD        SI,0x11
       1000:1cd4 80 3c 14        CMP        byte ptr [SI],0x14
       1000:1cd7 72 d5           JC         LAB_1000_1cae
       1000:1cd9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1cda(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x12]
                             //   Write to: word ptr [0xa8]
                             //
                             undefined __cdecl16near FUN_1000_1cda()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1cda                                   XREF[2]:     FUN_1000_1c46:1000:1c9d(c), 
                                                                                          FUN_1000_7429:1000:7495(c)  
       1000:1cda bf 00 01        MOV        DI,0x100
       1000:1cdd 33 c9           XOR        CX,CX
       1000:1cdf 33 d2           XOR        DX,DX
                             LAB_1000_1ce1                                   XREF[1]:     1000:1cfa(j)  
       1000:1ce1 e8 52 40        CALL       FUN_1000_5d36                                    undefined FUN_1000_5d36()
       1000:1ce4 72 0e           JC         LAB_1000_1cf4
       1000:1ce6 42              INC        DX
       1000:1ce7 8a 45 12        MOV        AL,byte ptr [DI + 0x12]
       1000:1cea d0 e8           SHR        AL,0x1
       1000:1cec d0 e8           SHR        AL,0x1
       1000:1cee d0 e8           SHR        AL,0x1
       1000:1cf0 32 e4           XOR        AH,AH
       1000:1cf2 03 c8           ADD        CX,AX
                             LAB_1000_1cf4                                   XREF[1]:     1000:1ce4(j)  
       1000:1cf4 83 c7 1c        ADD        DI,0x1c
       1000:1cf7 80 3d ff        CMP        byte ptr [DI],0xff
       1000:1cfa 75 e5           JNZ        LAB_1000_1ce1
       1000:1cfc 8b d9           MOV        BX,CX
       1000:1cfe d1 eb           SHR        BX,0x1
       1000:1d00 d1 eb           SHR        BX,0x1
       1000:1d02 d1 eb           SHR        BX,0x1
       1000:1d04 d1 eb           SHR        BX,0x1
       1000:1d06 e8 d6 c6        CALL       FUN_1000_e3df                                    undefined FUN_1000_e3df()
       1000:1d09 03 c8           ADD        CX,AX
       1000:1d0b 89 0e a8 00     MOV        word ptr [0xa8],CX
       1000:1d0f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_1d66(uint16_t bx);
                             //
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   CS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x2]
                             //   Read from: word ptr [SI]
                             //   Read from: byte ptr [DI + 0x8]
                             //   Write to: word ptr [SI]
                             //
                             undefined __cdecl16near FUN_1000_1d66()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1d66                                   XREF[1]:     FUN_1000_1c46:1000:1c5c(c)  
       1000:1d66 be d8 0f        MOV        SI,0xfd8
       1000:1d69 b9 0c 00        MOV        CX,0xc
                             LAB_1000_1d6c                                   XREF[1]:     1000:1d9c(j)  
       1000:1d6c 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:1d6f 3c 80           CMP        AL,0x80
       1000:1d71 75 26           JNZ        LAB_1000_1d99
       1000:1d73 80 fc ff        CMP        AH,0xff
       1000:1d76 74 21           JZ         LAB_1000_1d99
       1000:1d78 b0 1c           MOV        AL,0x1c
       1000:1d7a f6 e4           MUL        AH
       1000:1d7c 05 e4 00        ADD        AX,0xe4
       1000:1d7f 8b f8           MOV        DI,AX
       1000:1d81 8b 04           MOV        AX,word ptr [SI]
       1000:1d83 8a 5d 08        MOV        BL,byte ptr [DI + 0x8]
       1000:1d86 3a e3           CMP        AH,BL
       1000:1d88 75 09           JNZ        LAB_1000_1d93
       1000:1d8a 32 ff           XOR        BH,BH
       1000:1d8c 2e 3a 87        CMP        AL,byte ptr CS:[BX + 0x1d35]
                 35 1d
       1000:1d91 76 06           JBE        LAB_1000_1d99
                             LAB_1000_1d93                                   XREF[1]:     1000:1d88(j)  
       1000:1d93 8a e3           MOV        AH,BL
       1000:1d95 b0 01           MOV        AL,0x1
       1000:1d97 89 04           MOV        word ptr [SI],AX
                             LAB_1000_1d99                                   XREF[3]:     1000:1d71(j), 1000:1d76(j), 
                                                                                          1000:1d91(j)  
       1000:1d99 83 c6 10        ADD        SI,0x10
       1000:1d9c e2 ce           LOOP       LAB_1000_1d6c
       1000:1d9e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_1d9f(void);
                             //
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined __cdecl16near FUN_1000_1d9f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1d9f                                   XREF[1]:     FUN_1000_1b23:1000:1b65(c)  
       1000:1d9f f7 06 12        TEST       word ptr [0x12],0x80
                 00 80 00
       1000:1da5 75 0b           JNZ        LAB_1000_1db2
       1000:1da7 be 48 10        MOV        SI,0x1048
       1000:1daa e8 54 00        CALL       FUN_1000_1e01                                    undefined FUN_1000_1e01()
       1000:1dad 73 03           JNC        LAB_1000_1db2
       1000:1daf e8 28 01        CALL       FUN_1000_1eda                                    undefined FUN_1000_1eda()
                             LAB_1000_1db2                                   XREF[2]:     1000:1da5(j), 1000:1dad(j)  
       1000:1db2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_1e01(uint8_t bl);
                             //
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x2]
                             //   Write to: byte ptr [SI]
                             //
                             undefined __cdecl16near FUN_1000_1e01()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1e01                                   XREF[1]:     FUN_1000_1d9f:1000:1daa(c)  
       1000:1e01 80 3e 2a        CMP        byte ptr [0x2a],0x5d
                 00 5d
       1000:1e06 75 36           JNZ        LAB_1000_1e3e
       1000:1e08 80 7c 0e 07     CMP        byte ptr [SI + 0xe],0x7
       1000:1e0c 75 30           JNZ        LAB_1000_1e3e
       1000:1e0e 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:1e11 80 fb 80        CMP        BL,0x80
       1000:1e14 75 28           JNZ        LAB_1000_1e3e
       1000:1e16 c6 04 02        MOV        byte ptr [SI],0x2
       1000:1e19 75 23           JNZ        LAB_1000_1e3e
       1000:1e1b b0 1c           MOV        AL,0x1c
       1000:1e1d f6 e7           MUL        BH
       1000:1e1f 05 e4 00        ADD        AX,0xe4
       1000:1e22 8b f8           MOV        DI,AX
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1e24(uint16_t di);
                             //
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x9]
                             //   Read from: byte ptr [SI + 0x1]
                             //
                             undefined __cdecl16near FUN_1000_1e24()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1e24                                   XREF[1]:     FUN_1000_1eda:1000:1ef6(c)  
       1000:1e24 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
       1000:1e27 0a c0           OR         AL,AL
       1000:1e29 74 13           JZ         LAB_1000_1e3e
       1000:1e2b 56              PUSH       SI
                             LAB_1000_1e2c                                   XREF[1]:     1000:1e3b(j)  
       1000:1e2c e8 d7 4a        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:1e2f f7 44 12        TEST       word ptr [SI + 0x12],0x400
                 00 04
       1000:1e34 75 0a           JNZ        LAB_1000_1e40
       1000:1e36 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       1000:1e39 0a c0           OR         AL,AL
       1000:1e3b 75 ef           JNZ        LAB_1000_1e2c
       1000:1e3d 5e              POP        SI
                             LAB_1000_1e3e                                   XREF[5]:     FUN_1000_1e01:1000:1e06(j), 
                                                                                          FUN_1000_1e01:1000:1e0c(j), 
                                                                                          FUN_1000_1e01:1000:1e14(j), 
                                                                                          FUN_1000_1e01:1000:1e19(j), 
                                                                                          1000:1e29(j)  
       1000:1e3e f8              CLC
       1000:1e3f c3              RET
                             LAB_1000_1e40                                   XREF[1]:     1000:1e34(j)  
       1000:1e40 5e              POP        SI
       1000:1e41 f9              STC
       1000:1e42 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1e43(uint16_t ax);
                             //
                             // Input Parameters:
                             //   AX (uint16_t): 16-bit input value in AX register
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x11db]
                             //
                             undefined __cdecl16near FUN_1000_1e43()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1e43                                   XREF[1]:     FUN_1000_1c46:1000:1c5f(c)  
       1000:1e43 e8 7f fc        CALL       divide_by_16                                    undefined divide_by_16()
       1000:1e46 3b 06 56 11     CMP        AX,word ptr [0x1156]
       1000:1e4a 72 5c           JC         LAB_1000_1ea8
       1000:1e4c 80 3e 2a        CMP        byte ptr [0x2a],0x5c
                 00 5c
       1000:1e51 75 55           JNZ        LAB_1000_1ea8
       1000:1e53 81 3e 4e        CMP        word ptr [0x114e],0x7c8
                 11 c8 07
       1000:1e59 74 4d           JZ         LAB_1000_1ea8
       1000:1e5b bf 00 01        MOV        DI,0x100
       1000:1e5e 33 c9           XOR        CX,CX
                             LAB_1000_1e60                                   XREF[1]:     1000:1e88(j)  
       1000:1e60 80 7d 08 28     CMP        byte ptr [DI + 0x8],0x28
       1000:1e64 73 1c           JNC        LAB_1000_1e82
       1000:1e66 f6 45 0a 80     TEST       byte ptr [DI + 0xa],0x80
       1000:1e6a 75 16           JNZ        LAB_1000_1e82
       1000:1e6c 81 ff c0 02     CMP        DI,0x2c0
       1000:1e70 74 10           JZ         LAB_1000_1e82
       1000:1e72 33 d2           XOR        DX,DX
       1000:1e74 bd a1 1e        MOV        BP,0x1ea1
       1000:1e77 e8 a3 47        CALL       FUN_1000_661d                                    undefined FUN_1000_661d()
       1000:1e7a 3b d1           CMP        DX,CX
       1000:1e7c 76 04           JBE        LAB_1000_1e82
       1000:1e7e 8b ca           MOV        CX,DX
       1000:1e80 8b df           MOV        BX,DI
                             LAB_1000_1e82                                   XREF[4]:     1000:1e64(j), 1000:1e6a(j), 
                                                                                          1000:1e70(j), 1000:1e7c(j)  
       1000:1e82 83 c7 1c        ADD        DI,0x1c
       1000:1e85 80 3d ff        CMP        byte ptr [DI],0xff
       1000:1e88 75 d6           JNZ        LAB_1000_1e60
       1000:1e8a e3 1c           JCXZ       LAB_1000_1ea8
       1000:1e8c 8b fb           MOV        DI,BX
       1000:1e8e 89 3e db 11     MOV        word ptr [0x11db],DI
       1000:1e92 fe 06 f8 00     INC        byte ptr [0xf8]
       1000:1e96 bd a9 1e        MOV        BP,0x1ea9
       1000:1e99 e8 81 47        CALL       FUN_1000_661d                                    undefined FUN_1000_661d()
       1000:1e9c b0 08           MOV        AL,0x8
       1000:1e9e e9 11 53        JMP        FUN_1000_71b2                                    undefined FUN_1000_71b2()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_1ea8                                   XREF[4]:     1000:1e4a(j), 1000:1e51(j), 
                                                                                          1000:1e59(j), 1000:1e8a(j)  
       1000:1ea8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1ebe(uint16_t si);
                             //
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x2a]
                             //
                             undefined __cdecl16near FUN_1000_1ebe()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1ebe                                   XREF[1]:     FUN_1000_9381:1000:93a2(c)  
       1000:1ebe f7 44 12        TEST       word ptr [SI + 0x12],0x800
                 00 08
       1000:1ec3 74 14           JZ         LAB_1000_1ed9
       1000:1ec5 a0 2a 00        MOV        AL,[0x2a]
       1000:1ec8 2c 60           SUB        AL,0x60
       1000:1eca 3c 04           CMP        AL,0x4
       1000:1ecc 73 0b           JNC        LAB_1000_1ed9
       1000:1ece e8 9f c3        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:1ed1 b0 64           MOV        AL,0x64
       1000:1ed3 e8 49 f3        CALL       FUN_1000_121f                                    undefined FUN_1000_121f()
       1000:1ed6 e8 aa c3        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_1ed9                                   XREF[2]:     1000:1ec3(j), 1000:1ecc(j)  
       1000:1ed9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_1eda(void);
                             //
                             // Input/Output Parameters:
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x11db]
                             //
                             undefined __cdecl16near FUN_1000_1eda()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_1eda                                   XREF[1]:     FUN_1000_1d9f:1000:1daf(c)  
       1000:1eda 80 06 f9        ADD        byte ptr [0xf9],0x8
                 00 08
       1000:1edf 75 31           JNZ        LAB_1000_1f12
       1000:1ee1 51              PUSH       CX
       1000:1ee2 56              PUSH       SI
       1000:1ee3 bd b1 1e        MOV        BP,0x1eb1
       1000:1ee6 e8 1a 47        CALL       FUN_1000_6603                                    undefined FUN_1000_6603()
       1000:1ee9 b8 09 07        MOV        AX,0x709
       1000:1eec e8 01 0b        CALL       FUN_1000_29f0                                    undefined FUN_1000_29f0()
       1000:1eef fe 0e f8 00     DEC        byte ptr [0xf8]
       1000:1ef3 bf 00 01        MOV        DI,0x100
                             LAB_1000_1ef6                                   XREF[1]:     1000:1f01(j)  
       1000:1ef6 e8 2b ff        CALL       FUN_1000_1e24                                    undefined FUN_1000_1e24()
       1000:1ef9 72 0a           JC         LAB_1000_1f05
       1000:1efb 83 c7 1c        ADD        DI,0x1c
       1000:1efe 80 3d ff        CMP        byte ptr [DI],0xff
       1000:1f01 75 f3           JNZ        LAB_1000_1ef6
       1000:1f03 33 ff           XOR        DI,DI
                             LAB_1000_1f05                                   XREF[1]:     1000:1ef9(j)  
       1000:1f05 89 3e db 11     MOV        word ptr [0x11db],DI
       1000:1f09 0b ff           OR         DI,DI
       1000:1f0b 75 03           JNZ        LAB_1000_1f10
       1000:1f0d e8 bb f2        CALL       FUN_1000_11cb                                    undefined FUN_1000_11cb()
                             LAB_1000_1f10                                   XREF[1]:     1000:1f0b(j)  
       1000:1f10 5e              POP        SI
       1000:1f11 59              POP        CX
                             LAB_1000_1f12                                   XREF[1]:     1000:1edf(j)  
       1000:1f12 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_2090(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DH (uint8_t): 8-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: [0xc3]
                             //   Read from: [0xbe]
                             //   Write to: [0x118d]
                             //   Write to: word ptr [0xbc]
                             //   Write to: byte ptr [0xcf]
                             //
                             undefined FUN_1000_2090()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2090                                   XREF[1]:     FUN_1000_1071:1000:1096(c)  
       1000:2090 e8 32 fa        CALL       divide_by_16                                    undefined divide_by_16()
       1000:2093 a3 8d 11        MOV        [0x118d],AX
       1000:2096 eb 3a           JMP        LAB_1000_20d2
                             LAB_1000_20d2                                   XREF[1]:     1000:2096(j)  
       1000:20d2 a0 c3 00        MOV        AL,[0xc3]
       1000:20d5 fe 06 c3 00     INC        byte ptr [0xc3]
       1000:20d9 bb 96 00        MOV        BX,0x96
       1000:20dc f7 e3           MUL        BX
       1000:20de 0b d2           OR         DX,DX
       1000:20e0 75 2f           JNZ        LAB_1000_2111
       1000:20e2 05 64 00        ADD        AX,0x64
       1000:20e5 72 2a           JC         LAB_1000_2111
       1000:20e7 8b c8           MOV        CX,AX
       1000:20e9 bb 3f 00        MOV        BX,0x3f
       1000:20ec e8 c8 c2        CALL       FUN_1000_e3b7                                    undefined FUN_1000_e3b7()
       1000:20ef 05 e0 00        ADD        AX,0xe0
       1000:20f2 f7 e1           MUL        CX
       1000:20f4 0a f6           OR         DH,DH
       1000:20f6 75 19           JNZ        LAB_1000_2111
       1000:20f8 8a f2           MOV        DH,DL
       1000:20fa 8a d4           MOV        DL,AH
       1000:20fc a0 be 00        MOV        AL,[0xbe]
       1000:20ff d0 e0           SHL        AL,0x1
       1000:2101 72 11           JC         LAB_1000_2114
       1000:2103 f6 d0           NOT        AL
       1000:2105 b4 01           MOV        AH,0x1
       1000:2107 f7 e2           MUL        DX
       1000:2109 86 d6           XCHG       DH,DL
       1000:210b 86 d4           XCHG       AH,DL
       1000:210d 0a e4           OR         AH,AH
       1000:210f 74 03           JZ         LAB_1000_2114
                             LAB_1000_2111                                   XREF[3]:     1000:20e0(j), 1000:20e5(j), 
                                                                                          1000:20f6(j)  
       1000:2111 ba ff ff        MOV        DX,0xffff
                             LAB_1000_2114                                   XREF[2]:     1000:2101(j), 1000:210f(j)  
       1000:2114 89 16 bc 00     MOV        word ptr [0xbc],DX
       1000:2118 c6 06 cf        MOV        byte ptr [0xcf],0x0
                 00 00
       1000:211d 80 0e bf        OR         byte ptr [0xbf],0x90
                 00 90
       1000:2122 b8 0b 02        MOV        AX,0x20b
       1000:2125 80 3e be        CMP        byte ptr [0xbe],0x0
                 00 00
       1000:212a 78 02           JS         LAB_1000_212e
       1000:212c fe c4           INC        AH
                             LAB_1000_212e                                   XREF[1]:     1000:212a(j)  
       1000:212e e9 a9 05        JMP        FUN_1000_26da                                    undefined FUN_1000_26da()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_2170(uint8_t bh, uint8_t bl, uint8_t dh);
                             //
                             // Input Parameters:
                             //   BH (uint8_t): 8-bit input value in BH register
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   DH (uint8_t): 8-bit input value in DH register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI]
                             //   Read from: word ptr [SI + 0x2]
                             //   Read from: byte ptr [SI + 0xe]
                             //   Write to: word ptr [SI]
                             //   Write to: byte ptr [SI]
                             //   Write to: byte ptr [SI]
                             //
                             undefined __cdecl16near FUN_1000_2170()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2170                                   XREF[1]:     FUN_1000_3f15:1000:4054(c)  
       1000:2170 e8 fd c0        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:2173 be d8 0f        MOV        SI,0xfd8
       1000:2176 b9 09 00        MOV        CX,0x9
                             LAB_1000_2179                                   XREF[1]:     1000:21f4(j)  
       1000:2179 f6 44 0f 40     TEST       byte ptr [SI + 0xf],0x40
       1000:217d 75 72           JNZ        LAB_1000_21f1
       1000:217f 8b 14           MOV        DX,word ptr [SI]
       1000:2181 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:2184 81 fe 08 10     CMP        SI,0x1008
       1000:2188 75 0a           JNZ        LAB_1000_2194
       1000:218a 81 fb 80 01     CMP        BX,0x180
       1000:218e 75 04           JNZ        LAB_1000_2194
       1000:2190 b2 04           MOV        DL,0x4
       1000:2192 89 14           MOV        word ptr [SI],DX
                             LAB_1000_2194                                   XREF[2]:     1000:2188(j), 1000:218e(j)  
       1000:2194 80 fb 80        CMP        BL,0x80
       1000:2197 75 55           JNZ        LAB_1000_21ee
       1000:2199 80 fa 01        CMP        DL,0x1
       1000:219c 75 3e           JNZ        LAB_1000_21dc
       1000:219e 80 fe 21        CMP        DH,0x21
       1000:21a1 73 4e           JNC        LAB_1000_21f1
       1000:21a3 3a 3e 09 00     CMP        BH,byte ptr [0x9]
       1000:21a7 74 48           JZ         LAB_1000_21f1
       1000:21a9 b0 1c           MOV        AL,0x1c
       1000:21ab f6 e7           MUL        BH
       1000:21ad 05 e4 00        ADD        AX,0xe4
       1000:21b0 8b f8           MOV        DI,AX
       1000:21b2 f6 45 0a 02     TEST       byte ptr [DI + 0xa],0x2
       1000:21b6 75 39           JNZ        LAB_1000_21f1
       1000:21b8 fe 04           INC        byte ptr [SI]
       1000:21ba 80 ff 01        CMP        BH,0x1
       1000:21bd 75 32           JNZ        LAB_1000_21f1
       1000:21bf bb 4d 14        MOV        BX,0x144d
       1000:21c2 8a 44 0e        MOV        AL,byte ptr [SI + 0xe]
       1000:21c5 d7              XLAT       BX
       1000:21c6 88 04           MOV        byte ptr [SI],AL
       1000:21c8 80 64 0f fb     AND        byte ptr [SI + 0xf],0xfb
       1000:21cc 3c 06           CMP        AL,0x6
       1000:21ce 75 21           JNZ        LAB_1000_21f1
       1000:21d0 80 3e 2a        CMP        byte ptr [0x2a],0x24
                 00 24
       1000:21d5 73 1a           JNC        LAB_1000_21f1
       1000:21d7 c6 04 0a        MOV        byte ptr [SI],0xa
       1000:21da eb 15           JMP        LAB_1000_21f1
                             LAB_1000_21dc                                   XREF[1]:     1000:219c(j)  
       1000:21dc 81 fe 28 10     CMP        SI,0x1028
       1000:21e0 72 0f           JC         LAB_1000_21f1
       1000:21e2 80 ff 01        CMP        BH,0x1
       1000:21e5 75 0a           JNZ        LAB_1000_21f1
       1000:21e7 e8 10 00        CALL       FUN_1000_21fa                                    undefined FUN_1000_21fa()
       1000:21ea 88 04           MOV        byte ptr [SI],AL
       1000:21ec eb 03           JMP        LAB_1000_21f1
                             LAB_1000_21ee                                   XREF[1]:     1000:2197(j)  
       1000:21ee e8 2c 00        CALL       FUN_1000_221d                                    undefined FUN_1000_221d()
                             LAB_1000_21f1                                   XREF[11]:    1000:217d(j), 1000:21a1(j), 
                                                                                          1000:21a7(j), 1000:21b6(j), 
                                                                                          1000:21bd(j), 1000:21ce(j), 
                                                                                          1000:21d5(j), 1000:21da(j), 
                                                                                          1000:21e0(j), 1000:21e5(j), 
                                                                                          1000:21ec(j)  
       1000:21f1 83 c6 10        ADD        SI,0x10
       1000:21f4 e2 83           LOOP       LAB_1000_2179
       1000:21f6 e8 8a c0        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:21f9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_21fa(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             undefined __cdecl16near FUN_1000_21fa()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_21fa                                   XREF[4]:     FUN_1000_2170:1000:21e7(c), 
                                                                                          1000:220b(j), 1000:2216(j), 
                                                                                          1000:221a(j)  
       1000:21fa bb 0a 00        MOV        BX,0xa
       1000:21fd e8 df c1        CALL       FUN_1000_e3df                                    undefined FUN_1000_e3df()
       1000:2200 04 02           ADD        AL,0x2
       1000:2202 80 3e 2a        CMP        byte ptr [0x2a],0x54
                 00 54
       1000:2207 73 13           JNC        LAB_1000_221c
       1000:2209 3c 03           CMP        AL,0x3
       1000:220b 74 ed           JZ         FUN_1000_21fa
       1000:220d 80 3e 2a        CMP        byte ptr [0x2a],0x24
                 00 24
       1000:2212 73 08           JNC        LAB_1000_221c
       1000:2214 3c 0b           CMP        AL,0xb
       1000:2216 74 e2           JZ         FUN_1000_21fa
       1000:2218 3c 06           CMP        AL,0x6
       1000:221a 74 de           JZ         FUN_1000_21fa
                             LAB_1000_221c                                   XREF[2]:     1000:2207(j), 1000:2212(j)  
       1000:221c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_221d(uint8_t bh, uint16_t bx);
                             //
                             // Input Parameters:
                             //   BH (uint8_t): 8-bit input value in BH register
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI]
                             //   Write to: word ptr [SI]
                             //   Write to: word ptr [SI + 0x2]
                             //
                             undefined __cdecl16near FUN_1000_221d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_221d                                   XREF[1]:     FUN_1000_2170:1000:21ee(c)  
       1000:221d 51              PUSH       CX
       1000:221e 56              PUSH       SI
       1000:221f 8b 14           MOV        DX,word ptr [SI]
       1000:2221 e8 20 31        CALL       FUN_1000_5344                                    undefined FUN_1000_5344()
       1000:2224 e8 87 1e        CALL       FUN_1000_40ae                                    undefined FUN_1000_40ae()
       1000:2227 5e              POP        SI
       1000:2228 59              POP        CX
       1000:2229 89 14           MOV        word ptr [SI],DX
       1000:222b 89 5c 02        MOV        word ptr [SI + 0x2],BX
       1000:222e 3a 3e 09 00     CMP        BH,byte ptr [0x9]
       1000:2232 75 04           JNZ        LAB_1000_2238
       1000:2234 80 4c 0f 04     OR         byte ptr [SI + 0xf],0x4
                             LAB_1000_2238                                   XREF[1]:     1000:2232(j)  
       1000:2238 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_2524(uint16_t ax);
                             //
                             // Input Parameters:
                             //   AX (uint16_t): 16-bit input value in AX register
                             //
                             undefined __cdecl16near FUN_1000_2524()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2524                                   XREF[1]:     FUN_1000_2566:1000:2570(c)  
       1000:2524 29 06 a0 00     SUB        word ptr [0xa0],AX
       1000:2528 01 06 72 11     ADD        word ptr [0x1172],AX
       1000:252c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_2566(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0xc3]
                             //   Read from: word ptr [0xdbd6]
                             //   Write to: [0xbe]
                             //   Write to: byte ptr [0xbe]
                             //   Write to: byte ptr [0xbf]
                             //
                             undefined FUN_1000_2566()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2566                                   XREF[1]:     FUN_1000_35ad:1000:35e0(c)  
       1000:2566 be 08 10        MOV        SI,0x1008
       1000:2569 50              PUSH       AX
       1000:256a e8 79 1b        CALL       FUN_1000_40e6                                    undefined FUN_1000_40e6()
       1000:256d 58              POP        AX
       1000:256e 8b d8           MOV        BX,AX
       1000:2570 e8 b1 ff        CALL       FUN_1000_2524                                    undefined FUN_1000_2524()
       1000:2573 8b c3           MOV        AX,BX
       1000:2575 33 d2           XOR        DX,DX
       1000:2577 86 c4           XCHG       AH,AL
       1000:2579 86 c2           XCHG       DL,AL
       1000:257b f7 36 bc 00     DIV        word ptr [0xbc]
       1000:257f 3d 00 02        CMP        AX,0x200
       1000:2582 72 03           JC         LAB_1000_2587
       1000:2584 b8 ff 01        MOV        AX,0x1ff
                             LAB_1000_2587                                   XREF[1]:     1000:2582(j)  
       1000:2587 d1 e8           SHR        AX,0x1
       1000:2589 75 02           JNZ        LAB_1000_258d
       1000:258b b0 01           MOV        AL,0x1
                             LAB_1000_258d                                   XREF[1]:     1000:2589(j)  
       1000:258d a2 be 00        MOV        [0xbe],AL
       1000:2590 b4 40           MOV        AH,0x40
       1000:2592 bb 07 00        MOV        BX,0x7
       1000:2595 3c c0           CMP        AL,0xc0
       1000:2597 73 1a           JNC        LAB_1000_25b3
       1000:2599 4b              DEC        BX
       1000:259a 3c 80           CMP        AL,0x80
       1000:259c 77 15           JA         LAB_1000_25b3
       1000:259e 4b              DEC        BX
       1000:259f 32 e4           XOR        AH,AH
       1000:25a1 3c 80           CMP        AL,0x80
       1000:25a3 74 0e           JZ         LAB_1000_25b3
       1000:25a5 4b              DEC        BX
       1000:25a6 b4 08           MOV        AH,0x8
       1000:25a8 84 26 bf 00     TEST       byte ptr [0xbf],AH
       1000:25ac 74 05           JZ         LAB_1000_25b3
       1000:25ae c6 06 be        MOV        byte ptr [0xbe],0x0
                 00 00
                             LAB_1000_25b3                                   XREF[4]:     1000:2597(j), 1000:259c(j), 
                                                                                          1000:25a3(j), 1000:25ac(j)  
       1000:25b3 80 cc 80        OR         AH,0x80
       1000:25b6 88 26 bf 00     MOV        byte ptr [0xbf],AH
       1000:25ba be 8d 11        MOV        SI,0x118d
       1000:25bd 01 1c           ADD        word ptr [SI],BX
       1000:25bf 8a 1e c3 00     MOV        BL,byte ptr [0xc3]
       1000:25c3 d0 eb           SHR        BL,0x1
       1000:25c5 83 e3 03        AND        BX,0x3
       1000:25c8 e8 ec bd        CALL       FUN_1000_e3b7                                    undefined FUN_1000_e3b7()
       1000:25cb 01 04           ADD        word ptr [SI],AX
       1000:25cd e8 f5 f4        CALL       divide_by_16                                    undefined divide_by_16()
       1000:25d0 2b 04           SUB        AX,word ptr [SI]
       1000:25d2 f7 d8           NEG        AX
       1000:25d4 a2 cf 00        MOV        [0xcf],AL
       1000:25d7 c7 06 58        MOV        word ptr [0x1158],0x0
                 11 00 00
       1000:25dd e8 26 02        CALL       FUN_1000_2806                                    undefined FUN_1000_2806()
       1000:25e0 e8 b2 01        CALL       FUN_1000_2795                                    undefined FUN_1000_2795()
       1000:25e3 e8 b4 9e        CALL       FUN_1000_c49a                                    undefined FUN_1000_c49a()
       1000:25e6 b8 2c 00        MOV        AX,0x2c
       1000:25e9 e8 52 9b        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:25ec e8 05 9b        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:25ef bd 55 25        MOV        BP,0x2555
       1000:25f2 b0 08           MOV        AL,0x8
       1000:25f4 e8 11 9b        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:25f7 b8 64 00        MOV        AX,0x64
       1000:25fa e8 b3 b7        CALL       FUN_1000_ddb0                                    undefined FUN_1000_ddb0()
       1000:25fd b9 18 00        MOV        CX,0x18
       1000:2600 bd 44 0a        MOV        BP,0xa44
       1000:2603 b0 06           MOV        AL,0x6
       1000:2605 e8 00 9b        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:2608 b9 18 00        MOV        CX,0x18
                             LAB_1000_260b                                   XREF[1]:     1000:2617(j)  
       1000:260b 51              PUSH       CX
       1000:260c bd 44 0a        MOV        BP,0xa44
       1000:260f b8 0c 00        MOV        AX,0xc
       1000:2612 49              DEC        CX
       1000:2613 e8 3d bd        CALL       FUN_1000_e353                                    undefined FUN_1000_e353()
       1000:2616 59              POP        CX
       1000:2617 e2 f2           LOOP       LAB_1000_260b
       1000:2619 b8 27 00        MOV        AX,0x27
       1000:261c e8 30 85        CALL       FUN_1000_ab4f                                    undefined FUN_1000_ab4f()
       1000:261f be 60 4c        MOV        SI,0x4c60
       1000:2622 bd aa 15        MOV        BP,0x15aa
       1000:2625 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:2629 ff 1e 19 39     CALLF      [0x3919]
       1000:262d b8 c8 00        MOV        AX,0xc8
       1000:2630 e8 7d b7        CALL       FUN_1000_ddb0                                    undefined FUN_1000_ddb0()
       1000:2633 e8 73 85        CALL       FUN_1000_aba9                                    undefined FUN_1000_aba9()
       1000:2636 b0 01           MOV        AL,0x1
       1000:2638 e8 da 84        CALL       FUN_1000_ab15                                    undefined FUN_1000_ab15()
       1000:263b b9 01 00        MOV        CX,0x1
                             LAB_1000_263e                                   XREF[1]:     1000:265f(j)  
       1000:263e 51              PUSH       CX
       1000:263f be b2 15        MOV        SI,0x15b2
                             LAB_1000_2642                                   XREF[1]:     1000:265c(j)  
       1000:2642 56              PUSH       SI
       1000:2643 bd ac 26        MOV        BP,0x26ac
       1000:2646 b8 0c 00        MOV        AX,0xc
       1000:2649 e8 07 bd        CALL       FUN_1000_e353                                    undefined FUN_1000_e353()
       1000:264c 5e              POP        SI
       1000:264d 81 fe 1e 16     CMP        SI,0x161e
       1000:2651 75 03           JNZ        LAB_1000_2656
       1000:2653 e8 da 85        CALL       FUN_1000_ac30                                    undefined FUN_1000_ac30()
                             LAB_1000_2656                                   XREF[1]:     1000:2651(j)  
       1000:2656 83 c6 06        ADD        SI,0x6
       1000:2659 80 3c ff        CMP        byte ptr [SI],0xff
       1000:265c 75 e4           JNZ        LAB_1000_2642
       1000:265e 59              POP        CX
       1000:265f e2 dd           LOOP       LAB_1000_263e
       1000:2661 e8 48 00        CALL       FUN_1000_26ac                                    undefined FUN_1000_26ac()
       1000:2664 33 c9           XOR        CX,CX
                             LAB_1000_2666                                   XREF[1]:     1000:2675(j)  
       1000:2666 41              INC        CX
       1000:2667 51              PUSH       CX
       1000:2668 bd 44 0a        MOV        BP,0xa44
       1000:266b b8 0c 00        MOV        AX,0xc
       1000:266e e8 e2 bc        CALL       FUN_1000_e353                                    undefined FUN_1000_e353()
       1000:2671 59              POP        CX
       1000:2672 83 f9 19        CMP        CX,0x19
       1000:2675 72 ef           JC         LAB_1000_2666
       1000:2677 c6 06 a9        MOV        byte ptr [0x47a9],0x1
                 47 01
       1000:267c bd b1 2d        MOV        BP,0x2db1
       1000:267f e8 15 9a        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:2682 b8 2c 00        MOV        AX,0x2c
       1000:2685 e8 b6 9a        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:2688 b0 06           MOV        AL,0x6
       1000:268a bd 55 25        MOV        BP,0x2555
       1000:268d e8 78 9a        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:2690 bd b1 2d        MOV        BP,0x2db1
       1000:2693 e8 01 9a        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:2696 c6 06 a9        MOV        byte ptr [0x47a9],0x0
                 47 00
       1000:269b bd a6 26        MOV        BP,0x26a6
       1000:269e b0 08           MOV        AL,0x8
       1000:26a0 e8 65 9a        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:26a3 e9 cd 00        JMP        FUN_1000_2773                                    undefined FUN_1000_2773()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_26ac(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbd6]
                             //
                             undefined __cdecl16near FUN_1000_26ac()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_26ac                                   XREF[1]:     FUN_1000_2566:1000:2661(c)  
       1000:26ac 56              PUSH       SI
       1000:26ad bd aa 15        MOV        BP,0x15aa
       1000:26b0 be 60 4c        MOV        SI,0x4c60
       1000:26b3 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:26b7 ff 1e 1d 39     CALLF      [0x391d]
       1000:26bb 5e              POP        SI
       1000:26bc ad              LODSW      SI
       1000:26bd 0b c0           OR         AX,AX
       1000:26bf 78 0a           JS         LAB_1000_26cb
       1000:26c1 8b d8           MOV        BX,AX
       1000:26c3 ad              LODSW      SI
       1000:26c4 8b d0           MOV        DX,AX
       1000:26c6 ad              LODSW      SI
       1000:26c7 93              XCHG       AX,BX
       1000:26c8 e8 64 9b        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
                             LAB_1000_26cb                                   XREF[1]:     1000:26bf(j)  
       1000:26cb ba 7e 00        MOV        DX,0x7e
       1000:26ce bb 4c 00        MOV        BX,0x4c
       1000:26d1 bd c2 00        MOV        BP,0xc2
       1000:26d4 b8 4c 00        MOV        AX,0x4c
       1000:26d7 e9 4c 9e        JMP        LAB_1000_c526
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_26da(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0xc8]
                             //   Read from: byte ptr [0xc8]
                             //   Write to: word ptr [SI]
                             //
                             undefined __cdecl16near FUN_1000_26da()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_26da                                   XREF[1]:     FUN_1000_2090:1000:212e(c)  
       1000:26da e8 93 bb        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:26dd 8a 0e c8 00     MOV        CL,byte ptr [0xc8]
       1000:26e1 32 ed           XOR        CH,CH
       1000:26e3 e3 0c           JCXZ       LAB_1000_26f1
       1000:26e5 be 79 11        MOV        SI,0x1179
                             LAB_1000_26e8                                   XREF[1]:     1000:26ef(j)  
       1000:26e8 3b 04           CMP        AX,word ptr [SI]
       1000:26ea 74 3f           JZ         LAB_1000_272b
       1000:26ec 83 c6 02        ADD        SI,0x2
       1000:26ef e2 f7           LOOP       LAB_1000_26e8
                             LAB_1000_26f1                                   XREF[1]:     1000:26e3(j)  
       1000:26f1 8a 0e c8 00     MOV        CL,byte ptr [0xc8]
       1000:26f5 be 79 11        MOV        SI,0x1179
       1000:26f8 80 f9 0a        CMP        CL,0xa
       1000:26fb 72 0a           JC         LAB_1000_2707
       1000:26fd 50              PUSH       AX
       1000:26fe e8 2e 00        CALL       FUN_1000_272f                                    undefined FUN_1000_272f()
       1000:2701 b1 09           MOV        CL,0x9
       1000:2703 be 79 11        MOV        SI,0x1179
       1000:2706 58              POP        AX
                             LAB_1000_2707                                   XREF[1]:     1000:26fb(j)  
       1000:2707 02 c9           ADD        CL,CL
       1000:2709 32 ed           XOR        CH,CH
       1000:270b 03 f1           ADD        SI,CX
       1000:270d 89 04           MOV        word ptr [SI],AX
       1000:270f fe 06 c8 00     INC        byte ptr [0xc8]
       1000:2713 fe 06 c9 00     INC        byte ptr [0xc9]
       1000:2717 80 3e 2a        CMP        byte ptr [0x2a],0x38
                 00 38
       1000:271c 72 0d           JC         LAB_1000_272b
       1000:271e 80 3e 0b        CMP        byte ptr [0xb],0x8
                 00 08
       1000:2723 74 06           JZ         LAB_1000_272b
       1000:2725 b8 01 02        MOV        AX,0x201
       1000:2728 e8 c3 02        CALL       FUN_1000_29ee                                    undefined FUN_1000_29ee()
                             LAB_1000_272b                                   XREF[3]:     1000:26ea(j), 1000:271c(j), 
                                                                                          1000:2723(j)  
       1000:272b e8 55 bb        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:272e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_272f(void);
                             //
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0xc8]
                             //
                             undefined __cdecl16near FUN_1000_272f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_272f                                   XREF[1]:     FUN_1000_26da:1000:26fe(c)  
       1000:272f 8a 0e c8 00     MOV        CL,byte ptr [0xc8]
       1000:2733 32 ed           XOR        CH,CH
       1000:2735 e3 16           JCXZ       LAB_1000_274d
       1000:2737 be 79 11        MOV        SI,0x1179
       1000:273a fe 0e c8 00     DEC        byte ptr [0xc8]
       1000:273e 8b fe           MOV        DI,SI
       1000:2740 83 c6 02        ADD        SI,0x2
       1000:2743 1e              PUSH       DS
       1000:2744 07              POP        ES
       1000:2745 b9 09 00        MOV        CX,0x9
       1000:2748 f3 a5           MOVSW.REP  ES:DI,SI
       1000:274a 33 c0           XOR        AX,AX
       1000:274c ab              STOSW      ES:DI
                             LAB_1000_274d                                   XREF[1]:     1000:2735(j)  
       1000:274d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_274e(void);
                             //
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_274e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_274e                                   XREF[2]:     FUN_1000_2773:1000:2793(c), 
                                                                                          FUN_1000_2806:1000:2806(c)  
       1000:274e e8 3d 99        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:2751 b8 15 00        MOV        AX,0x15
       1000:2754 e8 e7 99        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:2757 be c8 14        MOV        SI,0x14c8
       1000:275a e8 be 9a        CALL       FUN_1000_c21b                                    undefined FUN_1000_c21b()
       1000:275d b0 01           MOV        AL,0x1
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_275f(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             undefined FUN_1000_275f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_275f                                   XREF[2]:     FUN_1000_2806:1000:280b(c), 
                                                                                          FUN_1000_2806:1000:2819(c)  
       1000:275f e8 2c 99        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:2762 25 07 00        AND        AX,0x7
       1000:2765 04 0b           ADD        AL,0xb
       1000:2767 bb 56 00        MOV        BX,0x56
       1000:276a ba 64 00        MOV        DX,0x64
       1000:276d e8 bf 9a        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:2770 e9 09 99        JMP        FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2773(void);
                             //
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0xd816]
                             //
                             undefined FUN_1000_2773()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2773                                   XREF[1]:     FUN_1000_2566:1000:26a3(c)  
       1000:2773 b8 15 00        MOV        AX,0x15
       1000:2776 e8 c5 99        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:2779 b0 09           MOV        AL,0x9
       1000:277b e8 97 83        CALL       FUN_1000_ab15                                    undefined FUN_1000_ab15()
       1000:277e c7 06 16        MOV        word ptr [0xd816],0x4
                 d8 04 00
                             LAB_1000_2784                                   XREF[1]:     1000:2791(j)  
       1000:2784 bd b6 27        MOV        BP,0x27b6
       1000:2787 b8 09 00        MOV        AX,0x9
       1000:278a e8 c6 bb        CALL       FUN_1000_e353                                    undefined FUN_1000_e353()
       1000:278d ff 0e 16 d8     DEC        word ptr [0xd816]
       1000:2791 79 f1           JNS        LAB_1000_2784
       1000:2793 eb b9           JMP        FUN_1000_274e                                    undefined FUN_1000_274e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2795(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0xd816]
                             //
                             undefined __cdecl16near FUN_1000_2795()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2795                                   XREF[1]:     FUN_1000_2566:1000:25e0(c)  
       1000:2795 b8 15 00        MOV        AX,0x15
       1000:2798 e8 a3 99        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:279b c7 06 16        MOV        word ptr [0xd816],0x0
                 d8 00 00
                             LAB_1000_27a1                                   XREF[1]:     1000:27b3(j)  
       1000:27a1 bd b6 27        MOV        BP,0x27b6
       1000:27a4 b8 09 00        MOV        AX,0x9
       1000:27a7 e8 a9 bb        CALL       FUN_1000_e353                                    undefined FUN_1000_e353()
       1000:27aa ff 06 16 d8     INC        word ptr [0xd816]
       1000:27ae 83 3e 16        CMP        word ptr [0xd816],0xd
                 d8 0d
       1000:27b3 72 ec           JC         LAB_1000_27a1
       1000:27b5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_27c9(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [0xd816]
                             //   Write to: byte ptr [SI]
                             //   Write to: byte ptr [SI + 0x6]
                             //
                             undefined FUN_1000_27c9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_27c9                                   XREF[1]:     FUN_1000_281c:1000:2829(c)  
       1000:27c9 e8 c2 98        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:27cc bb 67 00        MOV        BX,0x67
                             LAB_1000_27cf                                   XREF[1]:     1000:27ee(j)  
       1000:27cf 53              PUSH       BX
       1000:27d0 bb 0f 00        MOV        BX,0xf
                             LAB_1000_27d3                                   XREF[1]:     1000:27d8(j)  
       1000:27d3 e8 e1 bb        CALL       FUN_1000_e3b7                                    undefined FUN_1000_e3b7()
       1000:27d6 3a c2           CMP        AL,DL
       1000:27d8 74 f9           JZ         LAB_1000_27d3
       1000:27da 8a d0           MOV        DL,AL
       1000:27dc 05 17 00        ADD        AX,0x17
       1000:27df 5b              POP        BX
       1000:27e0 52              PUSH       DX
       1000:27e1 ba a3 00        MOV        DX,0xa3
       1000:27e4 e8 16 9b        CALL       FUN_1000_c2fd                                    undefined FUN_1000_c2fd()
       1000:27e7 5a              POP        DX
       1000:27e8 83 c3 03        ADD        BX,0x3
       1000:27eb 83 fb 70        CMP        BX,0x70
       1000:27ee 76 df           JBE        LAB_1000_27cf
       1000:27f0 be ce 14        MOV        SI,0x14ce
       1000:27f3 a1 16 d8        MOV        AX,[0xd816]
       1000:27f6 25 03 00        AND        AX,0x3
       1000:27f9 04 13           ADD        AL,0x13
       1000:27fb 88 04           MOV        byte ptr [SI],AL
       1000:27fd 88 44 06        MOV        byte ptr [SI + 0x6],AL
       1000:2800 e8 18 9a        CALL       FUN_1000_c21b                                    undefined FUN_1000_c21b()
       1000:2803 e9 76 98        JMP        FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2806(void);
                             //
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             undefined FUN_1000_2806()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2806                                   XREF[1]:     FUN_1000_2566:1000:25dd(c)  
       1000:2806 e8 45 ff        CALL       FUN_1000_274e                                    undefined FUN_1000_274e()
       1000:2809 b0 02           MOV        AL,0x2
       1000:280b e8 51 ff        CALL       FUN_1000_275f                                    undefined FUN_1000_275f()
       1000:280e b9 14 00        MOV        CX,0x14
       1000:2811 e8 08 00        CALL       FUN_1000_281c                                    undefined FUN_1000_281c()
       1000:2814 e8 92 83        CALL       FUN_1000_aba9                                    undefined FUN_1000_aba9()
       1000:2817 b0 01           MOV        AL,0x1
       1000:2819 e9 43 ff        JMP        FUN_1000_275f                                    undefined FUN_1000_275f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_281c(void);
                             //
                             // Input/Output Parameters:
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0xd816]
                             //
                             undefined __cdecl16near FUN_1000_281c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_281c                                   XREF[1]:     FUN_1000_2806:1000:2811(c)  
       1000:281c b8 15 00        MOV        AX,0x15
       1000:281f e8 1c 99        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:2822 c7 06 16        MOV        word ptr [0xd816],0x0
                 d8 00 00
                             LAB_1000_2828                                   XREF[1]:     1000:2837(j)  
       1000:2828 51              PUSH       CX
       1000:2829 e8 9d ff        CALL       FUN_1000_27c9                                    undefined FUN_1000_27c9()
       1000:282c b8 09 00        MOV        AX,0x9
       1000:282f e8 6e bb        CALL       FUN_1000_e3a0                                    undefined FUN_1000_e3a0()
       1000:2832 ff 06 16 d8     INC        word ptr [0xd816]
       1000:2836 59              POP        CX
       1000:2837 e2 ef           LOOP       LAB_1000_2828
       1000:2839 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_29ee(void);
                             //
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined FUN_1000_29ee()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_29ee                                   XREF[2]:     FUN_1000_1071:1000:10a1(c), 
                                                                                          FUN_1000_26da:1000:2728(c)  
       1000:29ee 33 ff           XOR        DI,DI
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_29f0(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI]
                             //   Read from: byte ptr [SI]
                             //   Write to: word ptr [SI]
                             //   Write to: word ptr [SI + 0x2]
                             //
                             undefined __cdecl16near FUN_1000_29f0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_29f0                                   XREF[2]:     FUN_1000_1eda:1000:1eec(c), 
                                                                                          FUN_1000_71b2:1000:71b6(c)  
       1000:29f0 f6 06 0a        TEST       byte ptr [0xa],0x1
                 00 01
       1000:29f5 74 3c           JZ         LAB_1000_2a33
       1000:29f7 be 90 11        MOV        SI,0x1190
       1000:29fa 8a 0c           MOV        CL,byte ptr [SI]
       1000:29fc 32 ed           XOR        CH,CH
       1000:29fe e3 14           JCXZ       LAB_1000_2a14
       1000:2a00 46              INC        SI
                             LAB_1000_2a01                                   XREF[1]:     1000:2a0d(j)  
       1000:2a01 3b 04           CMP        AX,word ptr [SI]
       1000:2a03 75 05           JNZ        LAB_1000_2a0a
       1000:2a05 3b 7c 02        CMP        DI,word ptr [SI + 0x2]
       1000:2a08 74 29           JZ         LAB_1000_2a33
                             LAB_1000_2a0a                                   XREF[1]:     1000:2a03(j)  
       1000:2a0a 83 c6 04        ADD        SI,0x4
       1000:2a0d e2 f2           LOOP       LAB_1000_2a01
       1000:2a0f be 90 11        MOV        SI,0x1190
       1000:2a12 8a 0c           MOV        CL,byte ptr [SI]
                             LAB_1000_2a14                                   XREF[1]:     1000:29fe(j)  
       1000:2a14 83 f9 0a        CMP        CX,0xa
       1000:2a17 72 0c           JC         LAB_1000_2a25
       1000:2a19 50              PUSH       AX
       1000:2a1a 56              PUSH       SI
       1000:2a1b 57              PUSH       DI
       1000:2a1c e8 15 00        CALL       FUN_1000_2a34                                    undefined FUN_1000_2a34()
       1000:2a1f 5f              POP        DI
       1000:2a20 5e              POP        SI
       1000:2a21 58              POP        AX
       1000:2a22 b9 09 00        MOV        CX,0x9
                             LAB_1000_2a25                                   XREF[1]:     1000:2a17(j)  
       1000:2a25 fe 04           INC        byte ptr [SI]
       1000:2a27 46              INC        SI
       1000:2a28 03 c9           ADD        CX,CX
       1000:2a2a 03 c9           ADD        CX,CX
       1000:2a2c 03 f1           ADD        SI,CX
       1000:2a2e 89 04           MOV        word ptr [SI],AX
       1000:2a30 89 7c 02        MOV        word ptr [SI + 0x2],DI
                             LAB_1000_2a33                                   XREF[2]:     1000:29f5(j), 1000:2a08(j)  
       1000:2a33 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2a34(void);
                             //
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [SI + -0x1]
                             //
                             undefined __cdecl16near FUN_1000_2a34()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2a34                                   XREF[3]:     FUN_1000_29f0:1000:2a1c(c), 
                                                                                          FUN_1000_2b2a:1000:2bcf(c), 
                                                                                          FUN_1000_2b2a:1000:2c4f(c)  
       1000:2a34 be 90 11        MOV        SI,0x1190
       1000:2a37 fe 0c           DEC        byte ptr [SI]
       1000:2a39 75 04           JNZ        LAB_1000_2a3f
       1000:2a3b c6 44 ff 00     MOV        byte ptr [SI + -0x1],0x0
                             LAB_1000_2a3f                                   XREF[1]:     1000:2a39(j)  
       1000:2a3f 46              INC        SI
       1000:2a40 8b fe           MOV        DI,SI
       1000:2a42 83 c6 04        ADD        SI,0x4
       1000:2a45 1e              PUSH       DS
       1000:2a46 07              POP        ES
       1000:2a47 b9 12 00        MOV        CX,0x12
       1000:2a4a f3 a5           MOVSW.REP  ES:DI,SI
       1000:2a4c 33 c0           XOR        AX,AX
       1000:2a4e ab              STOSW      ES:DI
       1000:2a4f ab              STOSW      ES:DI
       1000:2a50 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2a51(uint8_t ah, uint8_t al);
                             //
                             // Input Parameters:
                             //   AH (uint8_t): 8-bit input value in AH register
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   DS (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_2a51()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2a51                                   XREF[1]:     FUN_1000_3542:1000:3549(c)  
       1000:2a51 be 90 11        MOV        SI,0x1190
       1000:2a54 8a d0           MOV        DL,AL
       1000:2a56 8b df           MOV        BX,DI
       1000:2a58 33 c9           XOR        CX,CX
       1000:2a5a 33 ed           XOR        BP,BP
       1000:2a5c ac              LODSB      SI
       1000:2a5d 8a c8           MOV        CL,AL
       1000:2a5f e3 4d           JCXZ       LAB_1000_2aae
       1000:2a61 8b fe           MOV        DI,SI
       1000:2a63 1e              PUSH       DS
       1000:2a64 07              POP        ES
                             LAB_1000_2a65                                   XREF[1]:     1000:2a7b(j)  
       1000:2a65 ad              LODSW      SI
       1000:2a66 3a e2           CMP        AH,DL
       1000:2a68 75 0e           JNZ        LAB_1000_2a78
       1000:2a6a 80 fa 0f        CMP        DL,0xf
       1000:2a6d 75 04           JNZ        LAB_1000_2a73
       1000:2a6f 3b 1c           CMP        BX,word ptr [SI]
       1000:2a71 75 05           JNZ        LAB_1000_2a78
                             LAB_1000_2a73                                   XREF[1]:     1000:2a6d(j)  
       1000:2a73 83 c6 02        ADD        SI,0x2
       1000:2a76 eb 03           JMP        LAB_1000_2a7b
                             LAB_1000_2a78                                   XREF[2]:     1000:2a68(j), 1000:2a71(j)  
       1000:2a78 ab              STOSW      ES:DI
       1000:2a79 a5              MOVSW      ES:DI,SI
       1000:2a7a 45              INC        BP
                             LAB_1000_2a7b                                   XREF[1]:     1000:2a76(j)  
       1000:2a7b e2 e8           LOOP       LAB_1000_2a65
       1000:2a7d eb 1f           JMP        LAB_1000_2a9e
                             LAB_1000_2a9e                                   XREF[1]:     1000:2a7d(j)  
       1000:2a9e 8b cd           MOV        CX,BP
       1000:2aa0 8a e9           MOV        CH,CL
       1000:2aa2 86 0e 90 11     XCHG       byte ptr [0x1190],CL
       1000:2aa6 3a cd           CMP        CL,CH
       1000:2aa8 74 04           JZ         LAB_1000_2aae
       1000:2aaa 33 c0           XOR        AX,AX
       1000:2aac ab              STOSW      ES:DI
       1000:2aad ab              STOSW      ES:DI
                             LAB_1000_2aae                                   XREF[2]:     1000:2a5f(j), 1000:2aa8(j)  
       1000:2aae c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2ad8(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x1191]
                             //   Read from: word ptr [0x12]
                             //   Read from: word ptr [0x1193]
                             //   Write to: [0xea]
                             //   Write to: byte ptr [0xea]
                             //
                             undefined __cdecl16near FUN_1000_2ad8()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2ad8                                   XREF[1]:     FUN_1000_2b2a:1000:2b63(c)  
       1000:2ad8 50              PUSH       AX
       1000:2ad9 a1 91 11        MOV        AX,[0x1191]
       1000:2adc 8b 1e 12 00     MOV        BX,word ptr [0x12]
       1000:2ae0 8a cc           MOV        CL,AH
       1000:2ae2 d3 eb           SHR        BX,CL
       1000:2ae4 d1 eb           SHR        BX,0x1
       1000:2ae6 73 0f           JNC        LAB_1000_2af7
       1000:2ae8 8b 3e 93 11     MOV        DI,word ptr [0x1193]
       1000:2aec 80 f9 0f        CMP        CL,0xf
       1000:2aef 75 09           JNZ        LAB_1000_2afa
       1000:2af1 3b 3e 4e 11     CMP        DI,word ptr [0x114e]
       1000:2af5 74 03           JZ         LAB_1000_2afa
                             LAB_1000_2af7                                   XREF[1]:     1000:2ae6(j)  
       1000:2af7 58              POP        AX
       1000:2af8 f8              CLC
       1000:2af9 c3              RET
                             LAB_1000_2afa                                   XREF[2]:     1000:2aef(j), 1000:2af5(j)  
       1000:2afa 83 c4 02        ADD        SP,0x2
       1000:2afd e8 b2 b0        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:2b00 ff 36 ce 11     PUSH       word ptr [0x11ce]
       1000:2b04 0b ff           OR         DI,DI
       1000:2b06 74 05           JZ         LAB_1000_2b0d
       1000:2b08 50              PUSH       AX
       1000:2b09 e8 12 08        CALL       FUN_1000_331e                                    undefined FUN_1000_331e()
       1000:2b0c 58              POP        AX
                             LAB_1000_2b0d                                   XREF[1]:     1000:2b06(j)  
       1000:2b0d a2 ea 00        MOV        [0xea],AL
       1000:2b10 8a c4           MOV        AL,AH
       1000:2b12 32 e4           XOR        AH,AH
       1000:2b14 e8 c1 6b        CALL       FUN_1000_96d8                                    undefined FUN_1000_96d8()
       1000:2b17 e8 2b 6e        CALL       FUN_1000_9945                                    undefined FUN_1000_9945()
       1000:2b1a c6 06 ea        MOV        byte ptr [0xea],0xff
                 00 ff
       1000:2b1f b0 01           MOV        AL,0x1
       1000:2b21 e8 cd 73        CALL       FUN_1000_9ef1                                    undefined FUN_1000_9ef1()
       1000:2b24 5f              POP        DI
       1000:2b25 e8 f6 07        CALL       FUN_1000_331e                                    undefined FUN_1000_331e()
       1000:2b28 f9              STC
       1000:2b29 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2b2a(uint16_t bx);
                             //
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BL (uint8_t): 8-bit output value in BL register
                             //
                             // Memory Access:
                             //   Read from: [0x46d9]
                             //   Read from: [0xce7a]
                             //   Read from: word ptr [0x1193]
                             //   Write to: byte ptr [0x23]
                             //   Write to: byte ptr [0x1193]
                             //   Write to: [0xea]
                             //
                             undefined __cdecl16near FUN_1000_2b2a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2b2a                                   XREF[2]:     FUN_1000_1b0d:1000:1b20(c), 
                                                                                          1000:2bc4(c)  
       1000:2b2a a0 d9 46        MOV        AL,[0x46d9]
       1000:2b2d 0a 06 74 47     OR         AL,byte ptr [0x4774]
       1000:2b31 0a 06 c9 11     OR         AL,byte ptr [0x11c9]
       1000:2b35 75 58           JNZ        LAB_1000_2b8f
       1000:2b37 e8 e1 a8        CALL       FUN_1000_d41b                                    undefined FUN_1000_d41b()
       1000:2b3a 81 fd 0e 1f     CMP        BP,0x1f0e
       1000:2b3e 75 4f           JNZ        LAB_1000_2b8f
       1000:2b40 80 3e fb        CMP        byte ptr [0xfb],0x0
                 00 00
       1000:2b45 78 48           JS         LAB_1000_2b8f
       1000:2b47 a1 7a ce        MOV        AX,[0xce7a]
       1000:2b4a 80 3e 2a        CMP        byte ptr [0x2a],0x14
                 00 14
       1000:2b4f 72 3e           JC         LAB_1000_2b8f
       1000:2b51 74 4e           JZ         LAB_1000_2ba1
       1000:2b53 80 3e 90        CMP        byte ptr [0x1190],0x0
                 11 00
       1000:2b58 74 35           JZ         LAB_1000_2b8f
       1000:2b5a 2b 06 5a dc     SUB        AX,word ptr [0xdc5a]
       1000:2b5e 3d 32 00        CMP        AX,0x32
       1000:2b61 72 2c           JC         LAB_1000_2b8f
       1000:2b63 e8 72 ff        CALL       FUN_1000_2ad8                                    undefined FUN_1000_2ad8()
       1000:2b66 73 08           JNC        LAB_1000_2b70
       1000:2b68 c6 06 23        MOV        byte ptr [0x23],0x0
                 00 00
       1000:2b6d e9 d2 09        JMP        FUN_1000_3542                                    undefined FUN_1000_3542()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_2b70                                   XREF[1]:     1000:2b66(j)  
       1000:2b70 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:2b75 75 5b           JNZ        LAB_1000_2bd2
       1000:2b77 b3 28           MOV        BL,0x28
       1000:2b79 3d 96 00        CMP        AX,0x96
       1000:2b7c 72 12           JC         LAB_1000_2b90
       1000:2b7e 3d fa 00        CMP        AX,0xfa
       1000:2b81 72 0c           JC         LAB_1000_2b8f
       1000:2b83 3d 5e 01        CMP        AX,0x15e
       1000:2b86 b3 26           MOV        BL,0x26
       1000:2b88 72 06           JC         LAB_1000_2b90
       1000:2b8a 3d c2 01        CMP        AX,0x1c2
       1000:2b8d 73 43           JNC        LAB_1000_2bd2
                             LAB_1000_2b8f                                   XREF[10]:    1000:2b35(j), 1000:2b3e(j), 
                                                                                          1000:2b45(j), 1000:2b4f(j), 
                                                                                          1000:2b58(j), 1000:2b61(j), 
                                                                                          1000:2b81(j), 1000:2ba6(j), 
                                                                                          1000:2bad(j), 1000:2bb6(j)  
       1000:2b8f c3              RET
                             LAB_1000_2b90                                   XREF[2]:     1000:2b7c(j), 1000:2b88(j)  
       1000:2b90 53              PUSH       BX
       1000:2b91 e8 1e b0        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:2b94 e8 03 99        CALL       FUN_1000_c49a                                    undefined FUN_1000_c49a()
       1000:2b97 58              POP        AX
       1000:2b98 bd 66 0f        MOV        BP,0xf66
       1000:2b9b e8 6a 95        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:2b9e e9 4b b0        JMP        FUN_1000_dbec                                    undefined FUN_1000_dbec()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_2ba1                                   XREF[1]:     1000:2b51(j)  
       1000:2ba1 83 3e 10        CMP        word ptr [0x10],0x0
                 00 00
       1000:2ba6 75 e7           JNZ        LAB_1000_2b8f
       1000:2ba8 80 3e 08        CMP        byte ptr [0x8],0xff
                 00 ff
       1000:2bad 75 e0           JNZ        LAB_1000_2b8f
       1000:2baf 2b 06 5a dc     SUB        AX,word ptr [0xdc5a]
       1000:2bb3 3d e8 03        CMP        AX,0x3e8
       1000:2bb6 72 d7           JC         LAB_1000_2b8f
       1000:2bb8 81 06 5a        ADD        word ptr [0xdc5a],0x3b6
                 dc b6 03
       1000:2bbe e8 b0 e4        CALL       FUN_1000_1071                                    undefined FUN_1000_1071()
       1000:2bc1 e8 b6 85        CALL       FUN_1000_b17a                                    undefined FUN_1000_b17a()
                             LAB_1000_2bc4                                   XREF[1]:     1000:2bcc(j)  
       1000:2bc4 e8 63 ff        CALL       FUN_1000_2b2a                                    undefined FUN_1000_2b2a()
       1000:2bc7 80 3e ea        CMP        byte ptr [0xea],0xff
                 00 ff
       1000:2bcc 75 f6           JNZ        LAB_1000_2bc4
       1000:2bce c3              RET
                             LAB_1000_2bcf                                   XREF[2]:     1000:2c0c(j), 1000:2c14(j)  
       1000:2bcf e9 62 fe        JMP        FUN_1000_2a34                                    undefined FUN_1000_2a34()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_2bd2                                   XREF[2]:     1000:2b75(j), 1000:2b8d(j)  
       1000:2bd2 e8 dd af        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:2bd5 e8 86 81        CALL       FUN_1000_ad5e                                    undefined FUN_1000_ad5e()
       1000:2bd8 8b 3e 93 11     MOV        DI,word ptr [0x1193]
       1000:2bdc 0b ff           OR         DI,DI
       1000:2bde 74 14           JZ         LAB_1000_2bf4
       1000:2be0 8b c7           MOV        AX,DI
       1000:2be2 2d 00 01        SUB        AX,0x100
       1000:2be5 3d aa 07        CMP        AX,0x7aa
       1000:2be8 72 07           JC         LAB_1000_2bf1
       1000:2bea c6 06 93        MOV        byte ptr [0x1193],0x0
                 11 00
       1000:2bef eb 03           JMP        LAB_1000_2bf4
                             LAB_1000_2bf1                                   XREF[1]:     1000:2be8(j)  
       1000:2bf1 e8 2a 07        CALL       FUN_1000_331e                                    undefined FUN_1000_331e()
                             LAB_1000_2bf4                                   XREF[2]:     1000:2bde(j), 1000:2bef(j)  
       1000:2bf4 a1 91 11        MOV        AX,[0x1191]
       1000:2bf7 a2 ea 00        MOV        [0xea],AL
       1000:2bfa 3c 01           CMP        AL,0x1
       1000:2bfc 75 03           JNZ        LAB_1000_2c01
       1000:2bfe a2 eb 00        MOV        [0xeb],AL
                             LAB_1000_2c01                                   XREF[1]:     1000:2bfc(j)  
       1000:2c01 8a c4           MOV        AL,AH
       1000:2c03 32 e4           XOR        AH,AH
       1000:2c05 8b 3e 93 11     MOV        DI,word ptr [0x1193]
       1000:2c09 3d 10 00        CMP        AX,0x10
       1000:2c0c 73 c1           JNC        LAB_1000_2bcf
       1000:2c0e 3c 0e           CMP        AL,0xe
       1000:2c10 75 04           JNZ        LAB_1000_2c16
       1000:2c12 0b ff           OR         DI,DI
       1000:2c14 74 b9           JZ         LAB_1000_2bcf
                             LAB_1000_2c16                                   XREF[1]:     1000:2c10(j)  
       1000:2c16 a3 c4 47        MOV        [0x47c4],AX
       1000:2c19 0b ff           OR         DI,DI
       1000:2c1b 74 2a           JZ         LAB_1000_2c47
       1000:2c1d e8 fe 06        CALL       FUN_1000_331e                                    undefined FUN_1000_331e()
       1000:2c20 e8 75 02        CALL       FUN_1000_2e98                                    undefined FUN_1000_2e98()
       1000:2c23 83 3e c4        CMP        word ptr [0x47c4],0xe
                 47 0e
       1000:2c28 72 1d           JC         LAB_1000_2c47
       1000:2c2a b0 03           MOV        AL,0x3
       1000:2c2c 80 3e ea        CMP        byte ptr [0xea],0xe
                 00 0e
       1000:2c31 74 07           JZ         LAB_1000_2c3a
       1000:2c33 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
       1000:2c36 0a c0           OR         AL,AL
       1000:2c38 74 0d           JZ         LAB_1000_2c47
                             LAB_1000_2c3a                                   XREF[1]:     1000:2c31(j)  
       1000:2c3a e8 c9 3c        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:2c3d c7 06 c4        MOV        word ptr [0x47c4],0xe
                 47 0e 00
       1000:2c43 89 36 56 47     MOV        word ptr [0x4756],SI
                             LAB_1000_2c47                                   XREF[3]:     1000:2c1b(j), 1000:2c28(j), 
                                                                                          1000:2c38(j)  
       1000:2c47 e8 48 00        CALL       FUN_1000_2c92                                    undefined FUN_1000_2c92()
       1000:2c4a b0 01           MOV        AL,0x1
       1000:2c4c e8 a2 72        CALL       FUN_1000_9ef1                                    undefined FUN_1000_9ef1()
       1000:2c4f e8 e2 fd        CALL       FUN_1000_2a34                                    undefined FUN_1000_2a34()
       1000:2c52 33 c0           XOR        AX,AX
       1000:2c54 a2 0f 1f        MOV        [0x1f0f],AL
       1000:2c57 a3 10 1f        MOV        [0x1f10],AX
       1000:2c5a e8 3a a7        CALL       FUN_1000_d397                                    undefined FUN_1000_d397()
       1000:2c5d e8 59 86        CALL       FUN_1000_b2b9                                    undefined FUN_1000_b2b9()
       1000:2c60 b8 b8 0b        MOV        AX,0xbb8
       1000:2c63 e8 4a b1        CALL       FUN_1000_ddb0                                    undefined FUN_1000_ddb0()
       1000:2c66 e8 4a 86        CALL       FUN_1000_b2b3                                    undefined FUN_1000_b2b3()
       1000:2c69 be c7 2c        MOV        SI,0x2cc7
       1000:2c6c e8 f0 ad        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:2c6f e8 74 6c        CALL       FUN_1000_98e6                                    undefined FUN_1000_98e6()
       1000:2c72 33 c0           XOR        AX,AX
       1000:2c74 a3 9e 47        MOV        [0x479e],AX
       1000:2c77 a3 40 45        MOV        [0x4540],AX
       1000:2c7a c6 06 ea        MOV        byte ptr [0xea],0xff
                 00 ff
       1000:2c7f c6 06 e8        MOV        byte ptr [0xe8],0xa
                 00 0a
       1000:2c84 c7 06 30        MOV        word ptr [0xdc30],0x0
                 dc 00 00
       1000:2c8a b0 06           MOV        AL,0x6
       1000:2c8c e8 0b ec        CALL       FUN_1000_189a                                    undefined FUN_1000_189a()
       1000:2c8f e9 80 97        JMP        FUN_1000_c412                                    undefined FUN_1000_c412()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2c92(void);
                             //
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             undefined FUN_1000_2c92()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2c92                                   XREF[1]:     FUN_1000_2b2a:1000:2c47(c)  
       1000:2c92 b0 06           MOV        AL,0x6
       1000:2c94 bd 9a 2c        MOV        BP,0x2c9a
       1000:2c97 e9 6e 94        JMP        FUN_1000_c108                                    undefined FUN_1000_c108()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2d74(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   DS (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x114e]
                             //   Write to: [0x144c]
                             //
                             undefined __cdecl16near FUN_1000_2d74()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2d74                                   XREF[4]:     FUN_1000_08f0:1000:090e(c), 
                                                                                          FUN_1000_2db1:1000:2dbf(c), 
                                                                                          FUN_1000_2db1:1000:2ddf(c), 
                                                                                          FUN_1000_488a:1000:48da(c)  
       1000:2d74 8b 36 4e 11     MOV        SI,word ptr [0x114e]
       1000:2d78 81 fe 00 01     CMP        SI,0x100
       1000:2d7c 72 32           JC         LAB_1000_2db0
       1000:2d7e 33 c0           XOR        AX,AX
       1000:2d80 e8 cc 30        CALL       FUN_1000_5e4f                                    undefined FUN_1000_5e4f()
       1000:2d83 3d 02 00        CMP        AX,0x2
       1000:2d86 73 07           JNC        LAB_1000_2d8f
       1000:2d88 f6 06 32        TEST       byte ptr [0x4732],0x1
                 47 01
       1000:2d8d 75 21           JNZ        LAB_1000_2db0
                             LAB_1000_2d8f                                   XREF[1]:     1000:2d86(j)  
       1000:2d8f 3d 04 00        CMP        AX,0x4
       1000:2d92 77 1c           JA         LAB_1000_2db0
       1000:2d94 75 01           JNZ        LAB_1000_2d97
       1000:2d96 48              DEC        AX
                             LAB_1000_2d97                                   XREF[1]:     1000:2d94(j)  
       1000:2d97 38 06 4c 14     CMP        byte ptr [0x144c],AL
       1000:2d9b 74 13           JZ         LAB_1000_2db0
       1000:2d9d a2 4c 14        MOV        [0x144c],AL
       1000:2da0 05 a1 00        ADD        AX,0xa1
       1000:2da3 1e              PUSH       DS
       1000:2da4 07              POP        ES
       1000:2da5 bf 6e bc        MOV        DI,0xbc6e
       1000:2da8 8b f0           MOV        SI,AX
       1000:2daa e8 0c c3        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:2dad e8 e8 d2        CALL       FUN_1000_0098                                    undefined FUN_1000_0098()
                             LAB_1000_2db0                                   XREF[4]:     1000:2d7c(j), 1000:2d8d(j), 
                                                                                          1000:2d92(j), 1000:2d9b(j)  
       1000:2db0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2db1(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: [0x46df]
                             //   Read from: [0xdbd6]
                             //   Write to: byte ptr [0x47a6]
                             //   Write to: [0xdce6]
                             //   Write to: [0x47a4]
                             //
                             undefined FUN_1000_2db1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2db1                                   XREF[3]:     FUN_1000_189a:1000:18a4(j), 
                                                                                          FUN_1000_1b23:1000:1bcf(c), 
                                                                                          FUN_1000_3723:1000:37aa(c)  
       1000:2db1 bd 17 d7        MOV        BP,0xd717
       1000:2db4 e8 e0 92        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:2db7 e8 a1 ab        CALL       FUN_1000_d95b                                    undefined FUN_1000_d95b()
       1000:2dba c6 06 a6        MOV        byte ptr [0x47a6],0xff
                 47 ff
                             LAB_1000_2dbf                                   XREF[1]:     FUN_1000_3f15:1000:407b(j)  
       1000:2dbf e8 b2 ff        CALL       FUN_1000_2d74                                    undefined FUN_1000_2d74()
       1000:2dc2 33 c0           XOR        AX,AX
       1000:2dc4 a2 e6 dc        MOV        [0xdce6],AL
       1000:2dc7 a2 a4 47        MOV        [0x47a4],AL
       1000:2dca a3 aa 47        MOV        [0x47aa],AX
       1000:2dcd bd b2 2e        MOV        BP,0x2eb2
       1000:2dd0 e8 c4 92        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:2dd3 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:2dd8 74 21           JZ         LAB_1000_2dfb
       1000:2dda c6 06 32        MOV        byte ptr [0x4732],0x0
                 47 00
       1000:2ddf e8 92 ff        CALL       FUN_1000_2d74                                    undefined FUN_1000_2d74()
       1000:2de2 80 0e bc        OR         byte ptr [0x11bc],0x1
                 11 01
       1000:2de7 c6 06 df        MOV        byte ptr [0x46df],0x0
                 46 00
       1000:2dec e8 de dc        CALL       FUN_1000_0acd                                    undefined FUN_1000_0acd()
       1000:2def e8 a5 e9        CALL       FUN_1000_1797                                    undefined FUN_1000_1797()
       1000:2df2 e8 d8 96        CALL       FUN_1000_c4cd                                    undefined FUN_1000_c4cd()
       1000:2df5 e8 fc 92        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:2df8 e9 eb e9        JMP        FUN_1000_17e6                                    undefined FUN_1000_17e6()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_2dfb                                   XREF[1]:     1000:2dd8(j)  
       1000:2dfb f6 06 32        TEST       byte ptr [0x4732],0x1
                 47 01
       1000:2e00 74 03           JZ         LAB_1000_2e05
       1000:2e02 e8 85 1a        CALL       FUN_1000_488a                                    undefined FUN_1000_488a()
                             LAB_1000_2e05                                   XREF[1]:     1000:2e00(j)  
       1000:2e05 33 c0           XOR        AX,AX
       1000:2e07 a3 14 00        MOV        [0x14],AX
       1000:2e0a a2 df 46        MOV        [0x46df],AL
       1000:2e0d e8 6c 92        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:2e10 e8 8d 2d        CALL       FUN_1000_5ba0                                    undefined FUN_1000_5ba0()
       1000:2e13 e8 9c 09        CALL       FUN_1000_37b2                                    undefined FUN_1000_37b2()
       1000:2e16 f6 06 c9        TEST       byte ptr [0x11c9],0x3
                 11 03
       1000:2e1b 75 03           JNZ        LAB_1000_2e20
       1000:2e1d e8 f2 95        CALL       FUN_1000_c412                                    undefined FUN_1000_c412()
                             LAB_1000_2e20                                   XREF[1]:     1000:2e1b(j)  
       1000:2e20 e8 3b 7f        CALL       FUN_1000_ad5e                                    undefined FUN_1000_ad5e()
       1000:2e23 e8 0e ea        CALL       FUN_1000_1834                                    undefined FUN_1000_1834()
       1000:2e26 e8 6e e9        CALL       FUN_1000_1797                                    undefined FUN_1000_1797()
       1000:2e29 a0 df 46        MOV        AL,[0x46df]
       1000:2e2c 8a e0           MOV        AH,AL
       1000:2e2e 86 06 e0 46     XCHG       byte ptr [0x46e0],AL
       1000:2e32 3a c4           CMP        AL,AH
       1000:2e34 74 16           JZ         LAB_1000_2e4c
       1000:2e36 a1 d6 db        MOV        AX,[0xdbd6]
       1000:2e39 3b 06 d8 db     CMP        AX,word ptr [0xdbd8]
       1000:2e3d 74 13           JZ         FUN_1000_2e52
       1000:2e3f b0 10           MOV        AL,0x10
       1000:2e41 bd 66 0f        MOV        BP,0xf66
       1000:2e44 e8 c1 92        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:2e47 e8 ba 7f        CALL       FUN_1000_ae04                                    undefined FUN_1000_ae04()
       1000:2e4a eb 06           JMP        FUN_1000_2e52                                    undefined FUN_1000_2e52()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_2e4c                                   XREF[1]:     1000:2e34(j)  
       1000:2e4c e8 a5 92        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:2e4f e8 7b 96        CALL       FUN_1000_c4cd                                    undefined FUN_1000_c4cd()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2e52(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0xce7a]
                             //   Read from: [0x4735]
                             //   Read from: word ptr [0x47aa]
                             //   Write to: [0xdc5a]
                             //   Write to: [0x47c4]
                             //
                             undefined __cdecl16near FUN_1000_2e52()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2e52                                   XREF[3]:     FUN_1000_2db1:1000:2e3d(j), 
                                                                                          FUN_1000_2db1:1000:2e4a(c), 
                                                                                          FUN_1000_4f0c:1000:4f52(c)  
       1000:2e52 e8 58 07        CALL       FUN_1000_35ad                                    undefined FUN_1000_35ad()
       1000:2e55 a1 7a ce        MOV        AX,[0xce7a]
       1000:2e58 a3 5a dc        MOV        [0xdc5a],AX
       1000:2e5b 80 3e a7        CMP        byte ptr [0x47a7],0x0
                 47 00
       1000:2e60 75 35           JNZ        LAB_1000_2e97
       1000:2e62 a0 35 47        MOV        AL,[0x4735]
       1000:2e65 0a c0           OR         AL,AL
       1000:2e67 79 03           JNS        LAB_1000_2e6c
       1000:2e69 e9 b7 08        JMP        FUN_1000_3723                                    undefined FUN_1000_3723()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_2e6c                                   XREF[1]:     1000:2e67(j)  
       1000:2e6c 80 3e 08        CMP        byte ptr [0x8],0xff
                 00 ff
       1000:2e71 74 0a           JZ         LAB_1000_2e7d
       1000:2e73 80 3e 74        CMP        byte ptr [0x4774],0x0
                 47 00
       1000:2e78 75 1d           JNZ        LAB_1000_2e97
       1000:2e7a e9 69 e9        JMP        FUN_1000_17e6                                    undefined FUN_1000_17e6()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_2e7d                                   XREF[1]:     1000:2e71(j)  
       1000:2e7d 80 3e c9        CMP        byte ptr [0x11c9],0x0
                 11 00
       1000:2e82 75 13           JNZ        LAB_1000_2e97
       1000:2e84 8b 36 aa 47     MOV        SI,word ptr [0x47aa]
       1000:2e88 0b f6           OR         SI,SI
       1000:2e8a 74 0b           JZ         LAB_1000_2e97
       1000:2e8c 33 c0           XOR        AX,AX
       1000:2e8e 8a 44 0e        MOV        AL,byte ptr [SI + 0xe]
       1000:2e91 a3 c4 47        MOV        [0x47c4],AX
       1000:2e94 e8 f7 68        CALL       FUN_1000_978e                                    undefined FUN_1000_978e()
                             LAB_1000_2e97                                   XREF[4]:     1000:2e60(j), 1000:2e78(j), 
                                                                                          1000:2e82(j), 1000:2e8a(j)  
       1000:2e97 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2e98(uint16_t ax, uint16_t di);
                             //
                             // Input Parameters:
                             //   AX (uint16_t): 16-bit input value in AX register
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI]
                             //   Read from: byte ptr [DI + 0x1]
                             //   Write to: word ptr [0x47e6]
                             //   Write to: [0x11ed]
                             //   Write to: [0x11ef]
                             //
                             undefined __cdecl16near FUN_1000_2e98()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2e98                                   XREF[2]:     FUN_1000_2b2a:1000:2c20(c), 
                                                                                          FUN_1000_94f3:1000:952f(c)  
       1000:2e98 89 3e e6 47     MOV        word ptr [0x47e6],DI
       1000:2e9c 32 e4           XOR        AH,AH
       1000:2e9e 8a 05           MOV        AL,byte ptr [DI]
       1000:2ea0 05 00 00        ADD        AX,0x0
       1000:2ea3 a3 ed 11        MOV        [0x11ed],AX
       1000:2ea6 8a 45 01        MOV        AL,byte ptr [DI + 0x1]
       1000:2ea9 32 e4           XOR        AH,AH
       1000:2eab 05 0c 00        ADD        AX,0xc
       1000:2eae a3 ef 11        MOV        [0x11ef],AX
       1000:2eb1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_2ebf(void);
                             //
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x2220]
                             //
                             undefined FUN_1000_2ebf()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2ebf                                   XREF[1]:     FUN_1000_a03f:1000:a0c5(c)  
       1000:2ebf 8b 2e 20 22     MOV        BP,word ptr [0x2220]
       1000:2ec3 bb 66 0f        MOV        BX,0xf66
       1000:2ec6 e9 6f a4        JMP        FUN_1000_d338                                    undefined FUN_1000_d338()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_2efb(uint8_t bh, uint8_t bl, uint8_t dl);
                             //
                             // Input Parameters:
                             //   BH (uint8_t): 8-bit input value in BH register
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   DL (uint8_t): 8-bit input value in DL register
                             //   DS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x6]
                             //   Read from: word ptr [0x4]
                             //   Read from: word ptr [0x114e]
                             //   Write to: byte ptr [0x1248]
                             //
                             undefined __cdecl16near FUN_1000_2efb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2efb                                   XREF[1]:     FUN_1000_40f9:1000:4171(c)  
       1000:2efb 1e              PUSH       DS
       1000:2efc 07              POP        ES
       1000:2efd bf 0f 1f        MOV        DI,0x1f0f
       1000:2f00 32 c0           XOR        AL,AL
       1000:2f02 aa              STOSB      ES:DI
       1000:2f03 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:2f07 8b 16 04 00     MOV        DX,word ptr [0x4]
       1000:2f0b 80 fb 80        CMP        BL,0x80
       1000:2f0e 74 03           JZ         LAB_1000_2f13
       1000:2f10 e9 97 00        JMP        LAB_1000_2faa
                             LAB_1000_2f13                                   XREF[1]:     1000:2f0e(j)  
       1000:2f13 be 0c 22        MOV        SI,0x220c
       1000:2f16 a5              MOVSW      ES:DI,SI
       1000:2f17 a5              MOVSW      ES:DI,SI
       1000:2f18 80 fa 01        CMP        DL,0x1
       1000:2f1b 75 3b           JNZ        LAB_1000_2f58
       1000:2f1d 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:2f22 74 19           JZ         LAB_1000_2f3d
       1000:2f24 be 18 22        MOV        SI,0x2218
       1000:2f27 a5              MOVSW      ES:DI,SI
       1000:2f28 a5              MOVSW      ES:DI,SI
       1000:2f29 a5              MOVSW      ES:DI,SI
       1000:2f2a a5              MOVSW      ES:DI,SI
       1000:2f2b be 14 22        MOV        SI,0x2214
       1000:2f2e ad              LODSW      SI
       1000:2f2f 80 3e 2a        CMP        byte ptr [0x2a],0x4f
                 00 4f
       1000:2f34 1a e4           SBB        AH,AH
       1000:2f36 80 e4 40        AND        AH,0x40
       1000:2f39 ab              STOSW      ES:DI
       1000:2f3a a5              MOVSW      ES:DI,SI
       1000:2f3b eb 66           JMP        LAB_1000_2fa3
                             LAB_1000_2f3d                                   XREF[1]:     1000:2f22(j)  
       1000:2f3d 57              PUSH       DI
       1000:2f3e 8b 3e 4e 11     MOV        DI,word ptr [0x114e]
       1000:2f42 e8 e2 4f        CALL       FUN_1000_7f27                                    undefined FUN_1000_7f27()
       1000:2f45 5f              POP        DI
       1000:2f46 be dc 21        MOV        SI,0x21dc
       1000:2f49 ad              LODSW      SI
       1000:2f4a 80 3e ff        CMP        byte ptr [0x46ff],0x1
                 46 01
       1000:2f4f 1a e4           SBB        AH,AH
       1000:2f51 80 e4 40        AND        AH,0x40
       1000:2f54 ab              STOSW      ES:DI
       1000:2f55 a5              MOVSW      ES:DI,SI
       1000:2f56 eb 4b           JMP        LAB_1000_2fa3
                             LAB_1000_2f58                                   XREF[1]:     1000:2f1b(j)  
       1000:2f58 80 ff 01        CMP        BH,0x1
       1000:2f5b 75 46           JNZ        LAB_1000_2fa3
       1000:2f5d 80 fa 08        CMP        DL,0x8
       1000:2f60 75 37           JNZ        LAB_1000_2f99
       1000:2f62 80 3e c8        CMP        byte ptr [0xc8],0x0
                 00 00
       1000:2f67 74 3a           JZ         LAB_1000_2fa3
       1000:2f69 be e8 21        MOV        SI,0x21e8
       1000:2f6c ad              LODSW      SI
       1000:2f6d 8a 0e c9 00     MOV        CL,byte ptr [0xc9]
       1000:2f71 b5 27           MOV        CH,0x27
       1000:2f73 80 f9 01        CMP        CL,0x1
       1000:2f76 1a e4           SBB        AH,AH
       1000:2f78 02 ec           ADD        CH,AH
       1000:2f7a 80 3e a9        CMP        byte ptr [0x47a9],0x0
                 47 00
       1000:2f7f 74 02           JZ         LAB_1000_2f83
       1000:2f81 b5 28           MOV        CH,0x28
                             LAB_1000_2f83                                   XREF[1]:     1000:2f7f(j)  
       1000:2f83 88 2e 48 12     MOV        byte ptr [0x1248],CH
       1000:2f87 80 e4 40        AND        AH,0x40
       1000:2f8a ab              STOSW      ES:DI
       1000:2f8b a5              MOVSW      ES:DI,SI
       1000:2f8c ad              LODSW      SI
       1000:2f8d 3a 0e c8 00     CMP        CL,byte ptr [0xc8]
       1000:2f91 f5              CMC
       1000:2f92 1a e4           SBB        AH,AH
       1000:2f94 80 e4 40        AND        AH,0x40
       1000:2f97 ab              STOSW      ES:DI
       1000:2f98 a5              MOVSW      ES:DI,SI
                             LAB_1000_2f99                                   XREF[1]:     1000:2f60(j)  
       1000:2f99 80 fa 09        CMP        DL,0x9
       1000:2f9c 75 05           JNZ        LAB_1000_2fa3
       1000:2f9e be f0 21        MOV        SI,0x21f0
       1000:2fa1 a5              MOVSW      ES:DI,SI
       1000:2fa2 a5              MOVSW      ES:DI,SI
                             LAB_1000_2fa3                                   XREF[6]:     1000:2f3b(j), 1000:2f56(j), 
                                                                                          1000:2f5b(j), 1000:2f67(j), 
                                                                                          1000:2f9c(j), 1000:2fd5(j)  
       1000:2fa3 be f4 21        MOV        SI,0x21f4
       1000:2fa6 a5              MOVSW      ES:DI,SI
       1000:2fa7 a5              MOVSW      ES:DI,SI
       1000:2fa8 eb 4d           JMP        LAB_1000_2ff7
                             LAB_1000_2faa                                   XREF[1]:     1000:2f10(j)  
       1000:2faa f6 06 c9        TEST       byte ptr [0x11c9],0x3
                 11 03
       1000:2faf 75 26           JNZ        LAB_1000_2fd7
       1000:2fb1 be 0c 22        MOV        SI,0x220c
       1000:2fb4 a5              MOVSW      ES:DI,SI
       1000:2fb5 a5              MOVSW      ES:DI,SI
       1000:2fb6 be 14 22        MOV        SI,0x2214
       1000:2fb9 ad              LODSW      SI
       1000:2fba 80 3e 2a        CMP        byte ptr [0x2a],0x4f
                 00 4f
       1000:2fbf 1a e4           SBB        AH,AH
       1000:2fc1 80 e4 40        AND        AH,0x40
       1000:2fc4 ab              STOSW      ES:DI
       1000:2fc5 a5              MOVSW      ES:DI,SI
       1000:2fc6 e8 17 eb        CALL       FUN_1000_1ae0                                    undefined FUN_1000_1ae0()
       1000:2fc9 be e0 21        MOV        SI,0x21e0
       1000:2fcc 3c 0b           CMP        AL,0xb
       1000:2fce 72 03           JC         LAB_1000_2fd3
       1000:2fd0 83 c6 04        ADD        SI,0x4
                             LAB_1000_2fd3                                   XREF[1]:     1000:2fce(j)  
       1000:2fd3 a5              MOVSW      ES:DI,SI
       1000:2fd4 a5              MOVSW      ES:DI,SI
       1000:2fd5 eb cc           JMP        LAB_1000_2fa3
                             LAB_1000_2fd7                                   XREF[1]:     1000:2faf(j)  
       1000:2fd7 be fc 21        MOV        SI,0x21fc
       1000:2fda 80 3e cb        CMP        byte ptr [0x11cb],0x0
                 11 00
       1000:2fdf 74 0f           JZ         LAB_1000_2ff0
       1000:2fe1 be 00 22        MOV        SI,0x2200
       1000:2fe4 80 3e 2a        CMP        byte ptr [0x2a],0x32
                 00 32
       1000:2fe9 72 05           JC         LAB_1000_2ff0
       1000:2feb a5              MOVSW      ES:DI,SI
       1000:2fec a5              MOVSW      ES:DI,SI
       1000:2fed be 04 22        MOV        SI,0x2204
                             LAB_1000_2ff0                                   XREF[2]:     1000:2fdf(j), 1000:2fe9(j)  
       1000:2ff0 a5              MOVSW      ES:DI,SI
       1000:2ff1 a5              MOVSW      ES:DI,SI
       1000:2ff2 be f8 21        MOV        SI,0x21f8
       1000:2ff5 a5              MOVSW      ES:DI,SI
       1000:2ff6 a5              MOVSW      ES:DI,SI
                             LAB_1000_2ff7                                   XREF[1]:     1000:2fa8(j)  
       1000:2ff7 33 c0           XOR        AX,AX
       1000:2ff9 ab              STOSW      ES:DI
       1000:2ffa c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_2ffb(uint8_t bl, uint8_t dh, uint8_t dl);
                             //
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   DH (uint8_t): 8-bit input value in DH register
                             //   DL (uint8_t): 8-bit input value in DL register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x6]
                             //   Read from: word ptr [0x4]
                             //   Write to: word ptr [DI + 0x2]
                             //   Write to: byte ptr [DI + 0x46]
                             //   Write to: [0x1cc4]
                             //
                             undefined FUN_1000_2ffb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_2ffb                                   XREF[3]:     FUN_1000_3551:1000:3592(c), 
                                                                                          FUN_1000_35ad:1000:366c(c), 
                                                                                          FUN_1000_40f9:1000:4174(c)  
       1000:2ffb 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:3000 75 18           JNZ        LAB_1000_301a
       1000:3002 f6 06 c9        TEST       byte ptr [0x11c9],0x3
                 11 03
       1000:3007 74 17           JZ         LAB_1000_3020
       1000:3009 80 3e ca        CMP        byte ptr [0x11ca],0x0
                 11 00
       1000:300e 75 0a           JNZ        LAB_1000_301a
       1000:3010 be 72 1d        MOV        SI,0x1d72
       1000:3013 80 3e cb        CMP        byte ptr [0x11cb],0x0
                 11 00
       1000:3018 75 03           JNZ        LAB_1000_301d
                             LAB_1000_301a                                   XREF[2]:     1000:3000(j), 1000:300e(j)  
       1000:301a be 1e 1d        MOV        SI,0x1d1e
                             LAB_1000_301d                                   XREF[1]:     1000:3018(j)  
       1000:301d e9 0b a7        JMP        FUN_1000_d72b                                    undefined FUN_1000_d72b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_3020                                   XREF[1]:     1000:3007(j)  
       1000:3020 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:3024 80 fb 80        CMP        BL,0x80
       1000:3027 75 4a           JNZ        LAB_1000_3073
       1000:3029 8b 16 04 00     MOV        DX,word ptr [0x4]
       1000:302d 80 fe 21        CMP        DH,0x21
       1000:3030 74 41           JZ         LAB_1000_3073
       1000:3032 e8 c9 0e        CALL       FUN_1000_3efe                                    undefined FUN_1000_3efe()
       1000:3035 46              INC        SI
       1000:3036 bf 96 1b        MOV        DI,0x1b96
       1000:3039 b0 20           MOV        AL,0x20
       1000:303b 81 3e 4e        CMP        word ptr [0x114e],0x100
                 11 00 01
       1000:3041 75 02           JNZ        LAB_1000_3045
       1000:3043 b0 80           MOV        AL,0x80
                             LAB_1000_3045                                   XREF[1]:     1000:3041(j)  
       1000:3045 bb 21 00        MOV        BX,0x21
       1000:3048 80 fa 01        CMP        DL,0x1
       1000:304b 75 03           JNZ        LAB_1000_3050
       1000:304d 43              INC        BX
       1000:304e b0 20           MOV        AL,0x20
                             LAB_1000_3050                                   XREF[1]:     1000:304b(j)  
       1000:3050 89 5d 02        MOV        word ptr [DI + 0x2],BX
       1000:3053 88 45 46        MOV        byte ptr [DI + 0x46],AL
       1000:3056 a2 c4 1c        MOV        [0x1cc4],AL
       1000:3059 b9 04 00        MOV        CX,0x4
                             LAB_1000_305c                                   XREF[1]:     1000:306e(j)  
       1000:305c ac              LODSB      SI
       1000:305d 83 c7 0e        ADD        DI,0xe
       1000:3060 b4 20           MOV        AH,0x20
       1000:3062 0a c0           OR         AL,AL
       1000:3064 74 06           JZ         LAB_1000_306c
       1000:3066 3c fb           CMP        AL,0xfb
       1000:3068 7c 02           JL         LAB_1000_306c
       1000:306a b4 80           MOV        AH,0x80
                             LAB_1000_306c                                   XREF[2]:     1000:3064(j), 1000:3068(j)  
       1000:306c 88 25           MOV        byte ptr [DI],AH
       1000:306e e2 ec           LOOP       LAB_1000_305c
       1000:3070 e9 c2 a6        JMP        LAB_1000_d735
                             LAB_1000_3073                                   XREF[2]:     1000:3027(j), 1000:3030(j)  
       1000:3073 bf 98 1b        MOV        DI,0x1b98
       1000:3076 c7 05 23 00     MOV        word ptr [DI],0x23
       1000:307a bb 1d 00        MOV        BX,0x1d
       1000:307d b9 04 00        MOV        CX,0x4
                             LAB_1000_3080                                   XREF[1]:     1000:308b(j)  
       1000:3080 83 c7 0e        ADD        DI,0xe
       1000:3083 89 1d           MOV        word ptr [DI],BX
       1000:3085 c7 45 fe        MOV        word ptr [DI + -0x2],0x80
                 80 00
       1000:308a 43              INC        BX
       1000:308b e2 f3           LOOP       LAB_1000_3080
       1000:308d e9 a5 a6        JMP        LAB_1000_d735
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_31f6(uint16_t si);
                             //
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: byte ptr [SI]
                             //   Read from: byte ptr [SI + 0x3]
                             //   Write to: word ptr [0x2c]
                             //   Write to: [0x2e]
                             //   Write to: [0x30]
                             //
                             undefined __cdecl16near FUN_1000_31f6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_31f6                                   XREF[2]:     FUN_1000_78e9:1000:78f4(c), 
                                                                                          FUN_1000_9381:1000:93a5(c)  
       1000:31f6 e8 77 b0        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:31f9 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:31fc 89 3e 2c 00     MOV        word ptr [0x2c],DI
       1000:3200 8a 04           MOV        AL,byte ptr [SI]
       1000:3202 a2 2e 00        MOV        [0x2e],AL
       1000:3205 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:3208 a2 30 00        MOV        [0x30],AL
       1000:320b 25 0f 00        AND        AX,0xf
       1000:320e a2 2f 00        MOV        [0x2f],AL
       1000:3211 05 18 00        ADD        AX,0x18
       1000:3214 a3 f3 11        MOV        [0x11f3],AX
       1000:3217 e8 ad 00        CALL       FUN_1000_32c7                                    undefined FUN_1000_32c7()
       1000:321a e8 80 00        CALL       FUN_1000_329d                                    undefined FUN_1000_329d()
       1000:321d a3 48 00        MOV        [0x48],AX
       1000:3220 8b 44 10        MOV        AX,word ptr [SI + 0x10]
       1000:3223 a3 32 00        MOV        [0x32],AX
       1000:3226 8b 44 12        MOV        AX,word ptr [SI + 0x12]
       1000:3229 a3 34 00        MOV        [0x34],AX
       1000:322c 25 0f 00        AND        AX,0xf
       1000:322f a2 31 00        MOV        [0x31],AL
       1000:3232 05 00 00        ADD        AX,0x0
       1000:3235 a3 ff 11        MOV        [0x11ff],AX
       1000:3238 e8 c2 3c        CALL       FUN_1000_6efd                                    undefined FUN_1000_6efd()
       1000:323b a2 36 00        MOV        [0x36],AL
       1000:323e 8a 44 16        MOV        AL,byte ptr [SI + 0x16]
       1000:3241 a2 38 00        MOV        [0x38],AL
       1000:3244 e8 c9 00        CALL       FUN_1000_3310                                    undefined FUN_1000_3310()
       1000:3247 a3 f7 11        MOV        [0x11f7],AX
       1000:324a 8a 44 17        MOV        AL,byte ptr [SI + 0x17]
       1000:324d a2 39 00        MOV        [0x39],AL
       1000:3250 e8 bd 00        CALL       FUN_1000_3310                                    undefined FUN_1000_3310()
       1000:3253 a3 f9 11        MOV        [0x11f9],AX
       1000:3256 8a 44 18        MOV        AL,byte ptr [SI + 0x18]
       1000:3259 a2 3a 00        MOV        [0x3a],AL
       1000:325c e8 b1 00        CALL       FUN_1000_3310                                    undefined FUN_1000_3310()
       1000:325f a3 fb 11        MOV        [0x11fb],AX
       1000:3262 8b 44 0c        MOV        AX,word ptr [SI + 0xc]
       1000:3265 a3 44 00        MOV        [0x44],AX
       1000:3268 8b 44 0e        MOV        AX,word ptr [SI + 0xe]
       1000:326b a3 46 00        MOV        [0x46],AX
       1000:326e 32 e4           XOR        AH,AH
       1000:3270 05 e8 00        ADD        AX,0xe8
       1000:3273 a3 f1 11        MOV        [0x11f1],AX
       1000:3276 e8 c2 36        CALL       FUN_1000_693b                                    undefined FUN_1000_693b()
       1000:3279 8b e8           MOV        BP,AX
       1000:327b 8a 42 16        MOV        AL,byte ptr [BP + SI + 0x16]
       1000:327e a2 37 00        MOV        [0x37],AL
       1000:3281 8a 44 19        MOV        AL,byte ptr [SI + 0x19]
       1000:3284 a2 3b 00        MOV        [0x3b],AL
       1000:3287 8a 44 1a        MOV        AL,byte ptr [SI + 0x1a]
       1000:328a a2 3c 00        MOV        [0x3c],AL
       1000:328d e8 35 e8        CALL       divide_by_16                                    undefined divide_by_16()
       1000:3290 2a 44 14        SUB        AL,byte ptr [SI + 0x14]
       1000:3293 a2 40 00        MOV        [0x40],AL
       1000:3296 e8 85 00        CALL       FUN_1000_331e                                    undefined FUN_1000_331e()
       1000:3299 e8 e7 af        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:329c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_329d(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x42]
                             //   Read from: word ptr [SI + 0xe]
                             //   Write to: [0x4a]
                             //
                             undefined __cdecl16near FUN_1000_329d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_329d                                   XREF[1]:     FUN_1000_31f6:1000:321a(c)  
       1000:329d 80 7c 03 00     CMP        byte ptr [SI + 0x3],0x0
       1000:32a1 74 07           JZ         LAB_1000_32aa
       1000:32a3 33 c0           XOR        AX,AX
       1000:32a5 83 64 10 f3     AND        word ptr [SI + 0x10],0xfff3
       1000:32a9 c3              RET
                             LAB_1000_32aa                                   XREF[1]:     1000:32a1(j)  
       1000:32aa a1 42 00        MOV        AX,[0x42]
       1000:32ad 0b c0           OR         AX,AX
       1000:32af 74 10           JZ         LAB_1000_32c1
       1000:32b1 8b c8           MOV        CX,AX
       1000:32b3 8b 44 0e        MOV        AX,word ptr [SI + 0xe]
       1000:32b6 33 d2           XOR        DX,DX
       1000:32b8 f7 f1           DIV        CX
       1000:32ba d1 e2           SHL        DX,0x1
       1000:32bc 3b ca           CMP        CX,DX
       1000:32be 15 00 00        ADC        AX,0x0
                             LAB_1000_32c1                                   XREF[1]:     1000:32af(j)  
       1000:32c1 a3 4a 00        MOV        [0x4a],AX
       1000:32c4 e9 c3 3d        JMP        FUN_1000_708a                                    undefined FUN_1000_708a()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_32c7(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //
                             // Memory Access:
                             //   Read from: [0x2]
                             //   Write to: [0x42]
                             //   Write to: [0x41]
                             //   Write to: [0x11f5]
                             //
                             undefined __cdecl16near FUN_1000_32c7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_32c7                                   XREF[1]:     FUN_1000_31f6:1000:3217(c)  
       1000:32c7 a1 02 00        MOV        AX,[0x2]
       1000:32ca 2b 44 0a        SUB        AX,word ptr [SI + 0xa]
       1000:32cd a3 42 00        MOV        [0x42],AX
       1000:32d0 8b d0           MOV        DX,AX
       1000:32d2 b1 04           MOV        CL,0x4
       1000:32d4 d3 e8           SHR        AX,CL
       1000:32d6 a2 41 00        MOV        [0x41],AL
       1000:32d9 b8 74 00        MOV        AX,0x74
       1000:32dc f6 44 03 10     TEST       byte ptr [SI + 0x3],0x10
       1000:32e0 75 2a           JNZ        LAB_1000_330c
       1000:32e2 b8 70 00        MOV        AX,0x70
       1000:32e5 83 fa 03        CMP        DX,0x3
       1000:32e8 72 22           JC         LAB_1000_330c
       1000:32ea 40              INC        AX
       1000:32eb 83 fa 10        CMP        DX,0x10
       1000:32ee 72 1c           JC         LAB_1000_330c
       1000:32f0 40              INC        AX
       1000:32f1 83 fa 20        CMP        DX,0x20
       1000:32f4 72 16           JC         LAB_1000_330c
       1000:32f6 40              INC        AX
       1000:32f7 50              PUSH       AX
       1000:32f8 56              PUSH       SI
       1000:32f9 8b f0           MOV        SI,AX
       1000:32fb e8 72 9c        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:32fe e8 3b 9d        CALL       skip_to_digit_then_past_digits                                    undefined skip_to_digit_then_past_digits()
       1000:3301 8b c2           MOV        AX,DX
       1000:3303 b1 04           MOV        CL,0x4
       1000:3305 d3 e8           SHR        AX,CL
       1000:3307 e8 d9 af        CALL       FUN_1000_e2e3                                    undefined FUN_1000_e2e3()
       1000:330a 5e              POP        SI
       1000:330b 58              POP        AX
                             LAB_1000_330c                                   XREF[4]:     1000:32e0(j), 1000:32e8(j), 
                                                                                          1000:32ee(j), 1000:32f4(j)  
       1000:330c a3 f5 11        MOV        [0x11f5],AX
       1000:330f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_3310(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_3310()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3310                                   XREF[3]:     FUN_1000_31f6:1000:3244(c), 
                                                                                          FUN_1000_31f6:1000:3250(c), 
                                                                                          FUN_1000_31f6:1000:325c(c)  
       1000:3310 32 e4           XOR        AH,AH
       1000:3312 d1 e8           SHR        AX,0x1
       1000:3314 d1 e8           SHR        AX,0x1
       1000:3316 d1 e8           SHR        AX,0x1
       1000:3318 d1 e8           SHR        AX,0x1
       1000:331a 05 d1 00        ADD        AX,0xd1
       1000:331d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_331e(uint16_t ax);
                             //
                             // Input Parameters:
                             //   AX (uint16_t): 16-bit input value in AX register
                             //   DS (uint16_t): Segment register input value
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AH (uint8_t): 8-bit output value in AH register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI]
                             //   Read from: byte ptr [DI + 0x1]
                             //   Read from: byte ptr [DI + 0xa]
                             //   Write to: word ptr [0x11ce]
                             //   Write to: [0x4e]
                             //   Write to: [0x50]
                             //
                             undefined __cdecl16near FUN_1000_331e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_331e                                   XREF[7]:     FUN_1000_1b23:1000:1b86(c), 
                                                                                          FUN_1000_2ad8:1000:2b09(c), 
                                                                                          FUN_1000_2ad8:1000:2b25(c), 
                                                                                          FUN_1000_2b2a:1000:2bf1(c), 
                                                                                          FUN_1000_2b2a:1000:2c1d(c), 
                                                                                          FUN_1000_31f6:1000:3296(c), 
                                                                                          FUN_1000_6c46:1000:6c5f(c)  
       1000:331e 89 3e ce 11     MOV        word ptr [0x11ce],DI
       1000:3322 56              PUSH       SI
       1000:3323 57              PUSH       DI
       1000:3324 8a 25           MOV        AH,byte ptr [DI]
       1000:3326 8a 45 01        MOV        AL,byte ptr [DI + 0x1]
       1000:3329 a3 4e 00        MOV        [0x4e],AX
       1000:332c bb 41 11        MOV        BX,0x1141
       1000:332f d7              XLAT       BX
       1000:3330 a2 50 00        MOV        [0x50],AL
       1000:3333 8a 45 0a        MOV        AL,byte ptr [DI + 0xa]
       1000:3336 a2 51 00        MOV        [0x51],AL
       1000:3339 8a 45 12        MOV        AL,byte ptr [DI + 0x12]
       1000:333c a2 52 00        MOV        [0x52],AL
       1000:333f 8a 45 1b        MOV        AL,byte ptr [DI + 0x1b]
       1000:3342 a2 54 00        MOV        [0x54],AL
       1000:3345 8a 45 08        MOV        AL,byte ptr [DI + 0x8]
       1000:3348 a2 4d 00        MOV        [0x4d],AL
       1000:334b 1e              PUSH       DS
       1000:334c 07              POP        ES
       1000:334d 57              PUSH       DI
       1000:334e 8d 75 14        LEA        SI,[DI + 0x14]
       1000:3351 bf 55 00        MOV        DI,0x55
       1000:3354 b9 07 00        MOV        CX,0x7
       1000:3357 f3 a4           MOVSB.REP  ES:DI,SI
       1000:3359 5f              POP        DI
       1000:335a e8 61 00        CALL       FUN_1000_33be                                    undefined FUN_1000_33be()
       1000:335d e8 45 01        CALL       FUN_1000_34a5                                    undefined FUN_1000_34a5()
       1000:3360 e8 c4 4b        CALL       FUN_1000_7f27                                    undefined FUN_1000_7f27()
       1000:3363 bf fe 46        MOV        DI,0x46fe
       1000:3366 b0 ff           MOV        AL,0xff
       1000:3368 b9 07 00        MOV        CX,0x7
                             LAB_1000_336b                                   XREF[1]:     1000:3371(j)  
       1000:336b 80 3d 01        CMP        byte ptr [DI],0x1
       1000:336e d0 d0           RCL        AL,0x1
       1000:3370 47              INC        DI
       1000:3371 e2 f8           LOOP       LAB_1000_336b
       1000:3373 f6 d0           NOT        AL
       1000:3375 b1 01           MOV        CL,0x1
       1000:3377 d2 e0           SHL        AL,CL
       1000:3379 a2 53 00        MOV        [0x53],AL
       1000:337c 5f              POP        DI
       1000:337d e8 05 00        CALL       FUN_1000_3385                                    undefined FUN_1000_3385()
       1000:3380 e8 f1 1e        CALL       FUN_1000_5274                                    undefined FUN_1000_5274()
       1000:3383 5e              POP        SI
       1000:3384 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3385(uint8_t al, uint16_t di);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BH (uint8_t): 8-bit output value in BH register
                             //   BL (uint8_t): 8-bit output value in BL register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0xf7]
                             //
                             undefined __cdecl16near FUN_1000_3385()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3385                                   XREF[1]:     FUN_1000_331e:1000:337d(c)  
       1000:3385 c6 06 f7        MOV        byte ptr [0xf7],0x0
                 00 00
       1000:338a 3b 3e 50 11     CMP        DI,word ptr [0x1150]
       1000:338e 74 2d           JZ         LAB_1000_33bd
       1000:3390 8b c7           MOV        AX,DI
       1000:3392 2d 00 01        SUB        AX,0x100
       1000:3395 b3 1c           MOV        BL,0x1c
       1000:3397 f6 f3           DIV        BL
       1000:3399 40              INC        AX
       1000:339a 8a f8           MOV        BH,AL
       1000:339c b3 80           MOV        BL,0x80
       1000:339e be 18 10        MOV        SI,0x1018
       1000:33a1 e8 09 00        CALL       FUN_1000_33ad                                    undefined FUN_1000_33ad()
       1000:33a4 be 28 10        MOV        SI,0x1028
       1000:33a7 e8 03 00        CALL       FUN_1000_33ad                                    undefined FUN_1000_33ad()
       1000:33aa be 48 10        MOV        SI,0x1048
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_33ad(uint16_t bx, uint16_t si);
                             //
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0xe]
                             //
                             undefined __cdecl16near FUN_1000_33ad()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_33ad                                   XREF[2]:     FUN_1000_3385:1000:33a1(c), 
                                                                                          FUN_1000_3385:1000:33a7(c)  
       1000:33ad 3b 5c 02        CMP        BX,word ptr [SI + 0x2]
       1000:33b0 75 0b           JNZ        LAB_1000_33bd
       1000:33b2 8a 4c 0e        MOV        CL,byte ptr [SI + 0xe]
       1000:33b5 b0 01           MOV        AL,0x1
       1000:33b7 d2 e0           SHL        AL,CL
       1000:33b9 08 06 f7 00     OR         byte ptr [0xf7],AL
                             LAB_1000_33bd                                   XREF[2]:     FUN_1000_3385:1000:338e(j), 
                                                                                          1000:33b0(j)  
       1000:33bd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_33be(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Write to: [0x94]
                             //   Write to: [0x96]
                             //   Write to: [0x5c]
                             //
                             undefined __cdecl16near FUN_1000_33be()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_33be                                   XREF[1]:     FUN_1000_331e:1000:335a(c)  
       1000:33be 33 c0           XOR        AX,AX
       1000:33c0 a3 94 00        MOV        [0x94],AX
       1000:33c3 a3 96 00        MOV        [0x96],AX
       1000:33c6 a3 5c 00        MOV        [0x5c],AX
       1000:33c9 a3 5e 00        MOV        [0x5e],AX
       1000:33cc bd 06 34        MOV        BP,0x3406
       1000:33cf e8 31 32        CALL       FUN_1000_6603                                    undefined FUN_1000_6603()
       1000:33d2 e8 04 00        CALL       FUN_1000_33d9                                    undefined FUN_1000_33d9()
       1000:33d5 a2 9c 00        MOV        [0x9c],AL
       1000:33d8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_33d9(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x96]
                             //   Read from: word ptr [0x94]
                             //
                             undefined __cdecl16near FUN_1000_33d9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_33d9                                   XREF[1]:     FUN_1000_33be:1000:33d2(c)  
       1000:33d9 a1 96 00        MOV        AX,[0x96]
       1000:33dc 8b 16 94 00     MOV        DX,word ptr [0x94]
       1000:33e0 3b c2           CMP        AX,DX
       1000:33e2 9c              PUSHF
       1000:33e3 73 01           JNC        LAB_1000_33e6
       1000:33e5 92              XCHG       AX,DX
                             LAB_1000_33e6                                   XREF[1]:     1000:33e3(j)  
       1000:33e6 8b ca           MOV        CX,DX
       1000:33e8 e3 13           JCXZ       LAB_1000_33fd
       1000:33ea 33 d2           XOR        DX,DX
       1000:33ec 86 e2           XCHG       DL,AH
       1000:33ee 86 c4           XCHG       AH,AL
       1000:33f0 3b d1           CMP        DX,CX
       1000:33f2 73 09           JNC        LAB_1000_33fd
       1000:33f4 f7 f1           DIV        CX
       1000:33f6 d1 e8           SHR        AX,0x1
       1000:33f8 3d fc 00        CMP        AX,0xfc
       1000:33fb 72 03           JC         LAB_1000_3400
                             LAB_1000_33fd                                   XREF[2]:     1000:33e8(j), 1000:33f2(j)  
       1000:33fd b8 fc 00        MOV        AX,0xfc
                             LAB_1000_3400                                   XREF[1]:     1000:33fb(j)  
       1000:3400 9d              POPF
       1000:3401 73 02           JNC        LAB_1000_3405
       1000:3403 f6 d8           NEG        AL
                             LAB_1000_3405                                   XREF[1]:     1000:3401(j)  
       1000:3405 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_34a5(void);
                             //
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: [0x60]
                             //   Read from: [0x61]
                             //   Write to: [0x91]
                             //   Write to: [0x92]
                             //
                             undefined __cdecl16near FUN_1000_34a5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_34a5                                   XREF[1]:     FUN_1000_331e:1000:335d(c)  
       1000:34a5 56              PUSH       SI
       1000:34a6 1e              PUSH       DS
       1000:34a7 07              POP        ES
       1000:34a8 57              PUSH       DI
       1000:34a9 bf 60 00        MOV        DI,0x60
       1000:34ac b9 33 00        MOV        CX,0x33
       1000:34af 32 c0           XOR        AL,AL
       1000:34b1 f3 aa           STOSB.REP  ES:DI
       1000:34b3 5f              POP        DI
       1000:34b4 bd d0 34        MOV        BP,0x34d0
       1000:34b7 e8 7f 31        CALL       FUN_1000_6639                                    undefined FUN_1000_6639()
       1000:34ba a0 60 00        MOV        AL,[0x60]
       1000:34bd 02 06 7e 00     ADD        AL,byte ptr [0x7e]
       1000:34c1 a2 91 00        MOV        [0x91],AL
       1000:34c4 a0 61 00        MOV        AL,[0x61]
       1000:34c7 02 06 7f 00     ADD        AL,byte ptr [0x7f]
       1000:34cb a2 92 00        MOV        [0x92],AL
       1000:34ce 5e              POP        SI
       1000:34cf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_3542(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: [0x47c4]
                             //   Read from: word ptr [0x114e]
                             //   Write to: byte ptr [0xe7]
                             //
                             undefined FUN_1000_3542()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3542                                   XREF[1]:     FUN_1000_2b2a:1000:2b6d(c)  
       1000:3542 a1 c4 47        MOV        AX,[0x47c4]
       1000:3545 8b 3e 4e 11     MOV        DI,word ptr [0x114e]
       1000:3549 e8 05 f5        CALL       FUN_1000_2a51                                    undefined FUN_1000_2a51()
       1000:354c c6 06 e7        MOV        byte ptr [0xe7],0x0
                 00 00
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_3551(void);
                             //
                             // Input/Output Parameters:
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             // Memory Access:
                             //   Read from: [0x47c4]
                             //   Write to: word ptr [0x1bea]
                             //   Write to: word ptr [0x1bf8]
                             //   Write to: word ptr [0x1bea]
                             //
                             undefined __cdecl16near FUN_1000_3551()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3551                                   XREF[1]:     FUN_1000_35ad:1000:3633(c)  
       1000:3551 fe 06 a7 47     INC        byte ptr [0x47a7]
       1000:3555 80 3e 23        CMP        byte ptr [0x23],0x3
                 00 03
       1000:355a 75 16           JNZ        LAB_1000_3572
       1000:355c bd 92 1f        MOV        BP,0x1f92
       1000:355f bb cf 97        MOV        BX,0x97cf
       1000:3562 e8 be 9d        CALL       FUN_1000_d323                                    undefined FUN_1000_d323()
       1000:3565 c7 06 ea        MOV        word ptr [0x1bea],0x0
                 1b 00 00
       1000:356b c7 06 f8        MOV        word ptr [0x1bf8],0x0
                 1b 00 00
       1000:3571 c3              RET
                             LAB_1000_3572                                   XREF[1]:     1000:355a(j)  
       1000:3572 80 3e 23        CMP        byte ptr [0x23],0x4
                 00 04
       1000:3577 75 1c           JNZ        LAB_1000_3595
       1000:3579 bd 9e 1f        MOV        BP,0x1f9e
       1000:357c 80 66 0b bf     AND        byte ptr [BP + 0xb],0xbf
       1000:3580 bb cf 97        MOV        BX,0x97cf
       1000:3583 e8 9d 9d        CALL       FUN_1000_d323                                    undefined FUN_1000_d323()
       1000:3586 c7 06 ea        MOV        word ptr [0x1bea],0x0
                 1b 00 00
       1000:358c c7 06 f8        MOV        word ptr [0x1bf8],0x0
                 1b 00 00
       1000:3592 e9 66 fa        JMP        FUN_1000_2ffb                                    undefined FUN_1000_2ffb()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_3595                                   XREF[1]:     1000:3577(j)  
       1000:3595 80 3e 74        CMP        byte ptr [0x4774],0x0
                 47 00
       1000:359a 75 10           JNZ        LAB_1000_35ac
       1000:359c 80 3e 23        CMP        byte ptr [0x23],0x64
                 00 64
       1000:35a1 73 09           JNC        LAB_1000_35ac
       1000:35a3 a1 c4 47        MOV        AX,[0x47c4]
       1000:35a6 e8 36 5e        CALL       FUN_1000_93df                                    undefined FUN_1000_93df()
       1000:35a9 e8 d4 9c        CALL       FUN_1000_d280                                    undefined FUN_1000_d280()
                             LAB_1000_35ac                                   XREF[4]:     1000:359a(j), 1000:35a1(j), 
                                                                                          FUN_1000_35ad:1000:35c2(j), 
                                                                                          FUN_1000_35ad:1000:35fa(j)  
       1000:35ac c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_35ad(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [0xc0]
                             //   Write to: [0x1a]
                             //   Write to: [0x47a7]
                             //   Write to: [0x1a]
                             //
                             undefined __cdecl16near FUN_1000_35ad()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_35ad                                   XREF[2]:     FUN_1000_2e52:1000:2e52(c), 
                                                                                          FUN_1000_3723:1000:37a7(c)  
       1000:35ad 80 3e c9        CMP        byte ptr [0x11c9],0x0
                 11 00
       1000:35b2 75 35           JNZ        LAB_1000_35e9
       1000:35b4 33 c0           XOR        AX,AX
       1000:35b6 a2 1a 00        MOV        [0x1a],AL
       1000:35b9 a2 a7 47        MOV        [0x47a7],AL
       1000:35bc 86 06 a6 47     XCHG       byte ptr [0x47a6],AL
       1000:35c0 0a c0           OR         AL,AL
       1000:35c2 75 e8           JNZ        LAB_1000_35ac
       1000:35c4 fe 06 1a 00     INC        byte ptr [0x1a]
       1000:35c8 80 3e 0b        CMP        byte ptr [0xb],0x8
                 00 08
       1000:35cd 75 14           JNZ        LAB_1000_35e3
       1000:35cf a1 c0 00        MOV        AX,[0xc0]
       1000:35d2 23 06 58 11     AND        AX,word ptr [0x1158]
       1000:35d6 74 0b           JZ         LAB_1000_35e3
       1000:35d8 f7 06 12        TEST       word ptr [0x12],0x8
                 00 08 00
       1000:35de 74 03           JZ         LAB_1000_35e3
       1000:35e0 e8 83 ef        CALL       FUN_1000_2566                                    undefined FUN_1000_2566()
                             LAB_1000_35e3                                   XREF[3]:     1000:35cd(j), 1000:35d6(j), 
                                                                                          1000:35de(j)  
       1000:35e3 bd 20 35        MOV        BP,0x3520
       1000:35e6 e9 05 01        JMP        FUN_1000_36ee                                    undefined FUN_1000_36ee()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_35e9                                   XREF[1]:     1000:35b2(j)  
       1000:35e9 33 c0           XOR        AX,AX
       1000:35eb a2 1a 00        MOV        [0x1a],AL
       1000:35ee a2 a7 47        MOV        [0x47a7],AL
       1000:35f1 a2 23 00        MOV        [0x23],AL
       1000:35f4 86 06 a6 47     XCHG       byte ptr [0x47a6],AL
       1000:35f8 0a c0           OR         AL,AL
       1000:35fa 75 b0           JNZ        LAB_1000_35ac
       1000:35fc 83 3e 52        CMP        word ptr [0x1152],-0x1
                 11 ff
       1000:3601 74 34           JZ         LAB_1000_3637
       1000:3603 e8 f3 0a        CALL       FUN_1000_40f9                                    undefined FUN_1000_40f9()
       1000:3606 e8 79 0b        CALL       FUN_1000_4182                                    undefined FUN_1000_4182()
       1000:3609 80 3e 23        CMP        byte ptr [0x23],0x0
                 00 00
       1000:360e 74 26           JZ         LAB_1000_3636
       1000:3610 e8 5c 00        CALL       FUN_1000_366f                                    undefined FUN_1000_366f()
       1000:3613 78 21           JS         LAB_1000_3636
       1000:3615 e8 9a a5        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:3618 e8 70 00        CALL       FUN_1000_368b                                    undefined FUN_1000_368b()
       1000:361b 50              PUSH       AX
       1000:361c b8 4b 00        MOV        AX,0x4b
       1000:361f e8 65 ad        CALL       FUN_1000_e387                                    undefined FUN_1000_e387()
       1000:3622 58              POP        AX
       1000:3623 50              PUSH       AX
       1000:3624 e8 b1 60        CALL       FUN_1000_96d8                                    undefined FUN_1000_96d8()
       1000:3627 58              POP        AX
       1000:3628 72 0c           JC         LAB_1000_3636
       1000:362a b1 10           MOV        CL,0x10
       1000:362c f6 e1           MUL        CL
       1000:362e 05 d8 0f        ADD        AX,0xfd8
       1000:3631 8b f0           MOV        SI,AX
       1000:3633 e8 1b ff        CALL       FUN_1000_3551                                    undefined FUN_1000_3551()
                             LAB_1000_3636                                   XREF[4]:     1000:360e(j), 1000:3613(j), 
                                                                                          1000:3628(j), 1000:363f(j)  
       1000:3636 c3              RET
                             LAB_1000_3637                                   XREF[1]:     1000:3601(j)  
       1000:3637 e8 48 0b        CALL       FUN_1000_4182                                    undefined FUN_1000_4182()
       1000:363a 80 3e 23        CMP        byte ptr [0x23],0x0
                 00 00
       1000:363f 74 f5           JZ         LAB_1000_3636
       1000:3641 e8 6e a5        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:3644 e8 58 0d        CALL       FUN_1000_439f                                    undefined FUN_1000_439f()
       1000:3647 b9 0c 20        MOV        CX,0x200c
       1000:364a ba 66 00        MOV        DX,0x66
       1000:364d bb 4e 00        MOV        BX,0x4e
       1000:3650 b8 bf 00        MOV        AX,0xbf
       1000:3653 e8 3e 9b        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:3656 e8 9b 8a        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:3659 e8 81 8e        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
       1000:365c e8 6b 14        CALL       FUN_1000_4aca                                    undefined FUN_1000_4aca()
       1000:365f bd 9e 1f        MOV        BP,0x1f9e
       1000:3662 80 4e 0b 40     OR         byte ptr [BP + 0xb],0x40
       1000:3666 bb be 4a        MOV        BX,0x4abe
       1000:3669 e8 b7 9c        CALL       FUN_1000_d323                                    undefined FUN_1000_d323()
       1000:366c e9 8c f9        JMP        FUN_1000_2ffb                                    undefined FUN_1000_2ffb()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_366f(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x1152]
                             //
                             undefined __cdecl16near FUN_1000_366f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_366f                                   XREF[1]:     FUN_1000_35ad:1000:3610(c)  
       1000:366f a1 52 11        MOV        AX,[0x1152]
       1000:3672 3d ff ff        CMP        AX,0xffff
       1000:3675 74 11           JZ         LAB_1000_3688
       1000:3677 80 fc ff        CMP        AH,0xff
       1000:367a 74 0a           JZ         LAB_1000_3686
       1000:367c f7 06 00        TEST       word ptr [0x0],0x80
                 00 80 00
       1000:3682 75 02           JNZ        LAB_1000_3686
       1000:3684 86 c4           XCHG       AH,AL
                             LAB_1000_3686                                   XREF[2]:     1000:367a(j), 1000:3682(j)  
       1000:3686 32 e4           XOR        AH,AH
                             LAB_1000_3688                                   XREF[1]:     1000:3675(j)  
       1000:3688 0b c0           OR         AX,AX
       1000:368a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_368b(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0x11c9]
                             //   Write to: byte ptr [0x473e]
                             //   Write to: byte ptr [0x47a4]
                             //   Write to: [0x47c4]
                             //
                             undefined __cdecl16near FUN_1000_368b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_368b                                   XREF[1]:     FUN_1000_35ad:1000:3618(c)  
       1000:368b e8 e2 ab        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:368e 80 0e 28        OR         byte ptr [0x4728],0x1
                 47 01
       1000:3693 8a 1e c9 11     MOV        BL,byte ptr [0x11c9]
       1000:3697 80 e3 03        AND        BL,0x3
       1000:369a 80 fb 02        CMP        BL,0x2
       1000:369d 74 2c           JZ         LAB_1000_36cb
       1000:369f fe cb           DEC        BL
       1000:36a1 75 24           JNZ        LAB_1000_36c7
       1000:36a3 c6 06 3e        MOV        byte ptr [0x473e],0x1
                 47 01
       1000:36a8 c6 06 a4        MOV        byte ptr [0x47a4],0x1
                 47 01
       1000:36ad 50              PUSH       AX
       1000:36ae b0 34           MOV        AL,0x34
       1000:36b0 e8 3f 8c        CALL       FUN_1000_c2f2                                    undefined FUN_1000_c2f2()
       1000:36b3 e8 3e 8a        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:36b6 e8 59 8d        CALL       FUN_1000_c412                                    undefined FUN_1000_c412()
       1000:36b9 58              POP        AX
       1000:36ba 0b c0           OR         AX,AX
       1000:36bc 78 06           JS         LAB_1000_36c4
       1000:36be a3 c4 47        MOV        [0x47c4],AX
       1000:36c1 e8 ca 60        CALL       FUN_1000_978e                                    undefined FUN_1000_978e()
                             LAB_1000_36c4                                   XREF[1]:     1000:36bc(j)  
       1000:36c4 e8 16 8e        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
                             LAB_1000_36c7                                   XREF[2]:     1000:36a1(j), 1000:36d1(j)  
       1000:36c7 e8 b9 ab        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:36ca c3              RET
                             LAB_1000_36cb                                   XREF[1]:     1000:369d(j)  
       1000:36cb e8 1d 14        CALL       FUN_1000_4aeb                                    undefined FUN_1000_4aeb()
       1000:36ce e8 a3 8d        CALL       FUN_1000_c474                                    undefined FUN_1000_c474()
       1000:36d1 eb f4           JMP        LAB_1000_36c7
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_36d3(void);
                             //
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x47a7]
                             //   Write to: byte ptr [0x23]
                             //
                             undefined __cdecl16near FUN_1000_36d3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_36d3                                   XREF[1]:     FUN_1000_3f15:1000:3fb8(c)  
       1000:36d3 80 3e 23        CMP        byte ptr [0x23],0x0
                 00 00
       1000:36d8 74 13           JZ         LAB_1000_36ed
       1000:36da e8 d5 61        CALL       FUN_1000_98b2                                    undefined FUN_1000_98b2()
       1000:36dd c6 06 a7        MOV        byte ptr [0x47a7],0x0
                 47 00
       1000:36e2 bd 20 35        MOV        BP,0x3520
       1000:36e5 e8 06 00        CALL       FUN_1000_36ee                                    undefined FUN_1000_36ee()
       1000:36e8 c6 06 23        MOV        byte ptr [0x23],0x0
                 00 00
                             LAB_1000_36ed                                   XREF[1]:     1000:36d8(j)  
       1000:36ed c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_36ee(void);
                             //
                             // Input/Output Parameters:
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x6]
                             //   Read from: word ptr [0x4]
                             //   Read from: word ptr [0x6]
                             //
                             undefined __cdecl16near FUN_1000_36ee()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_36ee                                   XREF[3]:     FUN_1000_35ad:1000:35e6(c), 
                                                                                          FUN_1000_36d3:1000:36e5(c), 
                                                                                          FUN_1000_40c3:1000:40c6(c)  
       1000:36ee 53              PUSH       BX
       1000:36ef 52              PUSH       DX
       1000:36f0 be d8 0f        MOV        SI,0xfd8
       1000:36f3 b9 10 00        MOV        CX,0x10
       1000:36f6 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:36fa 8b 16 04 00     MOV        DX,word ptr [0x4]
                             LAB_1000_36fe                                   XREF[1]:     1000:371e(j)  
       1000:36fe 3b 5c 02        CMP        BX,word ptr [SI + 0x2]
       1000:3701 75 18           JNZ        LAB_1000_371b
       1000:3703 3b 14           CMP        DX,word ptr [SI]
       1000:3705 75 14           JNZ        LAB_1000_371b
       1000:3707 5a              POP        DX
       1000:3708 5b              POP        BX
       1000:3709 53              PUSH       BX
       1000:370a 52              PUSH       DX
       1000:370b 51              PUSH       CX
       1000:370c 56              PUSH       SI
       1000:370d 55              PUSH       BP
       1000:370e ff d5           CALL       BP
       1000:3710 5d              POP        BP
       1000:3711 5e              POP        SI
       1000:3712 59              POP        CX
       1000:3713 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:3717 8b 16 04 00     MOV        DX,word ptr [0x4]
                             LAB_1000_371b                                   XREF[2]:     1000:3701(j), 1000:3705(j)  
       1000:371b 83 c6 10        ADD        SI,0x10
       1000:371e e2 de           LOOP       LAB_1000_36fe
       1000:3720 5a              POP        DX
       1000:3721 5b              POP        BX
                             LAB_1000_3722                                   XREF[2]:     FUN_1000_3723:1000:372a(j), 
                                                                                          FUN_1000_3723:1000:372e(j)  
       1000:3722 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3723(uint8_t dh);
                             //
                             // Input Parameters:
                             //   DH (uint8_t): 8-bit input value in DH register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DL (uint8_t): 8-bit output value in DL register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x1150]
                             //   Read from: word ptr [0x4]
                             //   Read from: word ptr [0x6]
                             //   Write to: byte ptr [0x47a6]
                             //   Write to: byte ptr [0x47a6]
                             //
                             undefined FUN_1000_3723()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3723                                   XREF[1]:     FUN_1000_2e52:1000:2e69(c)  
       1000:3723 80 26 35        AND        byte ptr [0x4735],0x7f
                 47 7f
       1000:3728 2c 94           SUB        AL,0x94
       1000:372a 72 f6           JC         LAB_1000_3722
       1000:372c a8 0f           TEST       AL,0xf
       1000:372e 75 f2           JNZ        LAB_1000_3722
       1000:3730 50              PUSH       AX
       1000:3731 e8 7e a4        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:3734 e8 45 89        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:3737 e8 73 00        CALL       thunk_FUN_1000_c2f2                              undefined thunk_FUN_1000_c2f2()
       1000:373a e8 a0 8d        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
       1000:373d 58              POP        AX
       1000:373e 32 e4           XOR        AH,AH
       1000:3740 b1 04           MOV        CL,0x4
       1000:3742 d3 e8           SHR        AX,CL
       1000:3744 40              INC        AX
       1000:3745 3c 0a           CMP        AL,0xa
       1000:3747 72 02           JC         LAB_1000_374b
       1000:3749 b0 0a           MOV        AL,0xa
                             LAB_1000_374b                                   XREF[1]:     1000:3747(j)  
       1000:374b 86 c4           XCHG       AH,AL
       1000:374d e8 37 ac        CALL       FUN_1000_e387                                    undefined FUN_1000_e387()
       1000:3750 80 3e 35        CMP        byte ptr [0x4735],0x37
                 47 37
       1000:3755 72 53           JC         LAB_1000_37aa
       1000:3757 e8 1d d7        CALL       FUN_1000_0e77                                    undefined FUN_1000_0e77()
       1000:375a b9 05 00        MOV        CX,0x5
       1000:375d e8 79 d8        CALL       FUN_1000_0fd9                                    undefined FUN_1000_0fd9()
       1000:3760 bd ad c0        MOV        BP,0xc0ad
       1000:3763 b0 34           MOV        AL,0x34
       1000:3765 e8 a0 89        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:3768 e8 1b c9        CALL       FUN_1000_0086                                    undefined FUN_1000_0086()
       1000:376b bd 0f 1a        MOV        BP,0x1a0f
       1000:376e e8 26 89        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:3771 8b 36 50 11     MOV        SI,word ptr [0x1150]
       1000:3775 c6 06 a6        MOV        byte ptr [0x47a6],0xff
                 47 ff
       1000:377a bd 1f 40        MOV        BP,0x401f
       1000:377d e8 17 89        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:3780 8b 16 04 00     MOV        DX,word ptr [0x4]
       1000:3784 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:3788 80 fe 21        CMP        DH,0x21
       1000:378b 73 09           JNC        LAB_1000_3796
       1000:378d b2 02           MOV        DL,0x2
       1000:378f 80 fe 20        CMP        DH,0x20
       1000:3792 75 02           JNZ        LAB_1000_3796
       1000:3794 b2 0a           MOV        DL,0xa
                             LAB_1000_3796                                   XREF[2]:     1000:378b(j), 1000:3792(j)  
       1000:3796 bd 57 40        MOV        BP,0x4057
       1000:3799 b0 34           MOV        AL,0x34
       1000:379b c6 06 a6        MOV        byte ptr [0x47a6],0xff
                 47 ff
       1000:37a0 e8 65 89        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:37a3 fe 06 e7 00     INC        byte ptr [0xe7]
       1000:37a7 e9 03 fe        JMP        FUN_1000_35ad                                    undefined FUN_1000_35ad()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_37aa                                   XREF[1]:     1000:3755(j)  
       1000:37aa e9 04 f6        JMP        FUN_1000_2db1                                    undefined FUN_1000_2db1()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             //
                             // C Signature: uint16_t thunk_FUN_1000_c2f2(void);
                             //
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             thunk undefined thunk_FUN_1000_c2f2()
                               Thunked-Function: FUN_1000_c2f2
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             thunk_FUN_1000_c2f2                             XREF[1]:     FUN_1000_3723:1000:3737(c)  
       1000:37ad b0 22           MOV        AL,0x22
       1000:37af e9 40 8b        JMP        FUN_1000_c2f2                                    undefined FUN_1000_c2f2()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_37b2(void);
                             //
                             //
                             undefined FUN_1000_37b2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_37b2                                   XREF[2]:     FUN_1000_2db1:1000:2e13(c), 
                                                                                          FUN_1000_488a:1000:48f4(c)  
       1000:37b2 e8 31 61        CALL       FUN_1000_98e6                                    undefined FUN_1000_98e6()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_37b5(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x4]
                             //   Write to: word ptr [0x472d]
                             //
                             undefined FUN_1000_37b5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_37b5                                   XREF[1]:     FUN_1000_3af9:1000:3b2d(c)  
       1000:37b5 e8 48 15        CALL       FUN_1000_4d00                                    undefined FUN_1000_4d00()
       1000:37b8 c7 06 2d        MOV        word ptr [0x472d],0x0
                 47 00 00
       1000:37be e8 e7 23        CALL       FUN_1000_5ba8                                    undefined FUN_1000_5ba8()
       1000:37c1 e8 6e 8c        CALL       FUN_1000_c432                                    undefined FUN_1000_c432()
       1000:37c4 b8 ff ff        MOV        AX,0xffff
       1000:37c7 38 06 08 00     CMP        byte ptr [0x8],AL
       1000:37cb 74 08           JZ         LAB_1000_37d5
       1000:37cd 8b 16 04 00     MOV        DX,word ptr [0x4]
       1000:37d1 e8 2a 07        CALL       FUN_1000_3efe                                    undefined FUN_1000_3efe()
       1000:37d4 ac              LODSB      SI
                             LAB_1000_37d5                                   XREF[1]:     1000:37cb(j)  
       1000:37d5 0b c0           OR         AX,AX
       1000:37d7 78 03           JS         LAB_1000_37dc
       1000:37d9 e9 10 02        JMP        FUN_1000_39ec                                    undefined FUN_1000_39ec()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_37dc                                   XREF[1]:     1000:37d7(j)  
       1000:37dc e8 0a 03        CALL       FUN_1000_3ae9                                    undefined FUN_1000_3ae9()
       1000:37df 80 0e a4        OR         byte ptr [0x47a4],0x1
                 47 01
       1000:37e4 f6 06 c9        TEST       byte ptr [0x11c9],0x3
                 11 03
       1000:37e9 75 09           JNZ        LAB_1000_37f4
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_37eb(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             // Memory Access:
                             //   Read from: [0x487e]
                             //   Write to: byte ptr [0x4728]
                             //
                             undefined FUN_1000_37eb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_37eb                                   XREF[1]:     FUN_1000_39ec:1000:3a13(c)  
       1000:37eb e8 1e 00        CALL       FUN_1000_380c                                    undefined FUN_1000_380c()
       1000:37ee e8 21 16        CALL       FUN_1000_4e12                                    undefined FUN_1000_4e12()
       1000:37f1 e9 12 15        JMP        FUN_1000_4d06                                    undefined FUN_1000_4d06()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_37f4                                   XREF[1]:     1000:37e9(j)  
       1000:37f4 c6 06 28        MOV        byte ptr [0x4728],0x0
                 47 00
       1000:37f9 e8 8c 11        CALL       FUN_1000_4988                                    undefined FUN_1000_4988()
       1000:37fc e8 5b 12        CALL       FUN_1000_4a5a                                    undefined FUN_1000_4a5a()
       1000:37ff a1 7e 48        MOV        AX,[0x487e]
       1000:3802 e8 16 92        CALL       FUN_1000_ca1b                                    undefined FUN_1000_ca1b()
       1000:3805 ff 1e 59 39     CALLF      [0x3959]
       1000:3809 e9 81 00        JMP        FUN_1000_388d                                    undefined FUN_1000_388d()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_380c(void);
                             //
                             // Input Parameters:
                             //   ES (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x1150]
                             //   Read from: word ptr [0x4]
                             //   Read from: [0x6]
                             //   Write to: byte ptr [0x22e3]
                             //
                             undefined FUN_1000_380c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_380c                                   XREF[1]:     FUN_1000_37eb:1000:37eb(c)  
       1000:380c c6 06 e3        MOV        byte ptr [0x22e3],0x1
                 22 01
       1000:3811 e8 79 00        CALL       FUN_1000_388d                                    undefined FUN_1000_388d()
       1000:3814 8b 36 50 11     MOV        SI,word ptr [0x1150]
       1000:3818 b8 72 19        MOV        AX,0x1972
       1000:381b e8 31 26        CALL       FUN_1000_5e4f                                    undefined FUN_1000_5e4f()
       1000:381e 8b d8           MOV        BX,AX
       1000:3820 8b 16 04 00     MOV        DX,word ptr [0x4]
       1000:3824 a1 06 00        MOV        AX,[0x6]
       1000:3827 3c 80           CMP        AL,0x80
       1000:3829 b0 00           MOV        AL,0x0
       1000:382b 74 07           JZ         LAB_1000_3834
       1000:382d 3b 54 02        CMP        DX,word ptr [SI + 0x2]
       1000:3830 75 18           JNZ        LAB_1000_384a
       1000:3832 8a c4           MOV        AL,AH
                             LAB_1000_3834                                   XREF[1]:     1000:382b(j)  
       1000:3834 3a 47 05        CMP        AL,byte ptr [BX + 0x5]
       1000:3837 73 11           JNC        LAB_1000_384a
       1000:3839 02 07           ADD        AL,byte ptr [BX]
       1000:383b 3c 7f           CMP        AL,0x7f
       1000:383d 75 08           JNZ        LAB_1000_3847
       1000:383f 8a 24           MOV        AH,byte ptr [SI]
       1000:3841 d0 ec           SHR        AH,0x1
       1000:3843 02 c4           ADD        AL,AH
       1000:3845 2c 05           SUB        AL,0x5
                             LAB_1000_3847                                   XREF[1]:     1000:383d(j)  
       1000:3847 e9 a8 8a        JMP        FUN_1000_c2f2                                    undefined FUN_1000_c2f2()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_384a                                   XREF[2]:     1000:3830(j), 1000:3837(j)  
       1000:384a 8b 3e 50 11     MOV        DI,word ptr [0x1150]
       1000:384e f6 45 0a 01     TEST       byte ptr [DI + 0xa],0x1
       1000:3852 75 1e           JNZ        LAB_1000_3872
       1000:3854 e8 27 08        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:3857 e8 31 7d        CALL       FUN_1000_b58b                                    undefined FUN_1000_b58b()
       1000:385a 4f              DEC        DI
       1000:385b b9 04 00        MOV        CX,0x4
                             LAB_1000_385e                                   XREF[1]:     1000:3868(j)  
       1000:385e 26 8a 05        MOV        AL,byte ptr ES:[DI]
       1000:3861 47              INC        DI
       1000:3862 24 30           AND        AL,0x30
       1000:3864 3c 10           CMP        AL,0x10
       1000:3866 74 0a           JZ         LAB_1000_3872
       1000:3868 e2 f4           LOOP       LAB_1000_385e
       1000:386a bb 13 00        MOV        BX,0x13
       1000:386d b9 42 00        MOV        CX,0x42
       1000:3870 eb 06           JMP        LAB_1000_3878
                             LAB_1000_3872                                   XREF[2]:     1000:3852(j), 1000:3866(j)  
       1000:3872 bb 0a 00        MOV        BX,0xa
       1000:3875 b9 88 00        MOV        CX,0x88
                             LAB_1000_3878                                   XREF[1]:     1000:3870(j)  
       1000:3878 a1 06 00        MOV        AX,[0x6]
       1000:387b 86 c4           XCHG       AH,AL
       1000:387d 33 06 04 00     XOR        AX,word ptr [0x4]
       1000:3881 40              INC        AX
       1000:3882 33 d2           XOR        DX,DX
       1000:3884 f7 f3           DIV        BX
       1000:3886 8b c2           MOV        AX,DX
       1000:3888 03 c1           ADD        AX,CX
       1000:388a e9 65 8a        JMP        FUN_1000_c2f2                                    undefined FUN_1000_c2f2()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_388d(uint8_t bl);
                             //
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x46df]
                             //   Write to: byte ptr [0x46d7]
                             //
                             undefined __cdecl16near FUN_1000_388d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_388d                                   XREF[3]:     FUN_1000_37b5:1000:3809(c), 
                                                                                          FUN_1000_380c:1000:3811(c), 
                                                                                          FUN_1000_38b4:1000:38b4(c)  
       1000:388d c6 06 df        MOV        byte ptr [0x46df],0x1
                 46 01
       1000:3892 e8 c7 00        CALL       FUN_1000_395c                                    undefined FUN_1000_395c()
       1000:3895 80 3e d7        CMP        byte ptr [0x46d7],0x0
                 46 00
       1000:389a 74 11           JZ         LAB_1000_38ad
       1000:389c 38 1e d6 46     CMP        byte ptr [0x46d6],BL
       1000:38a0 74 11           JZ         LAB_1000_38b3
       1000:38a2 c6 06 d7        MOV        byte ptr [0x46d7],0x30
                 46 30
       1000:38a7 e8 c7 00        CALL       FUN_1000_3971                                    undefined FUN_1000_3971()
       1000:38aa e9 0c 01        JMP        FUN_1000_39b9                                    undefined FUN_1000_39b9()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_38ad                                   XREF[1]:     1000:389a(j)  
       1000:38ad e8 c1 00        CALL       FUN_1000_3971                                    undefined FUN_1000_3971()
       1000:38b0 e8 d9 00        CALL       FUN_1000_398c                                    undefined FUN_1000_398c()
                             LAB_1000_38b3                                   XREF[1]:     1000:38a0(j)  
       1000:38b3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_38b4(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_38b4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_38b4                                   XREF[2]:     FUN_1000_39ec:1000:3a1d(c), 
                                                                                          FUN_1000_439f:1000:43d3(c)  
       1000:38b4 e8 d6 ff        CALL       FUN_1000_388d                                    undefined FUN_1000_388d()
       1000:38b7 b8 28 00        MOV        AX,0x28
       1000:38ba e8 81 88        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:38bd 33 c0           XOR        AX,AX
       1000:38bf bd 14 00        MOV        BP,0x14
       1000:38c2 33 db           XOR        BX,BX
       1000:38c4 b9 04 00        MOV        CX,0x4
                             LAB_1000_38c7                                   XREF[1]:     1000:38de(j)  
       1000:38c7 33 d2           XOR        DX,DX
       1000:38c9 51              PUSH       CX
       1000:38ca 55              PUSH       BP
                             LAB_1000_38cb                                   XREF[1]:     1000:38d7(j)  
       1000:38cb 50              PUSH       AX
       1000:38cc e8 2e 8a        CALL       FUN_1000_c2fd                                    undefined FUN_1000_c2fd()
       1000:38cf 58              POP        AX
       1000:38d0 83 c2 28        ADD        DX,0x28
       1000:38d3 81 fa 40 01     CMP        DX,0x140
       1000:38d7 72 f2           JC         LAB_1000_38cb
       1000:38d9 5d              POP        BP
       1000:38da 59              POP        CX
       1000:38db 40              INC        AX
       1000:38dc 03 dd           ADD        BX,BP
       1000:38de e2 e7           LOOP       LAB_1000_38c7
                             LAB_1000_38e0                                   XREF[3]:     FUN_1000_38e1:1000:38e6(j), 
                                                                                          FUN_1000_38e1:1000:38ef(j), 
                                                                                          FUN_1000_38f1:1000:38ff(j)  
       1000:38e0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_38e1(uint8_t bl);
                             //
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //
                             undefined __cdecl16near FUN_1000_38e1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_38e1                                   XREF[2]:     FUN_1000_1b23:1000:1b43(c), 
                                                                                          FUN_1000_42e9:1000:42ec(c)  
       1000:38e1 80 3e df        CMP        byte ptr [0x46df],0x0
                 46 00
       1000:38e6 74 f8           JZ         LAB_1000_38e0
       1000:38e8 e8 71 00        CALL       FUN_1000_395c                                    undefined FUN_1000_395c()
       1000:38eb 38 1e d6 46     CMP        byte ptr [0x46d6],BL
       1000:38ef 74 ef           JZ         LAB_1000_38e0
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_38f1(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_38f1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_38f1                                   XREF[1]:     FUN_1000_021c:1000:0274(c)  
       1000:38f1 e8 7d 00        CALL       FUN_1000_3971                                    undefined FUN_1000_3971()
       1000:38f4 e8 c2 00        CALL       FUN_1000_39b9                                    undefined FUN_1000_39b9()
       1000:38f7 b0 40           MOV        AL,0x40
       1000:38f9 86 06 d7 46     XCHG       byte ptr [0x46d7],AL
       1000:38fd 0a c0           OR         AL,AL
       1000:38ff 75 df           JNZ        LAB_1000_38e0
       1000:3901 be 16 39        MOV        SI,0x3916
       1000:3904 bd 10 00        MOV        BP,0x10
       1000:3907 e9 1b a1        JMP        FUN_1000_da25                                    undefined FUN_1000_da25()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_3950(void);
                             //
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x46d7]
                             //
                             undefined FUN_1000_3950()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3950                                   XREF[1]:     FUN_1000_021c:1000:0282(c)  
       1000:3950 c6 06 d7        MOV        byte ptr [0x46d7],0x0
                 46 00
       1000:3955 be 16 39        MOV        SI,0x3916
       1000:3958 e9 04 a1        JMP        FUN_1000_da5f                                    undefined FUN_1000_da5f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_395c(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BL (uint8_t): 8-bit output value in BL register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             // Memory Access:
                             //   Read from: [0x2]
                             //
                             undefined __cdecl16near FUN_1000_395c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_395c                                   XREF[3]:     FUN_1000_0d45:1000:0d45(c), 
                                                                                          FUN_1000_388d:1000:3892(c), 
                                                                                          FUN_1000_38e1:1000:38e8(c)  
       1000:395c a1 02 00        MOV        AX,[0x2]
       1000:395f 8a e0           MOV        AH,AL
       1000:3961 d0 ec           SHR        AH,0x1
       1000:3963 d0 ec           SHR        AH,0x1
       1000:3965 25 0f 1c        AND        AX,0x1c0f
       1000:3968 bb 80 22        MOV        BX,0x2280
       1000:396b d7              XLAT       BX
       1000:396c 02 c4           ADD        AL,AH
       1000:396e 8a d8           MOV        BL,AL
       1000:3970 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3971(uint8_t bl, uint16_t si);
                             //
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: [SI + 0x6]
                             //   Write to: [0xdbb4]
                             //   Write to: [0x46d6]
                             //
                             undefined __cdecl16near FUN_1000_3971()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3971                                   XREF[5]:     FUN_1000_0d45:1000:0d48(c), 
                                                                                          FUN_1000_0d45:1000:0d58(c), 
                                                                                          FUN_1000_388d:1000:38a7(c), 
                                                                                          FUN_1000_388d:1000:38ad(c), 
                                                                                          FUN_1000_38f1:1000:38f1(c)  
       1000:3971 b8 28 00        MOV        AX,0x28
       1000:3974 02 06 e3 22     ADD        AL,byte ptr [0x22e3]
       1000:3978 a2 b4 db        MOV        [0xdbb4],AL
       1000:397b e8 c0 87        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:397e 8a c3           MOV        AL,BL
       1000:3980 32 e4           XOR        AH,AH
       1000:3982 a2 d6 46        MOV        [0x46d6],AL
       1000:3985 e8 6c 88        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:3988 8d 54 06        LEA        DX,[SI + 0x6]
       1000:398b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_398c(void);
                             //
                             // Input/Output Parameters:
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             undefined __cdecl16near FUN_1000_398c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_398c                                   XREF[2]:     FUN_1000_0d45:1000:0d5b(c), 
                                                                                          FUN_1000_388d:1000:38b0(c)  
       1000:398c b9 c5 01        MOV        CX,0x1c5
       1000:398f bb db 00        MOV        BX,0xdb
       1000:3992 80 3e e3        CMP        byte ptr [0x22e3],0x0
                 22 00
       1000:3997 75 06           JNZ        LAB_1000_399f
       1000:3999 b9 f0 00        MOV        CX,0xf0
       1000:399c bb 80 01        MOV        BX,0x180
                             LAB_1000_399f                                   XREF[1]:     1000:3997(j)  
       1000:399f 51              PUSH       CX
       1000:39a0 ff 1e bd 38     CALLF      [0x38bd]
       1000:39a4 59              POP        CX
       1000:39a5 03 d1           ADD        DX,CX
       1000:39a7 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:39ac 75 0a           JNZ        LAB_1000_39b8
       1000:39ae b9 30 00        MOV        CX,0x30
       1000:39b1 bb d0 02        MOV        BX,0x2d0
       1000:39b4 ff 1e bd 38     CALLF      [0x38bd]
                             LAB_1000_39b8                                   XREF[1]:     1000:39ac(j)  
       1000:39b8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_39b9(void);
                             //
                             // Input/Output Parameters:
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             undefined __cdecl16near FUN_1000_39b9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_39b9                                   XREF[3]:     FUN_1000_0d45:1000:0d4b(c), 
                                                                                          FUN_1000_388d:1000:38aa(c), 
                                                                                          FUN_1000_38f1:1000:38f4(c)  
       1000:39b9 b9 c5 01        MOV        CX,0x1c5
       1000:39bc bb db 00        MOV        BX,0xdb
       1000:39bf 80 3e e3        CMP        byte ptr [0x22e3],0x0
                 22 00
       1000:39c4 75 06           JNZ        LAB_1000_39cc
       1000:39c6 b9 f0 00        MOV        CX,0xf0
       1000:39c9 bb 80 01        MOV        BX,0x180
                             LAB_1000_39cc                                   XREF[1]:     1000:39c4(j)  
       1000:39cc 51              PUSH       CX
       1000:39cd ff 1e 4d 39     CALLF      [0x394d]
       1000:39d1 59              POP        CX
       1000:39d2 03 d1           ADD        DX,CX
       1000:39d4 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:39d9 75 0a           JNZ        LAB_1000_39e5
       1000:39db b9 30 00        MOV        CX,0x30
       1000:39de bb d0 02        MOV        BX,0x2d0
       1000:39e1 ff 1e 4d 39     CALLF      [0x394d]
                             LAB_1000_39e5                                   XREF[1]:     1000:39d9(j)  
       1000:39e5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_39e6(void);
                             //
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_39e6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_39e6                                   XREF[4]:     FUN_1000_0580:1000:05bc(c), 
                                                                                          FUN_1000_0911:1000:0911(c), 
                                                                                          FUN_1000_18ba:1000:18cc(c), 
                                                                                          FUN_1000_3a7c:1000:3a7c(c)  
       1000:39e6 be b6 c0        MOV        SI,0xc0b6
       1000:39e9 e9 73 a0        JMP        FUN_1000_da5f                                    undefined FUN_1000_da5f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_39ec(uint8_t ah);
                             //
                             // Input Parameters:
                             //   AH (uint8_t): 8-bit input value in AH register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //
                             // Memory Access:
                             //   Read from: [0x4]
                             //   Read from: word ptr [0x114e]
                             //   Read from: byte ptr [DI]
                             //   Write to: byte ptr [0x22e3]
                             //   Write to: byte ptr [0x22e3]
                             //   Write to: byte ptr [0x4731]
                             //
                             undefined __cdecl16near FUN_1000_39ec()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_39ec                                   XREF[1]:     FUN_1000_37b5:1000:37d9(c)  
       1000:39ec c6 06 e3        MOV        byte ptr [0x22e3],0x1
                 22 01
       1000:39f1 50              PUSH       AX
       1000:39f2 e8 f4 00        CALL       FUN_1000_3ae9                                    undefined FUN_1000_3ae9()
       1000:39f5 a1 04 00        MOV        AX,[0x4]
       1000:39f8 3d 05 20        CMP        AX,0x2005
       1000:39fb 74 20           JZ         LAB_1000_3a1d
       1000:39fd 3d 05 10        CMP        AX,0x1005
       1000:3a00 74 16           JZ         LAB_1000_3a18
       1000:3a02 fe c8           DEC        AL
       1000:3a04 75 1a           JNZ        LAB_1000_3a20
       1000:3a06 80 fc 21        CMP        AH,0x21
       1000:3a09 75 08           JNZ        LAB_1000_3a13
       1000:3a0b 58              POP        AX
       1000:3a0c 8b 3e 4e 11     MOV        DI,word ptr [0x114e]
       1000:3a10 8a 05           MOV        AL,byte ptr [DI]
       1000:3a12 50              PUSH       AX
                             LAB_1000_3a13                                   XREF[1]:     1000:3a09(j)  
       1000:3a13 e8 d5 fd        CALL       FUN_1000_37eb                                    undefined FUN_1000_37eb()
       1000:3a16 eb 08           JMP        LAB_1000_3a20
                             LAB_1000_3a18                                   XREF[1]:     1000:3a00(j)  
       1000:3a18 c6 06 e3        MOV        byte ptr [0x22e3],0x0
                 22 00
                             LAB_1000_3a1d                                   XREF[1]:     1000:39fb(j)  
       1000:3a1d e8 94 fe        CALL       FUN_1000_38b4                                    undefined FUN_1000_38b4()
                             LAB_1000_3a20                                   XREF[2]:     1000:3a04(j), 1000:3a16(j)  
       1000:3a20 58              POP        AX
       1000:3a21 e8 35 01        CALL       FUN_1000_3b59                                    undefined FUN_1000_3b59()
       1000:3a24 80 3e df        CMP        byte ptr [0x46df],0x0
                 46 00
       1000:3a29 74 51           JZ         FUN_1000_3a7c
       1000:3a2b 80 3e 04        CMP        byte ptr [0x4],0x1
                 00 01
       1000:3a30 75 4a           JNZ        FUN_1000_3a7c
       1000:3a32 80 3e 31        CMP        byte ptr [0x4731],0xff
                 47 ff
       1000:3a37 74 42           JZ         LAB_1000_3a7b
       1000:3a39 8a 0e ff 46     MOV        CL,byte ptr [0x46ff]
       1000:3a3d 32 ed           XOR        CH,CH
       1000:3a3f e3 3a           JCXZ       LAB_1000_3a7b
       1000:3a41 b8 8d 38        MOV        AX,0x388d
       1000:3a44 50              PUSH       AX
       1000:3a45 c6 06 31        MOV        byte ptr [0x4731],0x0
                 47 00
       1000:3a4a f6 06 a4        TEST       byte ptr [0x47a4],0x81
                 47 81
       1000:3a4f 75 2a           JNZ        LAB_1000_3a7b
       1000:3a51 b8 33 00        MOV        AX,0x33
       1000:3a54 e8 e7 86        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:3a57 e8 3b 00        CALL       FUN_1000_3a95                                    undefined FUN_1000_3a95()
       1000:3a5a 8b c2           MOV        AX,DX
       1000:3a5c 05 0c 00        ADD        AX,0xc
       1000:3a5f a3 2d 47        MOV        [0x472d],AX
       1000:3a62 8b c3           MOV        AX,BX
       1000:3a64 05 08 00        ADD        AX,0x8
       1000:3a67 a3 2f 47        MOV        [0x472f],AX
                             LAB_1000_3a6a                                   XREF[1]:     1000:3a79(j)  
       1000:3a6a 51              PUSH       CX
       1000:3a6b 53              PUSH       BX
       1000:3a6c 52              PUSH       DX
       1000:3a6d e8 39 00        CALL       FUN_1000_3aa9                                    undefined FUN_1000_3aa9()
       1000:3a70 5a              POP        DX
       1000:3a71 5b              POP        BX
       1000:3a72 59              POP        CX
       1000:3a73 83 c2 46        ADD        DX,0x46
       1000:3a76 83 c3 0a        ADD        BX,0xa
       1000:3a79 e2 ef           LOOP       LAB_1000_3a6a
                             LAB_1000_3a7b                                   XREF[3]:     1000:3a37(j), 1000:3a3f(j), 
                                                                                          1000:3a4f(j)  
       1000:3a7b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_3a7c(uint8_t ah, uint8_t al);
                             //
                             // Input Parameters:
                             //   AH (uint8_t): 8-bit input value in AH register
                             //   AL (uint8_t): 8-bit input value in AL register
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [0x4]
                             //
                             undefined __cdecl16near FUN_1000_3a7c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3a7c                                   XREF[3]:     FUN_1000_0580:1000:05d9(c), 
                                                                                          FUN_1000_39ec:1000:3a29(j), 
                                                                                          FUN_1000_39ec:1000:3a30(j)  
       1000:3a7c e8 67 ff        CALL       FUN_1000_39e6                                    undefined FUN_1000_39e6()
       1000:3a7f a1 04 00        MOV        AX,[0x4]
       1000:3a82 3c 04           CMP        AL,0x4
       1000:3a84 75 0e           JNZ        LAB_1000_3a94
       1000:3a86 80 fc 20        CMP        AH,0x20
       1000:3a89 73 09           JNC        LAB_1000_3a94
       1000:3a8b be b6 c0        MOV        SI,0xc0b6
       1000:3a8e bd 0c 00        MOV        BP,0xc
       1000:3a91 e8 91 9f        CALL       FUN_1000_da25                                    undefined FUN_1000_da25()
                             LAB_1000_3a94                                   XREF[2]:     1000:3a84(j), 1000:3a89(j)  
       1000:3a94 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_3a95(void);
                             //
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             undefined __cdecl16near FUN_1000_3a95()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3a95                                   XREF[1]:     FUN_1000_39ec:1000:3a57(c)  
       1000:3a95 ba 95 00        MOV        DX,0x95
       1000:3a98 bb 39 00        MOV        BX,0x39
       1000:3a9b 80 3e 05        CMP        byte ptr [0x5],0x20
                 00 20
       1000:3aa0 72 06           JC         LAB_1000_3aa8
       1000:3aa2 ba ca 00        MOV        DX,0xca
       1000:3aa5 bb 49 00        MOV        BX,0x49
                             LAB_1000_3aa8                                   XREF[1]:     1000:3aa0(j)  
       1000:3aa8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3aa9(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x4731]
                             //
                             undefined FUN_1000_3aa9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3aa9                                   XREF[1]:     FUN_1000_39ec:1000:3a6d(c)  
       1000:3aa9 33 c0           XOR        AX,AX
       1000:3aab e8 57 88        CALL       FUN_1000_c305                                    undefined FUN_1000_c305()
       1000:3aae 83 c2 06        ADD        DX,0x6
       1000:3ab1 83 c3 1e        ADD        BX,0x1e
       1000:3ab4 b8 01 00        MOV        AX,0x1
       1000:3ab7 e8 4b 88        CALL       FUN_1000_c305                                    undefined FUN_1000_c305()
       1000:3aba 83 ea 02        SUB        DX,0x2
       1000:3abd 83 c3 14        ADD        BX,0x14
       1000:3ac0 a0 31 47        MOV        AL,[0x4731]
       1000:3ac3 32 e4           XOR        AH,AH
       1000:3ac5 50              PUSH       AX
       1000:3ac6 2c 0f           SUB        AL,0xf
       1000:3ac8 73 02           JNC        LAB_1000_3acc
       1000:3aca 33 c0           XOR        AX,AX
                             LAB_1000_3acc                                   XREF[1]:     1000:3ac8(j)  
       1000:3acc 3c 05           CMP        AL,0x5
       1000:3ace 76 02           JBE        LAB_1000_3ad2
       1000:3ad0 b0 05           MOV        AL,0x5
                             LAB_1000_3ad2                                   XREF[1]:     1000:3ace(j)  
       1000:3ad2 04 02           ADD        AL,0x2
       1000:3ad4 e8 2e 88        CALL       FUN_1000_c305                                    undefined FUN_1000_c305()
       1000:3ad7 83 ea 55        SUB        DX,0x55
       1000:3ada 83 eb 35        SUB        BX,0x35
       1000:3add 58              POP        AX
       1000:3ade 3c 0e           CMP        AL,0xe
       1000:3ae0 72 02           JC         LAB_1000_3ae4
       1000:3ae2 b0 0e           MOV        AL,0xe
                             LAB_1000_3ae4                                   XREF[1]:     1000:3ae0(j)  
       1000:3ae4 04 08           ADD        AL,0x8
       1000:3ae6 e9 24 88        JMP        FUN_1000_c30d                                    undefined FUN_1000_c30d()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_3ae9(void);
                             //
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             undefined __cdecl16near FUN_1000_3ae9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3ae9                                   XREF[2]:     FUN_1000_37b5:1000:37dc(c), 
                                                                                          FUN_1000_39ec:1000:39f2(c)  
       1000:3ae9 50              PUSH       AX
       1000:3aea 1e              PUSH       DS
       1000:3aeb 07              POP        ES
       1000:3aec b9 2e 00        MOV        CX,0x2e
       1000:3aef b8 ff ff        MOV        AX,0xffff
       1000:3af2 bf f8 47        MOV        DI,0x47f8
       1000:3af5 f3 ab           STOSW.REP  ES:DI
       1000:3af7 58              POP        AX
       1000:3af8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3af9(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: [0x47c4]
                             //   Read from: word ptr [DI + 0x47f8]
                             //   Read from: word ptr [0xdbde]
                             //
                             undefined __cdecl16near FUN_1000_3af9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3af9                                   XREF[2]:     FUN_1000_9381:1000:93b9(c), 
                                                                                          FUN_1000_9f9e:1000:9fef(c)  
       1000:3af9 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:3afe 74 03           JZ         LAB_1000_3b03
       1000:3b00 e9 3b 89        JMP        FUN_1000_c43e                                    undefined FUN_1000_c43e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_3b03                                   XREF[1]:     1000:3afe(j)  
       1000:3b03 80 3e a4        CMP        byte ptr [0x47a4],0x0
                 47 00
       1000:3b08 78 4e           JS         LAB_1000_3b58
       1000:3b0a a1 c4 47        MOV        AX,[0x47c4]
       1000:3b0d 3c 0f           CMP        AL,0xf
       1000:3b0f 75 04           JNZ        LAB_1000_3b15
       1000:3b11 02 06 6c 47     ADD        AL,byte ptr [0x476c]
                             LAB_1000_3b15                                   XREF[1]:     1000:3b0f(j)  
       1000:3b15 8b f8           MOV        DI,AX
       1000:3b17 d1 e7           SHL        DI,0x1
       1000:3b19 d1 e7           SHL        DI,0x1
       1000:3b1b 8b 95 f8 47     MOV        DX,word ptr [DI + 0x47f8]
       1000:3b1f 0b d2           OR         DX,DX
       1000:3b21 78 35           JS         LAB_1000_3b58
       1000:3b23 ff b5 fa 47     PUSH       word ptr [DI + 0x47fa]
       1000:3b27 52              PUSH       DX
       1000:3b28 80 0e a4        OR         byte ptr [0x47a4],0x80
                 47 80
       1000:3b2d e8 85 fc        CALL       FUN_1000_37b5                                    undefined FUN_1000_37b5()
       1000:3b30 5a              POP        DX
       1000:3b31 5b              POP        BX
       1000:3b32 81 fa f0 00     CMP        DX,0xf0
       1000:3b36 72 03           JC         LAB_1000_3b3b
       1000:3b38 ba f0 00        MOV        DX,0xf0
                             LAB_1000_3b3b                                   XREF[1]:     1000:3b36(j)  
       1000:3b3b 83 fb 71        CMP        BX,0x71
       1000:3b3e 72 03           JC         LAB_1000_3b43
       1000:3b40 bb 71 00        MOV        BX,0x71
                             LAB_1000_3b43                                   XREF[1]:     1000:3b3e(j)  
       1000:3b43 8e 06 de db     MOV        ES,word ptr [0xdbde]
       1000:3b47 1e              PUSH       DS
       1000:3b48 8e 1e da db     MOV        DS,word ptr [0xdbda]
       1000:3b4c bd 06 00        MOV        BP,0x6
       1000:3b4f 36 ff 1e        CALLF      [0x3949]
                 49 39
       1000:3b54 1f              POP        DS
       1000:3b55 e9 e6 88        JMP        FUN_1000_c43e                                    undefined FUN_1000_c43e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_3b58                                   XREF[2]:     1000:3b08(j), 1000:3b21(j)  
       1000:3b58 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3b59(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //   SP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI]
                             //   Read from: word ptr [0xdbda]
                             //   Write to: word ptr [0x47f6]
                             //   Write to: CS:[DAT_1000_c21a]
                             //   Write to: byte ptr CS:[DAT_1000_c21a]
                             //
                             undefined __cdecl16near FUN_1000_3b59()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3b59                                   XREF[1]:     FUN_1000_39ec:1000:3a21(c)  
       1000:3b59 83 ec 18        SUB        SP,0x18
       1000:3b5c 89 26 f6 47     MOV        word ptr [0x47f6],SP
       1000:3b60 32 e4           XOR        AH,AH
       1000:3b62 48              DEC        AX
       1000:3b63 50              PUSH       AX
       1000:3b64 b1 04           MOV        CL,0x4
       1000:3b66 d3 e8           SHR        AX,CL
       1000:3b68 74 06           JZ         LAB_1000_3b70
       1000:3b6a 05 13 00        ADD        AX,0x13
       1000:3b6d e8 ce 85        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
                             LAB_1000_3b70                                   XREF[1]:     1000:3b68(j)  
       1000:3b70 58              POP        AX
       1000:3b71 25 0f 00        AND        AX,0xf
       1000:3b74 d1 e0           SHL        AX,0x1
       1000:3b76 be 6e bc        MOV        SI,0xbc6e
       1000:3b79 03 f0           ADD        SI,AX
       1000:3b7b 8b 34           MOV        SI,word ptr [SI]
       1000:3b7d e8 03 02        CALL       FUN_1000_3d83                                    undefined FUN_1000_3d83()
                             LAB_1000_3b80                                   XREF[4]:     1000:3bb3(j), 1000:3bc7(j), 
                                                                                          1000:3be7(j), 
                                                                                          FUN_1000_3d12:1000:3d2c(j)  
       1000:3b80 ad              LODSW      SI
       1000:3b81 3d ff ff        CMP        AX,0xffff
       1000:3b84 74 2f           JZ         LAB_1000_3bb5
       1000:3b86 78 37           JS         LAB_1000_3bbf
       1000:3b88 8b f8           MOV        DI,AX
       1000:3b8a d0 ec           SHR        AH,0x1
       1000:3b8c 80 e4 01        AND        AH,0x1
       1000:3b8f ac              LODSB      SI
       1000:3b90 8b d0           MOV        DX,AX
       1000:3b92 ac              LODSB      SI
       1000:3b93 32 e4           XOR        AH,AH
       1000:3b95 8b d8           MOV        BX,AX
       1000:3b97 ac              LODSB      SI
       1000:3b98 56              PUSH       SI
       1000:3b99 2e a2 1a c2     MOV        CS:[DAT_1000_c21a],AL
       1000:3b9d 8b c7           MOV        AX,DI
       1000:3b9f 25 ff fd        AND        AX,0xfdff
       1000:3ba2 48              DEC        AX
       1000:3ba3 81 e7 ff 01     AND        DI,0x1ff
       1000:3ba7 83 ff 01        CMP        DI,0x1
       1000:3baa 75 03           JNZ        LAB_1000_3baf
       1000:3bac e9 63 01        JMP        FUN_1000_3d12                                    undefined FUN_1000_3d12()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_3baf                                   XREF[1]:     1000:3baa(j)  
       1000:3baf e8 7d 86        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:3bb2 5e              POP        SI
       1000:3bb3 eb cb           JMP        LAB_1000_3b80
                             LAB_1000_3bb5                                   XREF[1]:     1000:3b84(j)  
       1000:3bb5 2e c6 06        MOV        byte ptr CS:[DAT_1000_c21a],0x0
                 1a c2 00
       1000:3bbb 83 c4 18        ADD        SP,0x18
       1000:3bbe c3              RET
                             LAB_1000_3bbf                                   XREF[1]:     1000:3b86(j)  
       1000:3bbf 80 fc c0        CMP        AH,0xc0
       1000:3bc2 74 05           JZ         LAB_1000_3bc9
       1000:3bc4 e8 22 00        CALL       FUN_1000_3be9                                    undefined FUN_1000_3be9()
       1000:3bc7 eb b7           JMP        LAB_1000_3b80
                             LAB_1000_3bc9                                   XREF[1]:     1000:3bc2(j)  
       1000:3bc9 50              PUSH       AX
       1000:3bca 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:3bce ad              LODSW      SI
       1000:3bcf 8b d0           MOV        DX,AX
       1000:3bd1 ad              LODSW      SI
       1000:3bd2 8b d8           MOV        BX,AX
       1000:3bd4 ad              LODSW      SI
       1000:3bd5 8b f8           MOV        DI,AX
       1000:3bd7 ad              LODSW      SI
       1000:3bd8 8b c8           MOV        CX,AX
       1000:3bda 58              POP        AX
       1000:3bdb 56              PUSH       SI
       1000:3bdc bd ff ff        MOV        BP,0xffff
       1000:3bdf be 70 14        MOV        SI,0x1470
       1000:3be2 ff 1e 01 39     CALLF      [0x3901]
       1000:3be6 5e              POP        SI
       1000:3be7 eb 97           JMP        LAB_1000_3b80
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3be9(void);
                             //
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + -0x2]
                             //   Read from: byte ptr [SI + -0x1]
                             //   Read from: word ptr [0x47ee]
                             //   Write to: word ptr [0x22d9]
                             //   Write to: [0x47ed]
                             //   Write to: [0x47ec]
                             //
                             undefined __cdecl16near FUN_1000_3be9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3be9                                   XREF[1]:     FUN_1000_3b59:1000:3bc4(c)  
       1000:3be9 c7 06 d9        MOV        word ptr [0x22d9],0x4c60
                 22 60 4c
       1000:3bef 1e              PUSH       DS
       1000:3bf0 07              POP        ES
       1000:3bf1 8a 44 fe        MOV        AL,byte ptr [SI + -0x2]
       1000:3bf4 a2 ed 47        MOV        [0x47ed],AL
       1000:3bf7 8a 44 ff        MOV        AL,byte ptr [SI + -0x1]
       1000:3bfa a2 ec 47        MOV        [0x47ec],AL
       1000:3bfd ac              LODSB      SI
       1000:3bfe 98              CBW
       1000:3bff d1 e0           SHL        AX,0x1
       1000:3c01 d1 e0           SHL        AX,0x1
       1000:3c03 d1 e0           SHL        AX,0x1
       1000:3c05 d1 e0           SHL        AX,0x1
       1000:3c07 a3 db 22        MOV        [0x22db],AX
       1000:3c0a ac              LODSB      SI
       1000:3c0b 98              CBW
       1000:3c0c d1 e0           SHL        AX,0x1
       1000:3c0e d1 e0           SHL        AX,0x1
       1000:3c10 d1 e0           SHL        AX,0x1
       1000:3c12 d1 e0           SHL        AX,0x1
       1000:3c14 a3 dd 22        MOV        [0x22dd],AX
       1000:3c17 ad              LODSW      SI
       1000:3c18 8b d0           MOV        DX,AX
       1000:3c1a ad              LODSW      SI
       1000:3c1b 8b d8           MOV        BX,AX
       1000:3c1d 89 16 ee 47     MOV        word ptr [0x47ee],DX
       1000:3c21 89 1e f0 47     MOV        word ptr [0x47f0],BX
                             LAB_1000_3c25                                   XREF[1]:     1000:3c3a(j)  
       1000:3c25 ad              LODSW      SI
       1000:3c26 50              PUSH       AX
       1000:3c27 25 ff 3f        AND        AX,0x3fff
       1000:3c2a 8b f8           MOV        DI,AX
       1000:3c2c ad              LODSW      SI
       1000:3c2d 8b c8           MOV        CX,AX
       1000:3c2f e8 e1 01        CALL       FUN_1000_3e13                                    undefined FUN_1000_3e13()
       1000:3c32 8b d7           MOV        DX,DI
       1000:3c34 8b d9           MOV        BX,CX
       1000:3c36 58              POP        AX
       1000:3c37 a9 00 40        TEST       AX,0x4000
       1000:3c3a 74 e9           JZ         LAB_1000_3c25
       1000:3c3c 89 3e f2 47     MOV        word ptr [0x47f2],DI
       1000:3c40 89 0e f4 47     MOV        word ptr [0x47f4],CX
       1000:3c44 8b 16 ee 47     MOV        DX,word ptr [0x47ee]
       1000:3c48 8b 1e f0 47     MOV        BX,word ptr [0x47f0]
       1000:3c4c c7 06 d9        MOV        word ptr [0x22d9],0x4c62
                 22 62 4c
       1000:3c52 a9 00 80        TEST       AX,0x8000
       1000:3c55 75 1a           JNZ        LAB_1000_3c71
                             LAB_1000_3c57                                   XREF[1]:     1000:3c6b(j)  
       1000:3c57 ad              LODSW      SI
       1000:3c58 50              PUSH       AX
       1000:3c59 25 ff 3f        AND        AX,0x3fff
       1000:3c5c 8b f8           MOV        DI,AX
       1000:3c5e ad              LODSW      SI
       1000:3c5f 8b c8           MOV        CX,AX
       1000:3c61 e8 af 01        CALL       FUN_1000_3e13                                    undefined FUN_1000_3e13()
       1000:3c64 8b d7           MOV        DX,DI
       1000:3c66 8b d9           MOV        BX,CX
       1000:3c68 58              POP        AX
       1000:3c69 0b c0           OR         AX,AX
       1000:3c6b 79 ea           JNS        LAB_1000_3c57
       1000:3c6d 8b d7           MOV        DX,DI
       1000:3c6f 8b d9           MOV        BX,CX
                             LAB_1000_3c71                                   XREF[1]:     1000:3c55(j)  
       1000:3c71 8b 3e f2 47     MOV        DI,word ptr [0x47f2]
       1000:3c75 8b 0e f4 47     MOV        CX,word ptr [0x47f4]
       1000:3c79 e8 97 01        CALL       FUN_1000_3e13                                    undefined FUN_1000_3e13()
       1000:3c7c 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:3c80 56              PUSH       SI
       1000:3c81 8b 1e f0 47     MOV        BX,word ptr [0x47f0]
       1000:3c85 8b 2e f4 47     MOV        BP,word ptr [0x47f4]
       1000:3c89 2b eb           SUB        BP,BX
       1000:3c8b 8d 36 60 4c     LEA        SI,[0x4c60]
       1000:3c8f 8b cd           MOV        CX,BP
       1000:3c91 bd 00 00        MOV        BP,0x0
       1000:3c94 8a 26 ec 47     MOV        AH,byte ptr [0x47ec]
       1000:3c98 80 e4 3e        AND        AH,0x3e
       1000:3c9b 74 03           JZ         LAB_1000_3ca0
       1000:3c9d bd 01 00        MOV        BP,0x1
                             LAB_1000_3ca0                                   XREF[1]:     1000:3c9b(j)  
       1000:3ca0 b0 02           MOV        AL,0x2
       1000:3ca2 a3 df 22        MOV        [0x22df],AX
       1000:3ca5 8a 26 ed 47     MOV        AH,byte ptr [0x47ed]
       1000:3ca9 32 c0           XOR        AL,AL
       1000:3cab f6 06 ec        TEST       byte ptr [0x47ec],0x1
                 47 01
       1000:3cb0 75 2e           JNZ        LAB_1000_3ce0
                             LAB_1000_3cb2                                   XREF[1]:     1000:3cdc(j)  
       1000:3cb2 51              PUSH       CX
       1000:3cb3 50              PUSH       AX
       1000:3cb4 ad              LODSW      SI
       1000:3cb5 8b d0           MOV        DX,AX
       1000:3cb7 ad              LODSW      SI
       1000:3cb8 8b c8           MOV        CX,AX
       1000:3cba 58              POP        AX
       1000:3cbb 3b d1           CMP        DX,CX
       1000:3cbd 72 02           JC         LAB_1000_3cc1
       1000:3cbf 87 d1           XCHG       CX,DX
                             LAB_1000_3cc1                                   XREF[1]:     1000:3cbd(j)  
       1000:3cc1 41              INC        CX
       1000:3cc2 2b ca           SUB        CX,DX
       1000:3cc4 74 10           JZ         LAB_1000_3cd6
       1000:3cc6 56              PUSH       SI
       1000:3cc7 53              PUSH       BX
       1000:3cc8 8b 36 df 22     MOV        SI,word ptr [0x22df]
       1000:3ccc 8b 3e db 22     MOV        DI,word ptr [0x22db]
       1000:3cd0 ff 1e 45 39     CALLF      [0x3945]
       1000:3cd4 5b              POP        BX
       1000:3cd5 5e              POP        SI
                             LAB_1000_3cd6                                   XREF[1]:     1000:3cc4(j)  
       1000:3cd6 03 06 dd 22     ADD        AX,word ptr [0x22dd]
       1000:3cda 43              INC        BX
       1000:3cdb 59              POP        CX
       1000:3cdc e2 d4           LOOP       LAB_1000_3cb2
       1000:3cde 5e              POP        SI
       1000:3cdf c3              RET
                             LAB_1000_3ce0                                   XREF[2]:     1000:3cb0(j), 1000:3d0e(j)  
       1000:3ce0 51              PUSH       CX
       1000:3ce1 50              PUSH       AX
       1000:3ce2 ad              LODSW      SI
       1000:3ce3 8b d0           MOV        DX,AX
       1000:3ce5 ad              LODSW      SI
       1000:3ce6 8b c8           MOV        CX,AX
       1000:3ce8 58              POP        AX
       1000:3ce9 3b d1           CMP        DX,CX
       1000:3ceb 73 02           JNC        LAB_1000_3cef
       1000:3ced 87 d1           XCHG       CX,DX
                             LAB_1000_3cef                                   XREF[1]:     1000:3ceb(j)  
       1000:3cef 49              DEC        CX
       1000:3cf0 2b ca           SUB        CX,DX
       1000:3cf2 74 14           JZ         LAB_1000_3d08
       1000:3cf4 f7 d9           NEG        CX
       1000:3cf6 56              PUSH       SI
       1000:3cf7 53              PUSH       BX
       1000:3cf8 8b 36 df 22     MOV        SI,word ptr [0x22df]
       1000:3cfc 8b 3e db 22     MOV        DI,word ptr [0x22db]
       1000:3d00 fd              STD
       1000:3d01 ff 1e 45 39     CALLF      [0x3945]
       1000:3d05 5b              POP        BX
       1000:3d06 5e              POP        SI
       1000:3d07 fc              CLD
                             LAB_1000_3d08                                   XREF[1]:     1000:3cf2(j)  
       1000:3d08 03 06 dd 22     ADD        AX,word ptr [0x22dd]
       1000:3d0c 43              INC        BX
       1000:3d0d 59              POP        CX
       1000:3d0e e2 d0           LOOP       LAB_1000_3ce0
       1000:3d10 5e              POP        SI
       1000:3d11 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_3d12(void);
                             //
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x47f6]
                             //   Read from: byte ptr [DI]
                             //
                             undefined __cdecl16near FUN_1000_3d12()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3d12                                   XREF[1]:     FUN_1000_3b59:1000:3bac(c)  
       1000:3d12 f6 06 a4        TEST       byte ptr [0x47a4],0x81
                 47 81
       1000:3d17 75 12           JNZ        LAB_1000_3d2b
       1000:3d19 8b 3e f6 47     MOV        DI,word ptr [0x47f6]
       1000:3d1d ff 0e f6 47     DEC        word ptr [0x47f6]
       1000:3d21 80 3d ff        CMP        byte ptr [DI],0xff
       1000:3d24 74 05           JZ         LAB_1000_3d2b
       1000:3d26 8a 05           MOV        AL,byte ptr [DI]
       1000:3d28 e8 04 00        CALL       FUN_1000_3d2f                                    undefined FUN_1000_3d2f()
                             LAB_1000_3d2b                                   XREF[2]:     1000:3d17(j), 1000:3d24(j)  
       1000:3d2b 5e              POP        SI
       1000:3d2c e9 51 fe        JMP        LAB_1000_3b80
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_3d2f(uint16_t bx, uint16_t dx);
                             //
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: word ptr [DI + 0x47f8]
                             //   Write to: word ptr [DI + 0x47fa]
                             //   Write to: [0x476c]
                             //
                             undefined FUN_1000_3d2f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3d2f                                   XREF[1]:     FUN_1000_3d12:1000:3d28(c)  
       1000:3d2f ff 36 84 27     PUSH       word ptr [0x2784]
       1000:3d33 50              PUSH       AX
       1000:3d34 32 e4           XOR        AH,AH
       1000:3d36 8b f8           MOV        DI,AX
       1000:3d38 d1 e7           SHL        DI,0x1
       1000:3d3a d1 e7           SHL        DI,0x1
       1000:3d3c 89 95 f8 47     MOV        word ptr [DI + 0x47f8],DX
       1000:3d40 89 9d fa 47     MOV        word ptr [DI + 0x47fa],BX
       1000:3d44 b8 26 00        MOV        AX,0x26
       1000:3d47 e8 f4 83        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:3d4a 58              POP        AX
       1000:3d4b 8a ec           MOV        CH,AH
       1000:3d4d 3c 0f           CMP        AL,0xf
       1000:3d4f 72 07           JC         LAB_1000_3d58
       1000:3d51 2c 0f           SUB        AL,0xf
       1000:3d53 a2 6c 47        MOV        [0x476c],AL
       1000:3d56 b0 0f           MOV        AL,0xf
                             LAB_1000_3d58                                   XREF[1]:     1000:3d4f(j)  
       1000:3d58 e8 c8 53        CALL       FUN_1000_9123                                    undefined FUN_1000_9123()
       1000:3d5b e8 1e d5        CALL       FUN_1000_127c                                    undefined FUN_1000_127c()
       1000:3d5e 73 05           JNC        LAB_1000_3d65
       1000:3d60 b0 11           MOV        AL,0x11
       1000:3d62 83 c3 35        ADD        BX,0x35
                             LAB_1000_3d65                                   XREF[1]:     1000:3d5e(j)  
       1000:3d65 3c 0c           CMP        AL,0xc
       1000:3d67 75 09           JNZ        LAB_1000_3d72
       1000:3d69 f6 06 a7        TEST       byte ptr [0x10a7],0x10
                 10 10
       1000:3d6e 74 02           JZ         LAB_1000_3d72
       1000:3d70 b0 12           MOV        AL,0x12
                             LAB_1000_3d72                                   XREF[2]:     1000:3d67(j), 1000:3d6e(j)  
       1000:3d72 8a e5           MOV        AH,CH
       1000:3d74 d0 e0           SHL        AL,0x1
       1000:3d76 50              PUSH       AX
       1000:3d77 e8 83 85        CALL       FUN_1000_c2fd                                    undefined FUN_1000_c2fd()
       1000:3d7a 58              POP        AX
       1000:3d7b 40              INC        AX
       1000:3d7c e8 b0 84        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:3d7f 58              POP        AX
       1000:3d80 e9 bb 83        JMP        FUN_1000_c13e                                    undefined FUN_1000_c13e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3d83(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   DS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DL (uint8_t): 8-bit output value in DL register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x47f6]
                             //   Read from: word ptr [0x47f6]
                             //   Read from: [0x4778]
                             //   Write to: word ptr [0x47f6]
                             //
                             undefined __cdecl16near FUN_1000_3d83()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3d83                                   XREF[1]:     FUN_1000_3b59:1000:3b7d(c)  
       1000:3d83 1e              PUSH       DS
       1000:3d84 07              POP        ES
       1000:3d85 b8 ff ff        MOV        AX,0xffff
       1000:3d88 b9 17 00        MOV        CX,0x17
       1000:3d8b 8b 3e f6 47     MOV        DI,word ptr [0x47f6]
       1000:3d8f f3 aa           STOSB.REP  ES:DI
       1000:3d91 8b 3e f6 47     MOV        DI,word ptr [0x47f6]
       1000:3d95 80 3e 74        CMP        byte ptr [0x4774],0x0
                 47 00
       1000:3d9a 74 14           JZ         LAB_1000_3db0
       1000:3d9c a1 78 47        MOV        AX,[0x4778]
       1000:3d9f 0b c0           OR         AX,AX
       1000:3da1 74 0d           JZ         LAB_1000_3db0
       1000:3da3 56              PUSH       SI
       1000:3da4 8b f0           MOV        SI,AX
       1000:3da6 2e ac           LODSB      CS:SI
       1000:3da8 8a c8           MOV        CL,AL
       1000:3daa f3 2e a4        MOVSB.REP  ES:DI,CS:SI
       1000:3dad 5e              POP        SI
       1000:3dae eb 35           JMP        LAB_1000_3de5
                             LAB_1000_3db0                                   XREF[2]:     1000:3d9a(j), 1000:3da1(j)  
       1000:3db0 8b 16 12 00     MOV        DX,word ptr [0x12]
       1000:3db4 33 16 10 00     XOR        DX,word ptr [0x10]
       1000:3db8 8a 0c           MOV        CL,byte ptr [SI]
       1000:3dba 0a c9           OR         CL,CL
       1000:3dbc 74 27           JZ         LAB_1000_3de5
       1000:3dbe 8a 2e c5 00     MOV        CH,byte ptr [0xc5]
       1000:3dc2 80 e5 0f        AND        CH,0xf
       1000:3dc5 b8 ff ff        MOV        AX,0xffff
                             LAB_1000_3dc8                                   XREF[1]:     1000:3dd2(j)  
       1000:3dc8 40              INC        AX
       1000:3dc9 d1 ea           SHR        DX,0x1
       1000:3dcb 73 03           JNC        LAB_1000_3dd0
       1000:3dcd e8 24 00        CALL       FUN_1000_3df4                                    undefined FUN_1000_3df4()
                             LAB_1000_3dd0                                   XREF[1]:     1000:3dcb(j)  
       1000:3dd0 0b d2           OR         DX,DX
       1000:3dd2 75 f4           JNZ        LAB_1000_3dc8
       1000:3dd4 8a 16 6a 47     MOV        DL,byte ptr [0x476a]
       1000:3dd8 4a              DEC        DX
       1000:3dd9 7e 0a           JLE        LAB_1000_3de5
       1000:3ddb b8 0f 00        MOV        AX,0xf
                             LAB_1000_3dde                                   XREF[1]:     1000:3de3(j)  
       1000:3dde 40              INC        AX
       1000:3ddf e8 12 00        CALL       FUN_1000_3df4                                    undefined FUN_1000_3df4()
       1000:3de2 4a              DEC        DX
       1000:3de3 75 f9           JNZ        LAB_1000_3dde
                             LAB_1000_3de5                                   XREF[3]:     1000:3dae(j), 1000:3dbc(j), 
                                                                                          1000:3dd9(j)  
       1000:3de5 ac              LODSB      SI
       1000:3de6 32 e4           XOR        AH,AH
       1000:3de8 8b 3e f6 47     MOV        DI,word ptr [0x47f6]
       1000:3dec 48              DEC        AX
       1000:3ded 03 f8           ADD        DI,AX
       1000:3def 89 3e f6 47     MOV        word ptr [0x47f6],DI
       1000:3df3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_3df4(uint8_t al, uint16_t ax, uint8_t cl);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AX (uint16_t): 16-bit input value in AX register
                             //   CL (uint8_t): 8-bit input value in CL register
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: byte ptr [BX + DI]
                             //
                             undefined __cdecl16near FUN_1000_3df4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3df4                                   XREF[2]:     FUN_1000_3d83:1000:3dcd(c), 
                                                                                          FUN_1000_3d83:1000:3ddf(c)  
       1000:3df4 8b d8           MOV        BX,AX
       1000:3df6 02 dd           ADD        BL,CH
                             LAB_1000_3df8                                   XREF[1]:     1000:3dfa(j)  
       1000:3df8 2a d9           SUB        BL,CL
       1000:3dfa 73 fc           JNC        LAB_1000_3df8
       1000:3dfc 02 d9           ADD        BL,CL
       1000:3dfe 80 39 ff        CMP        byte ptr [BX + DI],0xff
       1000:3e01 74 0d           JZ         LAB_1000_3e10
       1000:3e03 bb ff ff        MOV        BX,0xffff
                             LAB_1000_3e06                                   XREF[1]:     1000:3e0e(j)  
       1000:3e06 43              INC        BX
       1000:3e07 3a d9           CMP        BL,CL
       1000:3e09 73 07           JNC        LAB_1000_3e12
       1000:3e0b 80 39 ff        CMP        byte ptr [BX + DI],0xff
       1000:3e0e 75 f6           JNZ        LAB_1000_3e06
                             LAB_1000_3e10                                   XREF[1]:     1000:3e01(j)  
       1000:3e10 88 01           MOV        byte ptr [BX + DI],AL
                             LAB_1000_3e12                                   XREF[1]:     1000:3e09(j)  
       1000:3e12 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3e13(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x47ea]
                             //   Read from: word ptr [0x47e8]
                             //   Read from: word ptr [0x22d9]
                             //   Write to: word ptr [0x47e8]
                             //   Write to: word ptr [0x47ea]
                             //   Write to: word ptr [0x22d9]
                             //
                             undefined __cdecl16near FUN_1000_3e13()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3e13                                   XREF[3]:     FUN_1000_3be9:1000:3c2f(c), 
                                                                                          FUN_1000_3be9:1000:3c61(c), 
                                                                                          FUN_1000_3be9:1000:3c79(c)  
       1000:3e13 53              PUSH       BX
       1000:3e14 51              PUSH       CX
       1000:3e15 52              PUSH       DX
       1000:3e16 57              PUSH       DI
       1000:3e17 89 16 e8 47     MOV        word ptr [0x47e8],DX
       1000:3e1b 89 1e ea 47     MOV        word ptr [0x47ea],BX
       1000:3e1f 2b d9           SUB        BX,CX
       1000:3e21 2b d7           SUB        DX,DI
       1000:3e23 f7 db           NEG        BX
       1000:3e25 f7 da           NEG        DX
       1000:3e27 e8 56 00        CALL       FUN_1000_3e80                                    undefined FUN_1000_3e80()
       1000:3e2a 5f              POP        DI
       1000:3e2b 5a              POP        DX
       1000:3e2c 59              POP        CX
       1000:3e2d 5b              POP        BX
       1000:3e2e c3              RET
                             LAB_1000_3e2f                                   XREF[1]:     1000:3e84(j)  
       1000:3e2f 8b 1e ea 47     MOV        BX,word ptr [0x47ea]
       1000:3e33 8b ca           MOV        CX,DX
       1000:3e35 8b 16 e8 47     MOV        DX,word ptr [0x47e8]
       1000:3e39 01 0e e8 47     ADD        word ptr [0x47e8],CX
       1000:3e3d 73 02           JNC        LAB_1000_3e41
       1000:3e3f 03 d1           ADD        DX,CX
                             LAB_1000_3e41                                   XREF[1]:     1000:3e3d(j)  
       1000:3e41 8b 3e d9 22     MOV        DI,word ptr [0x22d9]
       1000:3e45 8b c2           MOV        AX,DX
       1000:3e47 ab              STOSW      ES:DI
       1000:3e48 83 c7 02        ADD        DI,0x2
       1000:3e4b 89 3e d9 22     MOV        word ptr [0x22d9],DI
       1000:3e4f 5e              POP        SI
       1000:3e50 5f              POP        DI
       1000:3e51 c3              RET
                             LAB_1000_3e52                                   XREF[1]:     1000:3e91(j)  
       1000:3e52 8b cb           MOV        CX,BX
       1000:3e54 8b 1e ea 47     MOV        BX,word ptr [0x47ea]
       1000:3e58 8b 16 e8 47     MOV        DX,word ptr [0x47e8]
       1000:3e5c 0b c0           OR         AX,AX
       1000:3e5e 79 08           JNS        LAB_1000_3e68
       1000:3e60 29 0e ea 47     SUB        word ptr [0x47ea],CX
       1000:3e64 2b d9           SUB        BX,CX
       1000:3e66 eb 04           JMP        LAB_1000_3e6c
                             LAB_1000_3e68                                   XREF[1]:     1000:3e5e(j)  
       1000:3e68 01 0e ea 47     ADD        word ptr [0x47ea],CX
                             LAB_1000_3e6c                                   XREF[1]:     1000:3e66(j)  
       1000:3e6c 41              INC        CX
       1000:3e6d 8b 3e d9 22     MOV        DI,word ptr [0x22d9]
       1000:3e71 8b c2           MOV        AX,DX
                             LAB_1000_3e73                                   XREF[1]:     1000:3e77(j)  
       1000:3e73 ab              STOSW      ES:DI
       1000:3e74 83 c7 02        ADD        DI,0x2
       1000:3e77 e2 fa           LOOP       LAB_1000_3e73
       1000:3e79 89 3e d9 22     MOV        word ptr [0x22d9],DI
       1000:3e7d 5e              POP        SI
       1000:3e7e 5f              POP        DI
       1000:3e7f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3e80(uint16_t sp);
                             //
                             // Input Parameters:
                             //   SP (uint16_t): 16-bit input value in SP register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [BP + 0x4]
                             //   Read from: word ptr [BP + 0x6]
                             //   Read from: word ptr [BP + 0x0]
                             //   Write to: word ptr [BP + 0x2]
                             //   Write to: word ptr [BP + 0x0]
                             //   Write to: word ptr [0x22d9]
                             //
                             undefined __cdecl16near FUN_1000_3e80()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3e80                                   XREF[1]:     FUN_1000_3e13:1000:3e27(c)  
       1000:3e80 57              PUSH       DI
       1000:3e81 56              PUSH       SI
       1000:3e82 0b db           OR         BX,BX
       1000:3e84 74 a9           JZ         LAB_1000_3e2f
       1000:3e86 b8 01 00        MOV        AX,0x1
       1000:3e89 79 04           JNS        LAB_1000_3e8f
       1000:3e8b f7 db           NEG        BX
       1000:3e8d f7 d8           NEG        AX
                             LAB_1000_3e8f                                   XREF[1]:     1000:3e89(j)  
       1000:3e8f 0b d2           OR         DX,DX
       1000:3e91 74 bf           JZ         LAB_1000_3e52
       1000:3e93 b9 01 00        MOV        CX,0x1
       1000:3e96 79 04           JNS        LAB_1000_3e9c
       1000:3e98 f7 d9           NEG        CX
       1000:3e9a f7 da           NEG        DX
                             LAB_1000_3e9c                                   XREF[1]:     1000:3e96(j)  
       1000:3e9c 50              PUSH       AX
       1000:3e9d 51              PUSH       CX
       1000:3e9e 50              PUSH       AX
       1000:3e9f 51              PUSH       CX
       1000:3ea0 8b ec           MOV        BP,SP
       1000:3ea2 8b f3           MOV        SI,BX
       1000:3ea4 8b fa           MOV        DI,DX
       1000:3ea6 33 c0           XOR        AX,AX
       1000:3ea8 3b d3           CMP        DX,BX
       1000:3eaa 76 05           JBE        LAB_1000_3eb1
       1000:3eac 89 46 02        MOV        word ptr [BP + 0x2],AX
       1000:3eaf eb 09           JMP        LAB_1000_3eba
                             LAB_1000_3eb1                                   XREF[1]:     1000:3eaa(j)  
       1000:3eb1 0b db           OR         BX,BX
       1000:3eb3 74 43           JZ         LAB_1000_3ef8
       1000:3eb5 87 fe           XCHG       SI,DI
       1000:3eb7 89 46 00        MOV        word ptr [BP + 0x0],AX
                             LAB_1000_3eba                                   XREF[1]:     1000:3eaf(j)  
       1000:3eba 8b c7           MOV        AX,DI
       1000:3ebc 8b cf           MOV        CX,DI
       1000:3ebe d1 e8           SHR        AX,0x1
                             LAB_1000_3ec0                                   XREF[1]:     1000:3ef6(j)  
       1000:3ec0 03 c6           ADD        AX,SI
       1000:3ec2 3b c7           CMP        AX,DI
       1000:3ec4 72 0a           JC         LAB_1000_3ed0
       1000:3ec6 2b c7           SUB        AX,DI
       1000:3ec8 8b 56 04        MOV        DX,word ptr [BP + 0x4]
       1000:3ecb 8b 5e 06        MOV        BX,word ptr [BP + 0x6]
       1000:3ece eb 06           JMP        LAB_1000_3ed6
                             LAB_1000_3ed0                                   XREF[1]:     1000:3ec4(j)  
       1000:3ed0 8b 56 00        MOV        DX,word ptr [BP + 0x0]
       1000:3ed3 8b 5e 02        MOV        BX,word ptr [BP + 0x2]
                             LAB_1000_3ed6                                   XREF[1]:     1000:3ece(j)  
       1000:3ed6 03 16 e8 47     ADD        DX,word ptr [0x47e8]
       1000:3eda 83 fb 01        CMP        BX,0x1
       1000:3edd 75 13           JNZ        LAB_1000_3ef2
       1000:3edf 57              PUSH       DI
       1000:3ee0 50              PUSH       AX
       1000:3ee1 8b 3e d9 22     MOV        DI,word ptr [0x22d9]
       1000:3ee5 a1 e8 47        MOV        AX,[0x47e8]
       1000:3ee8 ab              STOSW      ES:DI
       1000:3ee9 83 c7 02        ADD        DI,0x2
       1000:3eec 89 3e d9 22     MOV        word ptr [0x22d9],DI
       1000:3ef0 58              POP        AX
       1000:3ef1 5f              POP        DI
                             LAB_1000_3ef2                                   XREF[1]:     1000:3edd(j)  
       1000:3ef2 89 16 e8 47     MOV        word ptr [0x47e8],DX
       1000:3ef6 e2 c8           LOOP       LAB_1000_3ec0
                             LAB_1000_3ef8                                   XREF[1]:     1000:3eb3(j)  
       1000:3ef8 83 c4 08        ADD        SP,0x8
       1000:3efb 5e              POP        SI
       1000:3efc 5f              POP        DI
       1000:3efd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3efe(uint8_t dh, uint8_t dl);
                             //
                             // Input Parameters:
                             //   DH (uint8_t): 8-bit input value in DH register
                             //   DL (uint8_t): 8-bit input value in DL register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x13c4]
                             //
                             undefined __cdecl16near FUN_1000_3efe()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3efe                                   XREF[3]:     FUN_1000_2ffb:1000:3032(c), 
                                                                                          FUN_1000_37b5:1000:37d1(c), 
                                                                                          FUN_1000_3f15:1000:3f67(c)  
       1000:3efe 8a c6           MOV        AL,DH
       1000:3f00 32 e4           XOR        AH,AH
       1000:3f02 d1 e0           SHL        AX,0x1
       1000:3f04 8b f0           MOV        SI,AX
       1000:3f06 8b b4 c4 13     MOV        SI,word ptr [SI + 0x13c4]
       1000:3f0a 8a c2           MOV        AL,DL
       1000:3f0c fe c8           DEC        AL
       1000:3f0e b4 05           MOV        AH,0x5
       1000:3f10 f6 e4           MUL        AH
       1000:3f12 03 f0           ADD        SI,AX
                             LAB_1000_3f14                                   XREF[1]:     FUN_1000_3f15:1000:3f6e(j)  
       1000:3f14 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_3f15(uint8_t bl);
                             //
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DH (uint8_t): 8-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x4]
                             //   Read from: word ptr [0x6]
                             //   Read from: [0x4735]
                             //   Write to: byte ptr [0x47a9]
                             //   Write to: byte ptr [0x26]
                             //   Write to: [0x4735]
                             //
                             undefined __cdecl16near FUN_1000_3f15()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_3f15                                   XREF[1]:     FUN_1000_9215:1000:927e(c)  
       1000:3f15 bd 01 00        MOV        BP,0x1
       1000:3f18 eb 0d           JMP        LAB_1000_3f27
                             LAB_1000_3f27                                   XREF[1]:     1000:3f18(j)  
       1000:3f27 55              PUSH       BP
       1000:3f28 e8 92 93        CALL       FUN_1000_d2bd                                    undefined FUN_1000_d2bd()
       1000:3f2b e8 02 6d        CALL       FUN_1000_ac30                                    undefined FUN_1000_ac30()
       1000:3f2e e8 74 68        CALL       FUN_1000_a7a5                                    undefined FUN_1000_a7a5()
       1000:3f31 5d              POP        BP
       1000:3f32 c6 06 a9        MOV        byte ptr [0x47a9],0x0
                 47 00
       1000:3f37 c6 06 26        MOV        byte ptr [0x26],0x0
                 00 00
       1000:3f3c 8b 16 04 00     MOV        DX,word ptr [0x4]
       1000:3f40 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:3f44 80 fb 80        CMP        BL,0x80
       1000:3f47 74 1e           JZ         LAB_1000_3f67
       1000:3f49 a0 35 47        MOV        AL,[0x4735]
       1000:3f4c 24 7f           AND        AL,0x7f
       1000:3f4e fe c0           INC        AL
       1000:3f50 79 02           JNS        LAB_1000_3f54
       1000:3f52 fe c8           DEC        AL
                             LAB_1000_3f54                                   XREF[1]:     1000:3f50(j)  
       1000:3f54 0c 80           OR         AL,0x80
       1000:3f56 a2 35 47        MOV        [0x4735],AL
       1000:3f59 80 3e f4        CMP        byte ptr [0xf4],0x14
                 00 14
       1000:3f5e 73 04           JNC        LAB_1000_3f64
       1000:3f60 fe 06 f4 00     INC        byte ptr [0xf4]
                             LAB_1000_3f64                                   XREF[1]:     1000:3f5e(j)  
       1000:3f64 e9 8e 00        JMP        LAB_1000_3ff5
                             LAB_1000_3f67                                   XREF[1]:     1000:3f47(j)  
       1000:3f67 e8 94 ff        CALL       FUN_1000_3efe                                    undefined FUN_1000_3efe()
       1000:3f6a 8a 12           MOV        DL,byte ptr [BP + SI]
       1000:3f6c 0a d2           OR         DL,DL
       1000:3f6e 74 a4           JZ         LAB_1000_3f14
       1000:3f70 78 60           JS         LAB_1000_3fd2
       1000:3f72 80 3e 0b        CMP        byte ptr [0xb],0x1
                 00 01
       1000:3f77 75 0b           JNZ        LAB_1000_3f84
       1000:3f79 e8 f4 a2        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:3f7c b1 02           MOV        CL,0x2
       1000:3f7e e8 08 74        CALL       FUN_1000_b389                                    undefined FUN_1000_b389()
       1000:3f81 e8 ff a2        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_3f84                                   XREF[1]:     1000:3f77(j)  
       1000:3f84 8b 36 4e 11     MOV        SI,word ptr [0x114e]
       1000:3f88 f6 44 0a 10     TEST       byte ptr [SI + 0xa],0x10
       1000:3f8c 75 1c           JNZ        LAB_1000_3faa
       1000:3f8e 80 4c 0a 10     OR         byte ptr [SI + 0xa],0x10
       1000:3f92 80 fe 20        CMP        DH,0x20
       1000:3f95 80 16 25        ADC        byte ptr [0x25],0x0
                 00 00
       1000:3f9a c6 06 26        MOV        byte ptr [0x26],0xff
                 00 ff
       1000:3f9f e8 ce a2        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:3fa2 b1 03           MOV        CL,0x3
       1000:3fa4 e8 e2 73        CALL       FUN_1000_b389                                    undefined FUN_1000_b389()
       1000:3fa7 e8 d9 a2        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_3faa                                   XREF[1]:     1000:3f8c(j)  
       1000:3faa 88 16 0c 00     MOV        byte ptr [0xc],DL
       1000:3fae c6 06 23        MOV        byte ptr [0x23],0x1
                 00 01
       1000:3fb3 e8 0e 62        CALL       FUN_1000_a1c4                                    undefined FUN_1000_a1c4()
       1000:3fb6 53              PUSH       BX
       1000:3fb7 52              PUSH       DX
       1000:3fb8 e8 18 f7        CALL       FUN_1000_36d3                                    undefined FUN_1000_36d3()
       1000:3fbb 5a              POP        DX
       1000:3fbc 5b              POP        BX
       1000:3fbd e8 22 62        CALL       FUN_1000_a1e2                                    undefined FUN_1000_a1e2()
       1000:3fc0 74 01           JZ         LAB_1000_3fc3
       1000:3fc2 c3              RET
                             LAB_1000_3fc3                                   XREF[1]:     1000:3fc0(j)  
       1000:3fc3 53              PUSH       BX
       1000:3fc4 52              PUSH       DX
       1000:3fc5 e8 0d 6c        CALL       FUN_1000_abd5                                    undefined FUN_1000_abd5()
       1000:3fc8 5a              POP        DX
       1000:3fc9 5b              POP        BX
       1000:3fca c6 06 23        MOV        byte ptr [0x23],0x5
                 00 05
       1000:3fcf e9 85 00        JMP        LAB_1000_4057
                             LAB_1000_3fd2                                   XREF[1]:     1000:3f70(j)  
       1000:3fd2 c6 06 e7        MOV        byte ptr [0xe7],0x0
                 00 00
       1000:3fd7 32 f6           XOR        DH,DH
       1000:3fd9 f6 da           NEG        DL
       1000:3fdb 8b ea           MOV        BP,DX
       1000:3fdd 33 f6           XOR        SI,SI
       1000:3fdf 87 36 4e 11     XCHG       word ptr [0x114e],SI
       1000:3fe3 8b 54 02        MOV        DX,word ptr [SI + 0x2]
       1000:3fe6 8b 5c 04        MOV        BX,word ptr [SI + 0x4]
       1000:3fe9 32 ff           XOR        BH,BH
       1000:3feb c6 06 08        MOV        byte ptr [0x8],0xff
                 00 ff
       1000:3ff0 c6 06 09        MOV        byte ptr [0x9],0xff
                 00 ff
                             LAB_1000_3ff5                                   XREF[1]:     1000:3f64(j)  
       1000:3ff5 d1 e5           SHL        BP,0x1
       1000:3ff7 8b 86 54 14     MOV        AX,word ptr [BP + 0x1454]
       1000:3ffb e8 d1 75        CALL       FUN_1000_b5cf                                    undefined FUN_1000_b5cf()
       1000:3ffe 0a ff           OR         BH,BH
       1000:4000 75 55           JNZ        LAB_1000_4057
                             LAB_1000_4002                                   XREF[1]:     FUN_1000_4f0c:1000:4ff8(j)  
       1000:4002 8b c3           MOV        AX,BX
       1000:4004 98              CBW
       1000:4005 8b d8           MOV        BX,AX
       1000:4007 e8 28 75        CALL       FUN_1000_b532                                    undefined FUN_1000_b532()
       1000:400a 32 ff           XOR        BH,BH
       1000:400c a8 40           TEST       AL,0x40
       1000:400e 74 47           JZ         LAB_1000_4057
       1000:4010 e8 87 00        CALL       FUN_1000_409a                                    undefined FUN_1000_409a()
       1000:4013 75 42           JNZ        LAB_1000_4057
       1000:4015 3b 54 02        CMP        DX,word ptr [SI + 0x2]
       1000:4018 75 3d           JNZ        LAB_1000_4057
       1000:401a 8b c3           MOV        AX,BX
       1000:401c 98              CBW
       1000:401d 8b d8           MOV        BX,AX
       1000:401f c6 06 35        MOV        byte ptr [0x4735],0x0
                 47 00
       1000:4024 89 36 4e 11     MOV        word ptr [0x114e],SI
       1000:4028 89 36 50 11     MOV        word ptr [0x1150],SI
       1000:402c 8b fe           MOV        DI,SI
       1000:402e e8 0b 10        CALL       FUN_1000_503c                                    undefined FUN_1000_503c()
       1000:4031 c7 06 9a        MOV        word ptr [0x9a],0x0
                 00 00 00
       1000:4037 c7 06 98        MOV        word ptr [0x98],0x0
                 00 00 00
       1000:403d e8 1b 02        CALL       FUN_1000_425b                                    undefined FUN_1000_425b()
       1000:4040 e8 6b 00        CALL       FUN_1000_40ae                                    undefined FUN_1000_40ae()
       1000:4043 88 36 08 00     MOV        byte ptr [0x8],DH
       1000:4047 88 3e 09 00     MOV        byte ptr [0x9],BH
       1000:404b 80 fe 20        CMP        DH,0x20
       1000:404e 72 04           JC         LAB_1000_4054
       1000:4050 80 4c 0a 10     OR         byte ptr [SI + 0xa],0x10
                             LAB_1000_4054                                   XREF[1]:     1000:404e(j)  
       1000:4054 e8 19 e1        CALL       FUN_1000_2170                                    undefined FUN_1000_2170()
                             LAB_1000_4057                                   XREF[5]:     1000:3fcf(j), 1000:4000(j), 
                                                                                          1000:400e(j), 1000:4013(j), 
                                                                                          1000:4018(j)  
       1000:4057 e8 69 00        CALL       FUN_1000_40c3                                    undefined FUN_1000_40c3()
       1000:405a 89 16 04 00     MOV        word ptr [0x4],DX
       1000:405e 8a c2           MOV        AL,DL
       1000:4060 86 06 0b 00     XCHG       byte ptr [0xb],AL
       1000:4064 a2 0d 00        MOV        [0xd],AL
       1000:4067 89 1e 06 00     MOV        word ptr [0x6],BX
       1000:406b 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:4070 78 27           JS         LAB_1000_4099
       1000:4072 81 fa 02 30     CMP        DX,0x3002
       1000:4076 75 03           JNZ        LAB_1000_407b
       1000:4078 e9 81 d6        JMP        FUN_1000_16fc                                    undefined FUN_1000_16fc()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_407b                                   XREF[1]:     1000:4076(j)  
       1000:407b e9 41 ed        JMP        LAB_1000_2dbf
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_407e(uint8_t bl);
                             //
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x4]
                             //   Read from: word ptr [0x6]
                             //   Read from: word ptr [0x114e]
                             //
                             undefined __cdecl16near FUN_1000_407e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_407e                                   XREF[14]:    FUN_1000_380c:1000:3854(c), 
                                                                                          FUN_1000_40f9:1000:4108(c), 
                                                                                          FUN_1000_4182:1000:419b(c), 
                                                                                          FUN_1000_445d:1000:4463(c), 
                                                                                          FUN_1000_4944:1000:4957(c), 
                                                                                          FUN_1000_4b3b:1000:4b4d(c), 
                                                                                          FUN_1000_4e12:1000:4e18(c), 
                                                                                          FUN_1000_4f0c:1000:4f40(c), 
                                                                                          FUN_1000_4f0c:1000:4f70(c), 
                                                                                          FUN_1000_5124:1000:5125(c), 
                                                                                          FUN_1000_5b5d:1000:5b5d(c), 
                                                                                          FUN_1000_6314:1000:6314(c), 
                                                                                          FUN_1000_7c63:1000:7c64(c), 
                                                                                          FUN_1000_7c8f:1000:7c90(c)  
       1000:407e 8b 16 04 00     MOV        DX,word ptr [0x4]
       1000:4082 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:4086 80 fb 80        CMP        BL,0x80
       1000:4089 75 0b           JNZ        LAB_1000_4096
       1000:408b 8b 36 4e 11     MOV        SI,word ptr [0x114e]
       1000:408f 8b 54 02        MOV        DX,word ptr [SI + 0x2]
       1000:4092 8b 5c 04        MOV        BX,word ptr [SI + 0x4]
       1000:4095 c3              RET
                             LAB_1000_4096                                   XREF[1]:     1000:4089(j)  
       1000:4096 93              XCHG       AX,BX
       1000:4097 98              CBW
       1000:4098 93              XCHG       AX,BX
                             LAB_1000_4099                                   XREF[1]:     FUN_1000_3f15:1000:4070(j)  
       1000:4099 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_409a(uint16_t di);
                             //
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_409a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_409a                                   XREF[4]:     FUN_1000_3f15:1000:4010(c), 
                                                                                          FUN_1000_40f9:1000:4120(c), 
                                                                                          FUN_1000_41e1:1000:420e(c), 
                                                                                          FUN_1000_4e12:1000:4e2d(c)  
       1000:409a be e4 00        MOV        SI,0xe4
                             LAB_1000_409d                                   XREF[1]:     1000:40a8(j)  
       1000:409d 83 c6 1c        ADD        SI,0x1c
       1000:40a0 83 3c ff        CMP        word ptr [SI],-0x1
       1000:40a3 74 06           JZ         LAB_1000_40ab
       1000:40a5 3b 7c 06        CMP        DI,word ptr [SI + 0x6]
       1000:40a8 75 f3           JNZ        LAB_1000_409d
       1000:40aa c3              RET
                             LAB_1000_40ab                                   XREF[1]:     1000:40a3(j)  
       1000:40ab 0b f6           OR         SI,SI
       1000:40ad c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_40ae(uint8_t al, uint16_t di);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BL (uint8_t): 8-bit output value in BL register
                             //   DH (uint8_t): 8-bit output value in DH register
                             //   DL (uint8_t): 8-bit output value in DL register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x8]
                             //
                             undefined __cdecl16near FUN_1000_40ae()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_40ae                                   XREF[3]:     FUN_1000_11cb:1000:11d8(c), 
                                                                                          FUN_1000_221d:1000:2224(c), 
                                                                                          FUN_1000_3f15:1000:4040(c)  
       1000:40ae 8b c7           MOV        AX,DI
       1000:40b0 2d 00 01        SUB        AX,0x100
       1000:40b3 b3 1c           MOV        BL,0x1c
       1000:40b5 f6 f3           DIV        BL
       1000:40b7 8a f8           MOV        BH,AL
       1000:40b9 fe c7           INC        BH
       1000:40bb b3 80           MOV        BL,0x80
       1000:40bd 8a 75 08        MOV        DH,byte ptr [DI + 0x8]
       1000:40c0 b2 01           MOV        DL,0x1
       1000:40c2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_40c3(void);
                             //
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             undefined FUN_1000_40c3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_40c3                                   XREF[2]:     FUN_1000_3f15:1000:4057(c), 
                                                                                          FUN_1000_4b3b:1000:4b53(c)  
       1000:40c3 bd c9 40        MOV        BP,0x40c9
       1000:40c6 e9 25 f6        JMP        FUN_1000_36ee                                    undefined FUN_1000_36ee()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_40e6(uint16_t si);
                             //
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //
                             undefined __cdecl16near FUN_1000_40e6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_40e6                                   XREF[1]:     FUN_1000_2566:1000:256a(c)  
       1000:40e6 f6 44 0f 40     TEST       byte ptr [SI + 0xf],0x40
       1000:40ea 74 0c           JZ         LAB_1000_40f8
       1000:40ec f6 44 0f 02     TEST       byte ptr [SI + 0xf],0x2
       1000:40f0 74 06           JZ         LAB_1000_40f8
       1000:40f2 e8 61 54        CALL       FUN_1000_9556                                    undefined FUN_1000_9556()
       1000:40f5 e8 5d 55        CALL       FUN_1000_9655                                    undefined FUN_1000_9655()
                             LAB_1000_40f8                                   XREF[2]:     1000:40ea(j), 1000:40f0(j)  
       1000:40f8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_40f9(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI]
                             //   Read from: [0x2a]
                             //   Write to: word ptr [0x11f5]
                             //   Write to: byte ptr [0xe1]
                             //   Write to: [0x11f3]
                             //
                             undefined __cdecl16near FUN_1000_40f9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_40f9                                   XREF[1]:     FUN_1000_35ad:1000:3603(c)  
       1000:40f9 f6 06 c9        TEST       byte ptr [0x11c9],0x3
                 11 03
       1000:40fe 75 01           JNZ        LAB_1000_4101
       1000:4100 c3              RET
                             LAB_1000_4101                                   XREF[1]:     1000:40fe(j)  
       1000:4101 83 3e 10        CMP        word ptr [0x10],0x0
                 00 00
       1000:4106 74 79           JZ         LAB_1000_4181
       1000:4108 e8 73 ff        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:410b b9 09 00        MOV        CX,0x9
       1000:410e b8 09 00        MOV        AX,0x9
       1000:4111 e8 58 74        CALL       FUN_1000_b56c                                    undefined FUN_1000_b56c()
       1000:4114 b9 51 00        MOV        CX,0x51
                             LAB_1000_4117                                   XREF[1]:     1000:417f(j)  
       1000:4117 ac              LODSB      SI
       1000:4118 a8 40           TEST       AL,0x40
       1000:411a 74 60           JZ         LAB_1000_417c
       1000:411c 8b 3c           MOV        DI,word ptr [SI]
       1000:411e 51              PUSH       CX
       1000:411f 56              PUSH       SI
       1000:4120 e8 77 ff        CALL       FUN_1000_409a                                    undefined FUN_1000_409a()
       1000:4123 75 55           JNZ        LAB_1000_417a
       1000:4125 f6 44 0a 80     TEST       byte ptr [SI + 0xa],0x80
       1000:4129 74 4f           JZ         LAB_1000_417a
       1000:412b a0 2a 00        MOV        AL,[0x2a]
       1000:412e 3a 44 0b        CMP        AL,byte ptr [SI + 0xb]
       1000:4131 72 47           JC         LAB_1000_417a
       1000:4133 8b fe           MOV        DI,SI
       1000:4135 e8 ec 0f        CALL       FUN_1000_5124                                    undefined FUN_1000_5124()
       1000:4138 72 40           JC         LAB_1000_417a
       1000:413a 2a 06 c7 11     SUB        AL,byte ptr [0x11c7]
       1000:413e 04 60           ADD        AL,0x60
       1000:4140 3c c0           CMP        AL,0xc0
       1000:4142 73 36           JNC        LAB_1000_417a
       1000:4144 32 e4           XOR        AH,AH
       1000:4146 b9 ce 00        MOV        CX,0xce
       1000:4149 3c 60           CMP        AL,0x60
       1000:414b 72 05           JC         LAB_1000_4152
       1000:414d fe c4           INC        AH
       1000:414f 83 c1 02        ADD        CX,0x2
                             LAB_1000_4152                                   XREF[1]:     1000:414b(j)  
       1000:4152 89 0e f5 11     MOV        word ptr [0x11f5],CX
       1000:4156 88 26 e1 00     MOV        byte ptr [0xe1],AH
       1000:415a e8 d4 20        CALL       FUN_1000_6231                                    undefined FUN_1000_6231()
       1000:415d 05 48 00        ADD        AX,0x48
       1000:4160 a3 f3 11        MOV        [0x11f3],AX
       1000:4163 c6 06 23        MOV        byte ptr [0x23],0x3
                 00 03
       1000:4168 e8 f0 00        CALL       FUN_1000_425b                                    undefined FUN_1000_425b()
       1000:416b e8 d6 07        CALL       FUN_1000_4944                                    undefined FUN_1000_4944()
       1000:416e e8 41 9a        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:4171 e8 87 ed        CALL       FUN_1000_2efb                                    undefined FUN_1000_2efb()
       1000:4174 e8 84 ee        CALL       FUN_1000_2ffb                                    undefined FUN_1000_2ffb()
       1000:4177 e8 1d 92        CALL       FUN_1000_d397                                    undefined FUN_1000_d397()
                             LAB_1000_417a                                   XREF[5]:     1000:4123(j), 1000:4129(j), 
                                                                                          1000:4131(j), 1000:4138(j), 
                                                                                          1000:4142(j)  
       1000:417a 5e              POP        SI
       1000:417b 59              POP        CX
                             LAB_1000_417c                                   XREF[1]:     1000:411a(j)  
       1000:417c 83 c6 02        ADD        SI,0x2
       1000:417f e2 96           LOOP       LAB_1000_4117
                             LAB_1000_4181                                   XREF[3]:     1000:4106(j), 
                                                                                          FUN_1000_4182:1000:4189(j), 
                                                                                          FUN_1000_4182:1000:41bd(j)  
       1000:4181 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_4182(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: [0x11c9]
                             //   Read from: word ptr [0x11c5]
                             //   Write to: byte ptr [0x23]
                             //   Write to: byte ptr [0x46d9]
                             //   Write to: byte ptr [0x4726]
                             //
                             undefined __cdecl16near FUN_1000_4182()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4182                                   XREF[2]:     FUN_1000_35ad:1000:3606(c), 
                                                                                          FUN_1000_35ad:1000:3637(c)  
       1000:4182 a0 c9 11        MOV        AL,[0x11c9]
       1000:4185 24 03           AND        AL,0x3
       1000:4187 fe c8           DEC        AL
       1000:4189 75 f6           JNZ        LAB_1000_4181
       1000:418b 80 3e cb        CMP        byte ptr [0x11cb],0x0
                 11 00
       1000:4190 75 09           JNZ        LAB_1000_419b
       1000:4192 8b 3e c5 11     MOV        DI,word ptr [0x11c5]
       1000:4196 e8 9d 1b        CALL       FUN_1000_5d36                                    undefined FUN_1000_5d36()
       1000:4199 72 2a           JC         LAB_1000_41c5
                             LAB_1000_419b                                   XREF[1]:     1000:4190(j)  
       1000:419b e8 e0 fe        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:419e e8 91 73        CALL       FUN_1000_b532                                    undefined FUN_1000_b532()
       1000:41a1 24 30           AND        AL,0x30
       1000:41a3 3c 30           CMP        AL,0x30
       1000:41a5 72 1e           JC         LAB_1000_41c5
       1000:41a7 80 3e 26        CMP        byte ptr [0x4726],0x0
                 47 00
       1000:41ac 75 05           JNZ        LAB_1000_41b3
       1000:41ae c6 06 23        MOV        byte ptr [0x23],0x4
                 00 04
                             LAB_1000_41b3                                   XREF[1]:     1000:41ac(j)  
       1000:41b3 b0 40           MOV        AL,0x40
       1000:41b5 e8 14 00        CALL       FUN_1000_41cc                                    undefined FUN_1000_41cc()
       1000:41b8 80 2e 26        SUB        byte ptr [0x4726],0x20
                 47 20
       1000:41bd 75 c2           JNZ        LAB_1000_4181
       1000:41bf c6 06 d9        MOV        byte ptr [0x46d9],0x2
                 46 02
       1000:41c4 c3              RET
                             LAB_1000_41c5                                   XREF[2]:     1000:4199(j), 1000:41a5(j)  
       1000:41c5 c6 06 26        MOV        byte ptr [0x4726],0x0
                 47 00
       1000:41ca 32 c0           XOR        AL,AL
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_41cc(uint8_t al);
                             //
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //
                             // Memory Access:
                             //   Write to: [0x21fd]
                             //   Write to: [0x1f11]
                             //
                             undefined __cdecl16near FUN_1000_41cc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_41cc                                   XREF[1]:     FUN_1000_4182:1000:41b5(c)  
       1000:41cc a2 fd 21        MOV        [0x21fd],AL
       1000:41cf 81 3e 12        CMP        word ptr [0x1f12],0x4ffb
                 1f fb 4f
       1000:41d5 75 03           JNZ        LAB_1000_41da
       1000:41d7 a2 11 1f        MOV        [0x1f11],AL
                             LAB_1000_41da                                   XREF[1]:     1000:41d5(j)  
       1000:41da c3              RET
                             LAB_1000_41db                                   XREF[1]:     1000:41e6(j)  
       1000:41db fe 0e 6c 19     DEC        byte ptr [0x196c]
       1000:41df f8              CLC
       1000:41e0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_41e1(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: [0x11c7]
                             //   Read from: word ptr [SI]
                             //   Read from: [0x2a]
                             //   Write to: [0x1968]
                             //   Write to: [0x196a]
                             //   Write to: byte ptr [0x196c]
                             //
                             undefined __cdecl16near FUN_1000_41e1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_41e1                                   XREF[1]:     FUN_1000_4f0c:1000:4ebd(c)  
       1000:41e1 80 3e 6c        CMP        byte ptr [0x196c],0x0
                 19 00
       1000:41e6 75 f3           JNZ        LAB_1000_41db
       1000:41e8 a0 c7 11        MOV        AL,[0x11c7]
       1000:41eb 04 20           ADD        AL,0x20
       1000:41ed a8 40           TEST       AL,0x40
       1000:41ef b9 01 00        MOV        CX,0x1
       1000:41f2 b8 08 00        MOV        AX,0x8
       1000:41f5 74 01           JZ         LAB_1000_41f8
       1000:41f7 91              XCHG       AX,CX
                             LAB_1000_41f8                                   XREF[1]:     1000:41f5(j)  
       1000:41f8 e8 71 73        CALL       FUN_1000_b56c                                    undefined FUN_1000_b56c()
       1000:41fb b9 08 00        MOV        CX,0x8
                             LAB_1000_41fe                                   XREF[1]:     1000:4206(j)  
       1000:41fe ac              LODSB      SI
       1000:41ff a8 40           TEST       AL,0x40
       1000:4201 75 07           JNZ        LAB_1000_420a
                             LAB_1000_4203                                   XREF[1]:     1000:4259(j)  
       1000:4203 83 c6 02        ADD        SI,0x2
       1000:4206 e2 f6           LOOP       LAB_1000_41fe
       1000:4208 f8              CLC
       1000:4209 c3              RET
                             LAB_1000_420a                                   XREF[1]:     1000:4201(j)  
       1000:420a 8b 3c           MOV        DI,word ptr [SI]
       1000:420c 51              PUSH       CX
       1000:420d 56              PUSH       SI
       1000:420e e8 89 fe        CALL       FUN_1000_409a                                    undefined FUN_1000_409a()
       1000:4211 75 44           JNZ        LAB_1000_4257
       1000:4213 f6 44 0a 80     TEST       byte ptr [SI + 0xa],0x80
       1000:4217 74 08           JZ         LAB_1000_4221
       1000:4219 a0 2a 00        MOV        AL,[0x2a]
       1000:421c 3a 44 0b        CMP        AL,byte ptr [SI + 0xb]
       1000:421f 72 36           JC         LAB_1000_4257
                             LAB_1000_4221                                   XREF[1]:     1000:4217(j)  
       1000:4221 8b fe           MOV        DI,SI
       1000:4223 e8 fe 0e        CALL       FUN_1000_5124                                    undefined FUN_1000_5124()
       1000:4226 72 2f           JC         LAB_1000_4257
       1000:4228 2a 06 c7 11     SUB        AL,byte ptr [0x11c7]
       1000:422c 04 20           ADD        AL,0x20
       1000:422e 3c 40           CMP        AL,0x40
       1000:4230 73 25           JNC        LAB_1000_4257
       1000:4232 2c 20           SUB        AL,0x20
       1000:4234 98              CBW
       1000:4235 d1 e0           SHL        AX,0x1
       1000:4237 d1 e0           SHL        AX,0x1
       1000:4239 d1 e0           SHL        AX,0x1
       1000:423b d1 e0           SHL        AX,0x1
       1000:423d d1 e0           SHL        AX,0x1
       1000:423f a3 68 19        MOV        [0x1968],AX
       1000:4242 33 c0           XOR        AX,AX
       1000:4244 e8 08 1c        CALL       FUN_1000_5e4f                                    undefined FUN_1000_5e4f()
       1000:4247 bb 6d 19        MOV        BX,0x196d
       1000:424a d7              XLAT       BX
       1000:424b a3 6a 19        MOV        [0x196a],AX
       1000:424e 5e              POP        SI
       1000:424f 59              POP        CX
       1000:4250 c6 06 6c        MOV        byte ptr [0x196c],0x6
                 19 06
       1000:4255 f9              STC
       1000:4256 c3              RET
                             LAB_1000_4257                                   XREF[4]:     1000:4211(j), 1000:421f(j), 
                                                                                          1000:4226(j), 1000:4230(j)  
       1000:4257 5e              POP        SI
       1000:4258 59              POP        CX
       1000:4259 eb a8           JMP        LAB_1000_4203
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_425b(void);
                             //
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [DI + 0xb]
                             //
                             undefined __cdecl16near FUN_1000_425b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_425b                                   XREF[2]:     FUN_1000_3f15:1000:403d(c), 
                                                                                          FUN_1000_40f9:1000:4168(c)  
       1000:425b f6 45 0a 80     TEST       byte ptr [DI + 0xa],0x80
       1000:425f 74 23           JZ         LAB_1000_4284
       1000:4261 80 65 0a 7f     AND        byte ptr [DI + 0xa],0x7f
       1000:4265 c6 45 0b 00     MOV        byte ptr [DI + 0xb],0x0
       1000:4269 80 7d 08 20     CMP        byte ptr [DI + 0x8],0x20
       1000:426d 73 15           JNC        LAB_1000_4284
       1000:426f fe 06 27 00     INC        byte ptr [0x27]
       1000:4273 81 3d 03 06     CMP        word ptr [DI],0x603
       1000:4277 75 0b           JNZ        LAB_1000_4284
       1000:4279 e8 f4 9f        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:427c b0 10           MOV        AL,0x10
       1000:427e e8 9e cf        CALL       FUN_1000_121f                                    undefined FUN_1000_121f()
       1000:4281 e8 ff 9f        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_4284                                   XREF[3]:     1000:425f(j), 1000:426d(j), 
                                                                                          1000:4277(j)  
       1000:4284 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_42e9(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x473e]
                             //   Write to: byte ptr [0x11c9]
                             //   Write to: word ptr [0x487e]
                             //
                             undefined FUN_1000_42e9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_42e9                                   XREF[1]:     FUN_1000_9215:1000:9282(c)  
       1000:42e9 e8 c6 55        CALL       FUN_1000_98b2                                    undefined FUN_1000_98b2()
       1000:42ec e8 f2 f5        CALL       FUN_1000_38e1                                    undefined FUN_1000_38e1()
       1000:42ef b8 24 00        MOV        AX,0x24
       1000:42f2 e8 49 7e        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:42f5 c6 06 3e        MOV        byte ptr [0x473e],0x1
                 47 01
       1000:42fa c6 06 c9        MOV        byte ptr [0x11c9],0x4
                 11 04
       1000:42ff c7 06 7e        MOV        word ptr [0x487e],0x2
                 48 02 00
       1000:4305 bd 2e 21        MOV        BP,0x212e
       1000:4308 e8 df 06        CALL       FUN_1000_49ea                                    undefined FUN_1000_49ea()
       1000:430b bb 15 44        MOV        BX,0x4415
       1000:430e e8 12 90        CALL       FUN_1000_d323                                    undefined FUN_1000_d323()
       1000:4311 b8 c8 1a        MOV        AX,0x1ac8
       1000:4314 e8 47 96        CALL       FUN_1000_d95e                                    undefined FUN_1000_d95e()
       1000:4317 e8 b0 07        CALL       FUN_1000_4aca                                    undefined FUN_1000_4aca()
       1000:431a c7 06 fc        MOV        word ptr [0x46fc],0x0
                 46 00 00
       1000:4320 e8 3a 18        CALL       FUN_1000_5b5d                                    undefined FUN_1000_5b5d()
       1000:4323 c6 06 eb        MOV        byte ptr [0x46eb],0x1
                 46 01
       1000:4328 be ca 1c        MOV        SI,0x1cca
       1000:432b e8 fd 93        CALL       FUN_1000_d72b                                    undefined FUN_1000_d72b()
       1000:432e be 9c 14        MOV        SI,0x149c
       1000:4331 bf e3 46        MOV        DI,0x46e3
       1000:4334 e8 73 97        CALL       FUN_1000_daaa                                    undefined FUN_1000_daaa()
       1000:4337 e8 5f 18        CALL       FUN_1000_5b99                                    undefined FUN_1000_5b99()
       1000:433a e8 62 00        CALL       FUN_1000_439f                                    undefined FUN_1000_439f()
       1000:433d b8 bc 02        MOV        AX,0x2bc
       1000:4340 e8 0c 68        CALL       FUN_1000_ab4f                                    undefined FUN_1000_ab4f()
       1000:4343 e8 12 03        CALL       FUN_1000_4658                                    undefined FUN_1000_4658()
       1000:4346 c7 06 ed        MOV        word ptr [0x46ed],0x4377
                 46 77 43
       1000:434c e8 44 18        CALL       FUN_1000_5b93                                    undefined FUN_1000_5b93()
       1000:434f e8 71 73        CALL       FUN_1000_b6c3                                    undefined FUN_1000_b6c3()
       1000:4352 e8 e2 7d        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:4355 e8 76 1a        CALL       FUN_1000_5dce                                    undefined FUN_1000_5dce()
       1000:4358 80 3e 3e        CMP        byte ptr [0x473e],0x0
                 47 00
       1000:435d 74 0f           JZ         LAB_1000_436e
       1000:435f b8 24 00        MOV        AX,0x24
       1000:4362 e8 d9 7d        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:4365 be c0 14        MOV        SI,0x14c0
       1000:4368 e8 b0 7e        CALL       FUN_1000_c21b                                    undefined FUN_1000_c21b()
       1000:436b e8 86 7d        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
                             LAB_1000_436e                                   XREF[1]:     1000:435d(j)  
       1000:436e e8 6c 81        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
       1000:4371 e8 e9 00        CALL       FUN_1000_445d                                    undefined FUN_1000_445d()
       1000:4374 e9 09 8f        JMP        FUN_1000_d280                                    undefined FUN_1000_d280()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_439f(void);
                             //
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbda]
                             //
                             undefined __cdecl16near FUN_1000_439f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_439f                                   XREF[2]:     FUN_1000_35ad:1000:3644(c), 
                                                                                          FUN_1000_42e9:1000:433a(c)  
       1000:439f e8 da 7c        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:43a2 80 3e 3e        CMP        byte ptr [0x473e],0x0
                 47 00
       1000:43a7 75 23           JNZ        LAB_1000_43cc
       1000:43a9 b8 24 00        MOV        AX,0x24
       1000:43ac e8 8f 7d        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:43af e8 e8 80        CALL       FUN_1000_c49a                                    undefined FUN_1000_c49a()
       1000:43b2 e8 5d 80        CALL       FUN_1000_c412                                    undefined FUN_1000_c412()
       1000:43b5 ff 1e 35 39     CALLF      [0x3935]
       1000:43b9 e8 ad 17        CALL       FUN_1000_5b69                                    undefined FUN_1000_5b69()
       1000:43bc be a4 14        MOV        SI,0x14a4
       1000:43bf b0 f5           MOV        AL,0xf5
       1000:43c1 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:43c5 ff 1e dd 38     CALLF      [0x38dd]
       1000:43c9 e9 11 81        JMP        FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_43cc                                   XREF[1]:     1000:43a7(j)  
       1000:43cc 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:43d1 75 03           JNZ        LAB_1000_43d6
       1000:43d3 e8 de f4        CALL       FUN_1000_38b4                                    undefined FUN_1000_38b4()
                             LAB_1000_43d6                                   XREF[1]:     1000:43d1(j)  
       1000:43d6 b8 24 00        MOV        AX,0x24
       1000:43d9 e8 62 7d        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:43dc be b4 14        MOV        SI,0x14b4
       1000:43df e8 39 7e        CALL       FUN_1000_c21b                                    undefined FUN_1000_c21b()
       1000:43e2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_445d(void);
                             //
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI]
                             //   Read from: word ptr [SI + 0x2]
                             //   Read from: word ptr [SI + 0x4]
                             //   Write to: word ptr [0x4749]
                             //   Write to: word ptr [DI]
                             //   Write to: word ptr [DI + 0x2]
                             //
                             undefined __cdecl16near FUN_1000_445d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_445d                                   XREF[1]:     FUN_1000_42e9:1000:4371(c)  
       1000:445d be ab 44        MOV        SI,0x44ab
       1000:4460 e8 fc 95        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:4463 e8 18 fc        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:4466 e8 6d 1e        CALL       FUN_1000_62d6                                    undefined FUN_1000_62d6()
       1000:4469 73 07           JNC        LAB_1000_4472
       1000:446b c7 06 49        MOV        word ptr [0x4749],0x0
                 47 00 00
       1000:4471 c3              RET
                             LAB_1000_4472                                   XREF[1]:     1000:4469(j)  
       1000:4472 e8 c2 7c        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:4475 b8 4c 00        MOV        AX,0x4c
       1000:4478 e8 79 7d        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:447b 26 ad           LODSW      ES:SI
       1000:447d 80 e4 0f        AND        AH,0xf
       1000:4480 8b e8           MOV        BP,AX
       1000:4482 26 ad           LODSW      ES:SI
       1000:4484 32 e4           XOR        AH,AH
       1000:4486 2b d8           SUB        BX,AX
       1000:4488 83 ea 0d        SUB        DX,0xd
       1000:448b 03 ea           ADD        BP,DX
       1000:448d 03 c3           ADD        AX,BX
       1000:448f bf 49 47        MOV        DI,0x4749
       1000:4492 89 15           MOV        word ptr [DI],DX
       1000:4494 89 5d 02        MOV        word ptr [DI + 0x2],BX
       1000:4497 89 6d 04        MOV        word ptr [DI + 0x4],BP
       1000:449a 89 45 06        MOV        word ptr [DI + 0x6],AX
       1000:449d be ab 44        MOV        SI,0x44ab
       1000:44a0 bd 2c 01        MOV        BP,0x12c
       1000:44a3 e8 7f 95        CALL       FUN_1000_da25                                    undefined FUN_1000_da25()
       1000:44a6 c6 06 51        MOV        byte ptr [0x4751],0x0
                 47 00
       1000:44ab fe 06 51 47     INC        byte ptr [0x4751]
       1000:44af ff 36 da db     PUSH       word ptr [0xdbda]
       1000:44b3 e8 d8 7b        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:44b6 e8 da 16        CALL       FUN_1000_5b93                                    undefined FUN_1000_5b93()
       1000:44b9 e8 7b 7c        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:44bc be 49 47        MOV        SI,0x4749
       1000:44bf e8 b2 96        CALL       FUN_1000_db74                                    undefined FUN_1000_db74()
       1000:44c2 8b 14           MOV        DX,word ptr [SI]
       1000:44c4 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:44c7 8b 6c 04        MOV        BP,word ptr [SI + 0x4]
       1000:44ca 8b 44 06        MOV        AX,word ptr [SI + 0x6]
       1000:44cd be 34 d8        MOV        SI,0xd834
       1000:44d0 3b 6c 04        CMP        BP,word ptr [SI + 0x4]
       1000:44d3 72 03           JC         LAB_1000_44d8
       1000:44d5 8b 6c 04        MOV        BP,word ptr [SI + 0x4]
                             LAB_1000_44d8                                   XREF[1]:     1000:44d3(j)  
       1000:44d8 3b 44 06        CMP        AX,word ptr [SI + 0x6]
       1000:44db 72 03           JC         LAB_1000_44e0
       1000:44dd 8b 44 06        MOV        AX,word ptr [SI + 0x6]
                             LAB_1000_44e0                                   XREF[1]:     1000:44db(j)  
       1000:44e0 3b 14           CMP        DX,word ptr [SI]
       1000:44e2 73 02           JNC        LAB_1000_44e6
       1000:44e4 8b 14           MOV        DX,word ptr [SI]
                             LAB_1000_44e6                                   XREF[1]:     1000:44e2(j)  
       1000:44e6 3b 5c 02        CMP        BX,word ptr [SI + 0x2]
       1000:44e9 73 03           JNC        LAB_1000_44ee
       1000:44eb 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
                             LAB_1000_44ee                                   XREF[1]:     1000:44e9(j)  
       1000:44ee e8 0a 80        CALL       FUN_1000_c4fb                                    undefined FUN_1000_c4fb()
       1000:44f1 8a 1e 51 47     MOV        BL,byte ptr [0x4751]
       1000:44f5 d0 eb           SHR        BL,0x1
       1000:44f7 73 0e           JNC        LAB_1000_4507
       1000:44f9 b8 4c 00        MOV        AX,0x4c
       1000:44fc 8b 16 49 47     MOV        DX,word ptr [0x4749]
       1000:4500 8b 1e 4b 47     MOV        BX,word ptr [0x474b]
       1000:4504 e8 06 7e        CALL       FUN_1000_c30d                                    undefined FUN_1000_c30d()
                             LAB_1000_4507                                   XREF[1]:     1000:44f7(j)  
       1000:4507 8f 06 da db     POP        word ptr [0xdbda]
       1000:450b e9 59 96        JMP        FUN_1000_db67                                    undefined FUN_1000_db67()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_4658(void);
                             //
                             // Input Parameters:
                             //   ES (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CH (uint8_t): 8-bit output value in CH register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x4741]
                             //   Write to: word ptr [0x473f]
                             //   Write to: word ptr [0x4743]
                             //
                             undefined __cdecl16near FUN_1000_4658()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4658                                   XREF[1]:     FUN_1000_42e9:1000:4343(c)  
       1000:4658 83 3e 3f        CMP        word ptr [0x473f],0x0
                 47 00
       1000:465d 75 3b           JNZ        LAB_1000_469a
       1000:465f e8 0e 9c        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:4662 be 57 00        MOV        SI,0x57
       1000:4665 e8 08 89        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:4668 8c 06 41 47     MOV        word ptr [0x4741],ES
       1000:466c 89 36 3f 47     MOV        word ptr [0x473f],SI
       1000:4670 c7 06 43        MOV        word ptr [0x4743],0x55
                 47 55 00
       1000:4676 b9 61 f5        MOV        CX,0xf561
       1000:4679 b8 22 00        MOV        AX,0x22
       1000:467c 80 3e 3e        CMP        byte ptr [0x473e],0x0
                 47 00
       1000:4681 74 04           JZ         LAB_1000_4687
       1000:4683 04 04           ADD        AL,0x4
       1000:4685 b5 20           MOV        CH,0x20
                             LAB_1000_4687                                   XREF[1]:     1000:4681(j)  
       1000:4687 a3 45 47        MOV        [0x4745],AX
       1000:468a 89 0e 47 47     MOV        word ptr [0x4747],CX
       1000:468e be b5 46        MOV        SI,0x46b5
       1000:4691 bd 18 00        MOV        BP,0x18
       1000:4694 e8 8e 93        CALL       FUN_1000_da25                                    undefined FUN_1000_da25()
       1000:4697 e8 e9 9b        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_469a                                   XREF[1]:     1000:465d(j)  
       1000:469a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_47fb(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: [0x4731]
                             //
                             undefined __cdecl16near FUN_1000_47fb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_47fb                                   XREF[2]:     1000:481e(j), 
                                                                                          FUN_1000_488a:1000:4909(c)  
       1000:47fb bd 21 48        MOV        BP,0x4821
       1000:47fe b8 14 00        MOV        AX,0x14
       1000:4801 e8 4f 9b        CALL       FUN_1000_e353                                    undefined FUN_1000_e353()
       1000:4804 00 0e 31 47     ADD        byte ptr [0x4731],CL
       1000:4808 a0 31 47        MOV        AL,[0x4731]
       1000:480b 3c 1a           CMP        AL,0x1a
       1000:480d 75 07           JNZ        LAB_1000_4816
       1000:480f 0a c9           OR         CL,CL
       1000:4811 78 03           JS         LAB_1000_4816
       1000:4813 e8 1a 64        CALL       FUN_1000_ac30                                    undefined FUN_1000_ac30()
                             LAB_1000_4816                                   XREF[2]:     1000:480d(j), 1000:4811(j)  
       1000:4816 e8 eb 65        CALL       FUN_1000_ae04                                    undefined FUN_1000_ae04()
       1000:4819 80 3e 31        CMP        byte ptr [0x4731],0x21
                 47 21
       1000:481e 72 db           JC         FUN_1000_47fb
       1000:4820 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_488a(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x114e]
                             //   Write to: byte ptr [0x4728]
                             //   Write to: byte ptr [0x4732]
                             //   Write to: byte ptr [0x4731]
                             //
                             undefined FUN_1000_488a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_488a                                   XREF[1]:     FUN_1000_2db1:1000:2e02(c)  
       1000:488a b8 06 00        MOV        AX,0x6
       1000:488d 8b 36 4e 11     MOV        SI,word ptr [0x114e]
       1000:4891 e8 bb 15        CALL       FUN_1000_5e4f                                    undefined FUN_1000_5e4f()
       1000:4894 3c 08           CMP        AL,0x8
       1000:4896 73 4d           JNC        LAB_1000_48e5
       1000:4898 8b d8           MOV        BX,AX
       1000:489a e8 15 93        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:489d c6 06 28        MOV        byte ptr [0x4728],0x80
                 47 80
                             LAB_1000_48a2                                   XREF[2]:     1000:48b2(j), 1000:48c4(j)  
       1000:48a2 53              PUSH       BX
       1000:48a3 e8 ba 81        CALL       FUN_1000_ca60                                    undefined FUN_1000_ca60()
       1000:48a6 33 c0           XOR        AX,AX
       1000:48a8 e8 1b 06        CALL       FUN_1000_4ec6                                    undefined FUN_1000_4ec6()
       1000:48ab 5b              POP        BX
       1000:48ac 81 3e 00        CMP        word ptr [0xdc00],0x2
                 dc 02 00
       1000:48b2 75 ee           JNZ        LAB_1000_48a2
       1000:48b4 b8 3c 00        MOV        AX,0x3c
       1000:48b7 81 fb 06 00     CMP        BX,0x6
       1000:48bb 74 03           JZ         LAB_1000_48c0
       1000:48bd b8 16 00        MOV        AX,0x16
                             LAB_1000_48c0                                   XREF[1]:     1000:48bb(j)  
       1000:48c0 3b 06 ea db     CMP        AX,word ptr [0xdbea]
       1000:48c4 75 dc           JNZ        LAB_1000_48a2
       1000:48c6 e8 82 85        CALL       FUN_1000_ce4b                                    undefined FUN_1000_ce4b()
                             LAB_1000_48c9                                   XREF[1]:     1000:48cf(j)  
       1000:48c9 e8 94 81        CALL       FUN_1000_ca60                                    undefined FUN_1000_ca60()
       1000:48cc e8 b6 83        CALL       FUN_1000_cc85                                    undefined FUN_1000_cc85()
       1000:48cf 74 f8           JZ         LAB_1000_48c9
                             LAB_1000_48d1                                   XREF[1]:     1000:48e3(j)  
       1000:48d1 fe 0e e0 46     DEC        byte ptr [0x46e0]
                             LAB_1000_48d5                                   XREF[1]:     1000:4911(j)  
       1000:48d5 c6 06 32        MOV        byte ptr [0x4732],0x0
                 47 00
       1000:48da e9 97 e4        JMP        FUN_1000_2d74                                    undefined FUN_1000_2d74()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_48dd                                   XREF[1]:     1000:48e7(j)  
       1000:48dd bd cd c4        MOV        BP,0xc4cd
       1000:48e0 e8 18 80        CALL       FUN_1000_c8fb                                    undefined FUN_1000_c8fb()
       1000:48e3 eb ec           JMP        LAB_1000_48d1
                             LAB_1000_48e5                                   XREF[1]:     1000:4896(j)  
       1000:48e5 3c 09           CMP        AL,0x9
       1000:48e7 74 f4           JZ         LAB_1000_48dd
       1000:48e9 c6 06 31        MOV        byte ptr [0x4731],0xff
                 47 ff
       1000:48ee e8 8b 77        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:48f1 e8 ac 12        CALL       FUN_1000_5ba0                                    undefined FUN_1000_5ba0()
       1000:48f4 e8 bb ee        CALL       FUN_1000_37b2                                    undefined FUN_1000_37b2()
       1000:48f7 e8 fa 77        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:48fa e8 15 7b        CALL       FUN_1000_c412                                    undefined FUN_1000_c412()
       1000:48fd c6 06 31        MOV        byte ptr [0x4731],0x1f
                 47 1f
       1000:4902 b0 07           MOV        AL,0x7
       1000:4904 e8 0e 62        CALL       FUN_1000_ab15                                    undefined FUN_1000_ab15()
       1000:4907 b1 ff           MOV        CL,0xff
       1000:4909 e8 ef fe        CALL       FUN_1000_47fb                                    undefined FUN_1000_47fb()
       1000:490c c6 06 31        MOV        byte ptr [0x4731],0x0
                 47 00
       1000:4911 eb c2           JMP        LAB_1000_48d5
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_4944(uint16_t bx, uint16_t dx);
                             //
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x1150]
                             //   Write to: word ptr [0x11c5]
                             //   Write to: byte ptr [0x11c8]
                             //   Write to: byte ptr [0x11c7]
                             //
                             undefined FUN_1000_4944()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4944                                   XREF[1]:     FUN_1000_40f9:1000:416b(c)  
       1000:4944 e8 77 07        CALL       FUN_1000_50be                                    undefined FUN_1000_50be()
       1000:4947 83 ff f0        CMP        DI,-0x10
       1000:494a 72 19           JC         LAB_1000_4965
       1000:494c fe 0e cb 11     DEC        byte ptr [0x11cb]
       1000:4950 e8 a6 6c        CALL       FUN_1000_b5f9                                    undefined FUN_1000_b5f9()
       1000:4953 8b cb           MOV        CX,BX
       1000:4955 8b fa           MOV        DI,DX
       1000:4957 e8 24 f7        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:495a e8 d6 07        CALL       FUN_1000_5133                                    undefined FUN_1000_5133()
       1000:495d 8b 3e 50 11     MOV        DI,word ptr [0x1150]
       1000:4961 b1 01           MOV        CL,0x1
       1000:4963 eb 05           JMP        LAB_1000_496a
                             LAB_1000_4965                                   XREF[1]:     1000:494a(j)  
       1000:4965 e8 bc 07        CALL       FUN_1000_5124                                    undefined FUN_1000_5124()
       1000:4968 33 c9           XOR        CX,CX
                             LAB_1000_496a                                   XREF[1]:     1000:4963(j)  
       1000:496a 89 3e c5 11     MOV        word ptr [0x11c5],DI
       1000:496e 88 0e c8 11     MOV        byte ptr [0x11c8],CL
       1000:4972 c6 06 c7        MOV        byte ptr [0x11c7],0x0
                 11 00
       1000:4977 e9 9f 07        JMP        FUN_1000_5119                                    undefined FUN_1000_5119()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_4988(void);
                             //
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x46fc]
                             //   Write to: word ptr [0x46ed]
                             //
                             undefined FUN_1000_4988()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4988                                   XREF[1]:     FUN_1000_37b5:1000:37f9(c)  
       1000:4988 c7 06 fc        MOV        word ptr [0x46fc],0x0
                 46 00 00
       1000:498e e8 cc 11        CALL       FUN_1000_5b5d                                    undefined FUN_1000_5b5d()
       1000:4991 be 8a 14        MOV        SI,0x148a
       1000:4994 bf e3 46        MOV        DI,0x46e3
       1000:4997 e8 ff 11        CALL       FUN_1000_5b99                                    undefined FUN_1000_5b99()
       1000:499a c7 06 ed        MOV        word ptr [0x46ed],0x49a0
                 46 a0 49
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_49a0(void);
                             //
                             // Input/Output Parameters:
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x11c5]
                             //   Write to: byte ptr [0x46eb]
                             //   Write to: byte ptr [0x46eb]
                             //
                             undefined FUN_1000_49a0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_49a0                                   XREF[1]:     FUN_1000_49d9:1000:49e0(c)  
       1000:49a0 e8 e2 76        CALL       FUN_1000_c085                                    undefined FUN_1000_c085()
       1000:49a3 e8 ed 11        CALL       FUN_1000_5b93                                    undefined FUN_1000_5b93()
       1000:49a6 c6 06 eb        MOV        byte ptr [0x46eb],0x1
                 46 01
       1000:49ab e8 15 6d        CALL       FUN_1000_b6c3                                    undefined FUN_1000_b6c3()
       1000:49ae e8 b8 11        CALL       FUN_1000_5b69                                    undefined FUN_1000_5b69()
       1000:49b1 e8 83 77        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:49b4 e8 17 14        CALL       FUN_1000_5dce                                    undefined FUN_1000_5dce()
       1000:49b7 8b 36 c5 11     MOV        SI,word ptr [0x11c5]
       1000:49bb 0b f6           OR         SI,SI
       1000:49bd 74 0d           JZ         LAB_1000_49cc
       1000:49bf e8 07 19        CALL       FUN_1000_62c9                                    undefined FUN_1000_62c9()
       1000:49c2 72 08           JC         LAB_1000_49cc
       1000:49c4 4b              DEC        BX
       1000:49c5 4a              DEC        DX
       1000:49c6 b8 2e 00        MOV        AX,0x2e
       1000:49c9 e8 63 78        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
                             LAB_1000_49cc                                   XREF[2]:     1000:49bd(j), 1000:49c2(j)  
       1000:49cc c6 06 eb        MOV        byte ptr [0x46eb],0x0
                 46 00
       1000:49d1 e9 a8 76        JMP        FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_49d9(void);
                             //
                             //
                             undefined FUN_1000_49d9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_49d9                                   XREF[1]:     FUN_1000_4f0c:1000:4f6d(c)  
       1000:49d9 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:49de 78 06           JS         LAB_1000_49e6
       1000:49e0 e8 bd ff        CALL       FUN_1000_49a0                                    undefined FUN_1000_49a0()
       1000:49e3 eb 75           JMP        FUN_1000_4a5a                                    undefined FUN_1000_4a5a()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_49e6                                   XREF[1]:     1000:49de(j)  
       1000:49e6 ff 26 ed 46     JMP        word ptr [0x46ed]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_49ea(void);
                             //
                             // Input Parameters:
                             //   CS (uint16_t): Segment register input value
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x4728]
                             //
                             undefined __cdecl16near FUN_1000_49ea()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_49ea                                   XREF[1]:     FUN_1000_42e9:1000:4308(c)  
       1000:49ea c6 06 28        MOV        byte ptr [0x4728],0x0
                 47 00
       1000:49ef 0e              PUSH       CS
       1000:49f0 07              POP        ES
       1000:49f1 bf 0c e4        MOV        DI,0xe40c
       1000:49f4 b8 00 08        MOV        AX,0x800
                             LAB_1000_49f7                                   XREF[1]:     1000:49fd(j)  
       1000:49f7 ab              STOSW      ES:DI
       1000:49f8 ab              STOSW      ES:DI
       1000:49f9 81 ff 5c e8     CMP        DI,0xe85c
       1000:49fd 72 f8           JC         LAB_1000_49f7
       1000:49ff c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_4a00(uint16_t bx, uint16_t dx);
                             //
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   CS (uint16_t): Segment register input value
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x149a]
                             //   Write to: word ptr [0x149a]
                             //
                             undefined __cdecl16near FUN_1000_4a00()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4a00                                   XREF[1]:     FUN_1000_4f0c:1000:4f43(c)  
       1000:4a00 0e              PUSH       CS
       1000:4a01 07              POP        ES
       1000:4a02 8b 3e 9a 14     MOV        DI,word ptr [0x149a]
       1000:4a06 8b c2           MOV        AX,DX
       1000:4a08 ab              STOSW      ES:DI
       1000:4a09 8b c3           MOV        AX,BX
       1000:4a0b ab              STOSW      ES:DI
       1000:4a0c 81 ff 5c e8     CMP        DI,0xe85c
       1000:4a10 72 03           JC         LAB_1000_4a15
       1000:4a12 bf 0c e4        MOV        DI,0xe40c
                             LAB_1000_4a15                                   XREF[1]:     1000:4a10(j)  
       1000:4a15 89 3e 9a 14     MOV        word ptr [0x149a],DI
       1000:4a19 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4a1a(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x149a]
                             //
                             undefined __cdecl16near FUN_1000_4a1a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4a1a                                   XREF[1]:     FUN_1000_4f0c:1000:4f3d(c)  
       1000:4a1a 80 3e 28        CMP        byte ptr [0x4728],0x0
                 47 00
       1000:4a1f 78 38           JS         LAB_1000_4a59
       1000:4a21 be 8a 14        MOV        SI,0x148a
       1000:4a24 e8 4d 91        CALL       FUN_1000_db74                                    undefined FUN_1000_db74()
       1000:4a27 8b 36 9a 14     MOV        SI,word ptr [0x149a]
       1000:4a2b 81 fe 0c e4     CMP        SI,0xe40c
       1000:4a2f 75 03           JNZ        LAB_1000_4a34
       1000:4a31 be 5c e8        MOV        SI,0xe85c
                             LAB_1000_4a34                                   XREF[1]:     1000:4a2f(j)  
       1000:4a34 83 ee 04        SUB        SI,0x4
       1000:4a37 2e ad           LODSW      CS:SI=>LAB_1000_e857+1
       1000:4a39 8b d0           MOV        DX,AX
       1000:4a3b 2e ad           LODSW      CS:SI=>LAB_1000_e857+3
       1000:4a3d 8b d8           MOV        BX,AX
       1000:4a3f fe cc           DEC        AH
       1000:4a41 79 16           JNS        LAB_1000_4a59
       1000:4a43 e8 90 18        CALL       FUN_1000_62d6                                    undefined FUN_1000_62d6()
       1000:4a46 72 11           JC         LAB_1000_4a59
       1000:4a48 4b              DEC        BX
       1000:4a49 4a              DEC        DX
       1000:4a4a e8 ea 76        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:4a4d b8 2f 00        MOV        AX,0x2f
       1000:4a50 e8 32 76        CALL       FUN_1000_c085                                    undefined FUN_1000_c085()
       1000:4a53 e8 d9 77        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:4a56 e8 23 76        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             LAB_1000_4a59                                   XREF[3]:     1000:4a1f(j), 1000:4a41(j), 
                                                                                          1000:4a46(j)  
       1000:4a59 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4a5a(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x149a]
                             //
                             undefined __cdecl16near FUN_1000_4a5a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4a5a                                   XREF[2]:     FUN_1000_37b5:1000:37fc(c), 
                                                                                          FUN_1000_49d9:1000:49e3(c)  
       1000:4a5a e8 da 76        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:4a5d ff 36 da db     PUSH       word ptr [0xdbda]
       1000:4a61 e8 21 76        CALL       FUN_1000_c085                                    undefined FUN_1000_c085()
       1000:4a64 8b 36 9a 14     MOV        SI,word ptr [0x149a]
                             LAB_1000_4a68                                   XREF[1]:     1000:4aa6(j)  
       1000:4a68 2e ad           LODSW      CS:SI=>DAT_1000_e40c                             = 3833h
       1000:4a6a 8b d0           MOV        DX,AX
       1000:4a6c 2e ad           LODSW      CS:SI=>DAT_1000_e40e                             = 0036h
       1000:4a6e 8b d8           MOV        BX,AX
       1000:4a70 fe cc           DEC        AH
       1000:4a72 79 25           JNS        LAB_1000_4a99
       1000:4a74 56              PUSH       SI
       1000:4a75 e8 5e 18        CALL       FUN_1000_62d6                                    undefined FUN_1000_62d6()
       1000:4a78 72 1e           JC         LAB_1000_4a98
       1000:4a7a 4b              DEC        BX
       1000:4a7b 4a              DEC        DX
       1000:4a7c 81 fa cc 00     CMP        DX,0xcc
       1000:4a80 7c 16           JL         LAB_1000_4a98
       1000:4a82 83 fb 04        CMP        BX,0x4
       1000:4a85 7c 11           JL         LAB_1000_4a98
       1000:4a87 81 fa 3a 01     CMP        DX,0x13a
       1000:4a8b 7d 0b           JGE        LAB_1000_4a98
       1000:4a8d 83 fb 3a        CMP        BX,0x3a
       1000:4a90 7d 06           JGE        LAB_1000_4a98
       1000:4a92 b8 2f 00        MOV        AX,0x2f
       1000:4a95 e8 97 77        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
                             LAB_1000_4a98                                   XREF[5]:     1000:4a78(j), 1000:4a80(j), 
                                                                                          1000:4a85(j), 1000:4a8b(j), 
                                                                                          1000:4a90(j)  
       1000:4a98 5e              POP        SI
                             LAB_1000_4a99                                   XREF[1]:     1000:4a72(j)  
       1000:4a99 81 fe 5c e8     CMP        SI,0xe85c
       1000:4a9d 72 03           JC         LAB_1000_4aa2
       1000:4a9f be 0c e4        MOV        SI,0xe40c
                             LAB_1000_4aa2                                   XREF[1]:     1000:4a9d(j)  
       1000:4aa2 3b 36 9a 14     CMP        SI,word ptr [0x149a]
       1000:4aa6 75 c0           JNZ        LAB_1000_4a68
       1000:4aa8 8f 06 da db     POP        word ptr [0xdbda]
       1000:4aac c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_4ac4(void);
                             //
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x11ca]
                             //
                             undefined __cdecl16near FUN_1000_4ac4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4ac4                                   XREF[1]:     FUN_1000_4f0c:1000:4fdf(c)  
       1000:4ac4 c6 06 ca        MOV        byte ptr [0x11ca],0x0
                 11 00
       1000:4ac9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_4aca(void);
                             //
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x11ca]
                             //
                             undefined __cdecl16near FUN_1000_4aca()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4aca                                   XREF[4]:     FUN_1000_18ba:1000:18d8(c), 
                                                                                          FUN_1000_35ad:1000:365c(c), 
                                                                                          FUN_1000_42e9:1000:4317(c), 
                                                                                          FUN_1000_978e:1000:978e(c)  
       1000:4aca c6 06 ca        MOV        byte ptr [0x11ca],0x1
                 11 01
       1000:4acf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_4aeb(void);
                             //
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             undefined FUN_1000_4aeb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4aeb                                   XREF[2]:     FUN_1000_368b:1000:36cb(c), 
                                                                                          FUN_1000_cc96:1000:ccf1(c)  
       1000:4aeb b8 39 00        MOV        AX,0x39
       1000:4aee e8 4d 76        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:4af1 e8 88 75        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:4af4 e8 75 02        CALL       FUN_1000_4d6c                                    undefined FUN_1000_4d6c()
       1000:4af7 e8 31 00        CALL       FUN_1000_4b2b                                    undefined FUN_1000_4b2b()
       1000:4afa e9 e0 79        JMP        FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_4afd(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbd8]
                             //   Read from: word ptr [0xdbd6]
                             //   Read from: [0xdbd8]
                             //
                             undefined __cdecl16near FUN_1000_4afd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4afd                                   XREF[1]:     FUN_1000_cc96:1000:ccee(c)  
       1000:4afd 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:4b02 75 12           JNZ        LAB_1000_4b16
       1000:4b04 e8 24 00        CALL       FUN_1000_4b2b                                    undefined FUN_1000_4b2b()
       1000:4b07 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:4b0b 8b 36 d6 db     MOV        SI,word ptr [0xdbd6]
       1000:4b0f ff 1e fd 38     CALLF      [0x38fd]
       1000:4b13 e9 cd 90        JMP        FUN_1000_dbe3                                    undefined FUN_1000_dbe3()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_4b16                                   XREF[1]:     1000:4b02(j)  
       1000:4b16 a1 d8 db        MOV        AX,[0xdbd8]
       1000:4b19 8b 36 d6 db     MOV        SI,word ptr [0xdbd6]
       1000:4b1d 3b c6           CMP        AX,SI
       1000:4b1f 74 09           JZ         LAB_1000_4b2a
       1000:4b21 05 e0 01        ADD        AX,0x1e0
       1000:4b24 8e c0           MOV        ES,AX
       1000:4b26 ff 1e fd 38     CALLF      [0x38fd]
                             LAB_1000_4b2a                                   XREF[1]:     1000:4b1f(j)  
       1000:4b2a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_4b2b(void);
                             //
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_4b2b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4b2b                                   XREF[2]:     FUN_1000_4aeb:1000:4af7(c), 
                                                                                          FUN_1000_4afd:1000:4b04(c)  
       1000:4b2b 80 3e 28        CMP        byte ptr [0x4728],0x0
                 47 00
       1000:4b30 78 06           JS         LAB_1000_4b38
       1000:4b32 be 92 14        MOV        SI,0x1492
       1000:4b35 e8 37 79        CALL       FUN_1000_c46f                                    undefined FUN_1000_c46f()
                             LAB_1000_4b38                                   XREF[1]:     1000:4b30(j)  
       1000:4b38 e9 8f 90        JMP        FUN_1000_dbca                                    undefined FUN_1000_dbca()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_4b3b(uint16_t bx, uint16_t dx);
                             //
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x4]
                             //   Write to: word ptr [0x6]
                             //
                             undefined __cdecl16near FUN_1000_4b3b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4b3b                                   XREF[1]:     FUN_1000_4f0c:1000:4f3a(c)  
       1000:4b3b ff 06 2b 47     INC        word ptr [0x472b]
       1000:4b3f f7 06 2b        TEST       word ptr [0x472b],0xf
                 47 0f 00
       1000:4b45 75 06           JNZ        LAB_1000_4b4d
       1000:4b47 b9 01 00        MOV        CX,0x1
       1000:4b4a e8 8c c4        CALL       FUN_1000_0fd9                                    undefined FUN_1000_0fd9()
                             LAB_1000_4b4d                                   XREF[1]:     1000:4b45(j)  
       1000:4b4d e8 2e f5        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:4b50 e8 b3 06        CALL       FUN_1000_5206                                    undefined FUN_1000_5206()
       1000:4b53 e8 6d f5        CALL       FUN_1000_40c3                                    undefined FUN_1000_40c3()
       1000:4b56 89 16 04 00     MOV        word ptr [0x4],DX
       1000:4b5a 89 1e 06 00     MOV        word ptr [0x6],BX
       1000:4b5e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4b5f(void);
                             //
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI]
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: word ptr [SI]
                             //   Write to: word ptr [0x4860]
                             //   Write to: [0x4864]
                             //   Write to: word ptr [0x4862]
                             //
                             undefined __cdecl16near FUN_1000_4b5f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4b5f                                   XREF[1]:     FUN_1000_4bdf:1000:4c13(c)  
       1000:4b5f be 70 14        MOV        SI,0x1470
       1000:4b62 8b c2           MOV        AX,DX
       1000:4b64 03 06 7a 48     ADD        AX,word ptr [0x487a]
       1000:4b68 3b 14           CMP        DX,word ptr [SI]
       1000:4b6a 7d 02           JGE        LAB_1000_4b6e
       1000:4b6c 8b 14           MOV        DX,word ptr [SI]
                             LAB_1000_4b6e                                   XREF[1]:     1000:4b6a(j)  
       1000:4b6e 3b 54 04        CMP        DX,word ptr [SI + 0x4]
       1000:4b71 7e 03           JLE        LAB_1000_4b76
       1000:4b73 8b 54 04        MOV        DX,word ptr [SI + 0x4]
                             LAB_1000_4b76                                   XREF[1]:     1000:4b71(j)  
       1000:4b76 89 16 60 48     MOV        word ptr [0x4860],DX
       1000:4b7a 3b 04           CMP        AX,word ptr [SI]
       1000:4b7c 7d 02           JGE        LAB_1000_4b80
       1000:4b7e 8b 04           MOV        AX,word ptr [SI]
                             LAB_1000_4b80                                   XREF[1]:     1000:4b7c(j)  
       1000:4b80 3b 44 04        CMP        AX,word ptr [SI + 0x4]
       1000:4b83 7e 03           JLE        LAB_1000_4b88
       1000:4b85 8b 44 04        MOV        AX,word ptr [SI + 0x4]
                             LAB_1000_4b88                                   XREF[1]:     1000:4b83(j)  
       1000:4b88 a3 64 48        MOV        [0x4864],AX
       1000:4b8b 8b c3           MOV        AX,BX
       1000:4b8d 03 06 7c 48     ADD        AX,word ptr [0x487c]
       1000:4b91 3b 5c 02        CMP        BX,word ptr [SI + 0x2]
       1000:4b94 7d 03           JGE        LAB_1000_4b99
       1000:4b96 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
                             LAB_1000_4b99                                   XREF[1]:     1000:4b94(j)  
       1000:4b99 3b 5c 06        CMP        BX,word ptr [SI + 0x6]
       1000:4b9c 7e 03           JLE        LAB_1000_4ba1
       1000:4b9e 8b 5c 06        MOV        BX,word ptr [SI + 0x6]
                             LAB_1000_4ba1                                   XREF[1]:     1000:4b9c(j)  
       1000:4ba1 89 1e 62 48     MOV        word ptr [0x4862],BX
       1000:4ba5 3b 44 02        CMP        AX,word ptr [SI + 0x2]
       1000:4ba8 7d 03           JGE        LAB_1000_4bad
       1000:4baa 8b 44 02        MOV        AX,word ptr [SI + 0x2]
                             LAB_1000_4bad                                   XREF[1]:     1000:4ba8(j)  
       1000:4bad 3b 44 06        CMP        AX,word ptr [SI + 0x6]
       1000:4bb0 7e 03           JLE        LAB_1000_4bb5
       1000:4bb2 8b 44 06        MOV        AX,word ptr [SI + 0x6]
                             LAB_1000_4bb5                                   XREF[1]:     1000:4bb0(j)  
       1000:4bb5 a3 66 48        MOV        [0x4866],AX
       1000:4bb8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4bdf(void);
                             //
                             // Input Parameters:
                             //   SS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: [0x485e]
                             //   Read from: [0x4878]
                             //   Read from: [0x4876]
                             //   Write to: [0x4878]
                             //   Write to: [0x4876]
                             //   Write to: word ptr [0x486a]
                             //
                             undefined __cdecl16near FUN_1000_4bdf()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4bdf                                   XREF[1]:     FUN_1000_4d06:1000:4d37(c)  
       1000:4bdf a1 5e 48        MOV        AX,[0x485e]
       1000:4be2 e8 59 75        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:4be5 a1 78 48        MOV        AX,[0x4878]
       1000:4be8 32 e4           XOR        AH,AH
       1000:4bea 03 06 74 48     ADD        AX,word ptr [0x4874]
       1000:4bee a3 78 48        MOV        [0x4878],AX
       1000:4bf1 8a c4           MOV        AL,AH
       1000:4bf3 98              CBW
       1000:4bf4 01 06 70 48     ADD        word ptr [0x4870],AX
       1000:4bf8 a1 76 48        MOV        AX,[0x4876]
       1000:4bfb 32 e4           XOR        AH,AH
       1000:4bfd 03 06 72 48     ADD        AX,word ptr [0x4872]
       1000:4c01 a3 76 48        MOV        [0x4876],AX
       1000:4c04 8a c4           MOV        AL,AH
       1000:4c06 98              CBW
       1000:4c07 01 06 6e 48     ADD        word ptr [0x486e],AX
       1000:4c0b 8b 16 6e 48     MOV        DX,word ptr [0x486e]
       1000:4c0f 8b 1e 70 48     MOV        BX,word ptr [0x4870]
       1000:4c13 e8 49 ff        CALL       FUN_1000_4b5f                                    undefined FUN_1000_4b5f()
       1000:4c16 8b 36 6a 48     MOV        SI,word ptr [0x486a]
       1000:4c1a 36 8e 1e        MOV        DS,word ptr SS:[0xdbb2]
                 b2 db
       1000:4c1f 80 3c ff        CMP        byte ptr [SI],0xff
       1000:4c22 75 05           JNZ        LAB_1000_4c29
       1000:4c24 36 8b 36        MOV        SI,word ptr SS:[0x4868]
                 68 48
                             LAB_1000_4c29                                   XREF[2]:     1000:4c22(j), 1000:4c3c(j)  
       1000:4c29 ac              LODSB      SI
       1000:4c2a 32 e4           XOR        AH,AH
       1000:4c2c 0a c0           OR         AL,AL
       1000:4c2e 74 0e           JZ         LAB_1000_4c3e
       1000:4c30 3c 01           CMP        AL,0x1
       1000:4c32 75 03           JNZ        LAB_1000_4c37
       1000:4c34 8a e0           MOV        AH,AL
       1000:4c36 ac              LODSB      SI
                             LAB_1000_4c37                                   XREF[1]:     1000:4c32(j)  
       1000:4c37 56              PUSH       SI
       1000:4c38 e8 0a 00        CALL       FUN_1000_4c45                                    undefined FUN_1000_4c45()
       1000:4c3b 5e              POP        SI
       1000:4c3c eb eb           JMP        LAB_1000_4c29
                             LAB_1000_4c3e                                   XREF[1]:     1000:4c2e(j)  
       1000:4c3e 16              PUSH       SS
       1000:4c3f 1f              POP        DS
       1000:4c40 89 36 6a 48     MOV        word ptr [0x486a],SI
       1000:4c44 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4c45(void);
                             //
                             // Input Parameters:
                             //   SS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr SS:[0x486c]
                             //   Read from: word ptr SS:[0xdbda]
                             //   Read from: word ptr SS:[0xdbb0]
                             //
                             undefined __cdecl16near FUN_1000_4c45()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4c45                                   XREF[1]:     FUN_1000_4bdf:1000:4c38(c)  
       1000:4c45 2d 02 00        SUB        AX,0x2
       1000:4c48 d1 e0           SHL        AX,0x1
       1000:4c4a 8b e8           MOV        BP,AX
       1000:4c4c 36 8b 36        MOV        SI,word ptr SS:[0x486c]
                 6c 48
       1000:4c51 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
                             LAB_1000_4c54                                   XREF[1]:     1000:4c8f(j)  
       1000:4c54 ac              LODSB      SI
       1000:4c55 0a c0           OR         AL,AL
       1000:4c57 74 38           JZ         LAB_1000_4c91
       1000:4c59 32 e4           XOR        AH,AH
       1000:4c5b 8b e8           MOV        BP,AX
       1000:4c5d ac              LODSB      SI
       1000:4c5e 8b d0           MOV        DX,AX
       1000:4c60 ac              LODSB      SI
       1000:4c61 8b d8           MOV        BX,AX
       1000:4c63 36 03 16        ADD        DX,word ptr SS:[0x486e]
                 6e 48
       1000:4c68 36 03 1e        ADD        BX,word ptr SS:[0x4870]
                 70 48
       1000:4c6d 56              PUSH       SI
       1000:4c6e 4d              DEC        BP
       1000:4c6f 36 8e 06        MOV        ES,word ptr SS:[0xdbda]
                 da db
       1000:4c74 36 8b 36        MOV        SI,word ptr SS:[0xdbb0]
                 b0 db
       1000:4c79 d1 e5           SHL        BP,0x1
       1000:4c7b 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:4c7e ad              LODSW      SI
       1000:4c7f 8b f8           MOV        DI,AX
       1000:4c81 ad              LODSW      SI
       1000:4c82 32 e4           XOR        AH,AH
       1000:4c84 8b c8           MOV        CX,AX
       1000:4c86 bd 60 48        MOV        BP,0x4860
       1000:4c89 36 ff 1e        CALLF      [0x38cd]
                 cd 38
       1000:4c8e 5e              POP        SI
       1000:4c8f eb c3           JMP        LAB_1000_4c54
                             LAB_1000_4c91                                   XREF[1]:     1000:4c57(j)  
       1000:4c91 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4c92(uint16_t cx, uint16_t si);
                             //
                             // Input Parameters:
                             //   CX (uint16_t): 16-bit input value in CX register
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI]
                             //   Write to: [0x485e]
                             //   Write to: word ptr [0x486e]
                             //   Write to: word ptr [0x4870]
                             //
                             undefined __cdecl16near FUN_1000_4c92()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4c92                                   XREF[1]:     FUN_1000_4d57:1000:4d69(c)  
       1000:4c92 1e              PUSH       DS
       1000:4c93 50              PUSH       AX
       1000:4c94 32 e4           XOR        AH,AH
       1000:4c96 a3 5e 48        MOV        [0x485e],AX
       1000:4c99 89 16 6e 48     MOV        word ptr [0x486e],DX
       1000:4c9d 89 1e 70 48     MOV        word ptr [0x4870],BX
       1000:4ca1 89 2e 72 48     MOV        word ptr [0x4872],BP
       1000:4ca5 89 0e 74 48     MOV        word ptr [0x4874],CX
       1000:4ca9 c7 06 76        MOV        word ptr [0x4876],0x0
                 48 00 00
       1000:4caf c7 06 78        MOV        word ptr [0x4878],0x0
                 48 00 00
       1000:4cb5 e8 86 74        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:4cb8 1e              PUSH       DS
       1000:4cb9 07              POP        ES
       1000:4cba c5 36 b0 db     LDS        SI,[0xdbb0]
       1000:4cbe 8b 1c           MOV        BX,word ptr [SI]
       1000:4cc0 03 70 fe        ADD        SI,word ptr [BX + SI + -0x2]
       1000:4cc3 bf 60 48        MOV        DI,0x4860
       1000:4cc6 83 c6 04        ADD        SI,0x4
       1000:4cc9 ad              LODSW      SI
       1000:4cca 8b d0           MOV        DX,AX
       1000:4ccc ad              LODSW      SI
       1000:4ccd 8b d8           MOV        BX,AX
       1000:4ccf ad              LODSW      SI
       1000:4cd0 2b c2           SUB        AX,DX
       1000:4cd2 36 a3 7a 48     MOV        SS:[0x487a],AX
       1000:4cd6 ad              LODSW      SI
       1000:4cd7 2b c3           SUB        AX,BX
       1000:4cd9 36 a3 7c 48     MOV        SS:[0x487c],AX
       1000:4cdd 8b c6           MOV        AX,SI
       1000:4cdf 05 02 00        ADD        AX,0x2
       1000:4ce2 36 a3 6c 48     MOV        SS:[0x486c],AX
       1000:4ce6 03 34           ADD        SI,word ptr [SI]
       1000:4ce8 58              POP        AX
       1000:4ce9 8a c4           MOV        AL,AH
       1000:4ceb 32 e4           XOR        AH,AH
       1000:4ced d1 e0           SHL        AX,0x1
       1000:4cef 8b e8           MOV        BP,AX
       1000:4cf1 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:4cf4 36 89 36        MOV        word ptr SS:[0x4868],SI
                 68 48
       1000:4cf9 36 89 36        MOV        word ptr SS:[0x486a],SI
                 6a 48
       1000:4cfe 1f              POP        DS
       1000:4cff c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_4d00(void);
                             //
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_4d00()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4d00                                   XREF[2]:     FUN_1000_18ba:1000:18d2(c), 
                                                                                          FUN_1000_37b5:1000:37b5(c)  
       1000:4d00 be b9 4b        MOV        SI,0x4bb9
       1000:4d03 e9 59 8d        JMP        FUN_1000_da5f                                    undefined FUN_1000_da5f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4d06(uint8_t bh, uint8_t bl);
                             //
                             // Input Parameters:
                             //   BH (uint8_t): 8-bit input value in BH register
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x1150]
                             //   Read from: word ptr [DI + 0x2]
                             //   Read from: [0x4733]
                             //   Write to: byte ptr [0xf6]
                             //
                             undefined __cdecl16near FUN_1000_4d06()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4d06                                   XREF[1]:     FUN_1000_37eb:1000:37f1(c)  
       1000:4d06 c6 06 f6        MOV        byte ptr [0xf6],0x0
                 00 00
       1000:4d0b 8b 3e 50 11     MOV        DI,word ptr [0x1150]
       1000:4d0f 8b 55 02        MOV        DX,word ptr [DI + 0x2]
       1000:4d12 3b 16 04 00     CMP        DX,word ptr [0x4]
       1000:4d16 75 3e           JNZ        LAB_1000_4d56
       1000:4d18 a1 33 47        MOV        AX,[0x4733]
       1000:4d1b 0a e4           OR         AH,AH
       1000:4d1d 74 37           JZ         LAB_1000_4d56
       1000:4d1f 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:4d23 3a 5d 04        CMP        BL,byte ptr [DI + 0x4]
       1000:4d26 75 2e           JNZ        LAB_1000_4d56
       1000:4d28 3a fc           CMP        BH,AH
       1000:4d2a 77 2a           JA         LAB_1000_4d56
       1000:4d2c 50              PUSH       AX
       1000:4d2d 53              PUSH       BX
       1000:4d2e fe 06 f6 00     INC        byte ptr [0xf6]
       1000:4d32 b4 01           MOV        AH,0x1
       1000:4d34 e8 20 00        CALL       FUN_1000_4d57                                    undefined FUN_1000_4d57()
       1000:4d37 e8 a5 fe        CALL       FUN_1000_4bdf                                    undefined FUN_1000_4bdf()
       1000:4d3a e8 d5 76        CALL       FUN_1000_c412                                    undefined FUN_1000_c412()
       1000:4d3d 5b              POP        BX
       1000:4d3e 58              POP        AX
       1000:4d3f 3a f8           CMP        BH,AL
       1000:4d41 77 13           JA         LAB_1000_4d56
       1000:4d43 b0 05           MOV        AL,0x5
       1000:4d45 e8 cd 5d        CALL       FUN_1000_ab15                                    undefined FUN_1000_ab15()
       1000:4d48 32 e4           XOR        AH,AH
       1000:4d4a e8 0a 00        CALL       FUN_1000_4d57                                    undefined FUN_1000_4d57()
       1000:4d4d be b9 4b        MOV        SI,0x4bb9
       1000:4d50 bd 10 00        MOV        BP,0x10
       1000:4d53 e8 cf 8c        CALL       FUN_1000_da25                                    undefined FUN_1000_da25()
                             LAB_1000_4d56                                   XREF[5]:     1000:4d16(j), 1000:4d1d(j), 
                                                                                          1000:4d26(j), 1000:4d2a(j), 
                                                                                          1000:4d41(j)  
       1000:4d56 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_4d57(void);
                             //
                             // Input/Output Parameters:
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             undefined FUN_1000_4d57()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4d57                                   XREF[2]:     FUN_1000_4d06:1000:4d34(c), 
                                                                                          FUN_1000_4d06:1000:4d4a(c)  
       1000:4d57 b0 31           MOV        AL,0x31
       1000:4d59 ba 05 00        MOV        DX,0x5
       1000:4d5c d0 e7           SHL        BH,0x1
       1000:4d5e d0 e7           SHL        BH,0x1
       1000:4d60 02 d7           ADD        DL,BH
       1000:4d62 bb 29 00        MOV        BX,0x29
       1000:4d65 33 ed           XOR        BP,BP
       1000:4d67 33 c9           XOR        CX,CX
       1000:4d69 e9 26 ff        JMP        FUN_1000_4c92                                    undefined FUN_1000_4c92()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_4d6c(void);
                             //
                             // Input Parameters:
                             //   CS (uint16_t): Segment register input value
                             //   SS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xaa6e]
                             //   Read from: word ptr CS:[DAT_1000_0167]
                             //   Write to: word ptr [0xaa6e]
                             //   Write to: word ptr [0xaa6e]
                             //
                             undefined __cdecl16near FUN_1000_4d6c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4d6c                                   XREF[1]:     FUN_1000_4aeb:1000:4af4(c)  
       1000:4d6c 8b 36 6e aa     MOV        SI,word ptr [0xaa6e]
       1000:4d70 2e 80 3c ff     CMP        byte ptr CS:[SI],0xff
       1000:4d74 75 0c           JNZ        LAB_1000_4d82
       1000:4d76 2e 8b 36        MOV        SI,word ptr CS:[DAT_1000_0167]
                 67 01
       1000:4d7b 2e 03 34        ADD        SI,word ptr CS:[SI]
       1000:4d7e 89 36 6e aa     MOV        word ptr [0xaa6e],SI
                             LAB_1000_4d82                                   XREF[1]:     1000:4d74(j)  
       1000:4d82 0e              PUSH       CS
       1000:4d83 1f              POP        DS
                             LAB_1000_4d84                                   XREF[1]:     1000:4d97(j)  
       1000:4d84 ac              LODSB      SI
       1000:4d85 32 e4           XOR        AH,AH
       1000:4d87 0a c0           OR         AL,AL
       1000:4d89 74 0e           JZ         LAB_1000_4d99
       1000:4d8b 3c 01           CMP        AL,0x1
       1000:4d8d 75 03           JNZ        LAB_1000_4d92
       1000:4d8f 8a e0           MOV        AH,AL
       1000:4d91 ac              LODSB      SI
                             LAB_1000_4d92                                   XREF[1]:     1000:4d8d(j)  
       1000:4d92 56              PUSH       SI
       1000:4d93 e8 0a 00        CALL       FUN_1000_4da0                                    undefined FUN_1000_4da0()
       1000:4d96 5e              POP        SI
       1000:4d97 eb eb           JMP        LAB_1000_4d84
                             LAB_1000_4d99                                   XREF[1]:     1000:4d89(j)  
       1000:4d99 16              PUSH       SS
       1000:4d9a 1f              POP        DS
       1000:4d9b 89 36 6e aa     MOV        word ptr [0xaa6e],SI
       1000:4d9f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4da0(void);
                             //
                             // Input Parameters:
                             //   SS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr SS:[0xdbda]
                             //
                             undefined __cdecl16near FUN_1000_4da0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4da0                                   XREF[1]:     FUN_1000_4d6c:1000:4d93(c)  
       1000:4da0 2d 02 00        SUB        AX,0x2
       1000:4da3 d1 e0           SHL        AX,0x1
       1000:4da5 8b e8           MOV        BP,AX
       1000:4da7 be 69 01        MOV        SI,0x169
       1000:4daa 2e 03 32        ADD        SI,word ptr CS:[BP + SI]
                             LAB_1000_4dad                                   XREF[1]:     1000:4dea(j)  
       1000:4dad ac              LODSB      SI
       1000:4dae 0a c0           OR         AL,AL
       1000:4db0 74 3a           JZ         LAB_1000_4dec
       1000:4db2 32 e4           XOR        AH,AH
       1000:4db4 8b e8           MOV        BP,AX
       1000:4db6 ac              LODSB      SI
       1000:4db7 8b d0           MOV        DX,AX
       1000:4db9 ac              LODSB      SI
       1000:4dba 8b d8           MOV        BX,AX
       1000:4dbc 36 03 16        ADD        DX,word ptr SS:[0xaa66]
                 66 aa
       1000:4dc1 36 03 1e        ADD        BX,word ptr SS:[0xaa68]
                 68 aa
       1000:4dc6 56              PUSH       SI
       1000:4dc7 1e              PUSH       DS
       1000:4dc8 4d              DEC        BP
       1000:4dc9 36 8e 06        MOV        ES,word ptr SS:[0xdbda]
                 da db
       1000:4dce 36 c5 36        LDS        SI,SS:[0xdbb0]
                 b0 db
       1000:4dd3 d1 e5           SHL        BP,0x1
       1000:4dd5 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:4dd8 ad              LODSW      SI
       1000:4dd9 8b f8           MOV        DI,AX
       1000:4ddb ad              LODSW      SI
       1000:4ddc 32 e4           XOR        AH,AH
       1000:4dde 8b c8           MOV        CX,AX
       1000:4de0 bd 66 aa        MOV        BP,0xaa66
       1000:4de3 36 ff 1e        CALLF      [0x38cd]
                 cd 38
       1000:4de8 1f              POP        DS
       1000:4de9 5e              POP        SI
       1000:4dea eb c1           JMP        LAB_1000_4dad
                             LAB_1000_4dec                                   XREF[1]:     1000:4db0(j)  
       1000:4dec c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_4ded(uint16_t di);
                             //
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CH (uint8_t): 8-bit output value in CH register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x14]
                             //   Write to: word ptr [0x4733]
                             //
                             undefined __cdecl16near FUN_1000_4ded()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4ded                                   XREF[1]:     FUN_1000_4e12:1000:4e73(c)  
       1000:4ded 33 c9           XOR        CX,CX
       1000:4def bd 04 4e        MOV        BP,0x4e04
       1000:4df2 56              PUSH       SI
       1000:4df3 e8 27 18        CALL       FUN_1000_661d                                    undefined FUN_1000_661d()
       1000:4df6 8a 6d 14        MOV        CH,byte ptr [DI + 0x14]
       1000:4df9 89 0e 33 47     MOV        word ptr [0x4733],CX
       1000:4dfd 06              PUSH       ES
       1000:4dfe e8 26 31        CALL       FUN_1000_7f27                                    undefined FUN_1000_7f27()
       1000:4e01 07              POP        ES
       1000:4e02 5e              POP        SI
       1000:4e03 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4e12(uint16_t si);
                             //
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x2]
                             //   Read from: [0x196a]
                             //   Read from: word ptr [0x4733]
                             //   Write to: word ptr [0x4733]
                             //   Write to: word ptr [0x196a]
                             //   Write to: [0x1968]
                             //
                             undefined __cdecl16near FUN_1000_4e12()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4e12                                   XREF[1]:     FUN_1000_37eb:1000:37ee(c)  
       1000:4e12 c7 06 33        MOV        word ptr [0x4733],0x0
                 47 00 00
       1000:4e18 e8 63 f2        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:4e1b e8 14 67        CALL       FUN_1000_b532                                    undefined FUN_1000_b532()
       1000:4e1e 50              PUSH       AX
       1000:4e1f e8 a4 00        CALL       FUN_1000_4ec6                                    undefined FUN_1000_4ec6()
       1000:4e22 c7 06 6a        MOV        word ptr [0x196a],0x0
                 19 00 00
       1000:4e28 58              POP        AX
       1000:4e29 a8 40           TEST       AL,0x40
       1000:4e2b 74 4b           JZ         LAB_1000_4e78
       1000:4e2d e8 6a f2        CALL       FUN_1000_409a                                    undefined FUN_1000_409a()
       1000:4e30 75 46           JNZ        LAB_1000_4e78
       1000:4e32 80 3e 06        CMP        byte ptr [0x6],0x80
                 00 80
       1000:4e37 74 3f           JZ         LAB_1000_4e78
       1000:4e39 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:4e3c 2b c2           SUB        AX,DX
       1000:4e3e 05 04 00        ADD        AX,0x4
       1000:4e41 3d 08 00        CMP        AX,0x8
       1000:4e44 73 32           JNC        LAB_1000_4e78
       1000:4e46 a3 68 19        MOV        [0x1968],AX
       1000:4e49 40              INC        AX
       1000:4e4a a3 64 19        MOV        [0x1964],AX
       1000:4e4d 2d 02 00        SUB        AX,0x2
       1000:4e50 a3 60 19        MOV        [0x1960],AX
       1000:4e53 33 c0           XOR        AX,AX
       1000:4e55 e8 f7 0f        CALL       FUN_1000_5e4f                                    undefined FUN_1000_5e4f()
       1000:4e58 bb 6d 19        MOV        BX,0x196d
       1000:4e5b d7              XLAT       BX
       1000:4e5c 3c 13           CMP        AL,0x13
       1000:4e5e 72 0e           JC         LAB_1000_4e6e
       1000:4e60 80 e9 28        SUB        CL,0x28
       1000:4e63 80 e1 fb        AND        CL,0xfb
       1000:4e66 02 c1           ADD        AL,CL
       1000:4e68 3c 17           CMP        AL,0x17
       1000:4e6a 72 02           JC         LAB_1000_4e6e
       1000:4e6c b0 17           MOV        AL,0x17
                             LAB_1000_4e6e                                   XREF[2]:     1000:4e5e(j), 1000:4e6a(j)  
       1000:4e6e a3 6a 19        MOV        [0x196a],AX
       1000:4e71 87 f7           XCHG       DI,SI
       1000:4e73 e8 77 ff        CALL       FUN_1000_4ded                                    undefined FUN_1000_4ded()
       1000:4e76 87 f7           XCHG       DI,SI
                             LAB_1000_4e78                                   XREF[4]:     1000:4e2b(j), 1000:4e30(j), 
                                                                                          1000:4e37(j), 1000:4e44(j)  
       1000:4e78 a1 6a 19        MOV        AX,[0x196a]
       1000:4e7b 0b c0           OR         AX,AX
       1000:4e7d 74 0d           JZ         LAB_1000_4e8c
       1000:4e7f 8b 0e 33 47     MOV        CX,word ptr [0x4733]
       1000:4e83 8a 0e ff 46     MOV        CL,byte ptr [0x46ff]
       1000:4e87 32 ed           XOR        CH,CH
       1000:4e89 e3 01           JCXZ       LAB_1000_4e8c
       1000:4e8b 90              NOP
                             LAB_1000_4e8c                                   XREF[2]:     1000:4e7d(j), 1000:4e89(j)  
       1000:4e8c c3              RET
                             LAB_1000_4e8e                                   XREF[1]:     1000:4fad(j)  
       1000:4e8e 8b 16 04 00     MOV        DX,word ptr [0x4]
       1000:4e92 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:4e96 ff 36 cc 11     PUSH       word ptr [0x11cc]
       1000:4e9a e8 69 03        CALL       FUN_1000_5206                                    undefined FUN_1000_5206()
       1000:4e9d e8 66 03        CALL       FUN_1000_5206                                    undefined FUN_1000_5206()
       1000:4ea0 e8 63 03        CALL       FUN_1000_5206                                    undefined FUN_1000_5206()
       1000:4ea3 e8 60 03        CALL       FUN_1000_5206                                    undefined FUN_1000_5206()
       1000:4ea6 e8 5d 03        CALL       FUN_1000_5206                                    undefined FUN_1000_5206()
       1000:4ea9 e8 5a 03        CALL       FUN_1000_5206                                    undefined FUN_1000_5206()
       1000:4eac e8 83 66        CALL       FUN_1000_b532                                    undefined FUN_1000_b532()
       1000:4eaf 50              PUSH       AX
       1000:4eb0 e8 53 03        CALL       FUN_1000_5206                                    undefined FUN_1000_5206()
       1000:4eb3 58              POP        AX
       1000:4eb4 8f 06 cc 11     POP        word ptr [0x11cc]
       1000:4eb8 50              PUSH       AX
       1000:4eb9 e8 76 66        CALL       FUN_1000_b532                                    undefined FUN_1000_b532()
       1000:4ebc 50              PUSH       AX
       1000:4ebd e8 21 f3        CALL       FUN_1000_41e1                                    undefined FUN_1000_41e1()
       1000:4ec0 58              POP        AX
       1000:4ec1 5b              POP        BX
       1000:4ec2 02 c3           ADD        AL,BL
       1000:4ec4 d0 e8           SHR        AL,0x1
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_4ec6(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x487e]
                             //   Read from: [0xdc00]
                             //   Write to: word ptr [0x487e]
                             //   Write to: word ptr [0xdc02]
                             //   Write to: word ptr [0xdc02]
                             //
                             undefined __cdecl16near FUN_1000_4ec6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4ec6                                   XREF[2]:     FUN_1000_488a:1000:48a8(c), 
                                                                                          FUN_1000_4e12:1000:4e1f(c)  
       1000:4ec6 53              PUSH       BX
       1000:4ec7 8b 1e 7e 48     MOV        BX,word ptr [0x487e]
       1000:4ecb 83 fb 02        CMP        BX,0x2
       1000:4ece 72 1d           JC         LAB_1000_4eed
       1000:4ed0 24 0f           AND        AL,0xf
       1000:4ed2 3c 08           CMP        AL,0x8
       1000:4ed4 a1 00 dc        MOV        AX,[0xdc00]
       1000:4ed7 73 1a           JNC        LAB_1000_4ef3
       1000:4ed9 3d 02 00        CMP        AX,0x2
       1000:4edc 76 0f           JBE        LAB_1000_4eed
       1000:4ede bb 05 00        MOV        BX,0x5
       1000:4ee1 3d 04 00        CMP        AX,0x4
       1000:4ee4 76 07           JBE        LAB_1000_4eed
       1000:4ee6 bb 02 00        MOV        BX,0x2
       1000:4ee9 89 1e 7e 48     MOV        word ptr [0x487e],BX
                             LAB_1000_4eed                                   XREF[3]:     1000:4ece(j), 1000:4edc(j), 
                                                                                          1000:4ee4(j)  
       1000:4eed 89 1e 02 dc     MOV        word ptr [0xdc02],BX
       1000:4ef1 5b              POP        BX
       1000:4ef2 c3              RET
                             LAB_1000_4ef3                                   XREF[1]:     1000:4ed7(j)  
       1000:4ef3 bb 03 00        MOV        BX,0x3
       1000:4ef6 3d 02 00        CMP        AX,0x2
       1000:4ef9 76 08           JBE        LAB_1000_4f03
       1000:4efb 3d 05 00        CMP        AX,0x5
       1000:4efe 74 03           JZ         LAB_1000_4f03
       1000:4f00 bb 04 00        MOV        BX,0x4
                             LAB_1000_4f03                                   XREF[2]:     1000:4ef9(j), 1000:4efe(j)  
       1000:4f03 89 1e 02 dc     MOV        word ptr [0xdc02],BX
       1000:4f07 5b              POP        BX
       1000:4f08 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_4f0c(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0xce7a]
                             //   Read from: [0xce7a]
                             //   Read from: word ptr [0x11c5]
                             //   Write to: word ptr [0x1c06]
                             //   Write to: [0x4729]
                             //   Write to: byte ptr [0x4728]
                             //
                             undefined __cdecl16near FUN_1000_4f0c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_4f0c                                   XREF[1]:     FUN_1000_d815:1000:d851(c)  
       1000:4f0c 80 3e 27        CMP        byte ptr [0x4727],0x0
                 47 00
       1000:4f11 74 20           JZ         LAB_1000_4f33
       1000:4f13 80 3e ca        CMP        byte ptr [0x11ca],0x0
                 11 00
       1000:4f18 75 19           JNZ        LAB_1000_4f33
       1000:4f1a c7 06 06        MOV        word ptr [0x1c06],0x80
                 1c 80 00
       1000:4f20 b8 ec db        MOV        AX,0xdbec
       1000:4f23 50              PUSH       AX
       1000:4f24 e8 39 7b        CALL       FUN_1000_ca60                                    undefined FUN_1000_ca60()
       1000:4f27 a1 7a ce        MOV        AX,[0xce7a]
       1000:4f2a 2b 06 29 47     SUB        AX,word ptr [0x4729]
       1000:4f2e 3d 00 03        CMP        AX,0x300
       1000:4f31 73 01           JNC        LAB_1000_4f34
                             LAB_1000_4f33                                   XREF[3]:     1000:4f11(j), 1000:4f18(j), 
                                                                                          1000:4f5a(j)  
       1000:4f33 c3              RET
                             LAB_1000_4f34                                   XREF[1]:     1000:4f31(j)  
       1000:4f34 a1 7a ce        MOV        AX,[0xce7a]
       1000:4f37 a3 29 47        MOV        [0x4729],AX
       1000:4f3a e8 fe fb        CALL       FUN_1000_4b3b                                    undefined FUN_1000_4b3b()
       1000:4f3d e8 da fa        CALL       FUN_1000_4a1a                                    undefined FUN_1000_4a1a()
       1000:4f40 e8 3b f1        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:4f43 e8 ba fa        CALL       FUN_1000_4a00                                    undefined FUN_1000_4a00()
       1000:4f46 e8 42 66        CALL       FUN_1000_b58b                                    undefined FUN_1000_b58b()
       1000:4f49 8b 36 c5 11     MOV        SI,word ptr [0x11c5]
       1000:4f4d 3b 7c 06        CMP        DI,word ptr [SI + 0x6]
       1000:4f50 74 5e           JZ         LAB_1000_4fb0
       1000:4f52 e8 fd de        CALL       FUN_1000_2e52                                    undefined FUN_1000_2e52()
       1000:4f55 80 3e a7        CMP        byte ptr [0x47a7],0x0
                 47 00
       1000:4f5a 75 d7           JNZ        LAB_1000_4f33
       1000:4f5c 80 3e 28        CMP        byte ptr [0x4728],0x0
                 47 00
       1000:4f61 78 4a           JS         LAB_1000_4fad
       1000:4f63 74 0b           JZ         LAB_1000_4f70
       1000:4f65 c6 06 28        MOV        byte ptr [0x4728],0x0
                 47 00
       1000:4f6a e8 f0 0b        CALL       FUN_1000_5b5d                                    undefined FUN_1000_5b5d()
       1000:4f6d e8 69 fa        CALL       FUN_1000_49d9                                    undefined FUN_1000_49d9()
                             LAB_1000_4f70                                   XREF[1]:     1000:4f63(j)  
       1000:4f70 e8 0b f1        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:4f73 e8 60 13        CALL       FUN_1000_62d6                                    undefined FUN_1000_62d6()
       1000:4f76 72 35           JC         LAB_1000_4fad
       1000:4f78 81 fa d6 00     CMP        DX,0xd6
       1000:4f7c 7c 10           JL         LAB_1000_4f8e
       1000:4f7e 83 fb 0a        CMP        BX,0xa
       1000:4f81 7c 0b           JL         LAB_1000_4f8e
       1000:4f83 81 fa 32 01     CMP        DX,0x132
       1000:4f87 7d 05           JGE        LAB_1000_4f8e
       1000:4f89 83 fb 36        CMP        BX,0x36
       1000:4f8c 7c 07           JL         LAB_1000_4f95
                             LAB_1000_4f8e                                   XREF[3]:     1000:4f7c(j), 1000:4f81(j), 
                                                                                          1000:4f87(j)  
       1000:4f8e c6 06 28        MOV        byte ptr [0x4728],0x1
                 47 01
       1000:4f93 eb 18           JMP        LAB_1000_4fad
                             LAB_1000_4f95                                   XREF[1]:     1000:4f8c(j)  
       1000:4f95 80 3e ca        CMP        byte ptr [0x11ca],0x0
                 11 00
       1000:4f9a 75 11           JNZ        LAB_1000_4fad
       1000:4f9c 4b              DEC        BX
       1000:4f9d 4a              DEC        DX
       1000:4f9e e8 96 71        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:4fa1 b8 30 00        MOV        AX,0x30
       1000:4fa4 e8 de 70        CALL       FUN_1000_c085                                    undefined FUN_1000_c085()
       1000:4fa7 e8 85 72        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:4faa e8 cf 70        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             LAB_1000_4fad                                   XREF[4]:     1000:4f61(j), 1000:4f76(j), 
                                                                                          1000:4f93(j), 1000:4f9a(j)  
       1000:4fad e9 de fe        JMP        LAB_1000_4e8e
                             LAB_1000_4fb0                                   XREF[1]:     1000:4f50(j)  
       1000:4fb0 c7 06 06        MOV        word ptr [0x1c06],0x0
                 1c 00 00
       1000:4fb6 a0 c9 11        MOV        AL,[0x11c9]
       1000:4fb9 24 01           AND        AL,0x1
       1000:4fbb a2 32 47        MOV        [0x4732],AL
       1000:4fbe 75 03           JNZ        LAB_1000_4fc3
       1000:4fc0 e8 3e 7a        CALL       FUN_1000_ca01                                    undefined FUN_1000_ca01()
                             LAB_1000_4fc3                                   XREF[1]:     1000:4fbe(j)  
       1000:4fc3 e8 06 94        CALL       FUN_1000_e3cc                                    undefined FUN_1000_e3cc()
       1000:4fc6 a2 c5 00        MOV        [0xc5],AL
       1000:4fc9 32 c0           XOR        AL,AL
       1000:4fcb a2 27 47        MOV        [0x4727],AL
       1000:4fce 86 06 c9 11     XCHG       byte ptr [0x11c9],AL
       1000:4fd2 24 03           AND        AL,0x3
       1000:4fd4 fe c8           DEC        AL
       1000:4fd6 75 07           JNZ        LAB_1000_4fdf
       1000:4fd8 8b 3e c5 11     MOV        DI,word ptr [0x11c5]
       1000:4fdc fe 45 15        INC        byte ptr [DI + 0x15]
                             LAB_1000_4fdf                                   XREF[1]:     1000:4fd6(j)  
       1000:4fdf e8 e2 fa        CALL       FUN_1000_4ac4                                    undefined FUN_1000_4ac4()
       1000:4fe2 e8 cd 8b        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:4fe5 e8 2f 87        CALL       FUN_1000_d717                                    undefined FUN_1000_d717()
       1000:4fe8 8b 3e c5 11     MOV        DI,word ptr [0x11c5]
       1000:4fec 8b 5d 04        MOV        BX,word ptr [DI + 0x4]
       1000:4fef 8b 55 02        MOV        DX,word ptr [DI + 0x2]
       1000:4ff2 c7 06 c5        MOV        word ptr [0x11c5],0x0
                 11 00 00
       1000:4ff8 e9 07 f0        JMP        LAB_1000_4002
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_503c(uint16_t di);
                             //
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x8]
                             //   Write to: byte ptr [0xfd]
                             //   Write to: byte ptr [0x2b]
                             //   Write to: byte ptr [0x11dd]
                             //
                             undefined __cdecl16near FUN_1000_503c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_503c                                   XREF[2]:     FUN_1000_1bec:1000:1bf7(c), 
                                                                                          FUN_1000_3f15:1000:402e(c)  
       1000:503c c6 06 fd        MOV        byte ptr [0xfd],0x0
                 00 00
       1000:5041 c6 06 2b        MOV        byte ptr [0x2b],0x0
                 00 00
       1000:5046 f6 45 0a 02     TEST       byte ptr [DI + 0xa],0x2
       1000:504a 75 0c           JNZ        LAB_1000_5058
       1000:504c e8 e7 0c        CALL       FUN_1000_5d36                                    undefined FUN_1000_5d36()
       1000:504f 72 30           JC         LAB_1000_5081
       1000:5051 e8 44 00        CALL       FUN_1000_5098                                    undefined FUN_1000_5098()
       1000:5054 0b d2           OR         DX,DX
       1000:5056 74 22           JZ         LAB_1000_507a
                             LAB_1000_5058                                   XREF[1]:     1000:504a(j)  
       1000:5058 fe 06 2b 00     INC        byte ptr [0x2b]
       1000:505c e8 e5 10        CALL       FUN_1000_6144                                    undefined FUN_1000_6144()
       1000:505f 8a 45 08        MOV        AL,byte ptr [DI + 0x8]
       1000:5062 b4 2f           MOV        AH,0x2f
       1000:5064 3c 20           CMP        AL,0x20
       1000:5066 72 0d           JC         LAB_1000_5075
       1000:5068 fe c4           INC        AH
       1000:506a 3c 30           CMP        AL,0x30
       1000:506c 74 07           JZ         LAB_1000_5075
       1000:506e 2c 28           SUB        AL,0x28
       1000:5070 72 03           JC         LAB_1000_5075
       1000:5072 80 c4 03        ADD        AH,0x3
                             LAB_1000_5075                                   XREF[3]:     1000:5066(j), 1000:506c(j), 
                                                                                          1000:5070(j)  
       1000:5075 88 26 dd 11     MOV        byte ptr [0x11dd],AH
       1000:5079 c3              RET
                             LAB_1000_507a                                   XREF[1]:     1000:5056(j)  
       1000:507a e3 05           JCXZ       LAB_1000_5081
       1000:507c c6 06 d9        MOV        byte ptr [0x46d9],0x4
                 46 04
                             LAB_1000_5081                                   XREF[2]:     1000:504f(j), 1000:507a(j)  
       1000:5081 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5098(void);
                             //
                             // Input/Output Parameters:
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             undefined FUN_1000_5098()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5098                                   XREF[2]:     FUN_1000_503c:1000:5051(c), 
                                                                                          FUN_1000_627e:1000:628c(c)  
       1000:5098 bd 82 50        MOV        BP,0x5082
       1000:509b 33 c9           XOR        CX,CX
       1000:509d 33 d2           XOR        DX,DX
       1000:509f e9 61 15        JMP        FUN_1000_6603                                    undefined FUN_1000_6603()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_50be(void);
                             //
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x11cb]
                             //
                             undefined __cdecl16near FUN_1000_50be()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_50be                                   XREF[1]:     FUN_1000_4944:1000:4944(c)  
       1000:50be c6 06 cb        MOV        byte ptr [0x11cb],0x0
                 11 00
       1000:50c3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5119(void);
                             //
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x11cc]
                             //
                             undefined __cdecl16near FUN_1000_5119()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5119                                   XREF[1]:     FUN_1000_4944:1000:4977(c)  
       1000:5119 00 06 c7 11     ADD        byte ptr [0x11c7],AL
       1000:511d c7 06 cc        MOV        word ptr [0x11cc],0x80
                 11 80 00
       1000:5123 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5124(void);
                             //
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [DI + 0x4]
                             //   Read from: word ptr [DI + 0x2]
                             //
                             undefined __cdecl16near FUN_1000_5124()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5124                                   XREF[4]:     FUN_1000_40f9:1000:4135(c), 
                                                                                          FUN_1000_41e1:1000:4223(c), 
                                                                                          FUN_1000_4944:1000:4965(c), 
                                                                                          FUN_1000_51cb:1000:51fb(c)  
       1000:5124 57              PUSH       DI
       1000:5125 e8 56 ef        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:5128 8b 4d 04        MOV        CX,word ptr [DI + 0x4]
       1000:512b 8b 7d 02        MOV        DI,word ptr [DI + 0x2]
       1000:512e e8 02 00        CALL       FUN_1000_5133                                    undefined FUN_1000_5133()
       1000:5131 5f              POP        DI
       1000:5132 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_5133(void);
                             //
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BH (uint8_t): 8-bit output value in BH register
                             //
                             undefined __cdecl16near FUN_1000_5133()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5133                                   XREF[3]:     FUN_1000_4944:1000:495a(c), 
                                                                                          FUN_1000_5124:1000:512e(c), 
                                                                                          FUN_1000_5323:1000:532f(c)  
       1000:5133 2b d9           SUB        BX,CX
       1000:5135 f7 db           NEG        BX
       1000:5137 2b d7           SUB        DX,DI
       1000:5139 f7 da           NEG        DX
       1000:513b 83 fb 80        CMP        BX,-0x80
       1000:513e 7c 06           JL         LAB_1000_5146
       1000:5140 81 fb 80 00     CMP        BX,0x80
       1000:5144 7c 04           JL         LAB_1000_514a
                             LAB_1000_5146                                   XREF[1]:     1000:513e(j)  
       1000:5146 d1 fb           SAR        BX,0x1
       1000:5148 d1 fa           SAR        DX,0x1
                             LAB_1000_514a                                   XREF[1]:     1000:5144(j)  
       1000:514a 8a fb           MOV        BH,BL
       1000:514c 32 db           XOR        BL,BL
       1000:514e 0b db           OR         BX,BX
       1000:5150 8b c3           MOV        AX,BX
       1000:5152 79 02           JNS        LAB_1000_5156
       1000:5154 f7 d8           NEG        AX
                             LAB_1000_5156                                   XREF[1]:     1000:5152(j)  
       1000:5156 0b d2           OR         DX,DX
       1000:5158 8b fa           MOV        DI,DX
       1000:515a 8b ca           MOV        CX,DX
       1000:515c 79 02           JNS        LAB_1000_5160
       1000:515e f7 d9           NEG        CX
                             LAB_1000_5160                                   XREF[1]:     1000:515c(j)  
       1000:5160 3b c8           CMP        CX,AX
       1000:5162 72 1c           JC         LAB_1000_5180
       1000:5164 83 f9 01        CMP        CX,0x1
       1000:5167 72 16           JC         LAB_1000_517f
       1000:5169 b8 20 00        MOV        AX,0x20
       1000:516c 8b ca           MOV        CX,DX
       1000:516e f7 eb           IMUL       BX
       1000:5170 f7 f9           IDIV       CX
       1000:5172 8b d7           MOV        DX,DI
       1000:5174 0b c9           OR         CX,CX
       1000:5176 78 04           JS         LAB_1000_517c
       1000:5178 04 40           ADD        AL,0x40
       1000:517a f8              CLC
       1000:517b c3              RET
                             LAB_1000_517c                                   XREF[1]:     1000:5176(j)  
       1000:517c 04 c0           ADD        AL,0xc0
       1000:517e f8              CLC
                             LAB_1000_517f                                   XREF[2]:     1000:5167(j), 1000:5183(j)  
       1000:517f c3              RET
                             LAB_1000_5180                                   XREF[1]:     1000:5162(j)  
       1000:5180 3d 01 00        CMP        AX,0x1
       1000:5183 72 fa           JC         LAB_1000_517f
       1000:5185 b8 20 00        MOV        AX,0x20
       1000:5188 f7 ea           IMUL       DX
       1000:518a f7 fb           IDIV       BX
       1000:518c 8b d7           MOV        DX,DI
       1000:518e 0b db           OR         BX,BX
       1000:5190 78 02           JS         LAB_1000_5194
       1000:5192 2c 80           SUB        AL,0x80
                             LAB_1000_5194                                   XREF[1]:     1000:5190(j)  
       1000:5194 f6 d8           NEG        AL
       1000:5196 f8              CLC
       1000:5197 c3              RET