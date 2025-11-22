
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5198(uint16_t ax);
                             // C Signature: uint16_t FUN_1000_5198(uint16_t ax);
                             // Input Parameters:
                             //   AX (uint16_t): 16-bit input value in AX register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_5198()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5198                                   XREF[1]:     FUN_1000_5206:1000:5218(c)  
       1000:5198 8b d8           MOV        BX,AX
       1000:519a 80 c3 20        ADD        BL,0x20
       1000:519d 8a fb           MOV        BH,BL
       1000:519f 80 e7 7f        AND        BH,0x7f
       1000:51a2 80 ff 40        CMP        BH,0x40
       1000:51a5 72 13           JC         LAB_1000_51ba
       1000:51a7 ba 20 00        MOV        DX,0x20
       1000:51aa 2c 40           SUB        AL,0x40
       1000:51ac 0a db           OR         BL,BL
       1000:51ae 79 06           JNS        LAB_1000_51b6
       1000:51b0 f7 da           NEG        DX
       1000:51b2 2c 80           SUB        AL,0x80
       1000:51b4 f6 d8           NEG        AL
                             LAB_1000_51b6                                   XREF[1]:     1000:51ae(j)  
       1000:51b6 98              CBW
       1000:51b7 8b d8           MOV        BX,AX
       1000:51b9 c3              RET
                             LAB_1000_51ba                                   XREF[1]:     1000:51a5(j)  
       1000:51ba 0a db           OR         BL,BL
       1000:51bc bb e0 ff        MOV        BX,0xffe0
       1000:51bf 79 06           JNS        LAB_1000_51c7
       1000:51c1 2c 80           SUB        AL,0x80
       1000:51c3 f6 d8           NEG        AL
       1000:51c5 f7 db           NEG        BX
                             LAB_1000_51c7                                   XREF[1]:     1000:51bf(j)  
       1000:51c7 98              CBW
       1000:51c8 8b d0           MOV        DX,AX
       1000:51ca c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_51cb(uint8_t bh);
                             // C Signature: uint16_t FUN_1000_51cb(uint8_t bh);
                             // Input Parameters:
                             //   BH (uint8_t): 8-bit input value in BH register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: [0x11c7]
                             //   Read from: word ptr [0x11c5]
                             //   Write to: [0x11c7]
                             //
                             undefined __cdecl16near FUN_1000_51cb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_51cb                                   XREF[1]:     FUN_1000_5206:1000:5206(c)  
       1000:51cb 80 3e cb        CMP        byte ptr [0x11cb],0x0
                 11 00
       1000:51d0 75 07           JNZ        LAB_1000_51d9
       1000:51d2 80 3e c8        CMP        byte ptr [0x11c8],0x0
                 11 00
       1000:51d7 74 1c           JZ         LAB_1000_51f5
                             LAB_1000_51d9                                   XREF[1]:     1000:51d0(j)  
       1000:51d9 83 fb b3        CMP        BX,-0x4d
       1000:51dc 7c 05           JL         LAB_1000_51e3
       1000:51de 83 fb 4d        CMP        BX,0x4d
       1000:51e1 7e 22           JLE        LAB_1000_5205
                             LAB_1000_51e3                                   XREF[1]:     1000:51dc(j)  
       1000:51e3 a0 c7 11        MOV        AL,[0x11c7]
       1000:51e6 8a e0           MOV        AH,AL
       1000:51e8 80 ec 40        SUB        AH,0x40
       1000:51eb 32 e7           XOR        AH,BH
       1000:51ed 78 16           JS         LAB_1000_5205
       1000:51ef 24 80           AND        AL,0x80
       1000:51f1 0c 40           OR         AL,0x40
       1000:51f3 eb 0d           JMP        LAB_1000_5202
                             LAB_1000_51f5                                   XREF[1]:     1000:51d7(j)  
       1000:51f5 8b 3e c5 11     MOV        DI,word ptr [0x11c5]
       1000:51f9 53              PUSH       BX
       1000:51fa 52              PUSH       DX
       1000:51fb e8 26 ff        CALL       FUN_1000_5124                                    undefined FUN_1000_5124()
       1000:51fe 5a              POP        DX
       1000:51ff 5b              POP        BX
       1000:5200 72 03           JC         LAB_1000_5205
                             LAB_1000_5202                                   XREF[1]:     1000:51f3(j)  
       1000:5202 a2 c7 11        MOV        [0x11c7],AL
                             LAB_1000_5205                                   XREF[3]:     1000:51e1(j), 1000:51ed(j), 
                                                                                          1000:5200(j)  
       1000:5205 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_5206(void);
                             // C Signature: uint32_t FUN_1000_5206(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DL (uint8_t): 8-bit output value in DL register
                             //
                             // Memory Access:
                             //   Read from: [0x11c7]
                             //   Read from: word ptr [BX + 0x4880]
                             //   Write to: [0x11cc]
                             //
                             undefined __cdecl16near FUN_1000_5206()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5206                                   XREF[8]:     FUN_1000_4b3b:1000:4b50(c), 
                                                                                          FUN_1000_4f0c:1000:4e9a(c), 
                                                                                          FUN_1000_4f0c:1000:4e9d(c), 
                                                                                          FUN_1000_4f0c:1000:4ea0(c), 
                                                                                          FUN_1000_4f0c:1000:4ea3(c), 
                                                                                          FUN_1000_4f0c:1000:4ea6(c), 
                                                                                          FUN_1000_4f0c:1000:4ea9(c), 
                                                                                          FUN_1000_4f0c:1000:4eb0(c)  
       1000:5206 e8 c2 ff        CALL       FUN_1000_51cb                                    undefined FUN_1000_51cb()
       1000:5209 a0 c7 11        MOV        AL,[0x11c7]
       1000:520c 52              PUSH       DX
       1000:520d 53              PUSH       BX
       1000:520e d1 e3           SHL        BX,0x1
       1000:5210 79 02           JNS        LAB_1000_5214
       1000:5212 f7 db           NEG        BX
                             LAB_1000_5214                                   XREF[1]:     1000:5210(j)  
       1000:5214 8b af 80 48     MOV        BP,word ptr [BX + 0x4880]
       1000:5218 e8 7d ff        CALL       FUN_1000_5198                                    undefined FUN_1000_5198()
       1000:521b b9 20 00        MOV        CX,0x20
       1000:521e 8b c5           MOV        AX,BP
       1000:5220 f7 ea           IMUL       DX
       1000:5222 f7 f9           IDIV       CX
       1000:5224 93              XCHG       AX,BX
       1000:5225 f7 ed           IMUL       BP
       1000:5227 f7 f9           IDIV       CX
       1000:5229 8b d3           MOV        DX,BX
       1000:522b 8b d8           MOV        BX,AX
       1000:522d 0b c0           OR         AX,AX
       1000:522f 79 02           JNS        LAB_1000_5233
       1000:5231 f7 d8           NEG        AX
                             LAB_1000_5233                                   XREF[1]:     1000:522f(j)  
       1000:5233 03 06 cc 11     ADD        AX,word ptr [0x11cc]
       1000:5237 80 fc 01        CMP        AH,0x1
       1000:523a 76 12           JBE        LAB_1000_524e
       1000:523c 8b c8           MOV        CX,AX
       1000:523e 8b c2           MOV        AX,DX
       1000:5240 99              CWD
       1000:5241 8a d4           MOV        DL,AH
       1000:5243 8a e0           MOV        AH,AL
       1000:5245 32 c0           XOR        AL,AL
       1000:5247 f7 f9           IDIV       CX
       1000:5249 8b d0           MOV        DX,AX
       1000:524b b8 00 01        MOV        AX,0x100
                             LAB_1000_524e                                   XREF[1]:     1000:523a(j)  
       1000:524e a2 cc 11        MOV        [0x11cc],AL
       1000:5251 8a c4           MOV        AL,AH
       1000:5253 98              CBW
       1000:5254 0b db           OR         BX,BX
       1000:5256 79 02           JNS        LAB_1000_525a
       1000:5258 f7 d8           NEG        AX
                             LAB_1000_525a                                   XREF[1]:     1000:5256(j)  
       1000:525a 5b              POP        BX
       1000:525b 03 d8           ADD        BX,AX
       1000:525d 58              POP        AX
       1000:525e 03 d0           ADD        DX,AX
       1000:5260 8b c3           MOV        AX,BX
       1000:5262 05 60 00        ADD        AX,0x60
       1000:5265 3d c0 00        CMP        AX,0xc0
       1000:5268 72 09           JC         LAB_1000_5273
       1000:526a 80 06 c7        ADD        byte ptr [0x11c7],0x80
                 11 80
       1000:526f 81 c2 00 80     ADD        DX,0x8000
                             LAB_1000_5273                                   XREF[1]:     1000:5268(j)  
       1000:5273 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_5274(void);
                             // C Signature: uint32_t FUN_1000_5274(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [DI + 0x2]
                             //   Read from: word ptr [DI + 0x4]
                             //   Read from: word ptr [SI + 0x2]
                             //   Write to: [0xca]
                             //   Write to: [0xd0]
                             //   Write to: [0xd6]
                             //
                             undefined __cdecl16near FUN_1000_5274()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5274                                   XREF[1]:     FUN_1000_331e:1000:3380(c)  
       1000:5274 8b 55 02        MOV        DX,word ptr [DI + 0x2]
       1000:5277 8b 5d 04        MOV        BX,word ptr [DI + 0x4]
       1000:527a 56              PUSH       SI
       1000:527b b8 ff ff        MOV        AX,0xffff
       1000:527e a3 ca 00        MOV        [0xca],AX
       1000:5281 a3 d0 00        MOV        [0xd0],AX
       1000:5284 a3 d6 00        MOV        [0xd6],AX
       1000:5287 a3 dc 00        MOV        [0xdc],AX
       1000:528a a3 e2 00        MOV        [0xe2],AX
       1000:528d be 00 01        MOV        SI,0x100
                             LAB_1000_5290                                   XREF[1]:     1000:52f9(j)  
       1000:5290 83 3c ff        CMP        word ptr [SI],-0x1
       1000:5293 74 66           JZ         LAB_1000_52fb
       1000:5295 3b f7           CMP        SI,DI
       1000:5297 74 5d           JZ         LAB_1000_52f6
       1000:5299 8b 4c 02        MOV        CX,word ptr [SI + 0x2]
       1000:529c 2b ca           SUB        CX,DX
       1000:529e 79 02           JNS        LAB_1000_52a2
       1000:52a0 f7 d9           NEG        CX
                             LAB_1000_52a2                                   XREF[1]:     1000:529e(j)  
       1000:52a2 8b 44 04        MOV        AX,word ptr [SI + 0x4]
       1000:52a5 2b c3           SUB        AX,BX
       1000:52a7 79 02           JNS        LAB_1000_52ab
       1000:52a9 f7 d8           NEG        AX
                             LAB_1000_52ab                                   XREF[1]:     1000:52a7(j)  
       1000:52ab 8a cd           MOV        CL,CH
       1000:52ad 32 ed           XOR        CH,CH
       1000:52af 3a c8           CMP        CL,AL
       1000:52b1 73 02           JNC        LAB_1000_52b5
       1000:52b3 8b c8           MOV        CX,AX
                             LAB_1000_52b5                                   XREF[1]:     1000:52b1(j)  
       1000:52b5 80 7c 08 28     CMP        byte ptr [SI + 0x8],0x28
       1000:52b9 72 0e           JC         LAB_1000_52c9
       1000:52bb bd e2 00        MOV        BP,0xe2
       1000:52be f6 44 0a 80     TEST       byte ptr [SI + 0xa],0x80
       1000:52c2 75 19           JNZ        LAB_1000_52dd
       1000:52c4 bd dc 00        MOV        BP,0xdc
       1000:52c7 eb 14           JMP        LAB_1000_52dd
                             LAB_1000_52c9                                   XREF[1]:     1000:52b9(j)  
       1000:52c9 bd d0 00        MOV        BP,0xd0
       1000:52cc f6 44 0a 80     TEST       byte ptr [SI + 0xa],0x80
       1000:52d0 74 0b           JZ         LAB_1000_52dd
       1000:52d2 a0 2a 00        MOV        AL,[0x2a]
       1000:52d5 3a 44 0b        CMP        AL,byte ptr [SI + 0xb]
       1000:52d8 72 1c           JC         LAB_1000_52f6
       1000:52da bd d6 00        MOV        BP,0xd6
                             LAB_1000_52dd                                   XREF[3]:     1000:52c2(j), 1000:52c7(j), 
                                                                                          1000:52d0(j)  
       1000:52dd 3b 4e 00        CMP        CX,word ptr [BP + 0x0]
       1000:52e0 73 06           JNC        LAB_1000_52e8
       1000:52e2 89 4e 00        MOV        word ptr [BP + 0x0],CX
       1000:52e5 89 76 02        MOV        word ptr [BP + 0x2],SI
                             LAB_1000_52e8                                   XREF[1]:     1000:52e0(j)  
       1000:52e8 3b 0e ca 00     CMP        CX,word ptr [0xca]
       1000:52ec 73 08           JNC        LAB_1000_52f6
       1000:52ee 89 0e ca 00     MOV        word ptr [0xca],CX
       1000:52f2 89 36 cc 00     MOV        word ptr [0xcc],SI
                             LAB_1000_52f6                                   XREF[3]:     1000:5297(j), 1000:52d8(j), 
                                                                                          1000:52ec(j)  
       1000:52f6 83 c6 1c        ADD        SI,0x1c
       1000:52f9 eb 95           JMP        LAB_1000_5290
                             LAB_1000_52fb                                   XREF[1]:     1000:5293(j)  
       1000:52fb 57              PUSH       DI
       1000:52fc bd de 00        MOV        BP,0xde
       1000:52ff e8 21 00        CALL       FUN_1000_5323                                    undefined FUN_1000_5323()
       1000:5302 bd e4 00        MOV        BP,0xe4
       1000:5305 e8 1b 00        CALL       FUN_1000_5323                                    undefined FUN_1000_5323()
       1000:5308 bd d8 00        MOV        BP,0xd8
       1000:530b e8 15 00        CALL       FUN_1000_5323                                    undefined FUN_1000_5323()
       1000:530e 05 da 00        ADD        AX,0xda
       1000:5311 a3 fd 11        MOV        [0x11fd],AX
       1000:5314 bd cc 00        MOV        BP,0xcc
       1000:5317 e8 09 00        CALL       FUN_1000_5323                                    undefined FUN_1000_5323()
       1000:531a bd d2 00        MOV        BP,0xd2
       1000:531d e8 03 00        CALL       FUN_1000_5323                                    undefined FUN_1000_5323()
       1000:5320 5f              POP        DI
       1000:5321 5e              POP        SI
       1000:5322 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_5323(void);
                             // C Signature: uint32_t FUN_1000_5323(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [BP + 0x0]
                             //   Read from: word ptr [DI + 0x4]
                             //   Read from: word ptr [DI + 0x2]
                             //   Write to: byte ptr [BP + 0x2]
                             //
                             undefined __cdecl16near FUN_1000_5323()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5323                                   XREF[5]:     FUN_1000_5274:1000:52ff(c), 
                                                                                          FUN_1000_5274:1000:5305(c), 
                                                                                          FUN_1000_5274:1000:530b(c), 
                                                                                          FUN_1000_5274:1000:5317(c), 
                                                                                          FUN_1000_5274:1000:531d(c)  
       1000:5323 53              PUSH       BX
       1000:5324 52              PUSH       DX
       1000:5325 8b 7e 00        MOV        DI,word ptr [BP + 0x0]
       1000:5328 8b 4d 04        MOV        CX,word ptr [DI + 0x4]
       1000:532b 8b 7d 02        MOV        DI,word ptr [DI + 0x2]
       1000:532e 55              PUSH       BP
       1000:532f e8 01 fe        CALL       FUN_1000_5133                                    undefined FUN_1000_5133()
       1000:5332 5d              POP        BP
       1000:5333 04 10           ADD        AL,0x10
       1000:5335 d0 c0           ROL        AL,0x1
       1000:5337 d0 c0           ROL        AL,0x1
       1000:5339 d0 c0           ROL        AL,0x1
       1000:533b 25 07 00        AND        AX,0x7
       1000:533e 88 46 02        MOV        byte ptr [BP + 0x2],AL
       1000:5341 5a              POP        DX
       1000:5342 5b              POP        BX
       1000:5343 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5344(uint8_t al, uint16_t bx, uint16_t dx);
                             // C Signature: uint16_t FUN_1000_5344(uint8_t al, uint16_t bx, uint16_t dx);
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x2]
                             //   Read from: word ptr [SI + 0x4]
                             //
                             undefined __cdecl16near FUN_1000_5344()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5344                                   XREF[1]:     FUN_1000_221d:1000:2221(c)  
       1000:5344 56              PUSH       SI
       1000:5345 bd ff ff        MOV        BP,0xffff
       1000:5348 be 00 01        MOV        SI,0x100
                             LAB_1000_534b                                   XREF[1]:     1000:537d(j)  
       1000:534b 83 3c ff        CMP        word ptr [SI],-0x1
       1000:534e 74 2f           JZ         LAB_1000_537f
       1000:5350 f6 44 0a 80     TEST       byte ptr [SI + 0xa],0x80
       1000:5354 75 24           JNZ        LAB_1000_537a
       1000:5356 8b 4c 02        MOV        CX,word ptr [SI + 0x2]
       1000:5359 2b ca           SUB        CX,DX
       1000:535b 79 02           JNS        LAB_1000_535f
       1000:535d f7 d9           NEG        CX
                             LAB_1000_535f                                   XREF[1]:     1000:535b(j)  
       1000:535f 8b 44 04        MOV        AX,word ptr [SI + 0x4]
       1000:5362 2b c3           SUB        AX,BX
       1000:5364 79 02           JNS        LAB_1000_5368
       1000:5366 f7 d8           NEG        AX
                             LAB_1000_5368                                   XREF[1]:     1000:5364(j)  
       1000:5368 8a cd           MOV        CL,CH
       1000:536a 32 ed           XOR        CH,CH
       1000:536c 3a c8           CMP        CL,AL
       1000:536e 73 02           JNC        LAB_1000_5372
       1000:5370 8b c8           MOV        CX,AX
                             LAB_1000_5372                                   XREF[1]:     1000:536e(j)  
       1000:5372 3b cd           CMP        CX,BP
       1000:5374 73 04           JNC        LAB_1000_537a
       1000:5376 8b e9           MOV        BP,CX
       1000:5378 8b fe           MOV        DI,SI
                             LAB_1000_537a                                   XREF[2]:     1000:5354(j), 1000:5374(j)  
       1000:537a 83 c6 1c        ADD        SI,0x1c
       1000:537d eb cc           JMP        LAB_1000_534b
                             LAB_1000_537f                                   XREF[1]:     1000:534e(j)  
       1000:537f 5e              POP        SI
       1000:5380 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_541f(void);
                             //
                             undefined FUN_1000_541f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_541f                                   XREF[1]:     FUN_1000_80df:1000:8134(c)  
       1000:541f ff 36 7c 19     PUSH       word ptr [0x197c]
       1000:5423 ff 36 7e 19     PUSH       word ptr [0x197e]
       1000:5427 8f 06 82 19     POP        word ptr [0x1982]
       1000:542b 8f 06 80 19     POP        word ptr [0x1980]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_542f(void);
                             // C Signature: uint32_t FUN_1000_542f(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x1980]
                             //   Read from: word ptr [0x1982]
                             //   Read from: [0x4710]
                             //   Write to: word ptr [0x46fc]
                             //   Write to: word ptr [0x479e]
                             //   Write to: word ptr [DI]
                             //
                             undefined FUN_1000_542f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_542f                                   XREF[1]:     FUN_1000_5d6d:1000:5dc7(c)  
       1000:542f c7 06 fc        MOV        word ptr [0x46fc],0x0
                 46 00 00
       1000:5435 c7 06 9e        MOV        word ptr [0x479e],0x0
                 47 00 00
       1000:543b e8 3d 01        CALL       FUN_1000_557b                                    undefined FUN_1000_557b()
       1000:543e bf e3 46        MOV        DI,0x46e3
       1000:5441 83 c2 05        ADD        DX,0x5
       1000:5444 83 c3 07        ADD        BX,0x7
       1000:5447 89 15           MOV        word ptr [DI],DX
       1000:5449 89 5d 02        MOV        word ptr [DI + 0x2],BX
       1000:544c 81 c2 a0 00     ADD        DX,0xa0
       1000:5450 89 55 04        MOV        word ptr [DI + 0x4],DX
       1000:5453 83 c3 59        ADD        BX,0x59
       1000:5456 89 5d 06        MOV        word ptr [DI + 0x6],BX
       1000:5459 be 10 47        MOV        SI,0x4710
       1000:545c 83 c2 05        ADD        DX,0x5
       1000:545f 89 54 04        MOV        word ptr [SI + 0x4],DX
       1000:5462 83 c3 0c        ADD        BX,0xc
       1000:5465 89 5c 06        MOV        word ptr [SI + 0x6],BX
       1000:5468 e8 d0 6c        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:546b e8 0d 01        CALL       FUN_1000_557b                                    undefined FUN_1000_557b()
       1000:546e b8 8d 00        MOV        AX,0x8d
       1000:5471 e8 bb 6d        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:5474 e8 05 6c        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:5477 e8 13 07        CALL       FUN_1000_5b8d                                    undefined FUN_1000_5b8d()
       1000:547a ff 36 00 dd     PUSH       word ptr [0xdd00]
       1000:547e b8 3a 00        MOV        AX,0x3a
       1000:5481 e8 ba 6c        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:5484 e8 fd 00        CALL       FUN_1000_5584                                    undefined FUN_1000_5584()
       1000:5487 ff 36 b2 db     PUSH       word ptr [0xdbb2]
       1000:548b 8f 06 00 dd     POP        word ptr [0xdd00]
       1000:548f c6 06 eb        MOV        byte ptr [0x46eb],0x40
                 46 40
       1000:5494 e8 03 62        CALL       FUN_1000_b69a                                    undefined FUN_1000_b69a()
       1000:5497 e8 29 62        CALL       FUN_1000_b6c3                                    undefined FUN_1000_b6c3()
       1000:549a 8f 06 00 dd     POP        word ptr [0xdd00]
       1000:549e e8 43 04        CALL       FUN_1000_58e4                                    undefined FUN_1000_58e4()
       1000:54a1 e8 93 6c        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:54a4 e8 27 09        CALL       FUN_1000_5dce                                    undefined FUN_1000_5dce()
       1000:54a7 e8 5b 01        CALL       FUN_1000_5605                                    undefined FUN_1000_5605()
       1000:54aa e8 91 01        CALL       FUN_1000_563e                                    undefined FUN_1000_563e()
       1000:54ad c7 06 72        MOV        word ptr [0x2772],0x5555
                 27 55 55
       1000:54b3 8b 16 80 19     MOV        DX,word ptr [0x1980]
       1000:54b7 8b 1e 82 19     MOV        BX,word ptr [0x1982]
       1000:54bb e8 89 61        CALL       FUN_1000_b647                                    undefined FUN_1000_b647()
       1000:54be 8b cb           MOV        CX,BX
       1000:54c0 8b fa           MOV        DI,DX
       1000:54c2 83 eb 14        SUB        BX,0x14
       1000:54c5 83 c1 13        ADD        CX,0x13
       1000:54c8 83 ea 28        SUB        DX,0x28
       1000:54cb 83 c7 27        ADD        DI,0x27
       1000:54ce a1 10 47        MOV        AX,[0x4710]
       1000:54d1 05 05 00        ADD        AX,0x5
       1000:54d4 3b d0           CMP        DX,AX
       1000:54d6 7d 02           JGE        LAB_1000_54da
       1000:54d8 8b d0           MOV        DX,AX
                             LAB_1000_54da                                   XREF[1]:     1000:54d6(j)  
       1000:54da 3b f8           CMP        DI,AX
       1000:54dc 7d 02           JGE        LAB_1000_54e0
       1000:54de 8b f8           MOV        DI,AX
                             LAB_1000_54e0                                   XREF[1]:     1000:54dc(j)  
       1000:54e0 05 9f 00        ADD        AX,0x9f
       1000:54e3 3b d0           CMP        DX,AX
       1000:54e5 76 02           JBE        LAB_1000_54e9
       1000:54e7 8b d0           MOV        DX,AX
                             LAB_1000_54e9                                   XREF[1]:     1000:54e5(j)  
       1000:54e9 3b f8           CMP        DI,AX
       1000:54eb 76 02           JBE        LAB_1000_54ef
       1000:54ed 8b f8           MOV        DI,AX
                             LAB_1000_54ef                                   XREF[1]:     1000:54eb(j)  
       1000:54ef a1 12 47        MOV        AX,[0x4712]
       1000:54f2 05 07 00        ADD        AX,0x7
       1000:54f5 3b d8           CMP        BX,AX
       1000:54f7 7d 02           JGE        LAB_1000_54fb
       1000:54f9 8b d8           MOV        BX,AX
                             LAB_1000_54fb                                   XREF[1]:     1000:54f7(j)  
       1000:54fb 3b c8           CMP        CX,AX
       1000:54fd 7d 02           JGE        LAB_1000_5501
       1000:54ff 8b c8           MOV        CX,AX
                             LAB_1000_5501                                   XREF[1]:     1000:54fd(j)  
       1000:5501 05 58 00        ADD        AX,0x58
       1000:5504 3b d8           CMP        BX,AX
       1000:5506 76 02           JBE        LAB_1000_550a
       1000:5508 8b d8           MOV        BX,AX
                             LAB_1000_550a                                   XREF[1]:     1000:5506(j)  
       1000:550a 3b c8           CMP        CX,AX
       1000:550c 76 02           JBE        LAB_1000_5510
       1000:550e 8b c8           MOV        CX,AX
                             LAB_1000_5510                                   XREF[1]:     1000:550c(j)  
       1000:5510 3b d9           CMP        BX,CX
       1000:5512 74 09           JZ         LAB_1000_551d
       1000:5514 3b d7           CMP        DX,DI
       1000:5516 74 05           JZ         LAB_1000_551d
       1000:5518 b0 fb           MOV        AL,0xfb
       1000:551a e8 43 70        CALL       FUN_1000_c560                                    undefined FUN_1000_c560()
                             LAB_1000_551d                                   XREF[2]:     1000:5512(j), 1000:5516(j)  
       1000:551d c7 06 72        MOV        word ptr [0x2772],0xffff
                 27 ff ff
       1000:5523 be 10 47        MOV        SI,0x4710
       1000:5526 bf e0 db        MOV        DI,0xdbe0
       1000:5529 83 3d 00        CMP        word ptr [DI],0x0
       1000:552c 74 07           JZ         LAB_1000_5535
       1000:552e 39 35           CMP        word ptr [DI],SI
       1000:5530 74 03           JZ         LAB_1000_5535
       1000:5532 bf e2 db        MOV        DI,0xdbe2
                             LAB_1000_5535                                   XREF[2]:     1000:552c(j), 1000:5530(j)  
       1000:5535 89 35           MOV        word ptr [DI],SI
       1000:5537 81 ff e2 db     CMP        DI,0xdbe2
       1000:553b 9c              PUSHF
       1000:553c 33 ff           XOR        DI,DI
       1000:553e 87 3e 20 47     XCHG       word ptr [0x4720],DI
       1000:5542 0b ff           OR         DI,DI
       1000:5544 74 07           JZ         LAB_1000_554d
       1000:5546 87 f7           XCHG       DI,SI
       1000:5548 b0 06           MOV        AL,0x6
       1000:554a e8 9b 6b        CALL       FUN_1000_c0e8                                    undefined FUN_1000_c0e8()
                             LAB_1000_554d                                   XREF[1]:     1000:5544(j)  
       1000:554d 9d              POPF
       1000:554e 75 08           JNZ        LAB_1000_5558
       1000:5550 e8 9f 0d        CALL       FUN_1000_62f2                                    undefined FUN_1000_62f2()
       1000:5553 e8 e8 2b        CALL       FUN_1000_813e                                    undefined FUN_1000_813e()
       1000:5556 eb 03           JMP        LAB_1000_555b
                             LAB_1000_5558                                   XREF[1]:     1000:554e(j)  
       1000:5558 e8 b9 0d        CALL       FUN_1000_6314                                    undefined FUN_1000_6314()
                             LAB_1000_555b                                   XREF[1]:     1000:5556(j)  
       1000:555b be 10 47        MOV        SI,0x4710
       1000:555e e8 8f 6f        CALL       FUN_1000_c4f0                                    undefined FUN_1000_c4f0()
       1000:5561 e8 36 61        CALL       FUN_1000_b69a                                    undefined FUN_1000_b69a()
       1000:5564 c6 06 eb        MOV        byte ptr [0x46eb],0xc0
                 46 c0
       1000:5569 be 82 14        MOV        SI,0x1482
       1000:556c bf e3 46        MOV        DI,0x46e3
       1000:556f e8 27 06        CALL       FUN_1000_5b99                                    undefined FUN_1000_5b99()
       1000:5572 e8 18 06        CALL       FUN_1000_5b8d                                    undefined FUN_1000_5b8d()
       1000:5575 be 10 47        MOV        SI,0x4710
       1000:5578 e9 2f 85        JMP        FUN_1000_daaa                                    undefined FUN_1000_daaa()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_557b(void);
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x4710]
                             //   Read from: word ptr [0x4712]
                             //
                             undefined __cdecl16near FUN_1000_557b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_557b                                   XREF[4]:     FUN_1000_542f:1000:543b(c), 
                                                                                          FUN_1000_542f:1000:546b(c), 
                                                                                          FUN_1000_5605:1000:563b(c), 
                                                                                          FUN_1000_563e:1000:5674(c)  
       1000:557b 8b 16 10 47     MOV        DX,word ptr [0x4710]
       1000:557f 8b 1e 12 47     MOV        BX,word ptr [0x4712]
       1000:5583 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5584(void);
                             // C Signature: uint16_t FUN_1000_5584(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_5584()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5584                                   XREF[1]:     FUN_1000_542f:1000:5484(c)  
       1000:5584 33 c0           XOR        AX,AX
       1000:5586 87 06 5a 11     XCHG       word ptr [0x115a],AX
       1000:558a 0b c0           OR         AX,AX
       1000:558c 74 31           JZ         LAB_1000_55bf
       1000:558e e8 df 8c        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:5591 1e              PUSH       DS
       1000:5592 06              PUSH       ES
       1000:5593 b1 0c           MOV        CL,0xc
                             LAB_1000_5595                                   XREF[1]:     1000:55b8(j)  
       1000:5595 d1 e8           SHR        AX,0x1
       1000:5597 73 1f           JNC        LAB_1000_55b8
       1000:5599 50              PUSH       AX
       1000:559a 51              PUSH       CX
       1000:559b b3 0d           MOV        BL,0xd
       1000:559d 2a d9           SUB        BL,CL
       1000:559f bf 00 01        MOV        DI,0x100
                             LAB_1000_55a2                                   XREF[1]:     1000:55b1(j)  
       1000:55a2 38 1d           CMP        byte ptr [DI],BL
       1000:55a4 75 05           JNZ        LAB_1000_55ab
       1000:55a6 e8 8d 07        CALL       FUN_1000_5d36                                    undefined FUN_1000_5d36()
       1000:55a9 73 0b           JNC        LAB_1000_55b6
                             LAB_1000_55ab                                   XREF[1]:     1000:55a4(j)  
       1000:55ab 83 c7 1c        ADD        DI,0x1c
       1000:55ae 80 3d ff        CMP        byte ptr [DI],0xff
       1000:55b1 75 ef           JNZ        LAB_1000_55a2
       1000:55b3 e8 0a 00        CALL       FUN_1000_55c0                                    undefined FUN_1000_55c0()
                             LAB_1000_55b6                                   XREF[1]:     1000:55a9(j)  
       1000:55b6 59              POP        CX
       1000:55b7 58              POP        AX
                             LAB_1000_55b8                                   XREF[1]:     1000:5597(j)  
       1000:55b8 e2 db           LOOP       LAB_1000_5595
       1000:55ba 07              POP        ES
       1000:55bb 1f              POP        DS
       1000:55bc e8 c4 8c        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_55bf                                   XREF[1]:     1000:558c(j)  
       1000:55bf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_55c0(uint8_t bl);
                             // C Signature: uint16_t FUN_1000_55c0(uint8_t bl);
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x10]
                             //
                             undefined __cdecl16near FUN_1000_55c0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_55c0                                   XREF[1]:     FUN_1000_5584:1000:55b3(c)  
       1000:55c0 be 00 01        MOV        SI,0x100
                             LAB_1000_55c3                                   XREF[1]:     1000:55d3(j)  
       1000:55c3 38 1c           CMP        byte ptr [SI],BL
       1000:55c5 75 06           JNZ        LAB_1000_55cd
       1000:55c7 8a 44 10        MOV        AL,byte ptr [SI + 0x10]
       1000:55ca e8 10 00        CALL       FUN_1000_55dd                                    undefined FUN_1000_55dd()
                             LAB_1000_55cd                                   XREF[1]:     1000:55c5(j)  
       1000:55cd 83 c6 1c        ADD        SI,0x1c
       1000:55d0 80 3c ff        CMP        byte ptr [SI],0xff
       1000:55d3 75 ee           JNZ        LAB_1000_55c3
       1000:55d5 b0 42           MOV        AL,0x42
       1000:55d7 80 fb 07        CMP        BL,0x7
       1000:55da 74 01           JZ         FUN_1000_55dd
       1000:55dc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_55dd(void);
                             // C Signature: uint16_t FUN_1000_55dd(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdd00]
                             //   Read from: byte ptr [DI + -0x1]
                             //
                             undefined __cdecl16near FUN_1000_55dd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_55dd                                   XREF[2]:     FUN_1000_55c0:1000:55ca(c), 
                                                                                          FUN_1000_55c0:1000:55da(j)  
       1000:55dd 1e              PUSH       DS
       1000:55de 0a c0           OR         AL,AL
       1000:55e0 74 21           JZ         LAB_1000_5603
       1000:55e2 c4 3e b0 db     LES        DI,[0xdbb0]
       1000:55e6 8e 1e 00 dd     MOV        DS,word ptr [0xdd00]
       1000:55ea b9 f9 c5        MOV        CX,0xc5f9
                             LAB_1000_55ed                                   XREF[1]:     1000:5601(j)  
       1000:55ed f2 ae           SCASB.RE   ES:DI
       1000:55ef 75 12           JNZ        LAB_1000_5603
       1000:55f1 8a 65 ff        MOV        AH,byte ptr [DI + -0x1]
       1000:55f4 80 e4 30        AND        AH,0x30
       1000:55f7 80 fc 30        CMP        AH,0x30
       1000:55fa 75 04           JNZ        LAB_1000_5600
       1000:55fc 80 65 ff ef     AND        byte ptr [DI + -0x1],0xef
                             LAB_1000_5600                                   XREF[1]:     1000:55fa(j)  
       1000:5600 41              INC        CX
       1000:5601 e2 ea           LOOP       LAB_1000_55ed
                             LAB_1000_5603                                   XREF[2]:     1000:55e0(j), 1000:55ef(j)  
       1000:5603 1f              POP        DS
       1000:5604 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5605(void);
                             // C Signature: uint16_t FUN_1000_5605(void);
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [DI + -0x8]
                             //   Read from: word ptr [0xdbda]
                             //   Write to: byte ptr [0x4724]
                             //
                             undefined FUN_1000_5605()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0x8]:1  local_8                                 XREF[1]:     1000:5623(*)  
                             FUN_1000_5605                                   XREF[1]:     FUN_1000_542f:1000:54a7(c)  
       1000:5605 83 ec 08        SUB        SP,0x8
       1000:5608 be 10 47        MOV        SI,0x4710
       1000:560b 8b fc           MOV        DI,SP
       1000:560d 1e              PUSH       DS
       1000:560e 07              POP        ES
       1000:560f ad              LODSW      SI
       1000:5610 05 06 00        ADD        AX,0x6
       1000:5613 ab              STOSW      ES:DI
       1000:5614 ad              LODSW      SI
       1000:5615 05 62 00        ADD        AX,0x62
       1000:5618 ab              STOSW      ES:DI
       1000:5619 ad              LODSW      SI
       1000:561a 2d 06 00        SUB        AX,0x6
       1000:561d ab              STOSW      ES:DI
       1000:561e ad              LODSW      SI
       1000:561f 2d 02 00        SUB        AX,0x2
       1000:5622 ab              STOSW      ES:DI
       1000:5623 8d 75 f8        LEA        SI=>local_8,[DI + -0x8]
       1000:5626 b0 f5           MOV        AL,0xf5
       1000:5628 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:562c ff 1e dd 38     CALLF      [0x38dd]
       1000:5630 c6 06 24        MOV        byte ptr [0x4724],0xff
                 47 ff
       1000:5635 e8 3d 7a        CALL       FUN_1000_d075                                    undefined FUN_1000_d075()
       1000:5638 83 c4 08        ADD        SP,0x8
       1000:563b e9 3d ff        JMP        FUN_1000_557b                                    undefined FUN_1000_557b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_563e(uint8_t cl, uint16_t dx);
                             // C Signature: uint16_t FUN_1000_563e(uint8_t cl, uint16_t dx);
                             // Input Parameters:
                             //   CL (uint8_t): 8-bit input value in CL register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x4725]
                             //   Write to: [0xd82c]
                             //
                             undefined FUN_1000_563e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_563e                                   XREF[1]:     FUN_1000_542f:1000:54aa(c)  
       1000:563e 83 c3 62        ADD        BX,0x62
       1000:5641 83 c2 06        ADD        DX,0x6
       1000:5644 b9 fe f5        MOV        CX,0xf5fe
       1000:5647 88 0e 25 47     MOV        byte ptr [0x4725],CL
       1000:564b 80 3e 22        CMP        byte ptr [0x4722],0x0
                 47 00
       1000:5650 75 3a           JNZ        LAB_1000_568c
       1000:5652 52              PUSH       DX
       1000:5653 b8 65 00        MOV        AX,0x65
       1000:5656 e8 3b 7b        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:5659 58              POP        AX
       1000:565a 05 53 00        ADD        AX,0x53
       1000:565d a3 2c d8        MOV        [0xd82c],AX
       1000:5660 b0 2d           MOV        AL,0x2d
       1000:5662 ff 16 18 25     CALL       word ptr [0x2518]
       1000:5666 83 06 2c        ADD        word ptr [0xd82c],0x41
                 d8 41
       1000:566b b0 2b           MOV        AL,0x2b
       1000:566d ff 16 18 25     CALL       word ptr [0x2518]
       1000:5671 e8 c7 6a        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:5674 e8 04 ff        CALL       FUN_1000_557b                                    undefined FUN_1000_557b()
       1000:5677 83 c2 5f        ADD        DX,0x5f
       1000:567a 83 c3 63        ADD        BX,0x63
       1000:567d b8 80 00        MOV        AX,0x80
       1000:5680 e8 7a 6c        CALL       FUN_1000_c2fd                                    undefined FUN_1000_c2fd()
       1000:5683 83 c2 3c        ADD        DX,0x3c
       1000:5686 b8 81 00        MOV        AX,0x81
       1000:5689 e9 a3 6b        JMP        FUN_1000_c22f                                    undefined FUN_1000_c22f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_568c                                   XREF[1]:     1000:5650(j)  
       1000:568c b8 68 00        MOV        AX,0x68
       1000:568f e9 02 7b        JMP        FUN_1000_d194                                    undefined FUN_1000_d194()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_57e5(uint8_t bh);
                             // C Signature: uint16_t FUN_1000_57e5(uint8_t bh);
                             // Input Parameters:
                             //   BH (uint8_t): 8-bit input value in BH register
                             //   DS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BL (uint8_t): 8-bit output value in BL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0xa]
                             //   Read from: byte ptr [SI + 0x10]
                             //   Read from: byte ptr [SI + 0x12]
                             //   Write to: byte ptr [BX + DI]
                             //   Write to: byte ptr [BP + SI]
                             //
                             undefined __cdecl16near FUN_1000_57e5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_57e5                                   XREF[1]:     FUN_1000_58e4:1000:58ea(c)  
       1000:57e5 e8 88 8a        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:57e8 06              PUSH       ES
       1000:57e9 b8 3a 00        MOV        AX,0x3a
       1000:57ec e8 4f 69        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:57ef 1e              PUSH       DS
       1000:57f0 07              POP        ES
       1000:57f1 8b fd           MOV        DI,BP
       1000:57f3 b0 70           MOV        AL,0x70
       1000:57f5 b9 00 01        MOV        CX,0x100
       1000:57f8 f3 aa           STOSB.REP  ES:DI
       1000:57fa 80 3e 22        CMP        byte ptr [0x4722],0x0
                 47 00
       1000:57ff 75 3e           JNZ        LAB_1000_583f
       1000:5801 be 00 01        MOV        SI,0x100
       1000:5804 8b fd           MOV        DI,BP
       1000:5806 33 db           XOR        BX,BX
                             LAB_1000_5808                                   XREF[1]:     1000:5838(j)  
       1000:5808 8a 44 0a        MOV        AL,byte ptr [SI + 0xa]
       1000:580b a8 80           TEST       AL,0x80
       1000:580d 75 23           JNZ        LAB_1000_5832
       1000:580f 8a 5c 10        MOV        BL,byte ptr [SI + 0x10]
       1000:5812 a8 40           TEST       AL,0x40
       1000:5814 9c              PUSHF
       1000:5815 b0 75           MOV        AL,0x75
       1000:5817 f6 06 42        TEST       byte ptr [0x2942],0x2
                 29 02
       1000:581c 74 02           JZ         LAB_1000_5820
       1000:581e b0 78           MOV        AL,0x78
                             LAB_1000_5820                                   XREF[1]:     1000:581c(j)  
       1000:5820 9d              POPF
       1000:5821 74 0d           JZ         LAB_1000_5830
       1000:5823 8a 44 12        MOV        AL,byte ptr [SI + 0x12]
       1000:5826 d0 e8           SHR        AL,0x1
       1000:5828 d0 e8           SHR        AL,0x1
       1000:582a d0 e8           SHR        AL,0x1
       1000:582c d0 e8           SHR        AL,0x1
       1000:582e 04 50           ADD        AL,0x50
                             LAB_1000_5830                                   XREF[1]:     1000:5821(j)  
       1000:5830 88 01           MOV        byte ptr [BX + DI],AL
                             LAB_1000_5832                                   XREF[1]:     1000:580d(j)  
       1000:5832 83 c6 1c        ADD        SI,0x1c
       1000:5835 80 3c ff        CMP        byte ptr [SI],0xff
       1000:5838 75 ce           JNZ        LAB_1000_5808
       1000:583a 07              POP        ES
       1000:583b e8 45 8a        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:583e c3              RET
                             LAB_1000_583f                                   XREF[1]:     1000:57ff(j)  
       1000:583f bf 00 01        MOV        DI,0x100
                             LAB_1000_5842                                   XREF[1]:     1000:5867(j)  
       1000:5842 8a 45 0a        MOV        AL,byte ptr [DI + 0xa]
       1000:5845 a8 80           TEST       AL,0x80
       1000:5847 75 18           JNZ        LAB_1000_5861
       1000:5849 55              PUSH       BP
       1000:584a 33 db           XOR        BX,BX
       1000:584c 33 c9           XOR        CX,CX
       1000:584e bd 28 57        MOV        BP,0x5728
       1000:5851 e8 e5 0d        CALL       FUN_1000_6639                                    undefined FUN_1000_6639()
       1000:5854 5d              POP        BP
       1000:5855 e8 16 00        CALL       FUN_1000_586e                                    undefined FUN_1000_586e()
       1000:5858 8a 45 10        MOV        AL,byte ptr [DI + 0x10]
       1000:585b 32 e4           XOR        AH,AH
       1000:585d 8b f0           MOV        SI,AX
       1000:585f 88 3a           MOV        byte ptr [BP + SI],BH
                             LAB_1000_5861                                   XREF[1]:     1000:5847(j)  
       1000:5861 83 c7 1c        ADD        DI,0x1c
       1000:5864 80 3d ff        CMP        byte ptr [DI],0xff
       1000:5867 75 d9           JNZ        LAB_1000_5842
       1000:5869 07              POP        ES
       1000:586a e8 16 8a        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:586d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_586e(void);
                             // C Signature: uint16_t FUN_1000_586e(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_586e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_586e                                   XREF[1]:     FUN_1000_57e5:1000:5855(c)  
       1000:586e 33 c0           XOR        AX,AX
       1000:5870 0a db           OR         BL,BL
       1000:5872 74 02           JZ         LAB_1000_5876
       1000:5874 b0 01           MOV        AL,0x1
                             LAB_1000_5876                                   XREF[1]:     1000:5872(j)  
       1000:5876 0a ed           OR         CH,CH
       1000:5878 74 02           JZ         LAB_1000_587c
       1000:587a 04 02           ADD        AL,0x2
                             LAB_1000_587c                                   XREF[1]:     1000:5878(j)  
       1000:587c 0a c9           OR         CL,CL
       1000:587e 74 02           JZ         LAB_1000_5882
       1000:5880 04 04           ADD        AL,0x4
                             LAB_1000_5882                                   XREF[1]:     1000:587e(j)  
       1000:5882 d1 e0           SHL        AX,0x1
       1000:5884 8b f0           MOV        SI,AX
       1000:5886 2e ff a4        JMP        word ptr CS:[SI + 0x588b]=>DAT_1000_5899         = 58A4h
                 8b 58                                                                       = 58B4h
                                                                                             = 58CEh
                             DAT_1000_5891                                   XREF[1]:     FUN_1000_586e:1000:5886(R)  
       1000:5891 a4 58           undefined2 58A4h
                             DAT_1000_5895                                   XREF[1]:     FUN_1000_586e:1000:5886(R)  
       1000:5895 b4 58           undefined2 58B4h
                             DAT_1000_5899                                   XREF[1]:     FUN_1000_586e:1000:5886(R)  
       1000:5899 ce 58           undefined2 58CEh
                             LAB_1000_58a4                                   XREF[1]:     FUN_1000_586e:1000:5886(j)  
       1000:58a4 b7 66           MOV        BH,0x66
       1000:58a6 3a dd           CMP        BL,CH
       1000:58a8 74 06           JZ         LAB_1000_58b0
       1000:58aa b7 9a           MOV        BH,0x9a
       1000:58ac 72 02           JC         LAB_1000_58b0
       1000:58ae f6 d7           NOT        BH
                             LAB_1000_58b0                                   XREF[2]:     1000:58a8(j), 1000:58ac(j)  
       1000:58b0 c3              RET
                             LAB_1000_58b4                                   XREF[1]:     FUN_1000_586e:1000:5886(j)  
       1000:58b4 b7 77           MOV        BH,0x77
       1000:58b6 3a d9           CMP        BL,CL
       1000:58b8 74 06           JZ         LAB_1000_58c0
       1000:58ba b7 df           MOV        BH,0xdf
       1000:58bc 72 02           JC         LAB_1000_58c0
       1000:58be b7 75           MOV        BH,0x75
                             LAB_1000_58c0                                   XREF[2]:     1000:58b8(j), 1000:58bc(j)  
       1000:58c0 c3              RET
                             LAB_1000_58ce                                   XREF[1]:     FUN_1000_586e:1000:5886(j)  
       1000:58ce 3a dd           CMP        BL,CH
       1000:58d0 73 09           JNC        LAB_1000_58db
       1000:58d2 b7 de           MOV        BH,0xde
       1000:58d4 3a e9           CMP        CH,CL
       1000:58d6 72 02           JC         LAB_1000_58da
       1000:58d8 b7 9b           MOV        BH,0x9b
                             LAB_1000_58da                                   XREF[1]:     1000:58d6(j)  
       1000:58da c3              RET
                             LAB_1000_58db                                   XREF[1]:     1000:58d0(j)  
       1000:58db b7 7b           MOV        BH,0x7b
       1000:58dd 3a d9           CMP        BL,CL
       1000:58df 72 02           JC         LAB_1000_58e3
       1000:58e1 b7 67           MOV        BH,0x67
                             LAB_1000_58e3                                   XREF[1]:     1000:58df(j)  
       1000:58e3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_58e4(void);
                             // C Signature: void FUN_1000_58e4(void);
                             // Input/Output Parameters:
                             //   SP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BH (uint8_t): 8-bit output value in BH register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0x4722]
                             //
                             undefined __cdecl16near FUN_1000_58e4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_58e4                                   XREF[1]:     FUN_1000_542f:1000:549e(c)  
       1000:58e4 81 ec 00 01     SUB        SP,0x100
       1000:58e8 8b ec           MOV        BP,SP
       1000:58ea e8 f8 fe        CALL       FUN_1000_57e5                                    undefined FUN_1000_57e5()
       1000:58ed 8a 3e 22 47     MOV        BH,byte ptr [0x4722]
       1000:58f1 ff 1e 5d 39     CALLF      [0x395d]
       1000:58f5 81 c4 00 01     ADD        SP,0x100
       1000:58f9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5a1a(void);
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x28e7]
                             //
                             undefined FUN_1000_5a1a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5a1a                                   XREF[1]:     FUN_1000_1860:1000:1874(c)  
       1000:5a1a c6 06 e7        MOV        byte ptr [0x28e7],0x1
                 28 01
       1000:5a1f e8 98 be        CALL       FUN_1000_18ba                                    undefined FUN_1000_18ba()
       1000:5a22 e8 38 01        CALL       FUN_1000_5b5d                                    undefined FUN_1000_5b5d()
       1000:5a25 bd 56 5a        MOV        BP,0x5a56
       1000:5a28 b0 34           MOV        AL,0x34
       1000:5a2a ba ff ff        MOV        DX,0xffff
       1000:5a2d e8 d8 66        CALL       FUN_1000_c108                                    undefined FUN_1000_c108()
       1000:5a30 80 3e f3        CMP        byte ptr [0x46f3],0x0
                 46 00
       1000:5a35 75 03           JNZ        LAB_1000_5a3a
       1000:5a37 e8 76 01        CALL       FUN_1000_5bb0                                    undefined FUN_1000_5bb0()
                             LAB_1000_5a3a                                   XREF[1]:     1000:5a35(j)  
       1000:5a3a e9 a9 bd        JMP        FUN_1000_17e6                                    undefined FUN_1000_17e6()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5adf(uint8_t al);
                             // C Signature: uint16_t FUN_1000_5adf(uint8_t al);
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Write to: [0x46eb]
                             //   Write to: [0x46f3]
                             //   Write to: [0x3cbe]
                             //
                             undefined FUN_1000_5adf()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5adf                                   XREF[1]:     FUN_1000_1860:1000:187a(c)  
       1000:5adf e8 54 20        CALL       FUN_1000_7b36                                    undefined FUN_1000_7b36()
       1000:5ae2 33 c0           XOR        AX,AX
       1000:5ae4 a2 eb 46        MOV        [0x46eb],AL
       1000:5ae7 a2 f3 46        MOV        [0x46f3],AL
       1000:5aea a3 be 3c        MOV        [0x3cbe],AX
       1000:5aed a3 c0 a5        MOV        [0xa5c0],AX
       1000:5af0 a3 e0 db        MOV        [0xdbe0],AX
       1000:5af3 a3 e2 db        MOV        [0xdbe2],AX
       1000:5af6 a3 54 19        MOV        [0x1954],AX
       1000:5af9 c7 06 86        MOV        word ptr [0x2786],0xc827
                 27 27 c8
       1000:5aff be 34 6b        MOV        SI,0x6b34
       1000:5b02 e9 5a 7f        JMP        FUN_1000_da5f                                    undefined FUN_1000_da5f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5b5d(uint16_t bx, uint16_t dx);
                             // C Signature: void FUN_1000_5b5d(uint16_t bx, uint16_t dx);
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x197e]
                             //   Write to: word ptr [0x197c]
                             //
                             undefined __cdecl16near FUN_1000_5b5d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5b5d                                   XREF[4]:     FUN_1000_42e9:1000:4320(c), 
                                                                                          FUN_1000_4988:1000:498e(c), 
                                                                                          FUN_1000_4f0c:1000:4f6a(c), 
                                                                                          FUN_1000_5a1a:1000:5a22(c)  
       1000:5b5d e8 1e e5        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:5b60 89 1e 7e 19     MOV        word ptr [0x197e],BX
       1000:5b64 89 16 7c 19     MOV        word ptr [0x197c],DX
       1000:5b68 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_5b69(void);
                             // C Signature: uint32_t FUN_1000_5b69(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI]
                             //   Read from: word ptr [SI + 0x2]
                             //   Read from: word ptr [SI + 0x4]
                             //
                             undefined __cdecl16near FUN_1000_5b69()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5b69                                   XREF[2]:     FUN_1000_439f:1000:43b9(c), 
                                                                                          FUN_1000_49a0:1000:49ae(c)  
       1000:5b69 be e3 46        MOV        SI,0x46e3
       1000:5b6c b0 fc           MOV        AL,0xfc
       1000:5b6e 8b 14           MOV        DX,word ptr [SI]
       1000:5b70 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:5b73 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:5b76 8b 4c 06        MOV        CX,word ptr [SI + 0x6]
       1000:5b79 bd 04 00        MOV        BP,0x4
                             LAB_1000_5b7c                                   XREF[1]:     1000:5b8a(j)  
       1000:5b7c 50              PUSH       AX
       1000:5b7d 55              PUSH       BP
       1000:5b7e 4a              DEC        DX
       1000:5b7f 4b              DEC        BX
       1000:5b80 e8 dd 69        CALL       FUN_1000_c560                                    undefined FUN_1000_c560()
       1000:5b83 5d              POP        BP
       1000:5b84 58              POP        AX
       1000:5b85 47              INC        DI
       1000:5b86 41              INC        CX
       1000:5b87 2c 02           SUB        AL,0x2
       1000:5b89 4d              DEC        BP
       1000:5b8a 75 f0           JNZ        LAB_1000_5b7c
       1000:5b8c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5b8d(void);
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             undefined FUN_1000_5b8d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5b8d                                   XREF[3]:     FUN_1000_542f:1000:5477(c), 
                                                                                          FUN_1000_542f:1000:5572(c), 
                                                                                          FUN_1000_5d6d:1000:5d88(c)  
       1000:5b8d bf 3c d8        MOV        DI,0xd83c
       1000:5b90 e8 03 00        CALL       FUN_1000_5b96                                    undefined FUN_1000_5b96()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5b93(void);
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             undefined FUN_1000_5b93()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5b93                                   XREF[3]:     FUN_1000_42e9:1000:434c(c), 
                                                                                          FUN_1000_445d:1000:44b6(c), 
                                                                                          FUN_1000_49a0:1000:49a3(c)  
       1000:5b93 bf 34 d8        MOV        DI,0xd834
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5b96(void);
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_5b96()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5b96                                   XREF[1]:     FUN_1000_5b8d:1000:5b90(c)  
       1000:5b96 be e3 46        MOV        SI,0x46e3
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5b99(void);
                             // C Signature: void FUN_1000_5b99(void);
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //
                             undefined __cdecl16near FUN_1000_5b99()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5b99                                   XREF[9]:     FUN_1000_42e9:1000:4337(c), 
                                                                                          FUN_1000_4988:1000:4997(c), 
                                                                                          FUN_1000_542f:1000:556f(c), 
                                                                                          FUN_1000_5ba0:1000:5ba6(c), 
                                                                                          FUN_1000_5ba8:1000:5bae(c), 
                                                                                          FUN_1000_9bb1:1000:9bc2(c), 
                                                                                          FUN_1000_9de3:1000:9dfb(c), 
                                                                                          FUN_1000_cb1a:1000:cb9c(c), 
                                                                                          FUN_1000_ceb0:1000:cec5(c)  
       1000:5b99 1e              PUSH       DS
       1000:5b9a 07              POP        ES
       1000:5b9b a5              MOVSW      ES:DI,SI
       1000:5b9c a5              MOVSW      ES:DI,SI
       1000:5b9d a5              MOVSW      ES:DI,SI
       1000:5b9e a5              MOVSW      ES:DI,SI
       1000:5b9f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5ba0(void);
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_5ba0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5ba0                                   XREF[3]:     FUN_1000_0acd:1000:0afb(c), 
                                                                                          FUN_1000_2db1:1000:2e10(c), 
                                                                                          FUN_1000_488a:1000:48f1(c)  
       1000:5ba0 be 70 14        MOV        SI,0x1470
       1000:5ba3 bf 3c d8        MOV        DI,0xd83c
       1000:5ba6 eb f1           JMP        FUN_1000_5b99                                    undefined FUN_1000_5b99()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5ba8(void);
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_5ba8()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5ba8                                   XREF[1]:     FUN_1000_37b5:1000:37be(c)  
       1000:5ba8 be 70 14        MOV        SI,0x1470
       1000:5bab bf 34 d8        MOV        DI,0xd834
       1000:5bae eb e9           JMP        FUN_1000_5b99                                    undefined FUN_1000_5b99()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_5bb0(void);
                             // C Signature: uint32_t FUN_1000_5bb0(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: [0x28]
                             //   Read from: word ptr [0x194a]
                             //   Read from: word ptr [0x194c]
                             //   Write to: word ptr [0xdbe0]
                             //
                             undefined FUN_1000_5bb0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5bb0                                   XREF[1]:     FUN_1000_5a1a:1000:5a37(c)  
       1000:5bb0 e8 db 64        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:5bb3 be 4a 19        MOV        SI,0x194a
       1000:5bb6 89 36 e0 db     MOV        word ptr [0xdbe0],SI
       1000:5bba e8 5e 1f        CALL       FUN_1000_7b1b                                    undefined FUN_1000_7b1b()
       1000:5bbd e8 a8 74        CALL       FUN_1000_d068                                    undefined FUN_1000_d068()
       1000:5bc0 be e2 00        MOV        SI,0xe2
       1000:5bc3 e8 aa 73        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:5bc6 e8 73 74        CALL       skip_to_digit_then_past_digits                                    undefined skip_to_digit_then_past_digits()
       1000:5bc9 a0 28 00        MOV        AL,[0x28]
       1000:5bcc 32 e4           XOR        AH,AH
       1000:5bce e8 12 87        CALL       FUN_1000_e2e3                                    undefined FUN_1000_e2e3()
       1000:5bd1 8b 16 4a 19     MOV        DX,word ptr [0x194a]
       1000:5bd5 8b 1e 4c 19     MOV        BX,word ptr [0x194c]
       1000:5bd9 83 c2 0a        ADD        DX,0xa
       1000:5bdc 83 c3 08        ADD        BX,0x8
       1000:5bdf b9 f0 00        MOV        CX,0xf0
       1000:5be2 b8 e2 00        MOV        AX,0xe2
       1000:5be5 e8 ac 75        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:5be8 e9 91 64        JMP        FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5d36(uint16_t di);
                             // C Signature: void FUN_1000_5d36(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //
                             undefined __cdecl16near FUN_1000_5d36()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5d36                                   XREF[8]:     FUN_1000_1cda:1000:1ce1(c), 
                                                                                          FUN_1000_4182:1000:4196(c), 
                                                                                          FUN_1000_503c:1000:504c(c), 
                                                                                          FUN_1000_5584:1000:55a6(c), 
                                                                                          FUN_1000_6252:1000:6257(c), 
                                                                                          FUN_1000_627e:1000:6287(c), 
                                                                                          FUN_1000_79ee:1000:7a7d(c), 
                                                                                          FUN_1000_8308:1000:8382(c)  
       1000:5d36 80 7d 08 28     CMP        byte ptr [DI + 0x8],0x28
       1000:5d3a 72 07           JC         LAB_1000_5d43
       1000:5d3c f6 45 0a 08     TEST       byte ptr [DI + 0xa],0x8
       1000:5d40 74 01           JZ         LAB_1000_5d43
       1000:5d42 f9              STC
                             LAB_1000_5d43                                   XREF[2]:     1000:5d3a(j), 1000:5d40(j)  
       1000:5d43 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_5d44(void);
                             // C Signature: void FUN_1000_5d44(void);
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_5d44()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5d44                                   XREF[1]:     FUN_1000_8308:1000:83a4(c)  
       1000:5d44 f6 06 c9        TEST       byte ptr [0x11c9],0x3
                 11 03
       1000:5d49 74 05           JZ         LAB_1000_5d50
       1000:5d4b 80 0e 28        OR         byte ptr [0x4728],0x1
                 47 01
                             LAB_1000_5d50                                   XREF[2]:     1000:5d49(j), 
                                                                                          FUN_1000_7429:1000:74b3(j)  
       1000:5d50 56              PUSH       SI
       1000:5d51 57              PUSH       DI
       1000:5d52 f6 45 0a 80     TEST       byte ptr [DI + 0xa],0x80
       1000:5d56 75 12           JNZ        LAB_1000_5d6a
       1000:5d58 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:5d5d 74 0b           JZ         LAB_1000_5d6a
       1000:5d5f 8b f7           MOV        SI,DI
       1000:5d61 e8 65 05        CALL       FUN_1000_62c9                                    undefined FUN_1000_62c9()
       1000:5d64 72 04           JC         LAB_1000_5d6a
       1000:5d66 fe 06 ec 46     INC        byte ptr [0x46ec]
                             LAB_1000_5d6a                                   XREF[3]:     1000:5d56(j), 1000:5d5d(j), 
                                                                                          1000:5d64(j)  
       1000:5d6a 5f              POP        DI
       1000:5d6b 5e              POP        SI
       1000:5d6c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5d6d(void);
                             // C Signature: uint16_t FUN_1000_5d6d(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x46ec]
                             //   Write to: word ptr [0x3cbe]
                             //   Write to: [0x46eb]
                             //
                             undefined __cdecl16near FUN_1000_5d6d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5d6d                                   XREF[2]:     FUN_1000_1b23:1000:1b9e(c), 
                                                                                          FUN_1000_1b23:1000:1be9(c)  
       1000:5d6d c6 06 ec        MOV        byte ptr [0x46ec],0x0
                 46 00
       1000:5d72 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:5d77 78 09           JS         LAB_1000_5d82
       1000:5d79 74 52           JZ         LAB_1000_5dcd
       1000:5d7b e8 34 7e        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:5d7e ff 26 ed 46     JMP        word ptr [0x46ed]
                             LAB_1000_5d82                                   XREF[1]:     1000:5d77(j)  
       1000:5d82 e8 f7 62        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:5d85 e8 2a 7e        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:5d88 e8 02 fe        CALL       FUN_1000_5b8d                                    undefined FUN_1000_5b8d()
       1000:5d8b b0 80           MOV        AL,0x80
       1000:5d8d 86 06 eb 46     XCHG       byte ptr [0x46eb],AL
       1000:5d91 50              PUSH       AX
       1000:5d92 ff 36 ef 46     PUSH       word ptr [0x46ef]
       1000:5d96 e8 2a 59        CALL       FUN_1000_b6c3                                    undefined FUN_1000_b6c3()
       1000:5d99 e8 9f 63        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:5d9c e8 2f 00        CALL       FUN_1000_5dce                                    undefined FUN_1000_5dce()
       1000:5d9f e8 72 05        CALL       FUN_1000_6314                                    undefined FUN_1000_6314()
       1000:5da2 e8 6d 66        CALL       FUN_1000_c412                                    undefined FUN_1000_c412()
       1000:5da5 c7 06 be        MOV        word ptr [0x3cbe],0x0
                 3c 00 00
       1000:5dab e8 67 09        CALL       FUN_1000_6715                                    undefined FUN_1000_6715()
       1000:5dae be e3 46        MOV        SI,0x46e3
       1000:5db1 e8 f9 68        CALL       FUN_1000_c6ad                                    undefined FUN_1000_c6ad()
       1000:5db4 5e              POP        SI
       1000:5db5 0b f6           OR         SI,SI
       1000:5db7 74 03           JZ         LAB_1000_5dbc
       1000:5db9 e8 c0 0b        CALL       FUN_1000_697c                                    undefined FUN_1000_697c()
                             LAB_1000_5dbc                                   XREF[1]:     1000:5db7(j)  
       1000:5dbc e8 59 be        CALL       FUN_1000_1c18                                    undefined FUN_1000_1c18()
       1000:5dbf 58              POP        AX
       1000:5dc0 a2 eb 46        MOV        [0x46eb],AL
       1000:5dc3 24 40           AND        AL,0x40
       1000:5dc5 74 03           JZ         LAB_1000_5dca
       1000:5dc7 e8 65 f6        CALL       FUN_1000_542f                                    undefined FUN_1000_542f()
                             LAB_1000_5dca                                   XREF[1]:     1000:5dc5(j)  
       1000:5dca e9 6e 63        JMP        FUN_1000_c13b                                    undefined FUN_1000_c13b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_5dcd                                   XREF[1]:     1000:5d79(j)  
       1000:5dcd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_5dce(uint8_t cl);
                             // C Signature: uint32_t FUN_1000_5dce(uint8_t cl);
                             // Input Parameters:
                             //   CL (uint8_t): 8-bit input value in CL register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x46eb]
                             //   Read from: byte ptr [0x46eb]
                             //   Write to: word ptr [DI]
                             //   Write to: word ptr [DI + 0x2]
                             //   Write to: word ptr [DI + 0x4]
                             //
                             undefined __cdecl16near FUN_1000_5dce()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5dce                                   XREF[4]:     FUN_1000_42e9:1000:4355(c), 
                                                                                          FUN_1000_49a0:1000:49b4(c), 
                                                                                          FUN_1000_542f:1000:54a4(c), 
                                                                                          FUN_1000_5d6d:1000:5d9c(c)  
       1000:5dce a0 eb 46        MOV        AL,[0x46eb]
       1000:5dd1 0a c0           OR         AL,AL
       1000:5dd3 79 05           JNS        LAB_1000_5dda
       1000:5dd5 50              PUSH       AX
       1000:5dd6 e8 62 05        CALL       FUN_1000_633b                                    undefined FUN_1000_633b()
       1000:5dd9 58              POP        AX
                             LAB_1000_5dda                                   XREF[1]:     1000:5dd3(j)  
       1000:5dda bf c0 a5        MOV        DI,0xa5c0
       1000:5ddd 24 40           AND        AL,0x40
       1000:5ddf 74 10           JZ         LAB_1000_5df1
       1000:5de1 83 ef 06        SUB        DI,0x6
                             LAB_1000_5de4                                   XREF[1]:     1000:5def(j)  
       1000:5de4 83 c7 06        ADD        DI,0x6
       1000:5de7 83 3d 00        CMP        word ptr [DI],0x0
       1000:5dea 74 05           JZ         LAB_1000_5df1
       1000:5dec 84 45 05        TEST       byte ptr [DI + 0x5],AL
       1000:5def 74 f3           JZ         LAB_1000_5de4
                             LAB_1000_5df1                                   XREF[2]:     1000:5ddf(j), 1000:5dea(j)  
       1000:5df1 be 00 01        MOV        SI,0x100
                             LAB_1000_5df4                                   XREF[1]:     1000:5e3b(j)  
       1000:5df4 83 3c ff        CMP        word ptr [SI],-0x1
       1000:5df7 74 44           JZ         LAB_1000_5e3d
       1000:5df9 f6 44 0a 80     TEST       byte ptr [SI + 0xa],0x80
       1000:5dfd 75 39           JNZ        LAB_1000_5e38
       1000:5dff e8 c7 04        CALL       FUN_1000_62c9                                    undefined FUN_1000_62c9()
       1000:5e02 72 34           JC         LAB_1000_5e38
       1000:5e04 89 35           MOV        word ptr [DI],SI
       1000:5e06 89 55 02        MOV        word ptr [DI + 0x2],DX
       1000:5e09 8a 3e eb 46     MOV        BH,byte ptr [0x46eb]
       1000:5e0d 89 5d 04        MOV        word ptr [DI + 0x4],BX
       1000:5e10 32 ff           XOR        BH,BH
       1000:5e12 e8 2d 00        CALL       FUN_1000_5e42                                    undefined FUN_1000_5e42()
       1000:5e15 80 f9 20        CMP        CL,0x20
       1000:5e18 73 14           JNC        LAB_1000_5e2e
       1000:5e1a 50              PUSH       AX
       1000:5e1b 53              PUSH       BX
       1000:5e1c 52              PUSH       DX
       1000:5e1d 56              PUSH       SI
       1000:5e1e e8 6e 1e        CALL       FUN_1000_7c8f                                    undefined FUN_1000_7c8f()
       1000:5e21 3b 06 76 11     CMP        AX,word ptr [0x1176]
       1000:5e25 5e              POP        SI
       1000:5e26 5a              POP        DX
       1000:5e27 5b              POP        BX
       1000:5e28 58              POP        AX
       1000:5e29 76 03           JBE        LAB_1000_5e2e
       1000:5e2b 05 05 00        ADD        AX,0x5
                             LAB_1000_5e2e                                   XREF[2]:     1000:5e18(j), 1000:5e29(j)  
       1000:5e2e 56              PUSH       SI
       1000:5e2f 57              PUSH       DI
       1000:5e30 e8 10 65        CALL       FUN_1000_c343                                    undefined FUN_1000_c343()
       1000:5e33 5f              POP        DI
       1000:5e34 5e              POP        SI
       1000:5e35 83 c7 06        ADD        DI,0x6
                             LAB_1000_5e38                                   XREF[2]:     1000:5dfd(j), 1000:5e02(j)  
       1000:5e38 83 c6 1c        ADD        SI,0x1c
       1000:5e3b eb b7           JMP        LAB_1000_5df4
                             LAB_1000_5e3d                                   XREF[1]:     1000:5df7(j)  
       1000:5e3d c7 05 00 00     MOV        word ptr [DI],0x0
       1000:5e41 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5e42(void);
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //
                             undefined FUN_1000_5e42()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5e42                                   XREF[1]:     FUN_1000_5dce:1000:5e12(c)  
       1000:5e42 b8 3a 00        MOV        AX,0x3a
       1000:5e45 f6 06 eb        TEST       byte ptr [0x46eb],0x80
                 46 80
       1000:5e4a 74 03           JZ         FUN_1000_5e4f
       1000:5e4c b8 7a 00        MOV        AX,0x7a
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5e4f(uint16_t si);
                             // C Signature: uint16_t FUN_1000_5e4f(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x8]
                             //
                             undefined __cdecl16near FUN_1000_5e4f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5e4f                                   XREF[6]:     FUN_1000_2d74:1000:2d80(c), 
                                                                                          FUN_1000_380c:1000:381b(c), 
                                                                                          FUN_1000_41e1:1000:4244(c), 
                                                                                          FUN_1000_488a:1000:4891(c), 
                                                                                          FUN_1000_4e12:1000:4e55(c), 
                                                                                          FUN_1000_5e42:1000:5e4a(j)  
       1000:5e4f 8a 4c 08        MOV        CL,byte ptr [SI + 0x8]
       1000:5e52 80 f9 20        CMP        CL,0x20
       1000:5e55 72 13           JC         LAB_1000_5e6a
       1000:5e57 40              INC        AX
       1000:5e58 80 f9 21        CMP        CL,0x21
       1000:5e5b 72 0d           JC         LAB_1000_5e6a
       1000:5e5d 40              INC        AX
       1000:5e5e 80 f9 28        CMP        CL,0x28
       1000:5e61 72 07           JC         LAB_1000_5e6a
       1000:5e63 40              INC        AX
       1000:5e64 80 f9 30        CMP        CL,0x30
       1000:5e67 72 01           JC         LAB_1000_5e6a
       1000:5e69 40              INC        AX
                             LAB_1000_5e6a                                   XREF[4]:     1000:5e55(j), 1000:5e5b(j), 
                                                                                          1000:5e61(j), 1000:5e67(j)  
       1000:5e6a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5ed0(uint16_t di);
                             // C Signature: uint16_t FUN_1000_5ed0(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [BP + 0x0]
                             //
                             undefined __cdecl16near FUN_1000_5ed0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5ed0                                   XREF[3]:     FUN_1000_5ee4:1000:5ee4(c), 
                                                                                          FUN_1000_697c:1000:698a(c), 
                                                                                          FUN_1000_8461:1000:8476(c)  
       1000:5ed0 bd ba a5        MOV        BP,0xa5ba
                             LAB_1000_5ed3                                   XREF[1]:     1000:5edf(j)  
       1000:5ed3 83 c5 06        ADD        BP,0x6
       1000:5ed6 8b 46 00        MOV        AX,word ptr [BP + 0x0]
       1000:5ed9 3b c7           CMP        AX,DI
       1000:5edb 74 06           JZ         LAB_1000_5ee3
       1000:5edd 0b c0           OR         AX,AX
       1000:5edf 75 f2           JNZ        LAB_1000_5ed3
       1000:5ee1 0b ed           OR         BP,BP
                             LAB_1000_5ee3                                   XREF[3]:     1000:5edb(j), 
                                                                                          FUN_1000_5ee4:1000:5ee7(j), 
                                                                                          FUN_1000_5ee4:1000:5f23(j)  
       1000:5ee3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_5ee4(uint16_t bp, uint16_t cx);
                             // C Signature: uint32_t FUN_1000_5ee4(uint16_t bp, uint16_t cx);
                             // Input Parameters:
                             //   BP (uint16_t): 16-bit input value in BP register
                             //   CX (uint16_t): 16-bit input value in CX register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [BX + 0x11d0]
                             //   Read from: word ptr [BP + 0x2]
                             //   Read from: word ptr [BP + 0x4]
                             //   Write to: byte ptr [0x46d8]
                             //   Write to: [0x46f7]
                             //   Write to: word ptr [SI]
                             //
                             undefined FUN_1000_5ee4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5ee4                                   XREF[1]:     FUN_1000_600e:1000:6012(c)  
       1000:5ee4 e8 e9 ff        CALL       FUN_1000_5ed0                                    undefined FUN_1000_5ed0()
       1000:5ee7 75 fa           JNZ        LAB_1000_5ee3
       1000:5ee9 be 68 16        MOV        SI,0x1668
       1000:5eec e8 63 03        CALL       FUN_1000_6252                                    undefined FUN_1000_6252()
       1000:5eef 8b d8           MOV        BX,AX
       1000:5ef1 40              INC        AX
       1000:5ef2 3b 3e f8 46     CMP        DI,word ptr [0x46f8]
       1000:5ef6 75 1a           JNZ        LAB_1000_5f12
       1000:5ef8 3a 06 f7 46     CMP        AL,byte ptr [0x46f7]
       1000:5efc 75 03           JNZ        LAB_1000_5f01
       1000:5efe e9 1a 1c        JMP        FUN_1000_7b1b                                    undefined FUN_1000_7b1b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_5f01                                   XREF[1]:     1000:5efc(j)  
       1000:5f01 e8 6c 83        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:5f04 c6 06 d8        MOV        byte ptr [0x46d8],0x1
                 46 01
       1000:5f09 e8 85 00        CALL       FUN_1000_5f91                                    undefined FUN_1000_5f91()
       1000:5f0c e8 7f 61        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:5f0f e8 71 83        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_5f12                                   XREF[1]:     1000:5ef6(j)  
       1000:5f12 a2 f7 46        MOV        [0x46f7],AL
       1000:5f15 8a 8f d0 11     MOV        CL,byte ptr [BX + 0x11d0]
       1000:5f19 32 ed           XOR        CH,CH
       1000:5f1b 8b 56 02        MOV        DX,word ptr [BP + 0x2]
       1000:5f1e 8b 5e 04        MOV        BX,word ptr [BP + 0x4]
       1000:5f21 0a ff           OR         BH,BH
       1000:5f23 79 be           JNS        LAB_1000_5ee3
       1000:5f25 32 ff           XOR        BH,BH
       1000:5f27 53              PUSH       BX
       1000:5f28 52              PUSH       DX
       1000:5f29 8b c1           MOV        AX,CX
       1000:5f2b d1 e8           SHR        AX,0x1
       1000:5f2d 2b d8           SUB        BX,AX
       1000:5f2f 83 fb 04        CMP        BX,0x4
       1000:5f32 7d 03           JGE        LAB_1000_5f37
       1000:5f34 bb 04 00        MOV        BX,0x4
                             LAB_1000_5f37                                   XREF[1]:     1000:5f32(j)  
       1000:5f37 b8 94 00        MOV        AX,0x94
       1000:5f3a 2b c1           SUB        AX,CX
       1000:5f3c 3b d8           CMP        BX,AX
       1000:5f3e 7c 02           JL         LAB_1000_5f42
       1000:5f40 8b d8           MOV        BX,AX
                             LAB_1000_5f42                                   XREF[1]:     1000:5f3e(j)  
       1000:5f42 83 c2 0f        ADD        DX,0xf
       1000:5f45 81 fa d2 00     CMP        DX,0xd2
       1000:5f49 7c 04           JL         LAB_1000_5f4f
       1000:5f4b 81 ea 82 00     SUB        DX,0x82
                             LAB_1000_5f4f                                   XREF[1]:     1000:5f49(j)  
       1000:5f4f 89 14           MOV        word ptr [SI],DX
       1000:5f51 89 5c 02        MOV        word ptr [SI + 0x2],BX
       1000:5f54 83 c2 6a        ADD        DX,0x6a
       1000:5f57 89 54 04        MOV        word ptr [SI + 0x4],DX
       1000:5f5a 03 d9           ADD        BX,CX
       1000:5f5c 89 5c 06        MOV        word ptr [SI + 0x6],BX
       1000:5f5f 89 36 e0 db     MOV        word ptr [0xdbe0],SI
       1000:5f63 5a              POP        DX
       1000:5f64 5b              POP        BX
       1000:5f65 b8 0a 00        MOV        AX,0xa
       1000:5f68 2b d0           SUB        DX,AX
       1000:5f6a 2b d8           SUB        BX,AX
       1000:5f6c bf 16 d8        MOV        DI,0xd816
       1000:5f6f 89 15           MOV        word ptr [DI],DX
       1000:5f71 89 5d 02        MOV        word ptr [DI + 0x2],BX
       1000:5f74 b0 06           MOV        AL,0x6
       1000:5f76 e9 96 1b        JMP        FUN_1000_7b0f                                    undefined FUN_1000_7b0f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5f79(uint16_t bp);
                             // C Signature: uint16_t FUN_1000_5f79(uint16_t bp);
                             // Input Parameters:
                             //   BP (uint16_t): 16-bit input value in BP register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [BP + 0x0]
                             //
                             undefined __cdecl16near FUN_1000_5f79()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5f79                                   XREF[1]:     FUN_1000_7b36:1000:7b45(c)  
       1000:5f79 33 c0           XOR        AX,AX
       1000:5f7b 87 06 f8 46     XCHG       word ptr [0x46f8],AX
       1000:5f7f 0b c0           OR         AX,AX
       1000:5f81 74 0d           JZ         LAB_1000_5f90
       1000:5f83 e8 95 74        CALL       FUN_1000_d41b                                    undefined FUN_1000_d41b()
       1000:5f86 8a 46 00        MOV        AL,byte ptr [BP + 0x0]
       1000:5f89 fe c0           INC        AL
       1000:5f8b 74 04           JZ         FUN_1000_5f91
       1000:5f8d e9 52 73        JMP        FUN_1000_d2e2                                    undefined FUN_1000_d2e2()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_5f90                                   XREF[1]:     1000:5f81(j)  
       1000:5f90 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_5f91(void);
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Write to: word ptr [0x46f8]
                             //   Write to: byte ptr [0x46f7]
                             //   Write to: word ptr [0xdbe0]
                             //
                             undefined FUN_1000_5f91()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_5f91                                   XREF[2]:     FUN_1000_5ee4:1000:5f09(c), 
                                                                                          FUN_1000_5f79:1000:5f8b(j)  
       1000:5f91 c7 06 f8        MOV        word ptr [0x46f8],0x0
                 46 00 00
       1000:5f97 c6 06 f7        MOV        byte ptr [0x46f7],0x0
                 46 00
       1000:5f9c be 68 16        MOV        SI,0x1668
                             LAB_1000_5f9f                                   XREF[1]:     FUN_1000_79de:1000:79eb(j)  
       1000:5f9f e8 da 60        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:5fa2 c7 06 e0        MOV        word ptr [0xdbe0],0x0
                 db 00 00
       1000:5fa8 e8 02 67        CALL       FUN_1000_c6ad                                    undefined FUN_1000_c6ad()
       1000:5fab b0 08           MOV        AL,0x8
       1000:5fad e9 7b 1b        JMP        FUN_1000_7b2b                                    undefined FUN_1000_7b2b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_600e(void);
                             // C Signature: uint32_t FUN_1000_600e(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CH (uint8_t): 8-bit output value in CH register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0x1671]
                             //   Read from: word ptr [0x1668]
                             //   Read from: word ptr [0x166a]
                             //   Write to: word ptr [0x46f8]
                             //
                             undefined FUN_1000_600e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_600e                                   XREF[1]:     FUN_1000_1c18:1000:1c35(c)  
       1000:600e e8 7d 60        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:6011 57              PUSH       DI
       1000:6012 e8 cf fe        CALL       FUN_1000_5ee4                                    undefined FUN_1000_5ee4()
       1000:6015 5f              POP        DI
       1000:6016 89 3e f8 46     MOV        word ptr [0x46f8],DI
       1000:601a e8 4b 70        CALL       FUN_1000_d068                                    undefined FUN_1000_d068()
       1000:601d b1 9a           MOV        CL,0x9a
       1000:601f 8a 2e 71 16     MOV        CH,byte ptr [0x1671]
       1000:6023 8b 16 68 16     MOV        DX,word ptr [0x1668]
       1000:6027 8b 1e 6a 16     MOV        BX,word ptr [0x166a]
       1000:602b 83 c2 0c        ADD        DX,0xc
       1000:602e 83 c3 04        ADD        BX,0x4
       1000:6031 e8 69 02        CALL       FUN_1000_629d                                    undefined FUN_1000_629d()
       1000:6034 b1 96           MOV        CL,0x96
       1000:6036 83 ea 08        SUB        DX,0x8
       1000:6039 83 c3 09        ADD        BX,0x9
       1000:603c e8 67 02        CALL       FUN_1000_62a6                                    undefined FUN_1000_62a6()
       1000:603f e8 10 02        CALL       FUN_1000_6252                                    undefined FUN_1000_6252()
       1000:6042 3c 02           CMP        AL,0x2
       1000:6044 74 13           JZ         LAB_1000_6059
       1000:6046 f6 06 0a        TEST       byte ptr [0xa],0x20
                 00 20
       1000:604b 74 09           JZ         LAB_1000_6056
       1000:604d 0a c0           OR         AL,AL
       1000:604f 75 05           JNZ        LAB_1000_6056
       1000:6051 50              PUSH       AX
       1000:6052 e8 07 00        CALL       FUN_1000_605c                                    undefined FUN_1000_605c()
       1000:6055 58              POP        AX
                             LAB_1000_6056                                   XREF[2]:     1000:604b(j), 1000:604f(j)  
       1000:6056 e8 53 00        CALL       FUN_1000_60ac                                    undefined FUN_1000_60ac()
                             LAB_1000_6059                                   XREF[1]:     1000:6044(j)  
       1000:6059 e9 20 60        JMP        FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_605c(uint16_t di);
                             // C Signature: uint32_t FUN_1000_605c(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x1668]
                             //   Read from: byte ptr [DI + 0x1b]
                             //   Read from: word ptr [0x1668]
                             //
                             undefined __cdecl16near FUN_1000_605c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_605c                                   XREF[1]:     FUN_1000_600e:1000:6052(c)  
       1000:605c e8 16 70        CALL       FUN_1000_d075                                    undefined FUN_1000_d075()
       1000:605f b1 90           MOV        CL,0x90
       1000:6061 83 c3 0a        ADD        BX,0xa
       1000:6064 8b 16 68 16     MOV        DX,word ptr [0x1668]
       1000:6068 83 c2 04        ADD        DX,0x4
       1000:606b b8 6c 00        MOV        AX,0x6c
       1000:606e e8 23 71        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:6071 8a 45 1b        MOV        AL,byte ptr [DI + 0x1b]
       1000:6074 be 75 00        MOV        SI,0x75
       1000:6077 bd 6d 00        MOV        BP,0x6d
       1000:607a f6 45 0a 20     TEST       byte ptr [DI + 0xa],0x20
       1000:607e 74 1d           JZ         LAB_1000_609d
       1000:6080 51              PUSH       CX
       1000:6081 50              PUSH       AX
       1000:6082 56              PUSH       SI
       1000:6083 e8 0f 82        CALL       FUN_1000_e295                                    undefined FUN_1000_e295()
       1000:6086 58              POP        AX
       1000:6087 59              POP        CX
       1000:6088 83 c3 07        ADD        BX,0x7
       1000:608b 8b 16 68 16     MOV        DX,word ptr [0x1668]
       1000:608f 83 c2 04        ADD        DX,0x4
       1000:6092 8b 2e 6c 16     MOV        BP,word ptr [0x166c]
       1000:6096 53              PUSH       BX
       1000:6097 e8 e0 00        CALL       FUN_1000_617a                                    undefined FUN_1000_617a()
       1000:609a 5b              POP        BX
       1000:609b 59              POP        CX
       1000:609c c3              RET
                             LAB_1000_609d                                   XREF[1]:     1000:607e(j)  
       1000:609d 8b c5           MOV        AX,BP
       1000:609f 83 c3 07        ADD        BX,0x7
       1000:60a2 8b 16 68 16     MOV        DX,word ptr [0x1668]
       1000:60a6 83 c2 0a        ADD        DX,0xa
       1000:60a9 e9 e8 70        JMP        FUN_1000_d194                                    undefined FUN_1000_d194()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_60ac(uint16_t di);
                             // C Signature: uint32_t FUN_1000_60ac(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x1668]
                             //   Read from: [DI + 0x14]
                             //   Read from: word ptr [0x166e]
                             //
                             undefined FUN_1000_60ac()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_60ac                                   XREF[1]:     FUN_1000_600e:1000:6056(c)  
       1000:60ac e8 8c 60        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:60af e8 b6 6f        CALL       FUN_1000_d068                                    undefined FUN_1000_d068()
       1000:60b2 b1 9a           MOV        CL,0x9a
       1000:60b4 8b 16 68 16     MOV        DX,word ptr [0x1668]
       1000:60b8 83 c3 0c        ADD        BX,0xc
       1000:60bb 83 c2 04        ADD        DX,0x4
       1000:60be e8 bd 01        CALL       FUN_1000_627e                                    undefined FUN_1000_627e()
       1000:60c1 72 13           JC         LAB_1000_60d6
       1000:60c3 b8 6e 00        MOV        AX,0x6e
       1000:60c6 e8 cb 70        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:60c9 83 c3 0a        ADD        BX,0xa
       1000:60cc 8d 75 14        LEA        SI,[DI + 0x14]
       1000:60cf 8b 2e 6e 16     MOV        BP,word ptr [0x166e]
       1000:60d3 e9 67 1d        JMP        FUN_1000_7e3d                                    undefined FUN_1000_7e3d()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_60d6                                   XREF[1]:     1000:60c1(j)  
       1000:60d6 b8 4c 00        MOV        AX,0x4c
       1000:60d9 e8 b8 70        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:60dc 83 c3 06        ADD        BX,0x6
       1000:60df 83 c2 2f        ADD        DX,0x2f
       1000:60e2 53              PUSH       BX
       1000:60e3 52              PUSH       DX
       1000:60e4 e8 11 00        CALL       FUN_1000_60f8                                    undefined FUN_1000_60f8()
       1000:60e7 32 e4           XOR        AH,AH
       1000:60e9 05 0f 00        ADD        AX,0xf
       1000:60ec b1 05           MOV        CL,0x5
       1000:60ee d3 e8           SHR        AX,CL
       1000:60f0 05 8e 00        ADD        AX,0x8e
       1000:60f3 5a              POP        DX
       1000:60f4 5b              POP        BX
       1000:60f5 e9 37 61        JMP        FUN_1000_c22f                                    undefined FUN_1000_c22f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_60f8(void);
                             // C Signature: uint32_t FUN_1000_60f8(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xd81c]
                             //   Write to: word ptr [0xd81c]
                             //
                             undefined __cdecl16near FUN_1000_60f8()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_60f8                                   XREF[2]:     FUN_1000_60ac:1000:60e4(c), 
                                                                                          FUN_1000_6144:1000:6148(c)  
       1000:60f8 33 db           XOR        BX,BX
       1000:60fa 33 c9           XOR        CX,CX
       1000:60fc 33 d2           XOR        DX,DX
       1000:60fe 89 16 1c d8     MOV        word ptr [0xd81c],DX
       1000:6102 bd 55 61        MOV        BP,0x6155
       1000:6105 e8 fb 04        CALL       FUN_1000_6603                                    undefined FUN_1000_6603()
       1000:6108 33 c0           XOR        AX,AX
       1000:610a 03 da           ADD        BX,DX
       1000:610c 74 06           JZ         LAB_1000_6114
       1000:610e 86 e2           XCHG       DL,AH
       1000:6110 86 f2           XCHG       DL,DH
       1000:6112 f7 f3           DIV        BX
                             LAB_1000_6114                                   XREF[1]:     1000:610c(j)  
       1000:6114 8b d8           MOV        BX,AX
       1000:6116 33 c0           XOR        AX,AX
       1000:6118 8b 16 1c d8     MOV        DX,word ptr [0xd81c]
       1000:611c 03 ca           ADD        CX,DX
       1000:611e 74 06           JZ         LAB_1000_6126
       1000:6120 86 e2           XCHG       DL,AH
       1000:6122 86 f2           XCHG       DL,DH
       1000:6124 f7 f1           DIV        CX
                             LAB_1000_6126                                   XREF[1]:     1000:611e(j)  
       1000:6126 8b c8           MOV        CX,AX
       1000:6128 8b f3           MOV        SI,BX
       1000:612a 3b f1           CMP        SI,CX
       1000:612c 73 02           JNC        LAB_1000_6130
       1000:612e 8b f1           MOV        SI,CX
                             LAB_1000_6130                                   XREF[1]:     1000:612c(j)  
       1000:6130 8b c3           MOV        AX,BX
       1000:6132 2b c1           SUB        AX,CX
       1000:6134 0b f6           OR         SI,SI
       1000:6136 74 07           JZ         LAB_1000_613f
       1000:6138 99              CWD
       1000:6139 86 c4           XCHG       AH,AL
       1000:613b 86 c2           XCHG       DL,AL
       1000:613d f7 fe           IDIV       SI
                             LAB_1000_613f                                   XREF[1]:     1000:6136(j)  
       1000:613f d1 f8           SAR        AX,0x1
       1000:6141 04 80           ADD        AL,0x80
       1000:6143 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6144(void);
                             // C Signature: uint16_t FUN_1000_6144(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: [0xfd]
                             //
                             undefined __cdecl16near FUN_1000_6144()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6144                                   XREF[1]:     FUN_1000_503c:1000:505c(c)  
       1000:6144 e8 29 81        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:6147 06              PUSH       ES
       1000:6148 e8 ad ff        CALL       FUN_1000_60f8                                    undefined FUN_1000_60f8()
       1000:614b 0c 01           OR         AL,0x1
       1000:614d a2 fd 00        MOV        [0xfd],AL
       1000:6150 07              POP        ES
       1000:6151 e8 2f 81        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:6154 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_617a(uint16_t si);
                             // C Signature: uint32_t FUN_1000_617a(uint16_t si);
                             // Input Parameters:
                             //   ES (uint16_t): Segment register input value
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr ES:[SI]
                             //
                             undefined __cdecl16near FUN_1000_617a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_617a                                   XREF[1]:     FUN_1000_605c:1000:6097(c)  
       1000:617a 81 e1 ff 00     AND        CX,0xff
       1000:617e 74 52           JZ         LAB_1000_61d2
       1000:6180 53              PUSH       BX
       1000:6181 57              PUSH       DI
       1000:6182 50              PUSH       AX
       1000:6183 52              PUSH       DX
       1000:6184 e8 6d 60        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:6187 8b fd           MOV        DI,BP
       1000:6189 2b fa           SUB        DI,DX
       1000:618b 26 8b 2c        MOV        BP,word ptr ES:[SI]
       1000:618e 81 e5 ff 0f     AND        BP,0xfff
       1000:6192 83 c5 02        ADD        BP,0x2
       1000:6195 8b c7           MOV        AX,DI
       1000:6197 33 d2           XOR        DX,DX
       1000:6199 f7 f1           DIV        CX
       1000:619b 3b c5           CMP        AX,BP
       1000:619d 73 16           JNC        LAB_1000_61b5
       1000:619f 2b fd           SUB        DI,BP
       1000:61a1 8b c7           MOV        AX,DI
       1000:61a3 33 d2           XOR        DX,DX
       1000:61a5 f7 f1           DIV        CX
       1000:61a7 8b e8           MOV        BP,AX
       1000:61a9 83 fd 02        CMP        BP,0x2
       1000:61ac 73 07           JNC        LAB_1000_61b5
       1000:61ae bd 02 00        MOV        BP,0x2
       1000:61b1 8b cf           MOV        CX,DI
       1000:61b3 d1 e9           SHR        CX,0x1
                             LAB_1000_61b5                                   XREF[2]:     1000:619d(j), 1000:61ac(j)  
       1000:61b5 5a              POP        DX
       1000:61b6 58              POP        AX
                             LAB_1000_61b7                                   XREF[1]:     1000:61c6(j)  
       1000:61b7 50              PUSH       AX
       1000:61b8 53              PUSH       BX
       1000:61b9 51              PUSH       CX
       1000:61ba 52              PUSH       DX
       1000:61bb 55              PUSH       BP
       1000:61bc e8 70 60        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:61bf 5d              POP        BP
       1000:61c0 5a              POP        DX
       1000:61c1 59              POP        CX
       1000:61c2 5b              POP        BX
       1000:61c3 58              POP        AX
       1000:61c4 03 d5           ADD        DX,BP
       1000:61c6 e2 ef           LOOP       LAB_1000_61b7
       1000:61c8 5f              POP        DI
       1000:61c9 5b              POP        BX
       1000:61ca e8 27 60        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:61cd 26 02 5c 02     ADD        BL,byte ptr ES:[SI + 0x2]
       1000:61d1 43              INC        BX
                             LAB_1000_61d2                                   XREF[2]:     1000:617e(j), 
                                                                                          FUN_1000_61d3:1000:61d7(j)  
       1000:61d2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_61d3(uint16_t si);
                             // C Signature: uint32_t FUN_1000_61d3(uint16_t si);
                             // Input Parameters:
                             //   ES (uint16_t): Segment register input value
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr ES:[SI + 0x2]
                             //   Read from: word ptr ES:[SI]
                             //
                             undefined __cdecl16near FUN_1000_61d3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_61d3                                   XREF[1]:     FUN_1000_7e3d:1000:7e84(c)  
       1000:61d3 81 e1 ff 00     AND        CX,0xff
       1000:61d7 74 f9           JZ         LAB_1000_61d2
       1000:61d9 53              PUSH       BX
       1000:61da 57              PUSH       DI
       1000:61db 50              PUSH       AX
       1000:61dc 52              PUSH       DX
       1000:61dd e8 14 60        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:61e0 8b fd           MOV        DI,BP
       1000:61e2 2b fb           SUB        DI,BX
       1000:61e4 26 8b 6c 02     MOV        BP,word ptr ES:[SI + 0x2]
       1000:61e8 81 e5 ff 00     AND        BP,0xff
       1000:61ec 83 c5 02        ADD        BP,0x2
       1000:61ef 8b c7           MOV        AX,DI
       1000:61f1 33 d2           XOR        DX,DX
       1000:61f3 f7 f1           DIV        CX
       1000:61f5 3b c5           CMP        AX,BP
       1000:61f7 73 16           JNC        LAB_1000_620f
       1000:61f9 2b fd           SUB        DI,BP
       1000:61fb 8b c7           MOV        AX,DI
       1000:61fd 33 d2           XOR        DX,DX
       1000:61ff f7 f1           DIV        CX
       1000:6201 8b e8           MOV        BP,AX
       1000:6203 83 fd 02        CMP        BP,0x2
       1000:6206 73 07           JNC        LAB_1000_620f
       1000:6208 bd 02 00        MOV        BP,0x2
       1000:620b 8b cf           MOV        CX,DI
       1000:620d d1 e9           SHR        CX,0x1
                             LAB_1000_620f                                   XREF[2]:     1000:61f7(j), 1000:6206(j)  
       1000:620f 5a              POP        DX
       1000:6210 58              POP        AX
                             LAB_1000_6211                                   XREF[1]:     1000:6220(j)  
       1000:6211 50              PUSH       AX
       1000:6212 53              PUSH       BX
       1000:6213 51              PUSH       CX
       1000:6214 52              PUSH       DX
       1000:6215 55              PUSH       BP
       1000:6216 e8 16 60        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:6219 5d              POP        BP
       1000:621a 5a              POP        DX
       1000:621b 59              POP        CX
       1000:621c 5b              POP        BX
       1000:621d 58              POP        AX
       1000:621e 03 dd           ADD        BX,BP
       1000:6220 e2 ef           LOOP       LAB_1000_6211
       1000:6222 5f              POP        DI
       1000:6223 5b              POP        BX
       1000:6224 e8 cd 5f        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:6227 26 8b 04        MOV        AX,word ptr ES:[SI]
       1000:622a 80 e4 0f        AND        AH,0xf
       1000:622d 03 d0           ADD        DX,AX
       1000:622f 42              INC        DX
       1000:6230 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6231(uint16_t di);
                             // C Signature: uint16_t FUN_1000_6231(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x8]
                             //
                             undefined __cdecl16near FUN_1000_6231()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6231                                   XREF[3]:     FUN_1000_40f9:1000:415a(c), 
                                                                                          FUN_1000_6252:1000:6266(c), 
                                                                                          FUN_1000_629d:1000:629d(c)  
       1000:6231 53              PUSH       BX
       1000:6232 8a 5d 08        MOV        BL,byte ptr [DI + 0x8]
       1000:6235 33 c0           XOR        AX,AX
       1000:6237 80 fb 20        CMP        BL,0x20
       1000:623a 72 14           JC         LAB_1000_6250
       1000:623c 40              INC        AX
       1000:623d 80 fb 21        CMP        BL,0x21
       1000:6240 72 0e           JC         LAB_1000_6250
       1000:6242 40              INC        AX
       1000:6243 80 fb 28        CMP        BL,0x28
       1000:6246 72 08           JC         LAB_1000_6250
       1000:6248 40              INC        AX
       1000:6249 80 fb 30        CMP        BL,0x30
       1000:624c 72 02           JC         LAB_1000_6250
       1000:624e 2c 02           SUB        AL,0x2
                             LAB_1000_6250                                   XREF[4]:     1000:623a(j), 1000:6240(j), 
                                                                                          1000:6246(j), 1000:624c(j)  
       1000:6250 5b              POP        BX
       1000:6251 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6252(uint16_t di);
                             // C Signature: uint16_t FUN_1000_6252(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_6252()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6252                                   XREF[2]:     FUN_1000_5ee4:1000:5eec(c), 
                                                                                          FUN_1000_600e:1000:603f(c)  
       1000:6252 e8 29 00        CALL       FUN_1000_627e                                    undefined FUN_1000_627e()
       1000:6255 72 23           JC         LAB_1000_627a
       1000:6257 e8 dc fa        CALL       FUN_1000_5d36                                    undefined FUN_1000_5d36()
       1000:625a b8 02 00        MOV        AX,0x2
       1000:625d 72 01           JC         LAB_1000_6260
       1000:625f c3              RET
                             LAB_1000_6260                                   XREF[1]:     1000:625d(j)  
       1000:6260 f6 45 0a 10     TEST       byte ptr [DI + 0xa],0x10
       1000:6264 74 17           JZ         LAB_1000_627d
       1000:6266 e8 c8 ff        CALL       FUN_1000_6231                                    undefined FUN_1000_6231()
       1000:6269 0b c0           OR         AX,AX
       1000:626b 74 10           JZ         LAB_1000_627d
       1000:626d 3c 03           CMP        AL,0x3
       1000:626f 75 03           JNZ        LAB_1000_6274
       1000:6271 33 c0           XOR        AX,AX
       1000:6273 c3              RET
                             LAB_1000_6274                                   XREF[1]:     1000:626f(j)  
       1000:6274 3c 02           CMP        AL,0x2
       1000:6276 b0 02           MOV        AL,0x2
       1000:6278 75 03           JNZ        LAB_1000_627d
                             LAB_1000_627a                                   XREF[1]:     1000:6255(j)  
       1000:627a b8 01 00        MOV        AX,0x1
                             LAB_1000_627d                                   XREF[3]:     1000:6264(j), 1000:626b(j), 
                                                                                          1000:6278(j)  
       1000:627d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_627e(uint16_t di);
                             // C Signature: void FUN_1000_627e(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_627e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_627e                                   XREF[2]:     FUN_1000_60ac:1000:60be(c), 
                                                                                          FUN_1000_6252:1000:6252(c)  
       1000:627e e8 ef 7f        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:6281 f6 45 0a 02     TEST       byte ptr [DI + 0xa],0x2
       1000:6285 75 0c           JNZ        LAB_1000_6293
       1000:6287 e8 ac fa        CALL       FUN_1000_5d36                                    undefined FUN_1000_5d36()
       1000:628a 72 0c           JC         LAB_1000_6298
       1000:628c e8 09 ee        CALL       FUN_1000_5098                                    undefined FUN_1000_5098()
       1000:628f 0b d2           OR         DX,DX
       1000:6291 74 05           JZ         LAB_1000_6298
                             LAB_1000_6293                                   XREF[1]:     1000:6285(j)  
       1000:6293 e8 ed 7f        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:6296 f9              STC
       1000:6297 c3              RET
                             LAB_1000_6298                                   XREF[2]:     1000:628a(j), 1000:6291(j)  
       1000:6298 e8 e8 7f        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:629b f8              CLC
       1000:629c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_629d(void);
                             //
                             undefined FUN_1000_629d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_629d                                   XREF[1]:     FUN_1000_600e:1000:6031(c)  
       1000:629d e8 91 ff        CALL       FUN_1000_6231                                    undefined FUN_1000_6231()
       1000:62a0 05 44 00        ADD        AX,0x44
       1000:62a3 e9 ee 6e        JMP        FUN_1000_d194                                    undefined FUN_1000_d194()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_62a6(uint16_t di);
                             // C Signature: uint16_t FUN_1000_62a6(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI]
                             //   Read from: byte ptr [DI + 0x1]
                             //
                             undefined FUN_1000_62a6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_62a6                                   XREF[2]:     FUN_1000_600e:1000:603c(c), 
                                                                                          FUN_1000_78e9:1000:7933(c)  
       1000:62a6 8a 05           MOV        AL,byte ptr [DI]
       1000:62a8 32 e4           XOR        AH,AH
       1000:62aa 05 00 00        ADD        AX,0x0
       1000:62ad e8 e4 6e        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:62b0 80 7d 01 03     CMP        byte ptr [DI + 0x1],0x3
       1000:62b4 b0 20           MOV        AL,0x20
       1000:62b6 72 02           JC         LAB_1000_62ba
       1000:62b8 b0 2d           MOV        AL,0x2d
                             LAB_1000_62ba                                   XREF[1]:     1000:62b6(j)  
       1000:62ba ff 16 18 25     CALL       word ptr [0x2518]
       1000:62be 8a 45 01        MOV        AL,byte ptr [DI + 0x1]
       1000:62c1 32 e4           XOR        AH,AH
       1000:62c3 05 0c 00        ADD        AX,0xc
       1000:62c6 e9 d2 6e        JMP        FUN_1000_d19b                                    undefined FUN_1000_d19b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_62c9(uint16_t si);
                             // C Signature: void FUN_1000_62c9(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x2]
                             //   Read from: word ptr [SI + 0x4]
                             //
                             undefined __cdecl16near FUN_1000_62c9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_62c9                                   XREF[4]:     FUN_1000_49a0:1000:49bf(c), 
                                                                                          FUN_1000_5d44:1000:5d61(c), 
                                                                                          FUN_1000_5dce:1000:5dff(c), 
                                                                                          FUN_1000_62f2:1000:62fe(c)  
       1000:62c9 80 3e eb        CMP        byte ptr [0x46eb],0x1
                 46 01
       1000:62ce 72 21           JC         LAB_1000_62f1
       1000:62d0 8b 54 02        MOV        DX,word ptr [SI + 0x2]
       1000:62d3 8b 5c 04        MOV        BX,word ptr [SI + 0x4]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_62d6(uint16_t bx, uint16_t dx);
                             // C Signature: void FUN_1000_62d6(uint16_t bx, uint16_t dx);
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //
                             undefined __cdecl16near FUN_1000_62d6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_62d6                                   XREF[7]:     FUN_1000_445d:1000:4466(c), 
                                                                                          FUN_1000_4a1a:1000:4a43(c), 
                                                                                          FUN_1000_4a5a:1000:4a75(c), 
                                                                                          FUN_1000_4f0c:1000:4f73(c), 
                                                                                          FUN_1000_62f2:1000:630c(c), 
                                                                                          FUN_1000_6314:1000:6317(c), 
                                                                                          FUN_1000_634d:1000:634f(c)  
       1000:62d6 e8 6e 53        CALL       FUN_1000_b647                                    undefined FUN_1000_b647()
       1000:62d9 3b 16 e3 46     CMP        DX,word ptr [0x46e3]
       1000:62dd 72 12           JC         LAB_1000_62f1
       1000:62df 3b 16 e7 46     CMP        DX,word ptr [0x46e7]
       1000:62e3 f5              CMC
       1000:62e4 72 0b           JC         LAB_1000_62f1
       1000:62e6 3b 1e e5 46     CMP        BX,word ptr [0x46e5]
       1000:62ea 72 05           JC         LAB_1000_62f1
       1000:62ec 3b 1e e9 46     CMP        BX,word ptr [0x46e9]
       1000:62f0 f5              CMC
                             LAB_1000_62f1                                   XREF[5]:     FUN_1000_62c9:1000:62ce(j), 
                                                                                          1000:62dd(j), 1000:62e4(j), 
                                                                                          1000:62ea(j), 
                                                                                          FUN_1000_6314:1000:6322(j)  
       1000:62f1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_62f2(void);
                             // C Signature: uint32_t FUN_1000_62f2(void);
                             // Input/Output Parameters:
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AX (uint16_t): 16-bit output value in AX register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: word ptr [SI + 0x6]
                             //   Read from: word ptr [SI + 0x8]
                             //
                             undefined __cdecl16near FUN_1000_62f2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_62f2                                   XREF[1]:     FUN_1000_542f:1000:5550(c)  
       1000:62f2 e8 f6 05        CALL       FUN_1000_68eb                                    undefined FUN_1000_68eb()
       1000:62f5 f6 44 03 40     TEST       byte ptr [SI + 0x3],0x40
       1000:62f9 75 0b           JNZ        LAB_1000_6306
       1000:62fb 8b 74 04        MOV        SI,word ptr [SI + 0x4]
       1000:62fe e8 c8 ff        CALL       FUN_1000_62c9                                    undefined FUN_1000_62c9()
       1000:6301 b8 36 00        MOV        AX,0x36
       1000:6304 eb 1c           JMP        LAB_1000_6322
                             LAB_1000_6306                                   XREF[1]:     1000:62f9(j)  
       1000:6306 8b 54 06        MOV        DX,word ptr [SI + 0x6]
       1000:6309 8b 5c 08        MOV        BX,word ptr [SI + 0x8]
       1000:630c e8 c7 ff        CALL       FUN_1000_62d6                                    undefined FUN_1000_62d6()
       1000:630f b8 36 00        MOV        AX,0x36
       1000:6312 eb 0e           JMP        LAB_1000_6322
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_6314(uint16_t si);
                             // C Signature: uint32_t FUN_1000_6314(uint16_t si);
                             // Input Parameters:
                             //   ES (uint16_t): Segment register input value
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined FUN_1000_6314()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6314                                   XREF[2]:     FUN_1000_542f:1000:5558(c), 
                                                                                          FUN_1000_5d6d:1000:5d9f(c)  
       1000:6314 e8 67 dd        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:6317 e8 bc ff        CALL       FUN_1000_62d6                                    undefined FUN_1000_62d6()
       1000:631a b8 4c 00        MOV        AX,0x4c
       1000:631d 9c              PUSHF
       1000:631e 83 ea 0d        SUB        DX,0xd
       1000:6321 9d              POPF
                             LAB_1000_6322                                   XREF[2]:     FUN_1000_62f2:1000:6304(j), 
                                                                                          FUN_1000_62f2:1000:6312(j)  
       1000:6322 72 cd           JC         LAB_1000_62f1
       1000:6324 ff 36 84 27     PUSH       word ptr [0x2784]
       1000:6328 50              PUSH       AX
       1000:6329 e8 0b 5e        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:632c 58              POP        AX
       1000:632d e8 c4 5e        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:6330 26 2a 5c 02     SUB        BL,byte ptr ES:[SI + 0x2]
       1000:6334 e8 d6 5f        CALL       FUN_1000_c30d                                    undefined FUN_1000_c30d()
       1000:6337 58              POP        AX
       1000:6338 e9 03 5e        JMP        FUN_1000_c13e                                    undefined FUN_1000_c13e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_633b(void);
                             // C Signature: void FUN_1000_633b(void);
                             // Input/Output Parameters:
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x197c]
                             //   Read from: word ptr [0x197e]
                             //
                             undefined __cdecl16near FUN_1000_633b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_633b                                   XREF[1]:     FUN_1000_5dce:1000:5dd6(c)  
       1000:633b 8b 16 7c 19     MOV        DX,word ptr [0x197c]
       1000:633f 8b 1e 7e 19     MOV        BX,word ptr [0x197e]
       1000:6343 83 eb 12        SUB        BX,0x12
                             LAB_1000_6346                                   XREF[1]:     1000:634a(j)  
       1000:6346 e8 04 00        CALL       FUN_1000_634d                                    undefined FUN_1000_634d()
       1000:6349 43              INC        BX
       1000:634a 73 fa           JNC        LAB_1000_6346
       1000:634c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_634d(void);
                             // C Signature: void FUN_1000_634d(void);
                             // Input/Output Parameters:
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_634d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_634d                                   XREF[1]:     FUN_1000_633b:1000:6346(c)  
       1000:634d 53              PUSH       BX
       1000:634e 52              PUSH       DX
       1000:634f e8 84 ff        CALL       FUN_1000_62d6                                    undefined FUN_1000_62d6()
       1000:6352 5e              POP        SI
       1000:6353 59              POP        CX
       1000:6354 72 13           JC         LAB_1000_6369
       1000:6356 53              PUSH       BX
       1000:6357 51              PUSH       CX
       1000:6358 52              PUSH       DX
       1000:6359 56              PUSH       SI
       1000:635a e8 0d 00        CALL       FUN_1000_636a                                    undefined FUN_1000_636a()
       1000:635d 5e              POP        SI
       1000:635e 5a              POP        DX
       1000:635f 59              POP        CX
       1000:6360 5b              POP        BX
       1000:6361 51              PUSH       CX
       1000:6362 56              PUSH       SI
       1000:6363 e8 34 00        CALL       FUN_1000_639a                                    undefined FUN_1000_639a()
       1000:6366 5a              POP        DX
       1000:6367 5b              POP        BX
       1000:6368 f8              CLC
                             LAB_1000_6369                                   XREF[1]:     1000:6354(j)  
       1000:6369 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_636a(uint8_t al, uint16_t bp, uint16_t cx, uint16_t dx);
                             // C Signature: uint16_t FUN_1000_636a(uint8_t al, uint16_t bp, uint16_t cx, uint16_t dx);
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   BP (uint16_t): 16-bit input value in BP register
                             //   CX (uint16_t): 16-bit input value in CX register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   ES (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             // Memory Access:
                             //   Read from: word ptr ES:[DI]
                             //
                             undefined __cdecl16near FUN_1000_636a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_636a                                   XREF[1]:     FUN_1000_634d:1000:635a(c)  
       1000:636a 87 d6           XCHG       SI,DX
       1000:636c 87 d9           XCHG       CX,BX
       1000:636e e8 1a 52        CALL       FUN_1000_b58b                                    undefined FUN_1000_b58b()
       1000:6371 87 d6           XCHG       SI,DX
       1000:6373 8b d9           MOV        BX,CX
                             LAB_1000_6375                                   XREF[2]:     1000:638c(j), 1000:6392(j)  
       1000:6375 26 8b 05        MOV        AX,word ptr ES:[DI]
       1000:6378 25 30 30        AND        AX,0x3030
       1000:637b 3c 10           CMP        AL,0x10
       1000:637d 74 16           JZ         LAB_1000_6395
                             LAB_1000_637f                                   XREF[1]:     1000:6398(j)  
       1000:637f 83 c2 04        ADD        DX,0x4
       1000:6382 3b 16 e7 46     CMP        DX,word ptr [0x46e7]
       1000:6386 73 0c           JNC        LAB_1000_6394
       1000:6388 47              INC        DI
       1000:6389 46              INC        SI
       1000:638a 3b f5           CMP        SI,BP
       1000:638c 72 e7           JC         LAB_1000_6375
       1000:638e 2b f5           SUB        SI,BP
       1000:6390 2b fd           SUB        DI,BP
       1000:6392 eb e1           JMP        LAB_1000_6375
                             LAB_1000_6394                                   XREF[2]:     1000:6386(j), 
                                                                                          FUN_1000_639a:1000:63b6(j)  
       1000:6394 c3              RET
                             LAB_1000_6395                                   XREF[1]:     1000:637d(j)  
       1000:6395 e8 2f 00        CALL       FUN_1000_63c7                                    undefined FUN_1000_63c7()
       1000:6398 eb e5           JMP        LAB_1000_637f
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_639a(uint8_t al, uint16_t cx, uint16_t di);
                             // C Signature: uint32_t FUN_1000_639a(uint8_t al, uint16_t cx, uint16_t di);
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   CX (uint16_t): 16-bit input value in CX register
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   ES (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             // Memory Access:
                             //   Read from: word ptr ES:[DI]
                             //
                             undefined __cdecl16near FUN_1000_639a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_639a                                   XREF[1]:     FUN_1000_634d:1000:6363(c)  
       1000:639a 87 d6           XCHG       SI,DX
       1000:639c 87 d9           XCHG       CX,BX
       1000:639e e8 ea 51        CALL       FUN_1000_b58b                                    undefined FUN_1000_b58b()
       1000:63a1 87 d6           XCHG       SI,DX
       1000:63a3 8b d9           MOV        BX,CX
                             LAB_1000_63a5                                   XREF[2]:     1000:63ba(j), 1000:63c0(j)  
       1000:63a5 26 8b 05        MOV        AX,word ptr ES:[DI]
       1000:63a8 25 30 30        AND        AX,0x3030
       1000:63ab 3c 10           CMP        AL,0x10
       1000:63ad 74 13           JZ         LAB_1000_63c2
                             LAB_1000_63af                                   XREF[1]:     1000:63c5(j)  
       1000:63af 83 ea 04        SUB        DX,0x4
       1000:63b2 3b 16 e3 46     CMP        DX,word ptr [0x46e3]
       1000:63b6 72 dc           JC         LAB_1000_6394
       1000:63b8 4f              DEC        DI
       1000:63b9 4e              DEC        SI
       1000:63ba 79 e9           JNS        LAB_1000_63a5
       1000:63bc 03 f5           ADD        SI,BP
       1000:63be 03 fd           ADD        DI,BP
       1000:63c0 eb e3           JMP        LAB_1000_63a5
                             LAB_1000_63c2                                   XREF[1]:     1000:63ad(j)  
       1000:63c2 e8 02 00        CALL       FUN_1000_63c7                                    undefined FUN_1000_63c7()
       1000:63c5 eb e8           JMP        LAB_1000_63af
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_63c7(uint8_t ah);
                             // C Signature: uint32_t FUN_1000_63c7(uint8_t ah);
                             // Input Parameters:
                             //   AH (uint8_t): 8-bit input value in AH register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_63c7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_63c7                                   XREF[2]:     FUN_1000_636a:1000:6395(c), 
                                                                                          FUN_1000_639a:1000:63c2(c)  
       1000:63c7 53              PUSH       BX
       1000:63c8 52              PUSH       DX
       1000:63c9 56              PUSH       SI
       1000:63ca 57              PUSH       DI
       1000:63cb 55              PUSH       BP
       1000:63cc 06              PUSH       ES
       1000:63cd 80 fc 10        CMP        AH,0x10
       1000:63d0 b8 78 00        MOV        AX,0x78
       1000:63d3 75 01           JNZ        LAB_1000_63d6
       1000:63d5 40              INC        AX
                             LAB_1000_63d6                                   XREF[1]:     1000:63d3(j)  
       1000:63d6 03 ef           ADD        BP,DI
       1000:63d8 83 e7 03        AND        DI,0x3
       1000:63db d1 ed           SHR        BP,0x1
       1000:63dd d1 ed           SHR        BP,0x1
       1000:63df 83 e5 03        AND        BP,0x3
       1000:63e2 03 df           ADD        BX,DI
       1000:63e4 03 d5           ADD        DX,BP
       1000:63e6 e8 5a 5f        CALL       FUN_1000_c343                                    undefined FUN_1000_c343()
       1000:63e9 07              POP        ES
       1000:63ea 5d              POP        BP
       1000:63eb 5f              POP        DI
       1000:63ec 5e              POP        SI
       1000:63ed 5a              POP        DX
       1000:63ee 5b              POP        BX
       1000:63ef c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_63f0(void);
                             // C Signature: uint16_t FUN_1000_63f0(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdd00]
                             //   Read from: byte ptr [DI + 0xa]
                             //   Read from: byte ptr [DI + 0x1b]
                             //   Write to: byte ptr [DI + 0x1b]
                             //
                             undefined __cdecl16near FUN_1000_63f0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_63f0                                   XREF[1]:     FUN_1000_1b23:1000:1b73(c)  
       1000:63f0 80 3e de        CMP        byte ptr [0x46de],0x0
                 46 00
       1000:63f5 74 36           JZ         LAB_1000_642d
       1000:63f7 8e 06 00 dd     MOV        ES,word ptr [0xdd00]
       1000:63fb bf 00 01        MOV        DI,0x100
                             LAB_1000_63fe                                   XREF[1]:     1000:6428(j)  
       1000:63fe 8a 45 0a        MOV        AL,byte ptr [DI + 0xa]
       1000:6401 a8 20           TEST       AL,0x20
       1000:6403 74 1d           JZ         LAB_1000_6422
       1000:6405 8a 5d 1b        MOV        BL,byte ptr [DI + 0x1b]
       1000:6408 b7 fa           MOV        BH,0xfa
       1000:640a 3a df           CMP        BL,BH
       1000:640c 73 14           JNC        LAB_1000_6422
       1000:640e 8b 75 06        MOV        SI,word ptr [DI + 0x6]
       1000:6411 e8 1a 00        CALL       FUN_1000_642e                                    undefined FUN_1000_642e()
       1000:6414 d1 ea           SHR        DX,0x1
       1000:6416 42              INC        DX
       1000:6417 02 da           ADD        BL,DL
       1000:6419 3a df           CMP        BL,BH
       1000:641b 72 02           JC         LAB_1000_641f
       1000:641d 8a df           MOV        BL,BH
                             LAB_1000_641f                                   XREF[1]:     1000:641b(j)  
       1000:641f 88 5d 1b        MOV        byte ptr [DI + 0x1b],BL
                             LAB_1000_6422                                   XREF[2]:     1000:6403(j), 1000:640c(j)  
       1000:6422 83 c7 1c        ADD        DI,0x1c
       1000:6425 83 3d ff        CMP        word ptr [DI],-0x1
       1000:6428 75 d4           JNZ        LAB_1000_63fe
       1000:642a e9 89 01        JMP        FUN_1000_65b6                                    undefined FUN_1000_65b6()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_642d                                   XREF[1]:     1000:63f5(j)  
       1000:642d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_642e(uint8_t ah, uint8_t al);
                             // C Signature: uint32_t FUN_1000_642e(uint8_t ah, uint8_t al);
                             // Input Parameters:
                             //   AH (uint8_t): 8-bit input value in AH register
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             undefined __cdecl16near FUN_1000_642e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_642e                                   XREF[1]:     FUN_1000_63f0:1000:6411(c)  
       1000:642e b9 03 00        MOV        CX,0x3
       1000:6431 4e              DEC        SI
       1000:6432 33 d2           XOR        DX,DX
                             LAB_1000_6434                                   XREF[1]:     1000:6444(j)  
       1000:6434 26 ad           LODSW      ES:SI
       1000:6436 25 30 30        AND        AX,0x3030
       1000:6439 80 fc 10        CMP        AH,0x10
       1000:643c 75 01           JNZ        LAB_1000_643f
       1000:643e 42              INC        DX
                             LAB_1000_643f                                   XREF[1]:     1000:643c(j)  
       1000:643f 3c 10           CMP        AL,0x10
       1000:6441 75 01           JNZ        LAB_1000_6444
       1000:6443 42              INC        DX
                             LAB_1000_6444                                   XREF[1]:     1000:6441(j)  
       1000:6444 e2 ee           LOOP       LAB_1000_6434
       1000:6446 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_644e(void);
                             // C Signature: uint32_t FUN_1000_644e(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0xb]
                             //   Read from: word ptr [DI + 0x2]
                             //   Read from: word ptr [DI + 0x4]
                             //   Write to: byte ptr [0x4739]
                             //   Write to: word ptr CS:[DAT_1000_64ed]
                             //   Write to: word ptr [0xd81c]
                             //
                             undefined __cdecl16near FUN_1000_644e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_644e                                   XREF[1]:     FUN_1000_7429:1000:7449(c)  
       1000:644e c6 06 39        MOV        byte ptr [0x4739],0x20
                 47 20
       1000:6453 33 c9           XOR        CX,CX
       1000:6455 8a 4d 0b        MOV        CL,byte ptr [DI + 0xb]
       1000:6458 2e c7 06        MOV        word ptr CS:[DAT_1000_64ed],0x646f
                 ed 64 6f 64
       1000:645f 8b 55 02        MOV        DX,word ptr [DI + 0x2]
       1000:6462 8b 5d 04        MOV        BX,word ptr [DI + 0x4]
       1000:6465 89 16 1c d8     MOV        word ptr [0xd81c],DX
       1000:6469 89 1e 18 d8     MOV        word ptr [0xd818],BX
       1000:646d eb 43           JMP        LAB_1000_64b2
                             LAB_1000_64b2                                   XREF[1]:     1000:646d(j)  
       1000:64b2 33 db           XOR        BX,BX
       1000:64b4 8b d3           MOV        DX,BX
       1000:64b6 8b fa           MOV        DI,DX
       1000:64b8 2b d9           SUB        BX,CX
       1000:64ba 8b f1           MOV        SI,CX
       1000:64bc 4e              DEC        SI
       1000:64bd 8b c1           MOV        AX,CX
       1000:64bf 33 ed           XOR        BP,BP
       1000:64c1 eb 03           JMP        LAB_1000_64c6
                             LAB_1000_64c3                                   XREF[2]:     1000:64c8(j), 1000:64d3(j)  
       1000:64c3 45              INC        BP
       1000:64c4 42              INC        DX
       1000:64c5 4f              DEC        DI
                             LAB_1000_64c6                                   XREF[1]:     1000:64c1(j)  
       1000:64c6 2b c5           SUB        AX,BP
       1000:64c8 79 f9           JNS        LAB_1000_64c3
       1000:64ca e8 22 00        CALL       FUN_1000_64ef                                    undefined FUN_1000_64ef()
       1000:64cd 43              INC        BX
       1000:64ce 4e              DEC        SI
       1000:64cf 03 c1           ADD        AX,CX
       1000:64d1 78 02           JS         LAB_1000_64d5
       1000:64d3 e2 ee           LOOP       LAB_1000_64c3
                             LAB_1000_64d5                                   XREF[1]:     1000:64d1(j)  
       1000:64d5 45              INC        BP
       1000:64d6 49              DEC        CX
       1000:64d7 eb 05           JMP        LAB_1000_64de
                             LAB_1000_64d9                                   XREF[1]:     1000:64ea(j)  
       1000:64d9 42              INC        DX
       1000:64da 4f              DEC        DI
       1000:64db 2b c5           SUB        AX,BP
       1000:64dd 45              INC        BP
                             LAB_1000_64de                                   XREF[2]:     1000:64d7(j), 1000:64e7(j)  
       1000:64de e8 0e 00        CALL       FUN_1000_64ef                                    undefined FUN_1000_64ef()
       1000:64e1 43              INC        BX
       1000:64e2 4e              DEC        SI
       1000:64e3 03 c1           ADD        AX,CX
       1000:64e5 72 02           JC         LAB_1000_64e9
       1000:64e7 e2 f5           LOOP       LAB_1000_64de
                             LAB_1000_64e9                                   XREF[1]:     1000:64e5(j)  
       1000:64e9 49              DEC        CX
       1000:64ea 79 ed           JNS        LAB_1000_64d9
       1000:64ec c3              RET
                             DAT_1000_64ed                                   XREF[3]:     FUN_1000_644e:1000:6458(W), 
                                                                                          FUN_1000_64ef:1000:6500(R), 
                                                                                          FUN_1000_64ef:1000:6508(R)  
       1000:64ed 00 00           undefined2 0000h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_64ef(void);
                             // C Signature: uint32_t FUN_1000_64ef(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_64ef()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_64ef                                   XREF[2]:     FUN_1000_644e:1000:64ca(c), 
                                                                                          FUN_1000_644e:1000:64de(c)  
       1000:64ef 50              PUSH       AX
       1000:64f0 53              PUSH       BX
       1000:64f1 51              PUSH       CX
       1000:64f2 52              PUSH       DX
       1000:64f3 56              PUSH       SI
       1000:64f4 57              PUSH       DI
       1000:64f5 55              PUSH       BP
       1000:64f6 8b ca           MOV        CX,DX
       1000:64f8 2b cf           SUB        CX,DI
       1000:64fa 41              INC        CX
       1000:64fb 8b d7           MOV        DX,DI
       1000:64fd 56              PUSH       SI
       1000:64fe 51              PUSH       CX
       1000:64ff 52              PUSH       DX
       1000:6500 2e ff 16        CALL       word ptr CS:[DAT_1000_64ed]
                 ed 64
       1000:6505 5a              POP        DX
       1000:6506 59              POP        CX
       1000:6507 5b              POP        BX
       1000:6508 2e ff 16        CALL       word ptr CS:[DAT_1000_64ed]
                 ed 64
       1000:650d 5d              POP        BP
       1000:650e 5f              POP        DI
       1000:650f 5e              POP        SI
       1000:6510 5a              POP        DX
       1000:6511 59              POP        CX
       1000:6512 5b              POP        BX
       1000:6513 58              POP        AX
       1000:6514 c3              RET
                             DAT_1000_65b4                                   XREF[2]:     FUN_1000_65b6:1000:65ba(R), 
                                                                                          FUN_1000_65b6:1000:65ee(W)  
       1000:65b4 01 00           undefined2 0001h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_65b6(void);
                             // C Signature: uint16_t FUN_1000_65b6(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdd00]
                             //   Read from: word ptr CS:[DAT_1000_65b4]                   = 0001h
                             //   Read from: byte ptr ES:[DI]
                             //   Write to: word ptr CS:[DAT_1000_65b4]
                             //
                             undefined __cdecl16near FUN_1000_65b6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_65b6                                   XREF[1]:     FUN_1000_63f0:1000:642a(c)  
       1000:65b6 8e 06 00 dd     MOV        ES,word ptr [0xdd00]
       1000:65ba 2e 8b 36        MOV        SI,word ptr CS:[DAT_1000_65b4]                   = 0001h
                 b4 65
       1000:65bf 33 ed           XOR        BP,BP
       1000:65c1 b9 46 00        MOV        CX,0x46
                             LAB_1000_65c4                                   XREF[1]:     1000:65ec(j)  
       1000:65c4 d1 ee           SHR        SI,0x1
       1000:65c6 73 04           JNC        LAB_1000_65cc
       1000:65c8 81 f6 02 04     XOR        SI,0x402
                             LAB_1000_65cc                                   XREF[1]:     1000:65c6(j)  
       1000:65cc 8b fe           MOV        DI,SI
                             LAB_1000_65ce                                   XREF[1]:     1000:65ea(j)  
       1000:65ce 26 8a 05        MOV        AL,byte ptr ES:[DI]
       1000:65d1 8a e0           MOV        AH,AL
       1000:65d3 80 e4 30        AND        AH,0x30
       1000:65d6 80 fc 10        CMP        AH,0x10
       1000:65d9 75 07           JNZ        LAB_1000_65e2
       1000:65db 24 cf           AND        AL,0xcf
       1000:65dd 0c 20           OR         AL,0x20
       1000:65df aa              STOSB      ES:DI
       1000:65e0 4f              DEC        DI
       1000:65e1 45              INC        BP
                             LAB_1000_65e2                                   XREF[1]:     1000:65d9(j)  
       1000:65e2 81 c7 ff 07     ADD        DI,0x7ff
       1000:65e6 81 ff f9 c5     CMP        DI,0xc5f9
       1000:65ea 72 e2           JC         LAB_1000_65ce
       1000:65ec e2 d6           LOOP       LAB_1000_65c4
       1000:65ee 2e 89 36        MOV        word ptr CS:[DAT_1000_65b4],SI                   = 0001h
                 b4 65
       1000:65f3 0b ed           OR         BP,BP
       1000:65f5 74 0b           JZ         LAB_1000_6602
       1000:65f7 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:65fc 79 04           JNS        LAB_1000_6602
       1000:65fe fe 06 ec 46     INC        byte ptr [0x46ec]
                             LAB_1000_6602                                   XREF[2]:     1000:65f5(j), 1000:65fc(j)  
       1000:6602 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6603(void);
                             // C Signature: uint16_t FUN_1000_6603(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x9]
                             //   Read from: byte ptr [SI + 0x1]
                             //
                             undefined __cdecl16near FUN_1000_6603()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6603                                   XREF[9]:     FUN_1000_0169:1000:01d4(c), 
                                                                                          FUN_1000_1eda:1000:1ee6(c), 
                                                                                          FUN_1000_33be:1000:33cf(c), 
                                                                                          FUN_1000_5098:1000:509f(c), 
                                                                                          FUN_1000_60f8:1000:6105(c), 
                                                                                          FUN_1000_6639:1000:6639(c), 
                                                                                          FUN_1000_7429:1000:7473(c), 
                                                                                          FUN_1000_7429:1000:7479(c), 
                                                                                          FUN_1000_7429:1000:748c(c)  
       1000:6603 56              PUSH       SI
       1000:6604 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
                             LAB_1000_6607                                   XREF[1]:     1000:6619(j)  
       1000:6607 0a c0           OR         AL,AL
       1000:6609 74 10           JZ         LAB_1000_661b
       1000:660b e8 f8 02        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:660e 56              PUSH       SI
       1000:660f 57              PUSH       DI
       1000:6610 55              PUSH       BP
       1000:6611 ff d5           CALL       BP
       1000:6613 5d              POP        BP
       1000:6614 5f              POP        DI
       1000:6615 5e              POP        SI
       1000:6616 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       1000:6619 eb ec           JMP        LAB_1000_6607
                             LAB_1000_661b                                   XREF[1]:     1000:6609(j)  
       1000:661b 5e              POP        SI
       1000:661c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_661d(void);
                             // C Signature: uint16_t FUN_1000_661d(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x9]
                             //   Read from: byte ptr [SI + 0x1]
                             //
                             undefined __cdecl16near FUN_1000_661d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_661d                                   XREF[6]:     FUN_1000_1258:1000:125f(c), 
                                                                                          FUN_1000_1e43:1000:1e77(c), 
                                                                                          FUN_1000_1e43:1000:1e99(c), 
                                                                                          FUN_1000_4ded:1000:4df3(c), 
                                                                                          FUN_1000_6d19:1000:6d3a(c), 
                                                                                          FUN_1000_8308:1000:8400(c)  
       1000:661d 56              PUSH       SI
       1000:661e 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
                             LAB_1000_6621                                   XREF[1]:     1000:6635(j)  
       1000:6621 0a c0           OR         AL,AL
       1000:6623 74 12           JZ         LAB_1000_6637
       1000:6625 e8 de 02        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:6628 73 08           JNC        LAB_1000_6632
       1000:662a 56              PUSH       SI
       1000:662b 57              PUSH       DI
       1000:662c 55              PUSH       BP
       1000:662d ff d5           CALL       BP
       1000:662f 5d              POP        BP
       1000:6630 5f              POP        DI
       1000:6631 5e              POP        SI
                             LAB_1000_6632                                   XREF[1]:     1000:6628(j)  
       1000:6632 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       1000:6635 eb ea           JMP        LAB_1000_6621
                             LAB_1000_6637                                   XREF[1]:     1000:6623(j)  
       1000:6637 5e              POP        SI
       1000:6638 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6639(void);
                             // C Signature: uint16_t FUN_1000_6639(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x3]
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: word ptr [SI + 0xc]
                             //
                             undefined __cdecl16near FUN_1000_6639()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6639                                   XREF[2]:     FUN_1000_34a5:1000:34b7(c), 
                                                                                          FUN_1000_57e5:1000:5851(c)  
       1000:6639 e8 c7 ff        CALL       FUN_1000_6603                                    undefined FUN_1000_6603()
       1000:663c 56              PUSH       SI
       1000:663d be aa 08        MOV        SI,0x8aa
                             LAB_1000_6640                                   XREF[1]:     1000:666c(j)  
       1000:6640 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:6643 a8 40           TEST       AL,0x40
       1000:6645 74 1e           JZ         LAB_1000_6665
       1000:6647 53              PUSH       BX
       1000:6648 8b 5c 04        MOV        BX,word ptr [SI + 0x4]
       1000:664b 24 03           AND        AL,0x3
       1000:664d 3c 03           CMP        AL,0x3
       1000:664f 75 03           JNZ        LAB_1000_6654
       1000:6651 8b 5c 0c        MOV        BX,word ptr [SI + 0xc]
                             LAB_1000_6654                                   XREF[1]:     1000:664f(j)  
       1000:6654 3b df           CMP        BX,DI
       1000:6656 5b              POP        BX
       1000:6657 75 0c           JNZ        LAB_1000_6665
       1000:6659 56              PUSH       SI
       1000:665a 57              PUSH       DI
       1000:665b 55              PUSH       BP
       1000:665c 80 7c 03 80     CMP        byte ptr [SI + 0x3],0x80
       1000:6660 ff d5           CALL       BP
       1000:6662 5d              POP        BP
       1000:6663 5f              POP        DI
       1000:6664 5e              POP        SI
                             LAB_1000_6665                                   XREF[2]:     1000:6645(j), 1000:6657(j)  
       1000:6665 83 c6 1b        ADD        SI,0x1b
       1000:6668 81 fe bb 0f     CMP        SI,0xfbb
       1000:666c 72 d2           JC         LAB_1000_6640
       1000:666e 5e              POP        SI
       1000:666f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_66b1(void);
                             // C Signature: void FUN_1000_66b1(void);
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: word ptr [SI + 0x4]
                             //   Write to: byte ptr [SI + 0x3]
                             //   Write to: byte ptr [SI + 0x1a]
                             //
                             undefined __cdecl16near FUN_1000_66b1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_66b1                                   XREF[2]:     FUN_1000_6d19:1000:6d5a(c), 
                                                                                          FUN_1000_85cc:1000:85f9(c)  
       1000:66b1 e8 d8 1e        CALL       FUN_1000_858c                                    undefined FUN_1000_858c()
       1000:66b4 56              PUSH       SI
       1000:66b5 57              PUSH       DI
       1000:66b6 e8 5e 02        CALL       FUN_1000_6917                                    undefined FUN_1000_6917()
       1000:66b9 75 03           JNZ        LAB_1000_66be
       1000:66bb e8 cc 5e        CALL       FUN_1000_c58a                                    undefined FUN_1000_c58a()
                             LAB_1000_66be                                   XREF[1]:     1000:66b9(j)  
       1000:66be 5f              POP        DI
       1000:66bf 5e              POP        SI
       1000:66c0 c7 44 04        MOV        word ptr [SI + 0x4],0xfbc
                 bc 0f
       1000:66c5 c6 44 03 a0     MOV        byte ptr [SI + 0x3],0xa0
       1000:66c9 c6 44 1a 00     MOV        byte ptr [SI + 0x1a],0x0
       1000:66cd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6715(void);
                             // C Signature: uint16_t FUN_1000_6715(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [BP + 0x0]
                             //   Read from: byte ptr [DI + 0x9]
                             //   Read from: byte ptr [SI + 0x1]
                             //
                             undefined __cdecl16near FUN_1000_6715()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6715                                   XREF[1]:     FUN_1000_5d6d:1000:5dab(c)  
       1000:6715 bd c0 a5        MOV        BP,0xa5c0
                             LAB_1000_6718                                   XREF[1]:     1000:6735(j)  
       1000:6718 8b 7e 00        MOV        DI,word ptr [BP + 0x0]
       1000:671b 0b ff           OR         DI,DI
       1000:671d 74 18           JZ         LAB_1000_6737
       1000:671f 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
       1000:6722 0a c0           OR         AL,AL
       1000:6724 74 0c           JZ         LAB_1000_6732
                             LAB_1000_6726                                   XREF[1]:     1000:6730(j)  
       1000:6726 55              PUSH       BP
       1000:6727 e8 2d 00        CALL       FUN_1000_6757                                    undefined FUN_1000_6757()
       1000:672a 5d              POP        BP
       1000:672b 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       1000:672e 0a c0           OR         AL,AL
       1000:6730 75 f4           JNZ        LAB_1000_6726
                             LAB_1000_6732                                   XREF[1]:     1000:6724(j)  
       1000:6732 83 c5 06        ADD        BP,0x6
       1000:6735 eb e1           JMP        LAB_1000_6718
                             LAB_1000_6737                                   XREF[1]:     1000:671d(j)  
       1000:6737 be 8f 08        MOV        SI,0x88f
                             LAB_1000_673a                                   XREF[3]:     1000:6747(j), 1000:674d(j), 
                                                                                          1000:6754(j)  
       1000:673a 83 c6 1b        ADD        SI,0x1b
       1000:673d 81 fe bb 0f     CMP        SI,0xfbb
       1000:6741 73 13           JNC        LAB_1000_6756
       1000:6743 f6 44 10 10     TEST       byte ptr [SI + 0x10],0x10
       1000:6747 75 f1           JNZ        LAB_1000_673a
       1000:6749 f6 44 03 40     TEST       byte ptr [SI + 0x3],0x40
       1000:674d 74 eb           JZ         LAB_1000_673a
       1000:674f 8a 04           MOV        AL,byte ptr [SI]
       1000:6751 e8 03 00        CALL       FUN_1000_6757                                    undefined FUN_1000_6757()
       1000:6754 eb e4           JMP        LAB_1000_673a
                             LAB_1000_6756                                   XREF[1]:     1000:6741(j)  
       1000:6756 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_6757(uint16_t bp);
                             // C Signature: void FUN_1000_6757(uint16_t bp);
                             // Input Parameters:
                             //   BP (uint16_t): 16-bit input value in BP register
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_6757()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6757                                   XREF[3]:     FUN_1000_6715:1000:6727(c), 
                                                                                          FUN_1000_6715:1000:6751(c), 
                                                                                          FUN_1000_8461:1000:847d(c)  
       1000:6757 e8 ac 01        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:675a e8 11 01        CALL       FUN_1000_686e                                    undefined FUN_1000_686e()
       1000:675d 72 0e           JC         LAB_1000_676d
       1000:675f e8 0e 00        CALL       FUN_1000_6770                                    undefined FUN_1000_6770()
       1000:6762 83 fd 01        CMP        BP,0x1
       1000:6765 72 06           JC         LAB_1000_676d
       1000:6767 56              PUSH       SI
       1000:6768 e8 64 5e        CALL       FUN_1000_c5cf                                    undefined FUN_1000_c5cf()
       1000:676b 5e              POP        SI
       1000:676c f8              CLC
                             LAB_1000_676d                                   XREF[2]:     1000:675d(j), 1000:6765(j)  
       1000:676d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6770(uint16_t si);
                             // C Signature: uint16_t FUN_1000_6770(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x3]
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: word ptr [BP + 0x16b6]
                             //
                             undefined __cdecl16near FUN_1000_6770()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6770                                   XREF[1]:     FUN_1000_6757:1000:675f(c)  
       1000:6770 f6 44 10 10     TEST       byte ptr [SI + 0x10],0x10
       1000:6774 75 19           JNZ        LAB_1000_678f
       1000:6776 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:6779 f6 44 10 80     TEST       byte ptr [SI + 0x10],0x80
       1000:677d 75 13           JNZ        LAB_1000_6792
       1000:677f 0a c0           OR         AL,AL
       1000:6781 79 0f           JNS        LAB_1000_6792
       1000:6783 8b 6c 04        MOV        BP,word ptr [SI + 0x4]
       1000:6786 f6 46 0a 10     TEST       byte ptr [BP + 0xa],0x10
       1000:678a bd 1f 18        MOV        BP,0x181f
       1000:678d 75 02           JNZ        LAB_1000_6791
                             LAB_1000_678f                                   XREF[1]:     1000:6774(j)  
       1000:678f 33 ed           XOR        BP,BP
                             LAB_1000_6791                                   XREF[3]:     1000:678d(j), 1000:67dc(j), 
                                                                                          1000:67e8(j)  
       1000:6791 c3              RET
                             LAB_1000_6792                                   XREF[2]:     1000:677d(j), 1000:6781(j)  
       1000:6792 a8 40           TEST       AL,0x40
       1000:6794 74 03           JZ         LAB_1000_6799
       1000:6796 e9 8e 00        JMP        FUN_1000_6827                                    undefined FUN_1000_6827()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_6799                                   XREF[1]:     1000:6794(j)  
       1000:6799 a8 30           TEST       AL,0x30
       1000:679b 74 28           JZ         LAB_1000_67c5
       1000:679d 25 0f 00        AND        AX,0xf
       1000:67a0 8b e8           MOV        BP,AX
       1000:67a2 d1 e5           SHL        BP,0x1
       1000:67a4 8b ae b6 16     MOV        BP,word ptr [BP + 0x16b6]
       1000:67a8 0b c0           OR         AX,AX
       1000:67aa 75 18           JNZ        LAB_1000_67c4
       1000:67ac 8a 44 19        MOV        AL,byte ptr [SI + 0x19]
       1000:67af 24 c0           AND        AL,0xc0
       1000:67b1 74 11           JZ         LAB_1000_67c4
       1000:67b3 bd 13 18        MOV        BP,0x1813
       1000:67b6 3c 80           CMP        AL,0x80
       1000:67b8 74 0a           JZ         LAB_1000_67c4
       1000:67ba bd 17 18        MOV        BP,0x1817
       1000:67bd 3c 40           CMP        AL,0x40
       1000:67bf 74 03           JZ         LAB_1000_67c4
       1000:67c1 bd 1b 18        MOV        BP,0x181b
                             LAB_1000_67c4                                   XREF[4]:     1000:67aa(j), 1000:67b1(j), 
                                                                                          1000:67b8(j), 1000:67bf(j)  
       1000:67c4 c3              RET
                             LAB_1000_67c5                                   XREF[1]:     1000:679b(j)  
       1000:67c5 25 0f 00        AND        AX,0xf
       1000:67c8 74 40           JZ         LAB_1000_680a
                             LAB_1000_67ca                                   XREF[1]:     1000:680e(j)  
       1000:67ca 8b e8           MOV        BP,AX
       1000:67cc d1 e5           SHL        BP,0x1
       1000:67ce 8b ae 9c 17     MOV        BP,word ptr [BP + 0x179c]
       1000:67d2 81 fd 74 17     CMP        BP,0x1774
       1000:67d6 74 15           JZ         LAB_1000_67ed
       1000:67d8 81 fd 32 17     CMP        BP,0x1732
       1000:67dc 75 b3           JNZ        LAB_1000_6791
       1000:67de 8b 6c 04        MOV        BP,word ptr [SI + 0x4]
       1000:67e1 f6 46 0a 02     TEST       byte ptr [BP + 0xa],0x2
       1000:67e5 bd aa 16        MOV        BP,0x16aa
       1000:67e8 75 a7           JNZ        LAB_1000_6791
       1000:67ea bd 32 17        MOV        BP,0x1732
                             LAB_1000_67ed                                   XREF[1]:     1000:67d6(j)  
       1000:67ed 8a 44 02        MOV        AL,byte ptr [SI + 0x2]
       1000:67f0 fe c8           DEC        AL
       1000:67f2 24 07           AND        AL,0x7
       1000:67f4 3c 03           CMP        AL,0x3
       1000:67f6 72 11           JC         LAB_1000_6809
       1000:67f8 83 c5 0a        ADD        BP,0xa
       1000:67fb 3c 03           CMP        AL,0x3
       1000:67fd 74 0a           JZ         LAB_1000_6809
       1000:67ff 83 c5 0a        ADD        BP,0xa
       1000:6802 3c 04           CMP        AL,0x4
       1000:6804 74 03           JZ         LAB_1000_6809
       1000:6806 83 c5 0a        ADD        BP,0xa
                             LAB_1000_6809                                   XREF[3]:     1000:67f6(j), 1000:67fd(j), 
                                                                                          1000:6804(j)  
       1000:6809 c3              RET
                             LAB_1000_680a                                   XREF[1]:     1000:67c8(j)  
       1000:680a f6 44 19 c0     TEST       byte ptr [SI + 0x19],0xc0
       1000:680e 74 ba           JZ         LAB_1000_67ca
       1000:6810 8a 44 19        MOV        AL,byte ptr [SI + 0x19]
       1000:6813 24 c0           AND        AL,0xc0
       1000:6815 bd bc 17        MOV        BP,0x17bc
       1000:6818 3c 80           CMP        AL,0x80
       1000:681a 74 0a           JZ         LAB_1000_6826
       1000:681c bd c9 17        MOV        BP,0x17c9
       1000:681f 3c 40           CMP        AL,0x40
       1000:6821 74 03           JZ         LAB_1000_6826
       1000:6823 bd 06 18        MOV        BP,0x1806
                             LAB_1000_6826                                   XREF[2]:     1000:681a(j), 1000:6821(j)  
       1000:6826 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_6827(uint8_t ah, uint16_t si);
                             // C Signature: uint32_t FUN_1000_6827(uint8_t ah, uint16_t si);
                             // Input Parameters:
                             //   AH (uint8_t): 8-bit input value in AH register
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: word ptr [DI + 0x2]
                             //   Read from: word ptr [DI + 0x4]
                             //
                             undefined __cdecl16near FUN_1000_6827()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6827                                   XREF[2]:     FUN_1000_6770:1000:6796(c), 
                                                                                          FUN_1000_8308:1000:833c(c)  
       1000:6827 53              PUSH       BX
       1000:6828 52              PUSH       DX
       1000:6829 57              PUSH       DI
       1000:682a 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:682d 8b 45 02        MOV        AX,word ptr [DI + 0x2]
       1000:6830 8b 5d 04        MOV        BX,word ptr [DI + 0x4]
       1000:6833 2b 44 06        SUB        AX,word ptr [SI + 0x6]
       1000:6836 8a c4           MOV        AL,AH
       1000:6838 98              CBW
       1000:6839 8b d0           MOV        DX,AX
       1000:683b 8b fa           MOV        DI,DX
       1000:683d 79 02           JNS        LAB_1000_6841
       1000:683f f7 df           NEG        DI
                             LAB_1000_6841                                   XREF[1]:     1000:683d(j)  
       1000:6841 2b 5c 08        SUB        BX,word ptr [SI + 0x8]
       1000:6844 8b cb           MOV        CX,BX
       1000:6846 79 02           JNS        LAB_1000_684a
       1000:6848 f7 d9           NEG        CX
                             LAB_1000_684a                                   XREF[1]:     1000:6846(j)  
       1000:684a bd 02 00        MOV        BP,0x2
       1000:684d 3b f9           CMP        DI,CX
       1000:684f 72 03           JC         LAB_1000_6854
       1000:6851 4d              DEC        BP
       1000:6852 87 d3           XCHG       BX,DX
                             LAB_1000_6854                                   XREF[1]:     1000:684f(j)  
       1000:6854 0b db           OR         BX,BX
       1000:6856 79 03           JNS        LAB_1000_685b
       1000:6858 83 f5 02        XOR        BP,0x2
                             LAB_1000_685b                                   XREF[1]:     1000:6856(j)  
       1000:685b e8 dd 00        CALL       FUN_1000_693b                                    undefined FUN_1000_693b()
       1000:685e d1 e0           SHL        AX,0x1
       1000:6860 d1 e0           SHL        AX,0x1
       1000:6862 03 e8           ADD        BP,AX
       1000:6864 d1 e5           SHL        BP,0x1
       1000:6866 8b ae bf 18     MOV        BP,word ptr [BP + 0x18bf]
       1000:686a 5f              POP        DI
       1000:686b 5a              POP        DX
       1000:686c 5b              POP        BX
       1000:686d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_686e(uint16_t ax, uint16_t bp, uint16_t si);
                             // C Signature: uint16_t FUN_1000_686e(uint16_t ax, uint16_t bp, uint16_t si);
                             // Input Parameters:
                             //   AX (uint16_t): 16-bit input value in AX register
                             //   BP (uint16_t): 16-bit input value in BP register
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x2]
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: byte ptr [BX + 0x1672]
                             //
                             undefined __cdecl16near FUN_1000_686e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_686e                                   XREF[3]:     FUN_1000_6757:1000:675a(c), 
                                                                                          FUN_1000_697c:1000:698f(c), 
                                                                                          FUN_1000_8308:1000:8326(c)  
       1000:686e 80 3e eb        CMP        byte ptr [0x46eb],0x80
                 46 80
       1000:6873 72 39           JC         LAB_1000_68ae
       1000:6875 f6 44 03 40     TEST       byte ptr [SI + 0x3],0x40
       1000:6879 75 34           JNZ        LAB_1000_68af
       1000:687b 8a 5c 02        MOV        BL,byte ptr [SI + 0x2]
       1000:687e 4b              DEC        BX
       1000:687f 57              PUSH       DI
       1000:6880 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:6883 f6 45 0a 02     TEST       byte ptr [DI + 0xa],0x2
       1000:6887 74 03           JZ         LAB_1000_688c
       1000:6889 80 f3 08        XOR        BL,0x8
                             LAB_1000_688c                                   XREF[1]:     1000:6887(j)  
       1000:688c 5f              POP        DI
       1000:688d 83 e3 0f        AND        BX,0xf
       1000:6890 03 db           ADD        BX,BX
       1000:6892 8a 87 72 16     MOV        AL,byte ptr [BX + 0x1672]
       1000:6896 98              CBW
       1000:6897 8b d0           MOV        DX,AX
       1000:6899 8a 87 73 16     MOV        AL,byte ptr [BX + 0x1673]
       1000:689d 98              CBW
       1000:689e 03 56 02        ADD        DX,word ptr [BP + 0x2]
       1000:68a1 8b 5e 04        MOV        BX,word ptr [BP + 0x4]
       1000:68a4 80 ff 80        CMP        BH,0x80
       1000:68a7 72 05           JC         LAB_1000_68ae
       1000:68a9 32 ff           XOR        BH,BH
       1000:68ab 03 d8           ADD        BX,AX
       1000:68ad f8              CLC
                             LAB_1000_68ae                                   XREF[2]:     1000:6873(j), 1000:68a7(j)  
       1000:68ae c3              RET
                             LAB_1000_68af                                   XREF[1]:     1000:6879(j)  
       1000:68af 8b 54 06        MOV        DX,word ptr [SI + 0x6]
       1000:68b2 8b 5c 08        MOV        BX,word ptr [SI + 0x8]
       1000:68b5 e8 8f 4d        CALL       FUN_1000_b647                                    undefined FUN_1000_b647()
       1000:68b8 83 fa f0        CMP        DX,-0x10
       1000:68bb 7e 13           JLE        LAB_1000_68d0
       1000:68bd 83 fb f0        CMP        BX,-0x10
       1000:68c0 7e 0e           JLE        LAB_1000_68d0
       1000:68c2 81 fa 48 01     CMP        DX,0x148
       1000:68c6 7d 08           JGE        LAB_1000_68d0
       1000:68c8 81 fb a0 00     CMP        BX,0xa0
       1000:68cc 7d 02           JGE        LAB_1000_68d0
       1000:68ce f8              CLC
       1000:68cf c3              RET
                             LAB_1000_68d0                                   XREF[4]:     1000:68bb(j), 1000:68c0(j), 
                                                                                          1000:68c6(j), 1000:68cc(j)  
       1000:68d0 f9              STC
       1000:68d1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_68eb(uint16_t ax);
                             // C Signature: uint16_t FUN_1000_68eb(uint16_t ax);
                             // Input Parameters:
                             //   AX (uint16_t): 16-bit input value in AX register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: [0x1954]
                             //   Read from: [0x476c]
                             //   Read from: word ptr [SI + 0x4758]
                             //
                             undefined __cdecl16near FUN_1000_68eb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_68eb                                   XREF[3]:     FUN_1000_1707:1000:1765(c), 
                                                                                          FUN_1000_62f2:1000:62f2(c), 
                                                                                          FUN_1000_813e:1000:8143(c)  
       1000:68eb a0 54 19        MOV        AL,[0x1954]
       1000:68ee 80 3e eb        CMP        byte ptr [0x46eb],0x80
                 46 80
       1000:68f3 73 11           JNC        FUN_1000_6906
       1000:68f5 a0 6c 47        MOV        AL,[0x476c]
       1000:68f8 32 e4           XOR        AH,AH
       1000:68fa 03 c0           ADD        AX,AX
       1000:68fc 8b f0           MOV        SI,AX
       1000:68fe 8b b4 58 47     MOV        SI,word ptr [SI + 0x4758]
       1000:6902 8a 04           MOV        AL,byte ptr [SI]
       1000:6904 eb 0c           JMP        LAB_1000_6912
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_6906(void);
                             // C Signature: uint32_t FUN_1000_6906(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AH (uint8_t): 8-bit output value in AH register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             undefined __cdecl16near FUN_1000_6906()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6906                                   XREF[11]:    FUN_1000_1e24:1000:1e2c(c), 
                                                                                          FUN_1000_2b2a:1000:2c3a(c), 
                                                                                          FUN_1000_6603:1000:660b(c), 
                                                                                          FUN_1000_661d:1000:6625(c), 
                                                                                          FUN_1000_6757:1000:6757(c), 
                                                                                          FUN_1000_68eb:1000:68f3(j), 
                                                                                          FUN_1000_7f27:1000:7f3e(c), 
                                                                                          FUN_1000_851f:1000:8556(c), 
                                                                                          FUN_1000_858c:1000:85a4(c), 
                                                                                          FUN_1000_85cc:1000:85e4(c), 
                                                                                          FUN_1000_878c:1000:87fa(c)  
       1000:6906 8b f0           MOV        SI,AX
       1000:6908 fe c8           DEC        AL
       1000:690a b4 1b           MOV        AH,0x1b
       1000:690c f6 e4           MUL        AH
       1000:690e 05 aa 08        ADD        AX,0x8aa
       1000:6911 96              XCHG       AX,SI
                             LAB_1000_6912                                   XREF[1]:     FUN_1000_68eb:1000:6904(j)  
       1000:6912 80 7c 03 80     CMP        byte ptr [SI + 0x3],0x80
       1000:6916 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_6917(uint16_t si);
                             // C Signature: void FUN_1000_6917(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x3cbe]
                             //
                             undefined __cdecl16near FUN_1000_6917()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6917                                   XREF[7]:     FUN_1000_66b1:1000:66b6(c), 
                                                                                          FUN_1000_697c:1000:697c(c), 
                                                                                          FUN_1000_78e9:1000:78e9(c), 
                                                                                          FUN_1000_79ee:1000:79f2(c), 
                                                                                          FUN_1000_8308:1000:832b(c), 
                                                                                          FUN_1000_8308:1000:8333(c), 
                                                                                          FUN_1000_8461:1000:8461(c)  
       1000:6917 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:691c bf af 3c        MOV        DI,0x3caf
       1000:691f 79 17           JNS        LAB_1000_6938
       1000:6921 8b 0e be 3c     MOV        CX,word ptr [0x3cbe]
                             LAB_1000_6925                                   XREF[1]:     1000:6935(j)  
       1000:6925 e3 11           JCXZ       LAB_1000_6938
                             LAB_1000_6927                                   XREF[1]:     1000:692d(j)  
       1000:6927 83 c7 11        ADD        DI,0x11
       1000:692a 39 75 0a        CMP        word ptr [DI + 0xa],SI
       1000:692d e0 f8           LOOPNZ     LAB_1000_6927
       1000:692f 75 06           JNZ        LAB_1000_6937
       1000:6931 f6 45 0c 40     TEST       byte ptr [DI + 0xc],0x40
       1000:6935 75 ee           JNZ        LAB_1000_6925
                             LAB_1000_6937                                   XREF[1]:     1000:692f(j)  
       1000:6937 c3              RET
                             LAB_1000_6938                                   XREF[2]:     1000:691f(j), 1000:6925(j)  
       1000:6938 0b ff           OR         DI,DI
       1000:693a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_693b(uint16_t si);
                             // C Signature: uint16_t FUN_1000_693b(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x3]
                             //
                             undefined __cdecl16near FUN_1000_693b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_693b                                   XREF[4]:     FUN_1000_31f6:1000:3276(c), 
                                                                                          FUN_1000_6827:1000:685b(c), 
                                                                                          FUN_1000_6ad4:1000:6b0c(c), 
                                                                                          FUN_1000_6d7b:1000:6d84(c)  
       1000:693b 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:693e 25 0f 00        AND        AX,0xf
       1000:6941 d1 e8           SHR        AX,0x1
       1000:6943 d1 e8           SHR        AX,0x1
       1000:6945 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_697c(uint16_t si);
                             // C Signature: void FUN_1000_697c(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x4]
                             //   Write to: word ptr [0x4752]
                             //
                             undefined __cdecl16near FUN_1000_697c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_697c                                   XREF[1]:     FUN_1000_5d6d:1000:5db9(c)  
       1000:697c e8 98 ff        CALL       FUN_1000_6917                                    undefined FUN_1000_6917()
       1000:697f 75 21           JNZ        LAB_1000_69a2
       1000:6981 f6 44 03 40     TEST       byte ptr [SI + 0x3],0x40
       1000:6985 75 08           JNZ        LAB_1000_698f
       1000:6987 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:698a e8 43 f5        CALL       FUN_1000_5ed0                                    undefined FUN_1000_5ed0()
       1000:698d 75 13           JNZ        LAB_1000_69a2
                             LAB_1000_698f                                   XREF[1]:     1000:6985(j)  
       1000:698f e8 dc fe        CALL       FUN_1000_686e                                    undefined FUN_1000_686e()
       1000:6992 72 0e           JC         LAB_1000_69a2
       1000:6994 bd fd 18        MOV        BP,0x18fd
       1000:6997 e8 35 5c        CALL       FUN_1000_c5cf                                    undefined FUN_1000_c5cf()
       1000:699a 80 4d 0c 40     OR         byte ptr [DI + 0xc],0x40
       1000:699e 89 3e 52 47     MOV        word ptr [0x4752],DI
                             LAB_1000_69a2                                   XREF[3]:     1000:697f(j), 1000:698d(j), 
                                                                                          1000:6992(j)  
       1000:69a2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6ac5(uint16_t si);
                             // C Signature: uint16_t FUN_1000_6ac5(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x3]
                             //   Read from: byte ptr [SI + 0x3]
                             //
                             undefined __cdecl16near FUN_1000_6ac5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6ac5                                   XREF[1]:     FUN_1000_8308:1000:83b0(c)  
       1000:6ac5 8a 4c 03        MOV        CL,byte ptr [SI + 0x3]
       1000:6ac8 80 e1 fc        AND        CL,0xfc
       1000:6acb 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:6ace 24 0f           AND        AL,0xf
       1000:6ad0 3a c1           CMP        AL,CL
       1000:6ad2 74 50           JZ         LAB_1000_6b24
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6ad4(void);
                             // C Signature: uint16_t FUN_1000_6ad4(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: byte ptr [SI]
                             //   Write to: byte ptr [SI + 0x3]
                             //
                             undefined __cdecl16near FUN_1000_6ad4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6ad4                                   XREF[1]:     FUN_1000_83bc:1000:83d3(c)  
       1000:6ad4 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:6ad7 80 f9 08        CMP        CL,0x8
       1000:6ada 75 0e           JNZ        LAB_1000_6aea
       1000:6adc 81 ff c8 07     CMP        DI,0x7c8
       1000:6ae0 75 08           JNZ        LAB_1000_6aea
       1000:6ae2 80 7d 1a 00     CMP        byte ptr [DI + 0x1a],0x0
       1000:6ae6 75 02           JNZ        LAB_1000_6aea
       1000:6ae8 b1 0a           MOV        CL,0xa
                             LAB_1000_6aea                                   XREF[3]:     1000:6ada(j), 1000:6ae0(j), 
                                                                                          1000:6ae6(j)  
       1000:6aea 88 4c 03        MOV        byte ptr [SI + 0x3],CL
       1000:6aed 80 64 12 cf     AND        byte ptr [SI + 0x12],0xcf
       1000:6af1 81 64 10        AND        word ptr [SI + 0x10],0xfeff
                 ff fe
       1000:6af6 e8 1c 01        CALL       FUN_1000_6c15                                    undefined FUN_1000_6c15()
       1000:6af9 72 05           JC         LAB_1000_6b00
       1000:6afb 81 4c 10        OR         word ptr [SI + 0x10],0x100
                 00 01
                             LAB_1000_6b00                                   XREF[1]:     1000:6af9(j)  
       1000:6b00 e8 5e 19        CALL       FUN_1000_8461                                    undefined FUN_1000_8461()
       1000:6b03 e8 1f 00        CALL       FUN_1000_6b25                                    undefined FUN_1000_6b25()
       1000:6b06 80 7c 03 02     CMP        byte ptr [SI + 0x3],0x2
       1000:6b0a 74 0d           JZ         LAB_1000_6b19
       1000:6b0c e8 2c fe        CALL       FUN_1000_693b                                    undefined FUN_1000_693b()
       1000:6b0f 8a c8           MOV        CL,AL
       1000:6b11 b8 00 20        MOV        AX,0x2000
       1000:6b14 d3 e0           SHL        AX,CL
       1000:6b16 09 44 12        OR         word ptr [SI + 0x12],AX
                             LAB_1000_6b19                                   XREF[1]:     1000:6b0a(j)  
       1000:6b19 8a 04           MOV        AL,byte ptr [SI]
       1000:6b1b 3a 06 54 19     CMP        AL,byte ptr [0x1954]
       1000:6b1f 75 03           JNZ        LAB_1000_6b24
       1000:6b21 e8 23 0d        CALL       FUN_1000_7847                                    undefined FUN_1000_7847()
                             LAB_1000_6b24                                   XREF[2]:     FUN_1000_6ac5:1000:6ad2(j), 
                                                                                          1000:6b1f(j)  
       1000:6b24 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6b25(uint16_t di);
                             // C Signature: uint16_t FUN_1000_6b25(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [0x2]
                             //   Read from: byte ptr [DI + 0xa]
                             //   Write to: word ptr [SI + 0xa]
                             //   Write to: word ptr [SI + 0xc]
                             //   Write to: word ptr [SI + 0xe]
                             //
                             undefined __cdecl16near FUN_1000_6b25()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6b25                                   XREF[2]:     FUN_1000_6ad4:1000:6b03(c), 
                                                                                          caseD_0:1000:6bd2(c)  
       1000:6b25 a1 02 00        MOV        AX,[0x2]
       1000:6b28 89 44 0a        MOV        word ptr [SI + 0xa],AX
       1000:6b2b 33 c0           XOR        AX,AX
       1000:6b2d 89 44 0c        MOV        word ptr [SI + 0xc],AX
       1000:6b30 89 44 0e        MOV        word ptr [SI + 0xe],AX
       1000:6b33 c3              RET
                             switchD_1000:6c21::caseD_1                      XREF[1]:     1000:6c21(j)  
       1000:6b8a 8a 65 0a        MOV        AH,byte ptr [DI + 0xa]
       1000:6b8d 80 e4 41        AND        AH,0x41
       1000:6b90 80 fc 01        CMP        AH,0x1
       1000:6b93 f5              CMC
       1000:6b94 eb 20           JMP        LAB_1000_6bb6
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t caseD_0(void);
                             // C Signature: uint16_t caseD_0(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0xa]
                             //   Read from: byte ptr [SI + 0x3]
                             //   Read from: byte ptr [SI + 0x19]
                             //
                             undefined __cdecl16near caseD_0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             switchD_1000:6c21::caseD_0                      XREF[1]:     FUN_1000_6c15:1000:6c21(j)  
       1000:6b96 f7 44 10        TEST       word ptr [SI + 0x10],0x200
                 00 02
       1000:6b9b f9              STC
       1000:6b9c 75 18           JNZ        LAB_1000_6bb6
       1000:6b9e f7 44 12        TEST       word ptr [SI + 0x12],0x30
                 30 00
       1000:6ba3 f9              STC
       1000:6ba4 75 10           JNZ        LAB_1000_6bb6
       1000:6ba6 80 7d 12 01     CMP        byte ptr [DI + 0x12],0x1
       1000:6baa 72 0a           JC         LAB_1000_6bb6
       1000:6bac 8a 45 0a        MOV        AL,byte ptr [DI + 0xa]
       1000:6baf 34 40           XOR        AL,0x40
       1000:6bb1 24 41           AND        AL,0x41
       1000:6bb3 74 01           JZ         LAB_1000_6bb6
       1000:6bb5 f9              STC
                             LAB_1000_6bb6                                   XREF[9]:     FUN_1000_6c15:1000:6b94(j), 
                                                                                          1000:6b9c(j), 1000:6ba4(j), 
                                                                                          1000:6baa(j), 1000:6bb3(j), 
                                                                                          1000:6bdd(j), 1000:6be3(j), 
                                                                                          1000:6bea(j), 1000:6bf3(j)  
       1000:6bb6 9c              PUSHF
       1000:6bb7 1a e4           SBB        AH,AH
       1000:6bb9 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:6bbc 25 10 10        AND        AX,0x1010
       1000:6bbf 3a c4           CMP        AL,AH
       1000:6bc1 74 12           JZ         LAB_1000_6bd5
       1000:6bc3 80 74 03 10     XOR        byte ptr [SI + 0x3],0x10
       1000:6bc7 50              PUSH       AX
       1000:6bc8 57              PUSH       DI
       1000:6bc9 e8 95 18        CALL       FUN_1000_8461                                    undefined FUN_1000_8461()
       1000:6bcc 5f              POP        DI
       1000:6bcd 58              POP        AX
       1000:6bce a8 10           TEST       AL,0x10
       1000:6bd0 74 03           JZ         LAB_1000_6bd5
       1000:6bd2 e8 50 ff        CALL       FUN_1000_6b25                                    undefined FUN_1000_6b25()
                             LAB_1000_6bd5                                   XREF[2]:     1000:6bc1(j), 1000:6bd0(j)  
       1000:6bd5 9d              POPF
       1000:6bd6 c3              RET
                             switchD_1000:6c21::caseD_8                      XREF[1]:     FUN_1000_6c15:1000:6c21(j)  
       1000:6bd7 f7 44 12        TEST       word ptr [SI + 0x12],0x30
                 30 00
       1000:6bdc f9              STC
       1000:6bdd 75 d7           JNZ        LAB_1000_6bb6
       1000:6bdf 80 7d 1b 01     CMP        byte ptr [DI + 0x1b],0x1
       1000:6be3 72 d1           JC         LAB_1000_6bb6
       1000:6be5 f6 45 0a 20     TEST       byte ptr [DI + 0xa],0x20
       1000:6be9 f9              STC
       1000:6bea 74 ca           JZ         LAB_1000_6bb6
       1000:6bec 8a 44 19        MOV        AL,byte ptr [SI + 0x19]
       1000:6bef 24 02           AND        AL,0x2
       1000:6bf1 3c 01           CMP        AL,0x1
       1000:6bf3 eb c1           JMP        LAB_1000_6bb6
                             switchD_1000:6c21::switchdataD_1000:6bf5
       1000:6bf5 96 6b           uint       6B96h
       1000:6bf7 8a 6b           uint       6B8Ah
       1000:6bf9 66 0f           uint       F66h
       1000:6bfb 66 0f           uint       F66h
       1000:6bfd 66 0f           uint       F66h
       1000:6bff 66 0f           uint       F66h
       1000:6c01 66 0f           uint       F66h
       1000:6c03 66 0f           uint       F66h
       1000:6c05 d7 6b           uint       6BD7h
       1000:6c07 66 0f           uint       F66h
       1000:6c09 66 0f           uint       F66h
       1000:6c0b 66 0f           uint       F66h
       1000:6c0d 66 0f           uint       F66h
       1000:6c0f 66 0f           uint       F66h
       1000:6c11 66 0f           uint       F66h
       1000:6c13 66 0f           uint       F66h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_6c15(uint16_t si);
                             // C Signature: void FUN_1000_6c15(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BL (uint8_t): 8-bit output value in BL register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: byte ptr [SI + 0x3]
                             //
                             undefined __cdecl16near FUN_1000_6c15()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6c15                                   XREF[1]:     FUN_1000_6ad4:1000:6af6(c)  
       1000:6c15 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:6c18 8a 5c 03        MOV        BL,byte ptr [SI + 0x3]
       1000:6c1b 83 e3 0f        AND        BX,0xf
       1000:6c1e d1 e3           SHL        BX,0x1
       1000:6c20 f8              CLC
                             switchD_1000:6c21::switchD
       1000:6c21 2e ff a7        JMP        word ptr CS:[BX + 0x6bf5]
                 f5 6b
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6c46(void);
                             // C Signature: uint16_t FUN_1000_6c46(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [0x2a]
                             //   Read from: word ptr [0x473c]
                             //
                             undefined __cdecl16near FUN_1000_6c46()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6c46                                   XREF[1]:     FUN_1000_6c6f:1000:6c87(c)  
       1000:6c46 a0 2a 00        MOV        AL,[0x2a]
       1000:6c49 2c 2d           SUB        AL,0x2d
       1000:6c4b 3c 03           CMP        AL,0x3
       1000:6c4d 73 1f           JNC        LAB_1000_6c6e
       1000:6c4f f7 06 10        TEST       word ptr [0x10],0x10
                 00 10 00
       1000:6c55 75 17           JNZ        LAB_1000_6c6e
       1000:6c57 8b 3e 3c 47     MOV        DI,word ptr [0x473c]
       1000:6c5b 0b ff           OR         DI,DI
       1000:6c5d 74 0f           JZ         LAB_1000_6c6e
       1000:6c5f e8 bc c6        CALL       FUN_1000_331e                                    undefined FUN_1000_331e()
       1000:6c62 80 3e 66        CMP        byte ptr [0x66],0x0
                 00 00
       1000:6c67 74 05           JZ         LAB_1000_6c6e
       1000:6c69 b0 30           MOV        AL,0x30
       1000:6c6b e9 b1 a5        JMP        FUN_1000_121f                                    undefined FUN_1000_121f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_6c6e                                   XREF[4]:     1000:6c4d(j), 1000:6c55(j), 
                                                                                          1000:6c5d(j), 1000:6c67(j)  
       1000:6c6e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_6c6f(void);
                             // C Signature: uint32_t FUN_1000_6c6f(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: [0x101a]
                             //   Read from: byte ptr [SI + 0x3]
                             //   Read from: word ptr [SI + 0x4]
                             //   Write to: word ptr [0x473c]
                             //   Write to: byte ptr [0x4737]
                             //   Write to: [0xfa]
                             //
                             undefined __cdecl16near FUN_1000_6c6f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6c6f                                   XREF[1]:     FUN_1000_1b23:1000:1b70(c)  
       1000:6c6f 33 f6           XOR        SI,SI
       1000:6c71 a1 1a 10        MOV        AX,[0x101a]
       1000:6c74 3c 80           CMP        AL,0x80
       1000:6c76 75 0b           JNZ        LAB_1000_6c83
       1000:6c78 b0 1c           MOV        AL,0x1c
       1000:6c7a fe cc           DEC        AH
       1000:6c7c f6 e4           MUL        AH
       1000:6c7e 05 00 01        ADD        AX,0x100
       1000:6c81 8b f0           MOV        SI,AX
                             LAB_1000_6c83                                   XREF[1]:     1000:6c76(j)  
       1000:6c83 89 36 3c 47     MOV        word ptr [0x473c],SI
       1000:6c87 e8 bc ff        CALL       FUN_1000_6c46                                    undefined FUN_1000_6c46()
       1000:6c8a c6 06 37        MOV        byte ptr [0x4737],0x0
                 47 00
       1000:6c8f be aa 08        MOV        SI,0x8aa
                             LAB_1000_6c92                                   XREF[2]:     1000:6cca(j), 1000:6ceb(j)  
       1000:6c92 f7 44 12        TEST       word ptr [SI + 0x12],0x430
                 30 04
       1000:6c97 75 3a           JNZ        LAB_1000_6cd3
       1000:6c99 80 7c 1a 14     CMP        byte ptr [SI + 0x1a],0x14
       1000:6c9d 73 05           JNC        LAB_1000_6ca4
       1000:6c9f e8 77 00        CALL       FUN_1000_6d19                                    undefined FUN_1000_6d19()
       1000:6ca2 72 1f           JC         LAB_1000_6cc3
                             LAB_1000_6ca4                                   XREF[1]:     1000:6c9d(j)  
       1000:6ca4 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:6ca7 a8 a0           TEST       AL,0xa0
       1000:6ca9 75 18           JNZ        LAB_1000_6cc3
       1000:6cab a8 40           TEST       AL,0x40
       1000:6cad 75 3e           JNZ        LAB_1000_6ced
       1000:6caf 25 0f 00        AND        AX,0xf
       1000:6cb2 8b d8           MOV        BX,AX
       1000:6cb4 d1 e3           SHL        BX,0x1
       1000:6cb6 56              PUSH       SI
       1000:6cb7 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:6cba 2e ff 97        CALL       word ptr CS:[BX + 0x6c26]
                 26 6c
       1000:6cbf 5e              POP        SI
       1000:6cc0 e8 b8 00        CALL       FUN_1000_6d7b                                    undefined FUN_1000_6d7b()
                             LAB_1000_6cc3                                   XREF[6]:     1000:6ca2(j), 1000:6ca9(j), 
                                                                                          1000:6cde(j), 1000:6ce9(j), 
                                                                                          1000:6cf3(j), 1000:6cfa(j)  
       1000:6cc3 83 c6 1b        ADD        SI,0x1b
       1000:6cc6 81 fe bb 0f     CMP        SI,0xfbb
       1000:6cca 72 c6           JC         LAB_1000_6c92
       1000:6ccc a0 37 47        MOV        AL,[0x4737]
       1000:6ccf a2 fa 00        MOV        [0xfa],AL
       1000:6cd2 c3              RET
                             LAB_1000_6cd3                                   XREF[1]:     1000:6c97(j)  
       1000:6cd3 f6 44 03 40     TEST       byte ptr [SI + 0x3],0x40
       1000:6cd7 75 14           JNZ        LAB_1000_6ced
       1000:6cd9 80 3e fa        CMP        byte ptr [0xfa],0x0
                 00 00
       1000:6cde 74 e3           JZ         LAB_1000_6cc3
       1000:6ce0 80 64 12 cf     AND        byte ptr [SI + 0x12],0xcf
       1000:6ce4 f7 44 12        TEST       word ptr [SI + 0x12],0x400
                 00 04
       1000:6ce9 75 d8           JNZ        LAB_1000_6cc3
       1000:6ceb eb a5           JMP        LAB_1000_6c92
                             LAB_1000_6ced                                   XREF[2]:     1000:6cad(j), 1000:6cd7(j)  
       1000:6ced 8a 04           MOV        AL,byte ptr [SI]
       1000:6cef 3a 06 54 19     CMP        AL,byte ptr [0x1954]
       1000:6cf3 74 ce           JZ         LAB_1000_6cc3
       1000:6cf5 56              PUSH       SI
       1000:6cf6 e8 0f 16        CALL       FUN_1000_8308                                    undefined FUN_1000_8308()
       1000:6cf9 5e              POP        SI
       1000:6cfa eb c7           JMP        LAB_1000_6cc3
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6d19(void);
                             // C Signature: uint16_t FUN_1000_6d19(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: byte ptr [SI + 0x1a]
                             //   Read from: byte ptr [SI + 0x1a]
                             //   Write to: byte ptr [SI + 0x19]
                             //
                             undefined __cdecl16near FUN_1000_6d19()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6d19                                   XREF[1]:     FUN_1000_6c6f:1000:6c9f(c)  
       1000:6d19 f6 44 03 e3     TEST       byte ptr [SI + 0x3],0xe3
       1000:6d1d 75 3f           JNZ        LAB_1000_6d5e
       1000:6d1f f6 44 10 80     TEST       byte ptr [SI + 0x10],0x80
       1000:6d23 75 39           JNZ        LAB_1000_6d5e
       1000:6d25 81 fe e0 08     CMP        SI,0x8e0
       1000:6d29 74 33           JZ         LAB_1000_6d5e
       1000:6d2b 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:6d2e 33 db           XOR        BX,BX
       1000:6d30 8a 4c 1a        MOV        CL,byte ptr [SI + 0x1a]
       1000:6d33 f6 d1           NOT        CL
       1000:6d35 8b d6           MOV        DX,SI
       1000:6d37 bd 5f 6d        MOV        BP,0x6d5f
       1000:6d3a e8 e0 f8        CALL       FUN_1000_661d                                    undefined FUN_1000_661d()
       1000:6d3d 0b db           OR         BX,BX
       1000:6d3f 74 1d           JZ         LAB_1000_6d5e
       1000:6d41 8a 44 1a        MOV        AL,byte ptr [SI + 0x1a]
       1000:6d44 00 47 1a        ADD        byte ptr [BX + 0x1a],AL
       1000:6d47 8a 44 19        MOV        AL,byte ptr [SI + 0x19]
       1000:6d4a 8a e0           MOV        AH,AL
       1000:6d4c 22 47 19        AND        AL,byte ptr [BX + 0x19]
       1000:6d4f 88 44 19        MOV        byte ptr [SI + 0x19],AL
       1000:6d52 08 67 19        OR         byte ptr [BX + 0x19],AH
       1000:6d55 81 4f 12        OR         word ptr [BX + 0x12],0x200
                 00 02
       1000:6d5a e8 54 f9        CALL       FUN_1000_66b1                                    undefined FUN_1000_66b1()
       1000:6d5d f9              STC
                             LAB_1000_6d5e                                   XREF[4]:     1000:6d1d(j), 1000:6d23(j), 
                                                                                          1000:6d29(j), 1000:6d3f(j)  
       1000:6d5e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6d7b(uint8_t al, uint16_t si);
                             // C Signature: uint16_t FUN_1000_6d7b(uint8_t al, uint16_t si);
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //
                             undefined __cdecl16near FUN_1000_6d7b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6d7b                                   XREF[1]:     FUN_1000_6c6f:1000:6cc0(c)  
       1000:6d7b f7 06 02        TEST       word ptr [0x2],0x3f
                 00 3f 00
       1000:6d81 74 01           JZ         LAB_1000_6d84
       1000:6d83 c3              RET
                             LAB_1000_6d84                                   XREF[1]:     1000:6d81(j)  
       1000:6d84 e8 b4 fb        CALL       FUN_1000_693b                                    undefined FUN_1000_693b()
       1000:6d87 8a c8           MOV        CL,AL
       1000:6d89 b8 00 c0        MOV        AX,0xc000
       1000:6d8c d3 c0           ROL        AX,CL
       1000:6d8e 23 44 12        AND        AX,word ptr [SI + 0x12]
       1000:6d91 74 27           JZ         LAB_1000_6dba
       1000:6d93 d1 e0           SHL        AX,0x1
       1000:6d95 73 09           JNC        LAB_1000_6da0
       1000:6d97 80 7c 18 00     CMP        byte ptr [SI + 0x18],0x0
       1000:6d9b 74 03           JZ         LAB_1000_6da0
       1000:6d9d fe 4c 18        DEC        byte ptr [SI + 0x18]
                             LAB_1000_6da0                                   XREF[2]:     1000:6d95(j), 1000:6d9b(j)  
       1000:6da0 d1 e0           SHL        AX,0x1
       1000:6da2 73 09           JNC        LAB_1000_6dad
       1000:6da4 80 7c 17 00     CMP        byte ptr [SI + 0x17],0x0
       1000:6da8 74 03           JZ         LAB_1000_6dad
       1000:6daa fe 4c 17        DEC        byte ptr [SI + 0x17]
                             LAB_1000_6dad                                   XREF[2]:     1000:6da2(j), 1000:6da8(j)  
       1000:6dad d1 e0           SHL        AX,0x1
       1000:6daf 73 09           JNC        LAB_1000_6dba
       1000:6db1 80 7c 16 00     CMP        byte ptr [SI + 0x16],0x0
       1000:6db5 74 03           JZ         LAB_1000_6dba
       1000:6db7 fe 4c 16        DEC        byte ptr [SI + 0x16]
                             LAB_1000_6dba                                   XREF[3]:     1000:6d91(j), 1000:6daf(j), 
                                                                                          1000:6db5(j)  
       1000:6dba c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6efd(uint16_t si);
                             // C Signature: uint16_t FUN_1000_6efd(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x3]
                             //   Read from: byte ptr [SI + 0x15]
                             //   Read from: word ptr [SI + 0x4]
                             //
                             undefined __cdecl16near FUN_1000_6efd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6efd                                   XREF[2]:     FUN_1000_31f6:1000:3238(c), 
                                                                                          FUN_1000_708a:1000:708a(c)  
       1000:6efd 8a 64 03        MOV        AH,byte ptr [SI + 0x3]
       1000:6f00 80 e4 0f        AND        AH,0xf
       1000:6f03 8a 44 15        MOV        AL,byte ptr [SI + 0x15]
       1000:6f06 80 3e fa        CMP        byte ptr [0xfa],0x0
                 00 00
       1000:6f0b 74 02           JZ         LAB_1000_6f0f
       1000:6f0d 04 14           ADD        AL,0x14
                             LAB_1000_6f0f                                   XREF[1]:     1000:6f0b(j)  
       1000:6f0f 80 fc 06        CMP        AH,0x6
       1000:6f12 75 0f           JNZ        LAB_1000_6f23
       1000:6f14 57              PUSH       DI
       1000:6f15 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:6f18 3b 3e 4e 11     CMP        DI,word ptr [0x114e]
       1000:6f1c 5f              POP        DI
       1000:6f1d 75 12           JNZ        LAB_1000_6f31
       1000:6f1f 04 1e           ADD        AL,0x1e
       1000:6f21 eb 08           JMP        LAB_1000_6f2b
                             LAB_1000_6f23                                   XREF[1]:     1000:6f12(j)  
       1000:6f23 80 e4 fe        AND        AH,0xfe
       1000:6f26 80 fc 08        CMP        AH,0x8
       1000:6f29 74 04           JZ         LAB_1000_6f2f
                             LAB_1000_6f2b                                   XREF[1]:     1000:6f21(j)  
       1000:6f2b 3c 64           CMP        AL,0x64
       1000:6f2d 72 02           JC         LAB_1000_6f31
                             LAB_1000_6f2f                                   XREF[1]:     1000:6f29(j)  
       1000:6f2f b0 64           MOV        AL,0x64
                             LAB_1000_6f31                                   XREF[2]:     1000:6f1d(j), 1000:6f2d(j)  
       1000:6f31 80 3e 2a        CMP        byte ptr [0x2a],0x64
                 00 64
       1000:6f36 72 0f           JC         LAB_1000_6f47
       1000:6f38 80 3e 2a        CMP        byte ptr [0x2a],0x68
                 00 68
       1000:6f3d 73 08           JNC        LAB_1000_6f47
       1000:6f3f 2c 28           SUB        AL,0x28
       1000:6f41 3c 0a           CMP        AL,0xa
       1000:6f43 7d 02           JGE        LAB_1000_6f47
       1000:6f45 b0 0a           MOV        AL,0xa
                             LAB_1000_6f47                                   XREF[3]:     1000:6f36(j), 1000:6f3d(j), 
                                                                                          1000:6f43(j)  
       1000:6f47 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_6f56(void);
                             // C Signature: void FUN_1000_6f56(void);
                             // Input/Output Parameters:
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: byte ptr [SI + 0x15]
                             //
                             undefined __cdecl16near FUN_1000_6f56()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6f56                                   XREF[2]:     FUN_1000_6f78:1000:6f90(j), 
                                                                                          FUN_1000_7429:1000:745d(c)  
       1000:6f56 56              PUSH       SI
       1000:6f57 be aa 08        MOV        SI,0x8aa
                             LAB_1000_6f5a                                   XREF[1]:     1000:6f74(j)  
       1000:6f5a f6 44 03 a0     TEST       byte ptr [SI + 0x3],0xa0
       1000:6f5e 75 0d           JNZ        LAB_1000_6f6d
       1000:6f60 00 44 15        ADD        byte ptr [SI + 0x15],AL
       1000:6f63 80 7c 15 64     CMP        byte ptr [SI + 0x15],0x64
       1000:6f67 76 04           JBE        LAB_1000_6f6d
       1000:6f69 c6 44 15 64     MOV        byte ptr [SI + 0x15],0x64
                             LAB_1000_6f6d                                   XREF[2]:     1000:6f5e(j), 1000:6f67(j)  
       1000:6f6d 83 c6 1b        ADD        SI,0x1b
       1000:6f70 81 fe bb 0f     CMP        SI,0xfbb
       1000:6f74 72 e4           JC         LAB_1000_6f5a
       1000:6f76 5e              POP        SI
       1000:6f77 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_6f78(void);
                             // C Signature: uint16_t FUN_1000_6f78(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0x29]
                             //   Write to: [0x29]
                             //
                             undefined __cdecl16near FUN_1000_6f78()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_6f78                                   XREF[1]:     FUN_1000_7429:1000:7458(c)  
       1000:6f78 8a 26 29 00     MOV        AH,byte ptr [0x29]
       1000:6f7c 02 c4           ADD        AL,AH
       1000:6f7e 3c c8           CMP        AL,0xc8
       1000:6f80 76 02           JBE        LAB_1000_6f84
       1000:6f82 b0 c8           MOV        AL,0xc8
                             LAB_1000_6f84                                   XREF[1]:     1000:6f80(j)  
       1000:6f84 a2 29 00        MOV        [0x29],AL
       1000:6f87 25 fc fc        AND        AX,0xfcfc
       1000:6f8a 2a c4           SUB        AL,AH
       1000:6f8c d0 e8           SHR        AL,0x1
       1000:6f8e d0 e8           SHR        AL,0x1
       1000:6f90 75 c4           JNZ        FUN_1000_6f56
       1000:6f92 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_708a(uint16_t di);
                             // C Signature: uint32_t FUN_1000_708a(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x16]
                             //   Read from: byte ptr [DI + 0x12]
                             //   Read from: word ptr [SI + 0x10]
                             //   Write to: word ptr [SI + 0x10]
                             //
                             undefined __cdecl16near FUN_1000_708a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_708a                                   XREF[1]:     FUN_1000_329d:1000:32c4(c)  
       1000:708a e8 70 fe        CALL       FUN_1000_6efd                                    undefined FUN_1000_6efd()
       1000:708d 8a 64 16        MOV        AH,byte ptr [SI + 0x16]
       1000:7090 80 e4 f0        AND        AH,0xf0
       1000:7093 02 c4           ADD        AL,AH
       1000:7095 f6 64 1a        MUL        byte ptr [SI + 0x1a]
       1000:7098 f6 44 19 80     TEST       byte ptr [SI + 0x19],0x80
       1000:709c 75 04           JNZ        LAB_1000_70a2
       1000:709e d1 e8           SHR        AX,0x1
       1000:70a0 d1 e8           SHR        AX,0x1
                             LAB_1000_70a2                                   XREF[1]:     1000:709c(j)  
       1000:70a2 8a 45 12        MOV        AL,byte ptr [DI + 0x12]
       1000:70a5 24 f0           AND        AL,0xf0
       1000:70a7 40              INC        AX
       1000:70a8 f6 e4           MUL        AH
       1000:70aa 86 c4           XCHG       AH,AL
       1000:70ac d1 c0           ROL        AX,0x1
       1000:70ae 80 e4 01        AND        AH,0x1
       1000:70b1 8b d0           MOV        DX,AX
       1000:70b3 87 54 0c        XCHG       word ptr [SI + 0xc],DX
       1000:70b6 2b d0           SUB        DX,AX
       1000:70b8 74 11           JZ         LAB_1000_70cb
       1000:70ba b3 08           MOV        BL,0x8
       1000:70bc 72 02           JC         LAB_1000_70c0
       1000:70be b3 04           MOV        BL,0x4
                             LAB_1000_70c0                                   XREF[1]:     1000:70bc(j)  
       1000:70c0 8b 4c 10        MOV        CX,word ptr [SI + 0x10]
       1000:70c3 80 e1 f3        AND        CL,0xf3
       1000:70c6 0a cb           OR         CL,BL
       1000:70c8 89 4c 10        MOV        word ptr [SI + 0x10],CX
                             LAB_1000_70cb                                   XREF[1]:     1000:70b8(j)  
       1000:70cb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_71b2(void);
                             // C Signature: void FUN_1000_71b2(void);
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AH (uint8_t): 8-bit output value in AH register
                             //
                             undefined __cdecl16near FUN_1000_71b2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_71b2                                   XREF[2]:     FUN_1000_1e43:1000:1e9e(c), 
                                                                                          FUN_1000_7429:1000:7431(c)  
       1000:71b2 b4 0f           MOV        AH,0xf
       1000:71b4 56              PUSH       SI
       1000:71b5 57              PUSH       DI
       1000:71b6 e8 37 b8        CALL       FUN_1000_29f0                                    undefined FUN_1000_29f0()
       1000:71b9 5f              POP        DI
       1000:71ba 5e              POP        SI
       1000:71bb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_7429(uint8_t dl);
                             // C Signature: uint32_t FUN_1000_7429(uint8_t dl);
                             // Input Parameters:
                             //   DL (uint8_t): 8-bit input value in DL register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI]
                             //   Write to: byte ptr [DI + 0xb]
                             //   Write to: byte ptr [DI + 0xb]
                             //   Write to: [0x115a]
                             //
                             undefined __cdecl16near FUN_1000_7429()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7429                                   XREF[1]:     FUN_1000_8308:1000:8397(c)  
       1000:7429 3b 3e 4e 11     CMP        DI,word ptr [0x114e]
       1000:742d 74 05           JZ         LAB_1000_7434
       1000:742f b0 07           MOV        AL,0x7
       1000:7431 e8 7e fd        CALL       FUN_1000_71b2                                    undefined FUN_1000_71b2()
                             LAB_1000_7434                                   XREF[1]:     1000:742d(j)  
       1000:7434 80 7d 08 28     CMP        byte ptr [DI + 0x8],0x28
       1000:7438 73 09           JNC        LAB_1000_7443
       1000:743a 80 65 0a fd     AND        byte ptr [DI + 0xa],0xfd
       1000:743e bd af 75        MOV        BP,0x75af
       1000:7441 eb 36           JMP        LAB_1000_7479
                             LAB_1000_7443                                   XREF[1]:     1000:7438(j)  
       1000:7443 56              PUSH       SI
       1000:7444 57              PUSH       DI
       1000:7445 c6 45 0b 05     MOV        byte ptr [DI + 0xb],0x5
       1000:7449 e8 02 f0        CALL       FUN_1000_644e                                    undefined FUN_1000_644e()
       1000:744c 5f              POP        DI
       1000:744d 5e              POP        SI
       1000:744e e8 74 a6        CALL       divide_by_16                                    undefined divide_by_16()
       1000:7451 04 02           ADD        AL,0x2
       1000:7453 88 45 0b        MOV        byte ptr [DI + 0xb],AL
       1000:7456 b0 04           MOV        AL,0x4
       1000:7458 e8 1d fb        CALL       FUN_1000_6f78                                    undefined FUN_1000_6f78()
       1000:745b b0 01           MOV        AL,0x1
       1000:745d e8 f6 fa        CALL       FUN_1000_6f56                                    undefined FUN_1000_6f56()
       1000:7460 80 4d 0a 08     OR         byte ptr [DI + 0xa],0x8
       1000:7464 51              PUSH       CX
       1000:7465 8a 0d           MOV        CL,byte ptr [DI]
       1000:7467 b8 00 80        MOV        AX,0x8000
       1000:746a d3 c0           ROL        AX,CL
       1000:746c a3 5a 11        MOV        [0x115a],AX
       1000:746f 59              POP        CX
       1000:7470 bd af 75        MOV        BP,0x75af
       1000:7473 e8 8d f1        CALL       FUN_1000_6603                                    undefined FUN_1000_6603()
       1000:7476 bd ea 75        MOV        BP,0x75ea
                             LAB_1000_7479                                   XREF[1]:     1000:7441(j)  
       1000:7479 e8 87 f1        CALL       FUN_1000_6603                                    undefined FUN_1000_6603()
       1000:747c 33 d2           XOR        DX,DX
       1000:747e f7 06 00        TEST       word ptr [0x0],0x3
                 00 03 00
       1000:7484 75 01           JNZ        LAB_1000_7487
       1000:7486 42              INC        DX
                             LAB_1000_7487                                   XREF[2]:     1000:7484(j), 1000:7491(j)  
       1000:7487 33 c9           XOR        CX,CX
       1000:7489 bd 2a 76        MOV        BP,0x762a
       1000:748c e8 74 f1        CALL       FUN_1000_6603                                    undefined FUN_1000_6603()
       1000:748f 3b ca           CMP        CX,DX
       1000:7491 77 f4           JA         LAB_1000_7487
       1000:7493 56              PUSH       SI
       1000:7494 57              PUSH       DI
       1000:7495 e8 42 a8        CALL       FUN_1000_1cda                                    undefined FUN_1000_1cda()
       1000:7498 80 fa 01        CMP        DL,0x1
       1000:749b 77 14           JA         LAB_1000_74b1
       1000:749d c6 06 c2        MOV        byte ptr [0xc2],0x1
                 00 01
       1000:74a2 80 26 f7        AND        byte ptr [0xff7],0xfd
                 0f fd
       1000:74a7 80 26 07        AND        byte ptr [0x1007],0xfd
                 10 fd
       1000:74ac 5f              POP        DI
       1000:74ad e8 ae 01        CALL       FUN_1000_765e                                    undefined FUN_1000_765e()
       1000:74b0 57              PUSH       DI
                             LAB_1000_74b1                                   XREF[1]:     1000:749b(j)  
       1000:74b1 5f              POP        DI
       1000:74b2 5e              POP        SI
       1000:74b3 e9 9a e8        JMP        LAB_1000_5d50
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_765e(void);
                             // C Signature: void FUN_1000_765e(void);
                             // Input/Output Parameters:
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_765e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_765e                                   XREF[1]:     FUN_1000_7429:1000:74ad(c)  
       1000:765e e8 0f 6c        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:7661 be 00 01        MOV        SI,0x100
       1000:7664 33 c9           XOR        CX,CX
                             LAB_1000_7666                                   XREF[1]:     1000:766f(j)  
       1000:7666 02 4c 19        ADD        CL,byte ptr [SI + 0x19]
       1000:7669 83 c6 1c        ADD        SI,0x1c
       1000:766c 80 3c ff        CMP        byte ptr [SI],0xff
       1000:766f 75 f5           JNZ        LAB_1000_7666
       1000:7671 80 e9 0a        SUB        CL,0xa
       1000:7674 72 03           JC         LAB_1000_7679
       1000:7676 00 4d 19        ADD        byte ptr [DI + 0x19],CL
                             LAB_1000_7679                                   XREF[1]:     1000:7674(j)  
       1000:7679 e8 07 6c        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:767c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_780a(uint16_t si);
                             // C Signature: uint16_t FUN_1000_780a(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x3]
                             //   Write to: word ptr [BP + 0x12]
                             //
                             undefined FUN_1000_780a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_780a                                   XREF[1]:     FUN_1000_1707:1000:1768(c)  
       1000:780a e8 56 04        CALL       FUN_1000_7c63                                    undefined FUN_1000_7c63()
       1000:780d bd 22 21        MOV        BP,0x2122
       1000:7810 3b 06 76 11     CMP        AX,word ptr [0x1176]
       1000:7814 77 28           JA         LAB_1000_783e
       1000:7816 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:7819 a8 20           TEST       AL,0x20
       1000:781b 74 04           JZ         LAB_1000_7821
       1000:781d 3c 22           CMP        AL,0x22
       1000:781f 75 1d           JNZ        LAB_1000_783e
                             LAB_1000_7821                                   XREF[1]:     1000:781b(j)  
       1000:7821 bd 4a 21        MOV        BP,0x214a
       1000:7824 f6 44 03 40     TEST       byte ptr [SI + 0x3],0x40
       1000:7828 75 14           JNZ        LAB_1000_783e
       1000:782a bd 0a 21        MOV        BP,0x210a
       1000:782d b8 52 00        MOV        AX,0x52
       1000:7830 80 3e f3        CMP        byte ptr [0x46f3],0x1
                 46 01
       1000:7835 15 00 00        ADC        AX,0x0
       1000:7838 89 46 12        MOV        word ptr [BP + 0x12],AX
       1000:783b e8 09 00        CALL       FUN_1000_7847                                    undefined FUN_1000_7847()
                             LAB_1000_783e                                   XREF[3]:     1000:7814(j), 1000:781f(j), 
                                                                                          1000:7828(j)  
       1000:783e bb 51 87        MOV        BX,0x8751
       1000:7841 e8 df 5a        CALL       FUN_1000_d323                                    undefined FUN_1000_d323()
       1000:7844 e9 f4 48        JMP        FUN_1000_c13b                                    undefined FUN_1000_c13b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_7847(void);
                             // C Signature: uint16_t FUN_1000_7847(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x3]
                             //   Read from: word ptr [SI + 0x4]
                             //   Write to: word ptr [0x2110]
                             //   Write to: byte ptr [0x2110]
                             //
                             undefined __cdecl16near FUN_1000_7847()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7847                                   XREF[2]:     FUN_1000_6ad4:1000:6b21(c), 
                                                                                          FUN_1000_780a:1000:783b(c)  
       1000:7847 c7 06 10        MOV        word ptr [0x2110],0x404f
                 21 4f 40
       1000:784d 80 0e 15        OR         byte ptr [0x2115],0x40
                 21 40
       1000:7852 80 0e 19        OR         byte ptr [0x2119],0x40
                 21 40
       1000:7857 f7 44 12        TEST       word ptr [SI + 0x12],0x400
                 00 04
       1000:785c 75 5d           JNZ        LAB_1000_78bb
       1000:785e 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:7861 24 0f           AND        AL,0xf
       1000:7863 3c 01           CMP        AL,0x1
       1000:7865 74 05           JZ         LAB_1000_786c
       1000:7867 80 26 11        AND        byte ptr [0x2111],0xbf
                 21 bf
                             LAB_1000_786c                                   XREF[1]:     1000:7865(j)  
       1000:786c 3c 02           CMP        AL,0x2
       1000:786e 75 06           JNZ        LAB_1000_7876
       1000:7870 c6 06 10        MOV        byte ptr [0x2110],0x56
                 21 56
       1000:7875 c3              RET
                             LAB_1000_7876                                   XREF[1]:     1000:786e(j)  
       1000:7876 80 3e 2a        CMP        byte ptr [0x2a],0x5
                 00 05
       1000:787b 72 05           JC         LAB_1000_7882
       1000:787d 80 26 19        AND        byte ptr [0x2119],0xbf
                 21 bf
                             LAB_1000_7882                                   XREF[1]:     1000:787b(j)  
       1000:7882 80 3e 2a        CMP        byte ptr [0x2a],0x4
                 00 04
       1000:7887 72 32           JC         LAB_1000_78bb
       1000:7889 f7 44 10        TEST       word ptr [SI + 0x10],0x200
                 00 02
       1000:788e 75 2b           JNZ        LAB_1000_78bb
       1000:7890 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:7893 f6 45 0a 08     TEST       byte ptr [DI + 0xa],0x8
       1000:7897 75 06           JNZ        LAB_1000_789f
       1000:7899 80 7d 08 28     CMP        byte ptr [DI + 0x8],0x28
       1000:789d 73 1c           JNC        LAB_1000_78bb
                             LAB_1000_789f                                   XREF[1]:     1000:7897(j)  
       1000:789f 56              PUSH       SI
       1000:78a0 e8 84 06        CALL       FUN_1000_7f27                                    undefined FUN_1000_7f27()
       1000:78a3 be fe 46        MOV        SI,0x46fe
       1000:78a6 b9 07 00        MOV        CX,0x7
       1000:78a9 32 c0           XOR        AL,AL
                             LAB_1000_78ab                                   XREF[1]:     1000:78ae(j)  
       1000:78ab 0a 04           OR         AL,byte ptr [SI]
       1000:78ad 46              INC        SI
       1000:78ae e2 fb           LOOP       LAB_1000_78ab
       1000:78b0 5e              POP        SI
       1000:78b1 0a 44 19        OR         AL,byte ptr [SI + 0x19]
       1000:78b4 74 05           JZ         LAB_1000_78bb
       1000:78b6 80 26 15        AND        byte ptr [0x2115],0xbf
                 21 bf
                             LAB_1000_78bb                                   XREF[5]:     1000:785c(j), 1000:7887(j), 
                                                                                          1000:788e(j), 1000:789d(j), 
                                                                                          1000:78b4(j)  
       1000:78bb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_78e9(void);
                             // C Signature: uint32_t FUN_1000_78e9(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   CH (uint8_t): 8-bit output value in CH register
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0x18e8]
                             //   Read from: word ptr [0x18df]
                             //   Read from: word ptr [0x18e1]
                             //
                             undefined FUN_1000_78e9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_78e9                                   XREF[1]:     FUN_1000_1c18:1000:1c2a(c)  
       1000:78e9 e8 2b f0        CALL       FUN_1000_6917                                    undefined FUN_1000_6917()
       1000:78ec 74 03           JZ         LAB_1000_78f1
       1000:78ee e9 ed 00        JMP        FUN_1000_79de                                    undefined FUN_1000_79de()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_78f1                                   XREF[1]:     1000:78ec(j)  
       1000:78f1 e8 9a 47        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:78f4 e8 ff b8        CALL       FUN_1000_31f6                                    undefined FUN_1000_31f6()
       1000:78f7 83 06 f3        ADD        word ptr [0x11f3],0xc
                 11 0c
       1000:78fc be df 18        MOV        SI,0x18df
       1000:78ff e8 19 02        CALL       FUN_1000_7b1b                                    undefined FUN_1000_7b1b()
       1000:7902 e8 70 57        CALL       FUN_1000_d075                                    undefined FUN_1000_d075()
       1000:7905 b1 9a           MOV        CL,0x9a
       1000:7907 8a 2e e8 18     MOV        CH,byte ptr [0x18e8]
       1000:790b 8b 16 df 18     MOV        DX,word ptr [0x18df]
       1000:790f 8b 1e e1 18     MOV        BX,word ptr [0x18e1]
       1000:7913 83 c2 0c        ADD        DX,0xc
       1000:7916 83 c3 04        ADD        BX,0x4
       1000:7919 b8 3a 00        MOV        AX,0x3a
       1000:791c f6 06 30        TEST       byte ptr [0x30],0x40
                 00 40
       1000:7921 74 01           JZ         LAB_1000_7924
       1000:7923 40              INC        AX
                             LAB_1000_7924                                   XREF[1]:     1000:7921(j)  
       1000:7924 e8 3e 0f        CALL       FUN_1000_8865                                    undefined FUN_1000_8865()
       1000:7927 b1 96           MOV        CL,0x96
       1000:7929 83 ea 08        SUB        DX,0x8
       1000:792c 83 c3 09        ADD        BX,0x9
       1000:792f 8b 3e 2c 00     MOV        DI,word ptr [0x2c]
       1000:7933 e8 70 e9        CALL       FUN_1000_62a6                                    undefined FUN_1000_62a6()
       1000:7936 b1 9a           MOV        CL,0x9a
       1000:7938 83 c3 0a        ADD        BX,0xa
       1000:793b a0 30 00        MOV        AL,[0x30]
       1000:793e a8 20           TEST       AL,0x20
       1000:7940 74 0a           JZ         LAB_1000_794c
       1000:7942 3c 22           CMP        AL,0x22
       1000:7944 b8 41 00        MOV        AX,0x41
       1000:7947 75 6d           JNZ        LAB_1000_79b6
       1000:7949 40              INC        AX
       1000:794a eb 6a           JMP        LAB_1000_79b6
                             LAB_1000_794c                                   XREF[1]:     1000:7940(j)  
       1000:794c b8 3c 00        MOV        AX,0x3c
       1000:794f e8 13 0f        CALL       FUN_1000_8865                                    undefined FUN_1000_8865()
       1000:7952 83 c3 0f        ADD        BX,0xf
       1000:7955 80 3e 30        CMP        byte ptr [0x30],0x2
                 00 02
       1000:795a 74 60           JZ         LAB_1000_79bc
       1000:795c a0 2f 00        MOV        AL,[0x2f]
       1000:795f d0 e8           SHR        AL,0x1
       1000:7961 25 06 00        AND        AX,0x6
       1000:7964 05 f7 11        ADD        AX,0x11f7
       1000:7967 8b f0           MOV        SI,AX
       1000:7969 8b 04           MOV        AX,word ptr [SI]
       1000:796b e8 26 58        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:796e 83 c3 0a        ADD        BX,0xa
       1000:7971 f6 06 30        TEST       byte ptr [0x30],0x40
                 00 40
       1000:7976 75 44           JNZ        LAB_1000_79bc
       1000:7978 b8 3f 00        MOV        AX,0x3f
       1000:797b f7 06 32        TEST       word ptr [0x32],0x200
                 00 00 02
       1000:7981 75 33           JNZ        LAB_1000_79b6
       1000:7983 b8 40 00        MOV        AX,0x40
       1000:7986 f7 06 32        TEST       word ptr [0x32],0x100
                 00 00 01
       1000:798c 74 28           JZ         LAB_1000_79b6
       1000:798e f7 06 34        TEST       word ptr [0x34],0x30
                 00 30 00
       1000:7994 75 20           JNZ        LAB_1000_79b6
       1000:7996 b8 3d 00        MOV        AX,0x3d
       1000:7999 80 3e 30        CMP        byte ptr [0x30],0x0
                 00 00
       1000:799e 74 16           JZ         LAB_1000_79b6
       1000:79a0 b8 43 00        MOV        AX,0x43
       1000:79a3 80 3e 2f        CMP        byte ptr [0x2f],0x1
                 00 01
       1000:79a8 74 0c           JZ         LAB_1000_79b6
       1000:79aa b8 3e 00        MOV        AX,0x3e
       1000:79ad 80 3e 30        CMP        byte ptr [0x30],0x6
                 00 06
       1000:79b2 74 02           JZ         LAB_1000_79b6
       1000:79b4 eb 06           JMP        LAB_1000_79bc
                             LAB_1000_79b6                                   XREF[8]:     1000:7947(j), 1000:794a(j), 
                                                                                          1000:7981(j), 1000:798c(j), 
                                                                                          1000:7994(j), 1000:799e(j), 
                                                                                          1000:79a8(j), 1000:79b2(j)  
       1000:79b6 e8 ac 0e        CALL       FUN_1000_8865                                    undefined FUN_1000_8865()
       1000:79b9 83 c3 11        ADD        BX,0x11
                             LAB_1000_79bc                                   XREF[3]:     1000:795a(j), 1000:7976(j), 
                                                                                          1000:79b4(j)  
       1000:79bc 83 c3 04        ADD        BX,0x4
       1000:79bf b8 6e 00        MOV        AX,0x6e
       1000:79c2 b1 96           MOV        CL,0x96
       1000:79c4 e8 cd 57        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:79c7 83 c3 08        ADD        BX,0x8
       1000:79ca 8b 36 fa 46     MOV        SI,word ptr [0x46fa]
       1000:79ce e8 2a 05        CALL       FUN_1000_7efb                                    undefined FUN_1000_7efb()
       1000:79d1 be 05 47        MOV        SI,0x4705
       1000:79d4 8b 2e e5 18     MOV        BP,word ptr [0x18e5]
       1000:79d8 e8 62 04        CALL       FUN_1000_7e3d                                    undefined FUN_1000_7e3d()
                             LAB_1000_79db                                   XREF[1]:     FUN_1000_79de:1000:79e6(j)  
       1000:79db e9 9e 46        JMP        FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_79de(void);
                             // C Signature: uint16_t FUN_1000_79de(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             undefined FUN_1000_79de()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_79de                                   XREF[2]:     FUN_1000_78e9:1000:78ee(c), 
                                                                                          FUN_1000_7b36:1000:7b48(c)  
       1000:79de 33 c0           XOR        AX,AX
       1000:79e0 87 06 fa 46     XCHG       word ptr [0x46fa],AX
       1000:79e4 0b c0           OR         AX,AX
       1000:79e6 74 f3           JZ         LAB_1000_79db
       1000:79e8 be df 18        MOV        SI,0x18df
       1000:79eb e9 b1 e5        JMP        LAB_1000_5f9f
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_79ee(void);
                             // C Signature: uint32_t FUN_1000_79ee(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BL (uint8_t): 8-bit output value in BL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: word ptr [DI]
                             //   Read from: word ptr [DI + 0x2]
                             //   Read from: word ptr [0x46ef]
                             //   Write to: word ptr [0x46ef]
                             //   Write to: word ptr [SI + 0x2]
                             //   Write to: word ptr [SI + 0x6]
                             //
                             undefined FUN_1000_79ee()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_79ee                                   XREF[1]:     FUN_1000_8ccd:1000:8cee(c)  
       1000:79ee 89 36 ef 46     MOV        word ptr [0x46ef],SI
       1000:79f2 e8 22 ef        CALL       FUN_1000_6917                                    undefined FUN_1000_6917()
       1000:79f5 be e9 18        MOV        SI,0x18e9
       1000:79f8 75 24           JNZ        LAB_1000_7a1e
       1000:79fa b8 1e 00        MOV        AX,0x1e
       1000:79fd bb 05 00        MOV        BX,0x5
       1000:7a00 83 7d 02 4c     CMP        word ptr [DI + 0x2],0x4c
       1000:7a04 7d 06           JGE        LAB_1000_7a0c
       1000:7a06 b8 0e 00        MOV        AX,0xe
       1000:7a09 bb 50 00        MOV        BX,0x50
                             LAB_1000_7a0c                                   XREF[1]:     1000:7a04(j)  
       1000:7a0c 89 5c 02        MOV        word ptr [SI + 0x2],BX
       1000:7a0f 83 c3 43        ADD        BX,0x43
       1000:7a12 89 5c 06        MOV        word ptr [SI + 0x6],BX
       1000:7a15 c7 06 10        MOV        word ptr [0x4710],0x5c
                 47 5c 00
       1000:7a1b a3 12 47        MOV        [0x4712],AX
                             LAB_1000_7a1e                                   XREF[1]:     1000:79f8(j)  
       1000:7a1e 89 36 e0 db     MOV        word ptr [0xdbe0],SI
       1000:7a22 b0 02           MOV        AL,0x2
       1000:7a24 e8 e8 00        CALL       FUN_1000_7b0f                                    undefined FUN_1000_7b0f()
       1000:7a27 bf e9 18        MOV        DI,0x18e9
       1000:7a2a be f3 18        MOV        SI,0x18f3
       1000:7a2d 8b 15           MOV        DX,word ptr [DI]
       1000:7a2f 8b 5d 02        MOV        BX,word ptr [DI + 0x2]
       1000:7a32 8b c2           MOV        AX,DX
       1000:7a34 05 49 00        ADD        AX,0x49
       1000:7a37 a3 44 22        MOV        [0x2244],AX
       1000:7a3a 83 c3 03        ADD        BX,0x3
       1000:7a3d 89 1e 46 22     MOV        word ptr [0x2246],BX
       1000:7a41 33 c0           XOR        AX,AX
       1000:7a43 a3 84 47        MOV        [0x4784],AX
       1000:7a46 c7 06 86        MOV        word ptr [0x4786],0x5
                 47 05 00
       1000:7a4c a3 88 47        MOV        [0x4788],AX
       1000:7a4f 40              INC        AX
       1000:7a50 a3 8a 47        MOV        [0x478a],AX
       1000:7a53 83 c2 04        ADD        DX,0x4
       1000:7a56 89 14           MOV        word ptr [SI],DX
       1000:7a58 89 5c 02        MOV        word ptr [SI + 0x2],BX
       1000:7a5b 83 c2 3d        ADD        DX,0x3d
       1000:7a5e 83 c3 3d        ADD        BX,0x3d
       1000:7a61 89 54 04        MOV        word ptr [SI + 0x4],DX
       1000:7a64 89 5c 06        MOV        word ptr [SI + 0x6],BX
       1000:7a67 e8 b1 00        CALL       FUN_1000_7b1b                                    undefined FUN_1000_7b1b()
       1000:7a6a 8b 36 ef 46     MOV        SI,word ptr [0x46ef]
       1000:7a6e f6 44 03 20     TEST       byte ptr [SI + 0x3],0x20
       1000:7a72 74 22           JZ         LAB_1000_7a96
       1000:7a74 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:7a77 f6 45 0a 02     TEST       byte ptr [DI + 0xa],0x2
       1000:7a7b 75 05           JNZ        LAB_1000_7a82
       1000:7a7d e8 b6 e2        CALL       FUN_1000_5d36                                    undefined FUN_1000_5d36()
       1000:7a80 72 14           JC         LAB_1000_7a96
                             LAB_1000_7a82                                   XREF[1]:     1000:7a7b(j)  
       1000:7a82 b8 0c 00        MOV        AX,0xc
       1000:7a85 a3 c4 47        MOV        [0x47c4],AX
       1000:7a88 e8 15 17        CALL       FUN_1000_91a0                                    undefined FUN_1000_91a0()
       1000:7a8b e8 66 46        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:7a8e b8 0c 00        MOV        AX,0xc
       1000:7a91 bd 00 00        MOV        BP,0x0
       1000:7a94 eb 2b           JMP        LAB_1000_7ac1
                             LAB_1000_7a96                                   XREF[2]:     1000:7a72(j), 1000:7a80(j)  
       1000:7a96 b8 0f 00        MOV        AX,0xf
       1000:7a99 a3 c4 47        MOV        [0x47c4],AX
       1000:7a9c 89 36 58 47     MOV        word ptr [0x4758],SI
       1000:7aa0 c6 06 6c        MOV        byte ptr [0x476c],0x0
                 47 00
       1000:7aa5 e8 f8 16        CALL       FUN_1000_91a0                                    undefined FUN_1000_91a0()
       1000:7aa8 e8 49 46        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:7aab a1 a6 22        MOV        AX,[0x22a6]
       1000:7aae 2d 0e 00        SUB        AX,0xe
       1000:7ab1 d1 e0           SHL        AX,0x1
       1000:7ab3 d1 e0           SHL        AX,0x1
       1000:7ab5 8a 1e d0 47     MOV        BL,byte ptr [0x47d0]
       1000:7ab9 fe cb           DEC        BL
       1000:7abb 32 ff           XOR        BH,BH
       1000:7abd d1 e3           SHL        BX,0x1
       1000:7abf 8b eb           MOV        BP,BX
                             LAB_1000_7ac1                                   XREF[1]:     1000:7a94(j)  
       1000:7ac1 be b9 22        MOV        SI,0x22b9
       1000:7ac4 03 f0           ADD        SI,AX
       1000:7ac6 ad              LODSW      SI
       1000:7ac7 a3 d2 46        MOV        [0x46d2],AX
       1000:7aca ad              LODSW      SI
       1000:7acb a3 d4 46        MOV        [0x46d4],AX
       1000:7ace 1e              PUSH       DS
       1000:7acf 36 8b 36        MOV        SI,word ptr SS:[0x47ca]
                 ca 47
       1000:7ad4 36 8e 1e        MOV        DS,word ptr SS:[0xdbb2]
                 b2 db
       1000:7ad9 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:7adc 36 8b 16        MOV        DX,word ptr SS:[0x18f3]
                 f3 18
       1000:7ae1 36 8b 1e        MOV        BX,word ptr SS:[0x18f5]
                 f5 18
       1000:7ae6 43              INC        BX
       1000:7ae7 42              INC        DX
       1000:7ae8 36 89 16        MOV        word ptr SS:[0x47d4],DX
                 d4 47
       1000:7aed 36 89 1e        MOV        word ptr SS:[0x47d6],BX
                 d6 47
       1000:7af2 83 c2 3b        ADD        DX,0x3b
       1000:7af5 83 c3 3b        ADD        BX,0x3b
       1000:7af8 36 89 16        MOV        word ptr SS:[0x47d8],DX
                 d8 47
       1000:7afd 36 89 1e        MOV        word ptr SS:[0x47da],BX
                 da 47
       1000:7b02 e8 65 22        CALL       FUN_1000_9d6a                                    undefined FUN_1000_9d6a()
       1000:7b05 1f              POP        DS
       1000:7b06 be d4 47        MOV        SI,0x47d4
       1000:7b09 e8 9e 49        CALL       FUN_1000_c4aa                                    undefined FUN_1000_c4aa()
       1000:7b0c e9 2c 46        JMP        FUN_1000_c13b                                    undefined FUN_1000_c13b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_7b0f(void);
                             // C Signature: void FUN_1000_7b0f(void);
                             // Input/Output Parameters:
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x46d8]
                             //
                             undefined FUN_1000_7b0f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7b0f                                   XREF[2]:     FUN_1000_5ee4:1000:5f76(c), 
                                                                                          FUN_1000_79ee:1000:7a24(c)  
       1000:7b0f c6 06 d8        MOV        byte ptr [0x46d8],0x0
                 46 00
       1000:7b14 56              PUSH       SI
       1000:7b15 87 f7           XCHG       DI,SI
       1000:7b17 e8 ce 45        CALL       FUN_1000_c0e8                                    undefined FUN_1000_c0e8()
       1000:7b1a 5e              POP        SI
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_7b1b(void);
                             // C Signature: uint16_t FUN_1000_7b1b(void);
                             // Input/Output Parameters:
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbda]
                             //   Read from: byte ptr [SI + 0x9]
                             //
                             undefined FUN_1000_7b1b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7b1b                                   XREF[6]:     FUN_1000_0d8e:1000:0deb(c), 
                                                                                          FUN_1000_5bb0:1000:5bba(c), 
                                                                                          FUN_1000_5ee4:1000:5efe(c), 
                                                                                          FUN_1000_78e9:1000:78ff(c), 
                                                                                          FUN_1000_79ee:1000:7a67(c), 
                                                                                          FUN_1000_de7b:1000:deaf(c)  
       1000:7b1b 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:7b1f 8a 44 09        MOV        AL,byte ptr [SI + 0x9]
       1000:7b22 56              PUSH       SI
       1000:7b23 ff 1e dd 38     CALLF      [0x38dd]
       1000:7b27 5e              POP        SI
       1000:7b28 e9 26 4a        JMP        FUN_1000_c551                                    undefined FUN_1000_c551()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_7b2b(void);
                             //
                             undefined __cdecl16near FUN_1000_7b2b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7b2b                                   XREF[1]:     FUN_1000_5f91:1000:5fad(c)  
       1000:7b2b 80 3e d8        CMP        byte ptr [0x46d8],0x0
                 46 00
       1000:7b30 75 03           JNZ        LAB_1000_7b35
       1000:7b32 e9 b3 45        JMP        FUN_1000_c0e8                                    undefined FUN_1000_c0e8()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_7b35                                   XREF[1]:     1000:7b30(j)  
       1000:7b35 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_7b36(void);
                             // C Signature: void FUN_1000_7b36(void);
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x46d8]
                             //   Write to: byte ptr [0xdce6]
                             //   Write to: byte ptr [0xdce6]
                             //
                             undefined __cdecl16near FUN_1000_7b36()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7b36                                   XREF[1]:     FUN_1000_5adf:1000:5adf(c)  
       1000:7b36 56              PUSH       SI
       1000:7b37 57              PUSH       DI
       1000:7b38 c6 06 d8        MOV        byte ptr [0x46d8],0x1
                 46 01
       1000:7b3d c6 06 e6        MOV        byte ptr [0xdce6],0x80
                 dc 80
       1000:7b42 e8 2b 0c        CALL       FUN_1000_8770                                    undefined FUN_1000_8770()
       1000:7b45 e8 31 e4        CALL       FUN_1000_5f79                                    undefined FUN_1000_5f79()
       1000:7b48 e8 93 fe        CALL       FUN_1000_79de                                    undefined FUN_1000_79de()
       1000:7b4b c6 06 e6        MOV        byte ptr [0xdce6],0x0
                 dc 00
       1000:7b50 c6 06 f4        MOV        byte ptr [0x46f4],0x0
                 46 00
       1000:7b55 5f              POP        DI
       1000:7b56 5e              POP        SI
       1000:7b57 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_7c63(void);
                             // C Signature: uint32_t FUN_1000_7c63(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [BP + 0x4880]
                             //   Read from: word ptr [SI + 0x6]
                             //
                             undefined __cdecl16near FUN_1000_7c63()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7c63                                   XREF[1]:     FUN_1000_780a:1000:780a(c)  
       1000:7c63 56              PUSH       SI
       1000:7c64 e8 17 c4        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:7c67 5e              POP        SI
       1000:7c68 8b eb           MOV        BP,BX
       1000:7c6a d1 e5           SHL        BP,0x1
       1000:7c6c 79 02           JNS        LAB_1000_7c70
       1000:7c6e f7 dd           NEG        BP
                             LAB_1000_7c70                                   XREF[1]:     1000:7c6c(j)  
       1000:7c70 8b ae 80 48     MOV        BP,word ptr [BP + 0x4880]
       1000:7c74 8b 44 06        MOV        AX,word ptr [SI + 0x6]
       1000:7c77 2b c2           SUB        AX,DX
       1000:7c79 79 02           JNS        LAB_1000_7c7d
       1000:7c7b f7 d8           NEG        AX
                             LAB_1000_7c7d                                   XREF[1]:     1000:7c79(j)  
       1000:7c7d 33 d2           XOR        DX,DX
       1000:7c7f f7 f5           DIV        BP
       1000:7c81 2b 5c 08        SUB        BX,word ptr [SI + 0x8]
       1000:7c84 79 02           JNS        LAB_1000_7c88
       1000:7c86 f7 db           NEG        BX
                             LAB_1000_7c88                                   XREF[1]:     1000:7c84(j)  
       1000:7c88 3b c3           CMP        AX,BX
       1000:7c8a 73 02           JNC        LAB_1000_7c8e
       1000:7c8c 8b c3           MOV        AX,BX
                             LAB_1000_7c8e                                   XREF[1]:     1000:7c8a(j)  
       1000:7c8e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_7c8f(void);
                             // C Signature: uint32_t FUN_1000_7c8f(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [BP + 0x4880]
                             //   Read from: word ptr [SI + 0x2]
                             //
                             undefined __cdecl16near FUN_1000_7c8f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7c8f                                   XREF[1]:     FUN_1000_5dce:1000:5e1e(c)  
       1000:7c8f 56              PUSH       SI
       1000:7c90 e8 eb c3        CALL       FUN_1000_407e                                    undefined FUN_1000_407e()
       1000:7c93 5e              POP        SI
       1000:7c94 8b eb           MOV        BP,BX
       1000:7c96 d1 e5           SHL        BP,0x1
       1000:7c98 79 02           JNS        LAB_1000_7c9c
       1000:7c9a f7 dd           NEG        BP
                             LAB_1000_7c9c                                   XREF[1]:     1000:7c98(j)  
       1000:7c9c 8b ae 80 48     MOV        BP,word ptr [BP + 0x4880]
       1000:7ca0 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:7ca3 2b c2           SUB        AX,DX
       1000:7ca5 79 02           JNS        LAB_1000_7ca9
       1000:7ca7 f7 d8           NEG        AX
                             LAB_1000_7ca9                                   XREF[1]:     1000:7ca5(j)  
       1000:7ca9 33 d2           XOR        DX,DX
       1000:7cab f7 f5           DIV        BP
       1000:7cad 2b 5c 04        SUB        BX,word ptr [SI + 0x4]
       1000:7cb0 79 02           JNS        LAB_1000_7cb4
       1000:7cb2 f7 db           NEG        BX
                             LAB_1000_7cb4                                   XREF[1]:     1000:7cb0(j)  
       1000:7cb4 3b c3           CMP        AX,BX
       1000:7cb6 73 02           JNC        LAB_1000_7cba
       1000:7cb8 8b c3           MOV        AX,BX
                             LAB_1000_7cba                                   XREF[1]:     1000:7cb6(j)  
       1000:7cba c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_7e3d(uint16_t dx);
                             // C Signature: uint16_t FUN_1000_7e3d(uint16_t dx);
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI]
                             //   Read from: byte ptr [DI + 0x192f]
                             //   Write to: word ptr [DI + 0x4c60]
                             //   Write to: word ptr [DI + 0x4c62]
                             //
                             undefined __cdecl16near FUN_1000_7e3d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7e3d                                   XREF[2]:     FUN_1000_60ac:1000:60d3(c), 
                                                                                          FUN_1000_78e9:1000:79d8(c)  
       1000:7e3d e8 fb 42        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:7e40 57              PUSH       DI
       1000:7e41 1e              PUSH       DS
       1000:7e42 07              POP        ES
       1000:7e43 bf 60 4c        MOV        DI,0x4c60
       1000:7e46 b9 0e 00        MOV        CX,0xe
       1000:7e49 33 c0           XOR        AX,AX
       1000:7e4b f3 ab           STOSW.REP  ES:DI
       1000:7e4d 8b fe           MOV        DI,SI
       1000:7e4f b9 07 00        MOV        CX,0x7
       1000:7e52 32 c0           XOR        AL,AL
       1000:7e54 f3 ae           SCASB.REPE ES:DI
       1000:7e56 75 11           JNZ        LAB_1000_7e69
       1000:7e58 83 c3 05        ADD        BX,0x5
       1000:7e5b 83 c2 0c        ADD        DX,0xc
       1000:7e5e e8 ed 51        CALL       FUN_1000_d04e                                    undefined FUN_1000_d04e()
       1000:7e61 b8 69 00        MOV        AX,0x69
       1000:7e64 e8 34 53        CALL       FUN_1000_d19b                                    undefined FUN_1000_d19b()
       1000:7e67 5f              POP        DI
       1000:7e68 c3              RET
                             LAB_1000_7e69                                   XREF[1]:     1000:7e56(j)  
       1000:7e69 33 ff           XOR        DI,DI
                             LAB_1000_7e6b                                   XREF[1]:     1000:7e93(j)  
       1000:7e6b 8a 04           MOV        AL,byte ptr [SI]
       1000:7e6d 0a c0           OR         AL,AL
       1000:7e6f 74 1d           JZ         LAB_1000_7e8e
       1000:7e71 8a c8           MOV        CL,AL
       1000:7e73 56              PUSH       SI
       1000:7e74 57              PUSH       DI
       1000:7e75 55              PUSH       BP
       1000:7e76 8a 85 2f 19     MOV        AL,byte ptr [DI + 0x192f]
       1000:7e7a 32 e4           XOR        AH,AH
       1000:7e7c d1 e7           SHL        DI,0x1
       1000:7e7e d1 e7           SHL        DI,0x1
       1000:7e80 89 95 60 4c     MOV        word ptr [DI + 0x4c60],DX
       1000:7e84 e8 4c e3        CALL       FUN_1000_61d3                                    undefined FUN_1000_61d3()
       1000:7e87 89 95 62 4c     MOV        word ptr [DI + 0x4c62],DX
       1000:7e8b 5d              POP        BP
       1000:7e8c 5f              POP        DI
       1000:7e8d 5e              POP        SI
                             LAB_1000_7e8e                                   XREF[1]:     1000:7e6f(j)  
       1000:7e8e 46              INC        SI
       1000:7e8f 47              INC        DI
       1000:7e90 83 ff 07        CMP        DI,0x7
       1000:7e93 72 d6           JC         LAB_1000_7e6b
       1000:7e95 5f              POP        DI
       1000:7e96 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_7efb(uint16_t si);
                             // C Signature: uint16_t FUN_1000_7efb(uint16_t si);
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AH (uint8_t): 8-bit output value in AH register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x19]
                             //
                             undefined __cdecl16near FUN_1000_7efb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7efb                                   XREF[1]:     FUN_1000_78e9:1000:79ce(c)  
       1000:7efb 57              PUSH       DI
       1000:7efc 1e              PUSH       DS
       1000:7efd 07              POP        ES
       1000:7efe bf 05 47        MOV        DI,0x4705
       1000:7f01 8a 64 19        MOV        AH,byte ptr [SI + 0x19]
                             LAB_1000_7f04                                   XREF[1]:     1000:7f0d(j)  
       1000:7f04 32 c0           XOR        AL,AL
       1000:7f06 d1 c0           ROL        AX,0x1
       1000:7f08 aa              STOSB      ES:DI
       1000:7f09 81 ff 0c 47     CMP        DI,0x470c
       1000:7f0d 72 f5           JC         LAB_1000_7f04
       1000:7f0f 5f              POP        DI
       1000:7f10 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_7f27(void);
                             // C Signature: uint16_t FUN_1000_7f27(void);
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x9]
                             //   Read from: [DI + 0x14]
                             //   Read from: byte ptr [SI + 0x19]
                             //
                             undefined __cdecl16near FUN_1000_7f27()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7f27                                   XREF[6]:     FUN_1000_2efb:1000:2f42(c), 
                                                                                          FUN_1000_331e:1000:3360(c), 
                                                                                          FUN_1000_4ded:1000:4dfe(c), 
                                                                                          FUN_1000_7847:1000:78a0(c), 
                                                                                          FUN_1000_8308:1000:8428(c), 
                                                                                          FUN_1000_878c:1000:87af(c)  
       1000:7f27 bb fe 46        MOV        BX,0x46fe
       1000:7f2a 57              PUSH       DI
       1000:7f2b 1e              PUSH       DS
       1000:7f2c 07              POP        ES
       1000:7f2d 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
       1000:7f30 8d 75 14        LEA        SI,[DI + 0x14]
       1000:7f33 8b fb           MOV        DI,BX
       1000:7f35 b9 07 00        MOV        CX,0x7
       1000:7f38 f3 a4           MOVSB.REP  ES:DI,SI
                             LAB_1000_7f3a                                   XREF[1]:     1000:7f5b(j)  
       1000:7f3a 0a c0           OR         AL,AL
       1000:7f3c 74 1f           JZ         LAB_1000_7f5d
       1000:7f3e e8 c5 e9        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:7f41 8a 44 19        MOV        AL,byte ptr [SI + 0x19]
       1000:7f44 8b fb           MOV        DI,BX
       1000:7f46 d0 e0           SHL        AL,0x1
       1000:7f48 73 07           JNC        LAB_1000_7f51
                             LAB_1000_7f4a                                   XREF[1]:     1000:7f54(j)  
       1000:7f4a 80 2d 01        SUB        byte ptr [DI],0x1
       1000:7f4d 73 02           JNC        LAB_1000_7f51
       1000:7f4f fe 05           INC        byte ptr [DI]
                             LAB_1000_7f51                                   XREF[3]:     1000:7f48(j), 1000:7f4d(j), 
                                                                                          1000:7f56(j)  
       1000:7f51 47              INC        DI
       1000:7f52 d0 e0           SHL        AL,0x1
       1000:7f54 72 f4           JC         LAB_1000_7f4a
       1000:7f56 75 f9           JNZ        LAB_1000_7f51
       1000:7f58 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       1000:7f5b eb dd           JMP        LAB_1000_7f3a
                             LAB_1000_7f5d                                   XREF[1]:     1000:7f3c(j)  
       1000:7f5d 5f              POP        DI
       1000:7f5e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_7f5f(uint16_t si);
                             // C Signature: uint16_t FUN_1000_7f5f(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x19]
                             //
                             undefined __cdecl16near FUN_1000_7f5f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_7f5f                                   XREF[1]:     FUN_1000_83bc:1000:83c6(c)  
       1000:7f5f 8a 44 19        MOV        AL,byte ptr [SI + 0x19]
       1000:7f62 57              PUSH       DI
       1000:7f63 83 c7 14        ADD        DI,0x14
       1000:7f66 d0 e0           SHL        AL,0x1
       1000:7f68 73 02           JNC        LAB_1000_7f6c
                             LAB_1000_7f6a                                   XREF[1]:     1000:7f6f(j)  
       1000:7f6a fe 05           INC        byte ptr [DI]
                             LAB_1000_7f6c                                   XREF[2]:     1000:7f68(j), 1000:7f71(j)  
       1000:7f6c 47              INC        DI
       1000:7f6d d0 e0           SHL        AL,0x1
       1000:7f6f 72 f9           JC         LAB_1000_7f6a
       1000:7f71 75 f9           JNZ        LAB_1000_7f6c
       1000:7f73 5f              POP        DI
       1000:7f74 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_80df(void);
                             // C Signature: uint16_t FUN_1000_80df(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x2]
                             //   Write to: word ptr [SI + 0x2]
                             //   Write to: word ptr [SI + 0x6]
                             //   Write to: word ptr [0x4720]
                             //
                             undefined __cdecl16near FUN_1000_80df()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_80df                                   XREF[1]:     FUN_1000_88af:1000:88c7(c)  
       1000:80df 50              PUSH       AX
       1000:80e0 e8 ab 3f        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:80e3 e8 eb 0e        CALL       FUN_1000_8fd1                                    undefined FUN_1000_8fd1()
       1000:80e6 5b              POP        BX
       1000:80e7 be 44 22        MOV        SI,0x2244
       1000:80ea 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:80ed 50              PUSH       AX
       1000:80ee ff 74 06        PUSH       word ptr [SI + 0x6]
       1000:80f1 53              PUSH       BX
       1000:80f2 3d 32 00        CMP        AX,0x32
       1000:80f5 72 03           JC         LAB_1000_80fa
       1000:80f7 05 26 00        ADD        AX,0x26
                             LAB_1000_80fa                                   XREF[1]:     1000:80f5(j)  
       1000:80fa 89 44 02        MOV        word ptr [SI + 0x2],AX
       1000:80fd c7 44 06        MOV        word ptr [SI + 0x6],0x19
                 19 00
       1000:8102 e8 7d 1e        CALL       FUN_1000_9f82                                    undefined FUN_1000_9f82()
       1000:8105 58              POP        AX
       1000:8106 e8 a6 07        CALL       FUN_1000_88af                                    undefined FUN_1000_88af()
       1000:8109 80 3e 74        CMP        byte ptr [0x4774],0x0
                 47 00
       1000:810e 75 0e           JNZ        LAB_1000_811e
       1000:8110 b8 0a 01        MOV        AX,0x10a
       1000:8113 03 06 10 d8     ADD        AX,word ptr [0xd810]
       1000:8117 01 06 80 47     ADD        word ptr [0x4780],AX
       1000:811b e8 df 1d        CALL       FUN_1000_9efd                                    undefined FUN_1000_9efd()
                             LAB_1000_811e                                   XREF[1]:     1000:810e(j)  
       1000:811e 8f 06 4a 22     POP        word ptr [0x224a]
       1000:8122 8f 06 46 22     POP        word ptr [0x2246]
       1000:8126 e8 53 3f        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:8129 c7 06 20        MOV        word ptr [0x4720],0x18f3
                 47 f3 18
       1000:812f c6 06 22        MOV        byte ptr [0x4722],0x0
                 47 00
       1000:8134 e8 e8 d2        CALL       FUN_1000_541f                                    undefined FUN_1000_541f()
       1000:8137 c7 06 ea        MOV        word ptr [0x1bea],0x0
                 1b 00 00
       1000:813d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_813e(void);
                             // C Signature: uint32_t FUN_1000_813e(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //   SP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x6]
                             //   Read from: word ptr [SI + 0x8]
                             //   Read from: word ptr [BX + 0x2]
                             //
                             undefined __cdecl16near FUN_1000_813e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_813e                                   XREF[1]:     FUN_1000_542f:1000:5553(c)  
       1000:813e 83 ec 30        SUB        SP,0x30
       1000:8141 8b fc           MOV        DI,SP
       1000:8143 e8 a5 e7        CALL       FUN_1000_68eb                                    undefined FUN_1000_68eb()
       1000:8146 8b 54 06        MOV        DX,word ptr [SI + 0x6]
       1000:8149 8b 5c 08        MOV        BX,word ptr [SI + 0x8]
       1000:814c e8 88 00        CALL       FUN_1000_81d7                                    undefined FUN_1000_81d7()
       1000:814f 81 fe e0 08     CMP        SI,0x8e0
       1000:8153 75 15           JNZ        LAB_1000_816a
       1000:8155 be 18 47        MOV        SI,0x4718
                             LAB_1000_8158                                   XREF[1]:     1000:8168(j)  
       1000:8158 ad              LODSW      SI
       1000:8159 0b c0           OR         AX,AX
       1000:815b 74 19           JZ         LAB_1000_8176
       1000:815d 8b d8           MOV        BX,AX
       1000:815f 8b 57 02        MOV        DX,word ptr [BX + 0x2]
       1000:8162 8b 5f 04        MOV        BX,word ptr [BX + 0x4]
       1000:8165 e8 6f 00        CALL       FUN_1000_81d7                                    undefined FUN_1000_81d7()
       1000:8168 eb ee           JMP        LAB_1000_8158
                             LAB_1000_816a                                   XREF[1]:     1000:8153(j)  
       1000:816a 8b 5c 04        MOV        BX,word ptr [SI + 0x4]
       1000:816d 8b 57 02        MOV        DX,word ptr [BX + 0x2]
       1000:8170 8b 5f 04        MOV        BX,word ptr [BX + 0x4]
       1000:8173 e8 61 00        CALL       FUN_1000_81d7                                    undefined FUN_1000_81d7()
                             LAB_1000_8176                                   XREF[1]:     1000:815b(j)  
       1000:8176 8b f4           MOV        SI,SP
                             LAB_1000_8178                                   XREF[1]:     1000:81d1(j)  
       1000:8178 ad              LODSW      SI
       1000:8179 8b d0           MOV        DX,AX
       1000:817b ad              LODSW      SI
       1000:817c 8b d8           MOV        BX,AX
       1000:817e ad              LODSW      SI
       1000:817f 8b 3c           MOV        DI,word ptr [SI]
       1000:8181 81 ff 00 80     CMP        DI,0x8000
       1000:8185 74 4c           JZ         LAB_1000_81d3
       1000:8187 56              PUSH       SI
       1000:8188 8b 4c 02        MOV        CX,word ptr [SI + 0x2]
       1000:818b 2b 44 04        SUB        AX,word ptr [SI + 0x4]
       1000:818e 8b f2           MOV        SI,DX
       1000:8190 2b f7           SUB        SI,DI
       1000:8192 33 c6           XOR        AX,SI
       1000:8194 79 2a           JNS        LAB_1000_81c0
       1000:8196 8b c6           MOV        AX,SI
       1000:8198 0b c0           OR         AX,AX
       1000:819a 79 02           JNS        LAB_1000_819e
       1000:819c f7 d8           NEG        AX
                             LAB_1000_819e                                   XREF[1]:     1000:819a(j)  
       1000:819e 3d 50 00        CMP        AX,0x50
       1000:81a1 72 1d           JC         LAB_1000_81c0
       1000:81a3 3b 16 e3 46     CMP        DX,word ptr [0x46e3]
       1000:81a7 7c 0c           JL         LAB_1000_81b5
       1000:81a9 3b 16 e7 46     CMP        DX,word ptr [0x46e7]
       1000:81ad 7d 06           JGE        LAB_1000_81b5
       1000:81af 87 d7           XCHG       DI,DX
       1000:81b1 87 d9           XCHG       CX,BX
       1000:81b3 f7 de           NEG        SI
                             LAB_1000_81b5                                   XREF[2]:     1000:81a7(j), 1000:81ad(j)  
       1000:81b5 b8 90 01        MOV        AX,0x190
       1000:81b8 0b f6           OR         SI,SI
       1000:81ba 78 02           JS         LAB_1000_81be
       1000:81bc f7 d8           NEG        AX
                             LAB_1000_81be                                   XREF[1]:     1000:81ba(j)  
       1000:81be 03 d0           ADD        DX,AX
                             LAB_1000_81c0                                   XREF[2]:     1000:8194(j), 1000:81a1(j)  
       1000:81c0 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:81c4 b0 0c           MOV        AL,0xc
       1000:81c6 bd 55 55        MOV        BP,0x5555
       1000:81c9 be e3 46        MOV        SI,0x46e3
       1000:81cc ff 1e 01 39     CALLF      [0x3901]
       1000:81d0 5e              POP        SI
       1000:81d1 eb a5           JMP        LAB_1000_8178
                             LAB_1000_81d3                                   XREF[1]:     1000:8185(j)  
       1000:81d3 83 c4 30        ADD        SP,0x30
       1000:81d6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_81d7(uint16_t bx, uint16_t dx);
                             // C Signature: void FUN_1000_81d7(uint16_t bx, uint16_t dx);
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Write to: word ptr [DI + 0x4]
                             //   Write to: word ptr [DI]
                             //   Write to: word ptr [DI + 0x2]
                             //
                             undefined __cdecl16near FUN_1000_81d7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_81d7                                   XREF[3]:     FUN_1000_813e:1000:814c(c), 
                                                                                          FUN_1000_813e:1000:8165(c), 
                                                                                          FUN_1000_813e:1000:8173(c)  
       1000:81d7 89 55 04        MOV        word ptr [DI + 0x4],DX
       1000:81da 57              PUSH       DI
       1000:81db e8 69 34        CALL       FUN_1000_b647                                    undefined FUN_1000_b647()
       1000:81de 5f              POP        DI
       1000:81df 89 15           MOV        word ptr [DI],DX
       1000:81e1 89 5d 02        MOV        word ptr [DI + 0x2],BX
       1000:81e4 83 c7 06        ADD        DI,0x6
       1000:81e7 c7 05 00 80     MOV        word ptr [DI],0x8000
       1000:81eb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8308(uint16_t bx, uint16_t di, uint16_t dx);
                             // C Signature: uint16_t FUN_1000_8308(uint16_t bx, uint16_t di, uint16_t dx);
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CL (uint8_t): 8-bit output value in CL register
                             //
                             undefined __cdecl16near FUN_1000_8308()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8308                                   XREF[1]:     FUN_1000_6c6f:1000:6cf6(c)  
       1000:8308 b9 04 00        MOV        CX,0x4
       1000:830b f6 44 19 40     TEST       byte ptr [SI + 0x19],0x40
       1000:830f 74 02           JZ         LAB_1000_8313
       1000:8311 b1 08           MOV        CL,0x8
                             LAB_1000_8313                                   XREF[2]:     1000:830f(j), 1000:8324(j)  
       1000:8313 51              PUSH       CX
       1000:8314 e8 ed 02        CALL       FUN_1000_8604                                    undefined FUN_1000_8604()
       1000:8317 59              POP        CX
       1000:8318 8b c3           MOV        AX,BX
       1000:831a 0b c2           OR         AX,DX
       1000:831c 74 39           JZ         LAB_1000_8357
       1000:831e 01 54 06        ADD        word ptr [SI + 0x6],DX
       1000:8321 01 5c 08        ADD        word ptr [SI + 0x8],BX
       1000:8324 e2 ed           LOOP       LAB_1000_8313
       1000:8326 e8 45 e5        CALL       FUN_1000_686e                                    undefined FUN_1000_686e()
       1000:8329 72 08           JC         LAB_1000_8333
       1000:832b e8 e9 e5        CALL       FUN_1000_6917                                    undefined FUN_1000_6917()
       1000:832e 75 0c           JNZ        LAB_1000_833c
       1000:8330 e9 20 43        JMP        FUN_1000_c653                                    undefined FUN_1000_c653()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_8333                                   XREF[1]:     1000:8329(j)  
       1000:8333 e8 e1 e5        CALL       FUN_1000_6917                                    undefined FUN_1000_6917()
       1000:8336 75 03           JNZ        LAB_1000_833b
       1000:8338 e9 4f 42        JMP        FUN_1000_c58a                                    undefined FUN_1000_c58a()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_833b                                   XREF[1]:     1000:8336(j)  
       1000:833b c3              RET
                             LAB_1000_833c                                   XREF[1]:     1000:832e(j)  
       1000:833c e8 e8 e4        CALL       FUN_1000_6827                                    undefined FUN_1000_6827()
       1000:833f e8 8d 42        CALL       FUN_1000_c5cf                                    undefined FUN_1000_c5cf()
       1000:8342 8b f7           MOV        SI,DI
       1000:8344 e9 66 43        JMP        FUN_1000_c6ad                                    undefined FUN_1000_c6ad()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_8347(void);
                             // C Signature: uint32_t FUN_1000_8347(void);
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [DI + 0x2]
                             //   Read from: [0x11d3]
                             //   Read from: byte ptr [SI + 0x3]
                             //   Write to: word ptr [SI + 0x6]
                             //   Write to: word ptr [SI + 0x8]
                             //
                             undefined __cdecl16near FUN_1000_8347()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8347                                   XREF[1]:     FUN_1000_8308:1000:8365(c)  
       1000:8347 56              PUSH       SI
       1000:8348 57              PUSH       DI
       1000:8349 bf d3 11        MOV        DI,0x11d3
       1000:834c 8d 75 02        LEA        SI,[DI + 0x2]
       1000:834f 1e              PUSH       DS
       1000:8350 07              POP        ES
       1000:8351 a5              MOVSW      ES:DI,SI
       1000:8352 a5              MOVSW      ES:DI,SI
       1000:8353 a5              MOVSW      ES:DI,SI
       1000:8354 5f              POP        DI
       1000:8355 5e              POP        SI
       1000:8356 c3              RET
                             LAB_1000_8357                                   XREF[1]:     1000:831c(j)  
       1000:8357 81 fe e0 08     CMP        SI,0x8e0
       1000:835b 75 0b           JNZ        LAB_1000_8368
       1000:835d a1 d3 11        MOV        AX,[0x11d3]
       1000:8360 3b 44 04        CMP        AX,word ptr [SI + 0x4]
       1000:8363 75 03           JNZ        LAB_1000_8368
       1000:8365 e8 df ff        CALL       FUN_1000_8347                                    undefined FUN_1000_8347()
                             LAB_1000_8368                                   XREF[2]:     1000:835b(j), 1000:8363(j)  
       1000:8368 8a 44 03        MOV        AL,byte ptr [SI + 0x3]
       1000:836b 24 0f           AND        AL,0xf
       1000:836d 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:8370 8b 55 02        MOV        DX,word ptr [DI + 0x2]
       1000:8373 8b 5d 04        MOV        BX,word ptr [DI + 0x4]
       1000:8376 89 54 06        MOV        word ptr [SI + 0x6],DX
       1000:8379 89 5c 08        MOV        word ptr [SI + 0x8],BX
       1000:837c f6 45 0a 02     TEST       byte ptr [DI + 0xa],0x2
       1000:8380 75 05           JNZ        LAB_1000_8387
       1000:8382 e8 b1 d9        CALL       FUN_1000_5d36                                    undefined FUN_1000_5d36()
       1000:8385 72 20           JC         LAB_1000_83a7
                             LAB_1000_8387                                   XREF[1]:     1000:8380(j)  
       1000:8387 50              PUSH       AX
       1000:8388 e8 31 00        CALL       FUN_1000_83bc                                    undefined FUN_1000_83bc()
       1000:838b 58              POP        AX
       1000:838c 3c 05           CMP        AL,0x5
       1000:838e 74 0a           JZ         LAB_1000_839a
       1000:8390 8a 04           MOV        AL,byte ptr [SI]
       1000:8392 3a 45 09        CMP        AL,byte ptr [DI + 0x9]
       1000:8395 75 66           JNZ        LAB_1000_83fd
       1000:8397 e9 8f f0        JMP        FUN_1000_7429                                    undefined FUN_1000_7429()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_839a                                   XREF[1]:     1000:838e(j)  
       1000:839a f6 45 0a 80     TEST       byte ptr [DI + 0xa],0x80
       1000:839e 74 5d           JZ         LAB_1000_83fd
       1000:83a0 80 65 0a 7f     AND        byte ptr [DI + 0xa],0x7f
       1000:83a4 e9 9d d9        JMP        FUN_1000_5d44                                    undefined FUN_1000_5d44()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_83a7                                   XREF[1]:     1000:8385(j)  
       1000:83a7 3c 05           CMP        AL,0x5
       1000:83a9 72 0b           JC         LAB_1000_83b6
       1000:83ab 3c 06           CMP        AL,0x6
       1000:83ad 77 07           JA         LAB_1000_83b6
       1000:83af 57              PUSH       DI
       1000:83b0 e8 12 e7        CALL       FUN_1000_6ac5                                    undefined FUN_1000_6ac5()
       1000:83b3 5f              POP        DI
       1000:83b4 32 c0           XOR        AL,AL
                             LAB_1000_83b6                                   XREF[2]:     1000:83a9(j), 1000:83ad(j)  
       1000:83b6 24 03           AND        AL,0x3
       1000:83b8 3c 03           CMP        AL,0x3
       1000:83ba 74 63           JZ         LAB_1000_841f
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_83bc(void);
                             // C Signature: uint16_t FUN_1000_83bc(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI + 0x3]
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: word ptr [SI + 0x4]
                             //   Write to: word ptr [SI + 0xe]
                             //   Write to: word ptr [SI + 0x4]
                             //
                             undefined __cdecl16near FUN_1000_83bc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_83bc                                   XREF[2]:     FUN_1000_8308:1000:8388(c), 
                                                                                          FUN_1000_8308:1000:8451(c)  
       1000:83bc e8 60 01        CALL       FUN_1000_851f                                    undefined FUN_1000_851f()
       1000:83bf 80 64 03 bf     AND        byte ptr [SI + 0x3],0xbf
       1000:83c3 e8 06 02        CALL       FUN_1000_85cc                                    undefined FUN_1000_85cc()
       1000:83c6 e8 96 fb        CALL       FUN_1000_7f5f                                    undefined FUN_1000_7f5f()
       1000:83c9 8a 4c 03        MOV        CL,byte ptr [SI + 0x3]
       1000:83cc 0a c9           OR         CL,CL
       1000:83ce 78 2c           JS         LAB_1000_83fc
       1000:83d0 80 e1 0f        AND        CL,0xf
       1000:83d3 e8 fe e6        CALL       FUN_1000_6ad4                                    undefined FUN_1000_6ad4()
       1000:83d6 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:83d9 3b 3e 4e 11     CMP        DI,word ptr [0x114e]
       1000:83dd 75 1d           JNZ        LAB_1000_83fc
       1000:83df e8 39 50        CALL       FUN_1000_d41b                                    undefined FUN_1000_d41b()
       1000:83e2 81 fd 0e 1f     CMP        BP,0x1f0e
       1000:83e6 75 14           JNZ        LAB_1000_83fc
       1000:83e8 b0 01           MOV        AL,0x1
       1000:83ea 80 3e 2b        CMP        byte ptr [0x2b],0x1
                 00 01
       1000:83ef 14 00           ADC        AL,0x0
       1000:83f1 38 06 0b 00     CMP        byte ptr [0xb],AL
       1000:83f5 75 05           JNZ        LAB_1000_83fc
       1000:83f7 80 0e 3b        OR         byte ptr [0x473b],0x1
                 47 01
                             LAB_1000_83fc                                   XREF[4]:     1000:83ce(j), 1000:83dd(j), 
                                                                                          1000:83e6(j), 1000:83f5(j)  
       1000:83fc c3              RET
                             LAB_1000_83fd                                   XREF[2]:     1000:8395(j), 1000:839e(j)  
       1000:83fd bd 03 84        MOV        BP,0x8403
       1000:8400 e9 1a e2        JMP        FUN_1000_661d                                    undefined FUN_1000_661d()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_841f                                   XREF[1]:     1000:83ba(j)  
       1000:841f 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:8422 3b 7c 0c        CMP        DI,word ptr [SI + 0xc]
       1000:8425 74 26           JZ         LAB_1000_844d
       1000:8427 56              PUSH       SI
       1000:8428 e8 fc fa        CALL       FUN_1000_7f27                                    undefined FUN_1000_7f27()
       1000:842b 5e              POP        SI
       1000:842c 8b 5c 0e        MOV        BX,word ptr [SI + 0xe]
       1000:842f 8b cb           MOV        CX,BX
       1000:8431 32 ff           XOR        BH,BH
       1000:8433 80 bf fe        CMP        byte ptr [BX + 0x46fe],0x0
                 46 00
       1000:8438 74 08           JZ         LAB_1000_8442
       1000:843a fe 49 14        DEC        byte ptr [BX + DI + 0x14]
       1000:843d 08 6c 19        OR         byte ptr [SI + 0x19],CH
       1000:8440 32 ed           XOR        CH,CH
                             LAB_1000_8442                                   XREF[1]:     1000:8438(j)  
       1000:8442 89 4c 0e        MOV        word ptr [SI + 0xe],CX
       1000:8445 8b 7c 0c        MOV        DI,word ptr [SI + 0xc]
       1000:8448 89 7c 04        MOV        word ptr [SI + 0x4],DI
       1000:844b eb 14           JMP        FUN_1000_8461                                    undefined FUN_1000_8461()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_844d                                   XREF[1]:     1000:8425(j)  
       1000:844d 80 64 03 fc     AND        byte ptr [SI + 0x3],0xfc
       1000:8451 e9 68 ff        JMP        FUN_1000_83bc                                    undefined FUN_1000_83bc()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8461(void);
                             // C Signature: uint16_t FUN_1000_8461(void);
                             // Input/Output Parameters:
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AL (uint8_t): 8-bit output value in AL register
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: byte ptr [SI]
                             //
                             undefined __cdecl16near FUN_1000_8461()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8461                                   XREF[3]:     FUN_1000_6ad4:1000:6b00(c), 
                                                                                          caseD_0:1000:6bc9(c), 
                                                                                          FUN_1000_8308:1000:844b(c)  
       1000:8461 e8 b3 e4        CALL       FUN_1000_6917                                    undefined FUN_1000_6917()
       1000:8464 74 01           JZ         LAB_1000_8467
       1000:8466 c3              RET
                             LAB_1000_8467                                   XREF[1]:     1000:8464(j)  
       1000:8467 56              PUSH       SI
       1000:8468 e8 1f 41        CALL       FUN_1000_c58a                                    undefined FUN_1000_c58a()
       1000:846b 5e              POP        SI
       1000:846c 56              PUSH       SI
       1000:846d f6 44 03 40     TEST       byte ptr [SI + 0x3],0x40
       1000:8471 75 08           JNZ        LAB_1000_847b
       1000:8473 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:8476 e8 57 da        CALL       FUN_1000_5ed0                                    undefined FUN_1000_5ed0()
       1000:8479 75 10           JNZ        LAB_1000_848b
                             LAB_1000_847b                                   XREF[1]:     1000:8471(j)  
       1000:847b 8a 04           MOV        AL,byte ptr [SI]
       1000:847d e8 d7 e2        CALL       FUN_1000_6757                                    undefined FUN_1000_6757()
       1000:8480 72 09           JC         LAB_1000_848b
       1000:8482 8b f7           MOV        SI,DI
       1000:8484 57              PUSH       DI
       1000:8485 e8 25 42        CALL       FUN_1000_c6ad                                    undefined FUN_1000_c6ad()
       1000:8488 5f              POP        DI
                             LAB_1000_8489                                   XREF[1]:     1000:848d(j)  
       1000:8489 5e              POP        SI
       1000:848a c3              RET
                             LAB_1000_848b                                   XREF[2]:     1000:8479(j), 1000:8480(j)  
       1000:848b 33 ff           XOR        DI,DI
       1000:848d eb fa           JMP        LAB_1000_8489
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_851f(uint8_t cl);
                             // C Signature: uint16_t FUN_1000_851f(uint8_t cl);
                             // Input Parameters:
                             //   CL (uint8_t): 8-bit input value in CL register
                             //   DS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //   SP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BL (uint8_t): 8-bit output value in BL register
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI]
                             //   Read from: byte ptr [DI + 0x9]
                             //   Read from: byte ptr [SI + 0x2]
                             //   Write to: byte ptr [DI + 0x9]
                             //   Write to: byte ptr [SI + 0x2]
                             //   Write to: byte ptr [BX + DI + -0x1]
                             //
                             undefined __cdecl16near FUN_1000_851f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_851f                                   XREF[2]:     FUN_1000_83bc:1000:83bc(c), 
                                                                                          FUN_1000_85cc:1000:8600(c)  
       1000:851f 8a 24           MOV        AH,byte ptr [SI]
       1000:8521 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
       1000:8524 0a c0           OR         AL,AL
       1000:8526 75 18           JNZ        LAB_1000_8540
       1000:8528 88 65 09        MOV        byte ptr [DI + 0x9],AH
       1000:852b b9 01 00        MOV        CX,0x1
       1000:852e 88 4c 02        MOV        byte ptr [SI + 0x2],CL
       1000:8531 f7 44 10        TEST       word ptr [SI + 0x10],0x80
                 80 00
       1000:8536 74 07           JZ         LAB_1000_853f
       1000:8538 80 44 02 08     ADD        byte ptr [SI + 0x2],0x8
       1000:853c 80 c1 08        ADD        CL,0x8
                             LAB_1000_853f                                   XREF[1]:     1000:8536(j)  
       1000:853f c3              RET
                             LAB_1000_8540                                   XREF[1]:     1000:8526(j)  
       1000:8540 57              PUSH       DI
       1000:8541 1e              PUSH       DS
       1000:8542 07              POP        ES
       1000:8543 83 ec 1e        SUB        SP,0x1e
       1000:8546 8b fc           MOV        DI,SP
       1000:8548 b9 1e 00        MOV        CX,0x1e
       1000:854b 50              PUSH       AX
       1000:854c 32 c0           XOR        AL,AL
       1000:854e f3 aa           STOSB.REP  ES:DI
       1000:8550 58              POP        AX
       1000:8551 8b fc           MOV        DI,SP
       1000:8553 56              PUSH       SI
       1000:8554 33 db           XOR        BX,BX
                             LAB_1000_8556                                   XREF[1]:     1000:8565(j)  
       1000:8556 e8 ad e3        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:8559 8a 5c 02        MOV        BL,byte ptr [SI + 0x2]
       1000:855c c6 41 ff ff     MOV        byte ptr [BX + DI + -0x1],0xff
       1000:8560 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       1000:8563 0a c0           OR         AL,AL
       1000:8565 75 ef           JNZ        LAB_1000_8556
       1000:8567 88 64 01        MOV        byte ptr [SI + 0x1],AH
       1000:856a b9 1e 00        MOV        CX,0x1e
       1000:856d 5e              POP        SI
       1000:856e f7 44 10        TEST       word ptr [SI + 0x10],0x80
                 80 00
       1000:8573 74 06           JZ         LAB_1000_857b
       1000:8575 83 e9 08        SUB        CX,0x8
       1000:8578 83 c7 08        ADD        DI,0x8
                             LAB_1000_857b                                   XREF[1]:     1000:8573(j)  
       1000:857b 32 c0           XOR        AL,AL
       1000:857d f2 ae           SCASB.RE   ES:DI
       1000:857f 83 e9 1e        SUB        CX,0x1e
       1000:8582 f7 d9           NEG        CX
       1000:8584 83 c4 1e        ADD        SP,0x1e
       1000:8587 5f              POP        DI
       1000:8588 88 4c 02        MOV        byte ptr [SI + 0x2],CL
       1000:858b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_858c(void);
                             // C Signature: uint16_t FUN_1000_858c(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [SI]
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: byte ptr [DI + 0x9]
                             //   Write to: byte ptr [SI + 0x1]
                             //   Write to: byte ptr [SI + 0x1]
                             //   Write to: byte ptr [DI + 0x9]
                             //
                             undefined __cdecl16near FUN_1000_858c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_858c                                   XREF[2]:     FUN_1000_66b1:1000:66b1(c), 
                                                                                          FUN_1000_85cc:1000:85d9(c)  
       1000:858c 8b ee           MOV        BP,SI
       1000:858e 8a 04           MOV        AL,byte ptr [SI]
       1000:8590 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:8593 57              PUSH       DI
       1000:8594 f6 44 03 40     TEST       byte ptr [SI + 0x3],0x40
       1000:8598 75 20           JNZ        LAB_1000_85ba
       1000:859a 3a 45 09        CMP        AL,byte ptr [DI + 0x9]
       1000:859d 74 23           JZ         LAB_1000_85c2
       1000:859f 8a c8           MOV        CL,AL
       1000:85a1 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
                             LAB_1000_85a4                                   XREF[1]:     1000:85b2(j)  
       1000:85a4 e8 5f e3        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:85a7 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       1000:85aa 8b fe           MOV        DI,SI
       1000:85ac 0a c0           OR         AL,AL
       1000:85ae 74 0a           JZ         LAB_1000_85ba
       1000:85b0 3a c1           CMP        AL,CL
       1000:85b2 75 f0           JNZ        LAB_1000_85a4
       1000:85b4 8a 66 01        MOV        AH,byte ptr [BP + 0x1]
       1000:85b7 88 64 01        MOV        byte ptr [SI + 0x1],AH
                             LAB_1000_85ba                                   XREF[2]:     1000:8598(j), 1000:85ae(j)  
       1000:85ba 8b f5           MOV        SI,BP
       1000:85bc c6 44 01 00     MOV        byte ptr [SI + 0x1],0x0
       1000:85c0 5f              POP        DI
       1000:85c1 c3              RET
                             LAB_1000_85c2                                   XREF[1]:     1000:859d(j)  
       1000:85c2 32 e4           XOR        AH,AH
       1000:85c4 86 64 01        XCHG       byte ptr [SI + 0x1],AH
       1000:85c7 5f              POP        DI
       1000:85c8 88 65 09        MOV        byte ptr [DI + 0x9],AH
       1000:85cb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_85cc(uint16_t di);
                             // C Signature: uint16_t FUN_1000_85cc(uint16_t di);
                             // Input Parameters:
                             //   DI (uint16_t): 16-bit input value in DI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [DI + 0x9]
                             //   Read from: byte ptr [SI + 0x1]
                             //
                             undefined __cdecl16near FUN_1000_85cc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_85cc                                   XREF[1]:     FUN_1000_83bc:1000:83c3(c)  
       1000:85cc f7 44 10        TEST       word ptr [SI + 0x10],0x80
                 80 00
       1000:85d1 75 30           JNZ        LAB_1000_8603
       1000:85d3 80 7c 02 08     CMP        byte ptr [SI + 0x2],0x8
       1000:85d7 76 2a           JBE        LAB_1000_8603
       1000:85d9 e8 b0 ff        CALL       FUN_1000_858c                                    undefined FUN_1000_858c()
       1000:85dc 56              PUSH       SI
       1000:85dd 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
                             LAB_1000_85e0                                   XREF[2]:     1000:85ee(j), 1000:85f4(j)  
       1000:85e0 0a c0           OR         AL,AL
       1000:85e2 74 1b           JZ         LAB_1000_85ff
       1000:85e4 e8 1f e3        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:85e7 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       1000:85ea f6 44 10 80     TEST       byte ptr [SI + 0x10],0x80
       1000:85ee 75 f0           JNZ        LAB_1000_85e0
       1000:85f0 f6 44 03 20     TEST       byte ptr [SI + 0x3],0x20
       1000:85f4 74 ea           JZ         LAB_1000_85e0
       1000:85f6 e8 77 5c        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:85f9 e8 b5 e0        CALL       FUN_1000_66b1                                    undefined FUN_1000_66b1()
       1000:85fc e8 84 5c        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_85ff                                   XREF[1]:     1000:85e2(j)  
       1000:85ff 5e              POP        SI
       1000:8600 e8 1c ff        CALL       FUN_1000_851f                                    undefined FUN_1000_851f()
                             LAB_1000_8603                                   XREF[2]:     1000:85d1(j), 1000:85d7(j)  
       1000:8603 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_8604(void);
                             // C Signature: uint32_t FUN_1000_8604(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [SI + 0x4]
                             //   Read from: word ptr [DI + 0x2]
                             //   Read from: word ptr [SI + 0x8]
                             //
                             undefined __cdecl16near FUN_1000_8604()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8604                                   XREF[1]:     FUN_1000_8308:1000:8314(c)  
       1000:8604 56              PUSH       SI
       1000:8605 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       1000:8608 8b 55 02        MOV        DX,word ptr [DI + 0x2]
       1000:860b 8b 5c 08        MOV        BX,word ptr [SI + 0x8]
       1000:860e 8b eb           MOV        BP,BX
       1000:8610 d1 e5           SHL        BP,0x1
       1000:8612 79 02           JNS        LAB_1000_8616
       1000:8614 f7 dd           NEG        BP
                             LAB_1000_8616                                   XREF[1]:     1000:8612(j)  
       1000:8616 8b ae 80 48     MOV        BP,word ptr [BP + 0x4880]
       1000:861a 2b 5d 04        SUB        BX,word ptr [DI + 0x4]
       1000:861d f7 db           NEG        BX
       1000:861f bf 01 00        MOV        DI,0x1
       1000:8622 79 04           JNS        LAB_1000_8628
       1000:8624 f7 df           NEG        DI
       1000:8626 f7 db           NEG        BX
                             LAB_1000_8628                                   XREF[1]:     1000:8622(j)  
       1000:8628 2b 54 06        SUB        DX,word ptr [SI + 0x6]
       1000:862b 8b c2           MOV        AX,DX
       1000:862d 79 02           JNS        LAB_1000_8631
       1000:862f f7 d8           NEG        AX
                             LAB_1000_8631                                   XREF[1]:     1000:862d(j)  
       1000:8631 8b f2           MOV        SI,DX
       1000:8633 33 d2           XOR        DX,DX
       1000:8635 f7 f5           DIV        BP
       1000:8637 8b d6           MOV        DX,SI
       1000:8639 87 df           XCHG       DI,BX
       1000:863b 3b c7           CMP        AX,DI
       1000:863d 72 27           JC         LAB_1000_8666
       1000:863f 3d 07 00        CMP        AX,0x7
       1000:8642 72 1c           JC         LAB_1000_8660
       1000:8644 0b ff           OR         DI,DI
       1000:8646 75 02           JNZ        LAB_1000_864a
       1000:8648 33 db           XOR        BX,BX
                             LAB_1000_864a                                   XREF[1]:     1000:8646(j)  
       1000:864a 0b d2           OR         DX,DX
       1000:864c 79 02           JNS        LAB_1000_8650
       1000:864e f7 dd           NEG        BP
                             LAB_1000_8650                                   XREF[1]:     1000:864c(j)  
       1000:8650 d1 e8           SHR        AX,0x1
       1000:8652 74 0a           JZ         LAB_1000_865e
       1000:8654 8b d5           MOV        DX,BP
       1000:8656 d1 06 00 00     ROL        word ptr [0x0],0x1
       1000:865a 72 02           JC         LAB_1000_865e
       1000:865c 33 db           XOR        BX,BX
                             LAB_1000_865e                                   XREF[5]:     1000:8652(j), 1000:865a(j), 
                                                                                          1000:866d(j), 1000:8677(j), 
                                                                                          1000:867f(j)  
       1000:865e 5e              POP        SI
       1000:865f c3              RET
                             LAB_1000_8660                                   XREF[2]:     1000:8642(j), 1000:8669(j)  
       1000:8660 33 db           XOR        BX,BX
       1000:8662 33 d2           XOR        DX,DX
       1000:8664 5e              POP        SI
       1000:8665 c3              RET
                             LAB_1000_8666                                   XREF[1]:     1000:863d(j)  
       1000:8666 83 ff 07        CMP        DI,0x7
       1000:8669 72 f5           JC         LAB_1000_8660
       1000:866b 0b c0           OR         AX,AX
       1000:866d 74 ef           JZ         LAB_1000_865e
       1000:866f 0b d2           OR         DX,DX
       1000:8671 79 02           JNS        LAB_1000_8675
       1000:8673 f7 dd           NEG        BP
                             LAB_1000_8675                                   XREF[1]:     1000:8671(j)  
       1000:8675 d1 ef           SHR        DI,0x1
       1000:8677 74 e5           JZ         LAB_1000_865e
       1000:8679 8b d5           MOV        DX,BP
       1000:867b d1 06 00 00     ROL        word ptr [0x0],0x1
       1000:867f 72 dd           JC         LAB_1000_865e
       1000:8681 33 d2           XOR        DX,DX
       1000:8683 5e              POP        SI
       1000:8684 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_8770(void);
                             //
                             // Memory Access:
                             //   Write to: byte ptr [0x46f3]
                             //   Write to: word ptr [0x1bea]
                             //
                             undefined __cdecl16near FUN_1000_8770()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8770                                   XREF[1]:     FUN_1000_7b36:1000:7b42(c)  
       1000:8770 80 3e 54        CMP        byte ptr [0x1954],0x0
                 19 00
       1000:8775 74 14           JZ         LAB_1000_878b
       1000:8777 e8 f6 5a        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:877a c6 06 f3        MOV        byte ptr [0x46f3],0x0
                 46 00
       1000:877f e8 0a 00        CALL       FUN_1000_878c                                    undefined FUN_1000_878c()
       1000:8782 c7 06 ea        MOV        word ptr [0x1bea],0x0
                 1b 00 00
       1000:8788 e8 f8 5a        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_878b                                   XREF[1]:     1000:8775(j)  
       1000:878b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_878c(void);
                             // C Signature: uint16_t FUN_1000_878c(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BX (uint16_t): 16-bit output value in BX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x114e]
                             //   Read from: word ptr [0x114e]
                             //   Read from: byte ptr [DI + 0x9]
                             //   Write to: word ptr [0x47ba]
                             //   Write to: word ptr [BP + 0xe]
                             //   Write to: word ptr [BP + 0x12]
                             //
                             undefined FUN_1000_878c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_878c                                   XREF[1]:     FUN_1000_8770:1000:877f(c)  
       1000:878c c7 06 ba        MOV        word ptr [0x47ba],0x0
                 47 00 00
       1000:8792 b8 a7 40        MOV        AX,0x40a7
       1000:8795 80 3e 08        CMP        byte ptr [0x8],0xff
                 00 ff
       1000:879a 74 24           JZ         LAB_1000_87c0
       1000:879c 80 3e 08        CMP        byte ptr [0x8],0x20
                 00 20
       1000:87a1 72 07           JC         LAB_1000_87aa
       1000:87a3 80 3e 0b        CMP        byte ptr [0xb],0x3
                 00 03
       1000:87a8 73 16           JNC        LAB_1000_87c0
                             LAB_1000_87aa                                   XREF[1]:     1000:87a1(j)  
       1000:87aa 57              PUSH       DI
       1000:87ab 8b 3e 4e 11     MOV        DI,word ptr [0x114e]
       1000:87af e8 75 f7        CALL       FUN_1000_7f27                                    undefined FUN_1000_7f27()
       1000:87b2 5f              POP        DI
       1000:87b3 b8 a7 00        MOV        AX,0xa7
       1000:87b6 80 3e ff        CMP        byte ptr [0x46ff],0x0
                 46 00
       1000:87bb 75 03           JNZ        LAB_1000_87c0
       1000:87bd 80 cc 40        OR         AH,0x40
                             LAB_1000_87c0                                   XREF[3]:     1000:879a(j), 1000:87a8(j), 
                                                                                          1000:87bb(j)  
       1000:87c0 bd f2 20        MOV        BP,0x20f2
       1000:87c3 89 46 0e        MOV        word ptr [BP + 0xe],AX
       1000:87c6 80 4e 0b 40     OR         byte ptr [BP + 0xb],0x40
       1000:87ca c7 46 12        MOV        word ptr [BP + 0x12],0x0
                 00 00
       1000:87cf 80 3e 2a        CMP        byte ptr [0x2a],0x5
                 00 05
       1000:87d4 72 09           JC         LAB_1000_87df
       1000:87d6 80 66 0b bf     AND        byte ptr [BP + 0xb],0xbf
       1000:87da c7 46 12        MOV        word ptr [BP + 0x12],0x67
                 67 00
                             LAB_1000_87df                                   XREF[1]:     1000:87d4(j)  
       1000:87df 83 3e 76        CMP        word ptr [0x1176],0x2
                 11 02
       1000:87e4 73 20           JNC        LAB_1000_8806
       1000:87e6 c7 46 06        MOV        word ptr [BP + 0x6],0x4093
                 93 40
       1000:87eb 8b 3e 4e 11     MOV        DI,word ptr [0x114e]
       1000:87ef 0b ff           OR         DI,DI
       1000:87f1 74 23           JZ         LAB_1000_8816
       1000:87f3 8a 45 09        MOV        AL,byte ptr [DI + 0x9]
       1000:87f6 0a c0           OR         AL,AL
       1000:87f8 74 1c           JZ         LAB_1000_8816
       1000:87fa e8 09 e1        CALL       FUN_1000_6906                                    undefined FUN_1000_6906()
       1000:87fd 73 17           JNC        LAB_1000_8816
       1000:87ff 81 66 06        AND        word ptr [BP + 0x6],0xbfff
                 ff bf
       1000:8804 eb 10           JMP        LAB_1000_8816
                             LAB_1000_8806                                   XREF[1]:     1000:87e4(j)  
       1000:8806 b8 62 00        MOV        AX,0x62
       1000:8809 83 3e be        CMP        word ptr [0x3cbe],0x0
                 3c 00
       1000:880e 75 03           JNZ        LAB_1000_8813
       1000:8810 80 cc 40        OR         AH,0x40
                             LAB_1000_8813                                   XREF[1]:     1000:880e(j)  
       1000:8813 89 46 06        MOV        word ptr [BP + 0x6],AX
                             LAB_1000_8816                                   XREF[4]:     1000:87f1(j), 1000:87f8(j), 
                                                                                          1000:87fd(j), 1000:8804(j)  
       1000:8816 bb 66 0f        MOV        BX,0xf66
       1000:8819 e8 1c 4b        CALL       FUN_1000_d338                                    undefined FUN_1000_d338()
       1000:881c e9 1c 39        JMP        FUN_1000_c13b                                    undefined FUN_1000_c13b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8865(uint16_t cx);
                             // C Signature: uint16_t FUN_1000_8865(uint16_t cx);
                             // Input Parameters:
                             //   CX (uint16_t): 16-bit input value in CX register
                             //   DS (uint16_t): Segment register input value
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [0xfb]
                             //   Write to: word ptr [0xdbe4]
                             //   Write to: word ptr [0x479e]
                             //   Write to: [0x1c06]
                             //
                             undefined __cdecl16near FUN_1000_8865()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8865                                   XREF[4]:     FUN_1000_78e9:1000:7924(c), 
                                                                                          FUN_1000_78e9:1000:794f(c), 
                                                                                          FUN_1000_78e9:1000:79b6(c), 
                                                                                          FUN_1000_9ab4:1000:9afb(c)  
       1000:8865 e8 08 5a        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:8868 8b f0           MOV        SI,AX
       1000:886a 89 0e e4 db     MOV        word ptr [0xdbe4],CX
       1000:886e e8 dd 47        CALL       FUN_1000_d04e                                    undefined FUN_1000_d04e()
       1000:8871 e8 fc 46        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:8874 e8 7a 00        CALL       FUN_1000_88f1                                    undefined FUN_1000_88f1()
       1000:8877 bf b0 a6        MOV        DI,0xa6b0
       1000:887a 57              PUSH       DI
       1000:887b e8 c6 00        CALL       FUN_1000_8944                                    undefined FUN_1000_8944()
       1000:887e 5e              POP        SI
       1000:887f 1e              PUSH       DS
       1000:8880 07              POP        ES
       1000:8881 e8 37 49        CALL       FUN_1000_d1bb                                    undefined FUN_1000_d1bb()
       1000:8884 e8 fc 59        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:8887 c3              RET
                             LAB_1000_8888                                   XREF[1]:     FUN_1000_88d2:1000:88df(j)  
       1000:8888 80 3e d9        CMP        byte ptr [0x46d9],0x0
                 46 00
       1000:888d 75 52           JNZ        LAB_1000_88e1
       1000:888f c7 06 9e        MOV        word ptr [0x479e],0x1
                 47 01 00
                             LAB_1000_8895                                   XREF[1]:     FUN_1000_8f28:1000:9022(j)  
       1000:8895 a0 fb 00        MOV        AL,[0xfb]
       1000:8898 f6 d0           NOT        AL
       1000:889a 24 80           AND        AL,0x80
       1000:889c a2 06 1c        MOV        [0x1c06],AL
       1000:889f 1e              PUSH       DS
       1000:88a0 07              POP        ES
       1000:88a1 bf e2 1b        MOV        DI,0x1be2
       1000:88a4 33 c0           XOR        AX,AX
       1000:88a6 ab              STOSW      ES:DI
       1000:88a7 ab              STOSW      ES:DI
       1000:88a8 ab              STOSW      ES:DI
       1000:88a9 ab              STOSW      ES:DI
       1000:88aa b0 80           MOV        AL,0x80
       1000:88ac ab              STOSW      ES:DI
       1000:88ad c3              RET
                             LAB_1000_88ae                                   XREF[1]:     FUN_1000_88af:1000:88b1(j)  
       1000:88ae c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_88af(void);
                             // C Signature: uint16_t FUN_1000_88af(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Write to: [0x4780]
                             //   Write to: byte ptr [0x47e0]
                             //
                             undefined FUN_1000_88af()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_88af                                   XREF[3]:     FUN_1000_0d8e:1000:0de2(c), 
                                                                                          FUN_1000_80df:1000:8106(c), 
                                                                                          FUN_1000_9f9e:1000:a03b(c)  
       1000:88af 0b c0           OR         AX,AX
       1000:88b1 74 fb           JZ         LAB_1000_88ae
       1000:88b3 a3 80 47        MOV        [0x4780],AX
       1000:88b6 c6 06 e0        MOV        byte ptr [0x47e0],0x0
                 47 00
       1000:88bb f6 06 eb        TEST       byte ptr [0x46eb],0x40
                 46 40
       1000:88c0 74 08           JZ         LAB_1000_88ca
       1000:88c2 80 26 eb        AND        byte ptr [0x46eb],0xbf
                 46 bf
       1000:88c7 e9 15 f8        JMP        FUN_1000_80df                                    undefined FUN_1000_80df()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_88ca                                   XREF[1]:     1000:88c0(j)  
       1000:88ca 8b f0           MOV        SI,AX
       1000:88cc e8 a1 46        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:88cf e8 1f 00        CALL       FUN_1000_88f1                                    undefined FUN_1000_88f1()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_88d2(void);
                             // C Signature: uint16_t FUN_1000_88d2(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             undefined __cdecl16near FUN_1000_88d2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_88d2                                   XREF[1]:     FUN_1000_9472:1000:94e1(c)  
       1000:88d2 bf b0 a6        MOV        DI,0xa6b0
       1000:88d5 57              PUSH       DI
       1000:88d6 e8 6b 00        CALL       FUN_1000_8944                                    undefined FUN_1000_8944()
       1000:88d9 5e              POP        SI
       1000:88da 80 3e e7        CMP        byte ptr [0x28e7],0x2
                 28 02
       1000:88df 73 a7           JNC        LAB_1000_8888
                             LAB_1000_88e1                                   XREF[1]:     1000:888d(j)  
       1000:88e1 ac              LODSB      SI
       1000:88e2 0a c0           OR         AL,AL
       1000:88e4 78 0a           JS         LAB_1000_88f0
       1000:88e6 4e              DEC        SI
       1000:88e7 e8 27 02        CALL       FUN_1000_8b11                                    undefined FUN_1000_8b11()
       1000:88ea 80 3c fe        CMP        byte ptr [SI],0xfe
       1000:88ed 73 01           JNC        LAB_1000_88f0
       1000:88ef 90              NOP
                             LAB_1000_88f0                                   XREF[2]:     1000:88e4(j), 1000:88ed(j)  
       1000:88f0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_88f1(uint8_t ah);
                             // C Signature: uint16_t FUN_1000_88f1(uint8_t ah);
                             // Input Parameters:
                             //   AH (uint8_t): 8-bit input value in AH register
                             //   SS (uint16_t): Segment register input value
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   CH (uint8_t): 8-bit value, both input and output (modified)
                             //   CL (uint8_t): 8-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr SS:[0x47b4]
                             //   Write to: byte ptr ES:[DI]
                             //
                             undefined __cdecl16near FUN_1000_88f1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_88f1                                   XREF[3]:     FUN_1000_8865:1000:8874(c), 
                                                                                          FUN_1000_88af:1000:88cf(c), 
                                                                                          FUN_1000_9f9e:1000:a026(c)  
       1000:88f1 1e              PUSH       DS
       1000:88f2 06              PUSH       ES
       1000:88f3 1f              POP        DS
       1000:88f4 07              POP        ES
       1000:88f5 bf 40 a8        MOV        DI,0xa840
                             LAB_1000_88f8                                   XREF[2]:     1000:890e(j), 1000:893a(j)  
       1000:88f8 ac              LODSB      SI
       1000:88f9 3c ff           CMP        AL,0xff
       1000:88fb 74 40           JZ         LAB_1000_893d
       1000:88fd 3c fe           CMP        AL,0xfe
       1000:88ff 74 04           JZ         LAB_1000_8905
       1000:8901 3c e0           CMP        AL,0xe0
       1000:8903 73 0b           JNC        LAB_1000_8910
                             LAB_1000_8905                                   XREF[1]:     1000:88ff(j)  
       1000:8905 aa              STOSB      ES:DI
       1000:8906 b0 ff           MOV        AL,0xff
       1000:8908 81 ff cf a9     CMP        DI,0xa9cf
       1000:890c 73 2f           JNC        LAB_1000_893d
       1000:890e eb e8           JMP        LAB_1000_88f8
                             LAB_1000_8910                                   XREF[1]:     1000:8903(j)  
       1000:8910 24 0f           AND        AL,0xf
       1000:8912 8a e8           MOV        CH,AL
       1000:8914 ad              LODSW      SI
       1000:8915 8a cc           MOV        CL,AH
       1000:8917 25 ff 3f        AND        AX,0x3fff
       1000:891a d0 e9           SHR        CL,0x1
       1000:891c d0 e9           SHR        CL,0x1
       1000:891e 80 e1 30        AND        CL,0x30
       1000:8921 0a cd           OR         CL,CH
       1000:8923 32 ed           XOR        CH,CH
       1000:8925 56              PUSH       SI
       1000:8926 36 8b 36        MOV        SI,word ptr SS:[0x47b4]
                 b4 47
       1000:892b 03 f0           ADD        SI,AX
       1000:892d f3 a4           MOVSB.REP  ES:DI,SI
       1000:892f 5e              POP        SI
       1000:8930 80 3c ff        CMP        byte ptr [SI],0xff
       1000:8933 74 07           JZ         LAB_1000_893c
       1000:8935 26 c6 05 20     MOV        byte ptr ES:[DI],0x20
       1000:8939 47              INC        DI
       1000:893a eb bc           JMP        LAB_1000_88f8
                             LAB_1000_893c                                   XREF[1]:     1000:8933(j)  
       1000:893c ac              LODSB      SI
                             LAB_1000_893d                                   XREF[2]:     1000:88fb(j), 1000:890c(j)  
       1000:893d aa              STOSB      ES:DI
       1000:893e be 40 a8        MOV        SI,0xa840
       1000:8941 16              PUSH       SS
       1000:8942 1f              POP        DS
       1000:8943 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8944(void);
                             // C Signature: uint16_t FUN_1000_8944(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DH (uint8_t): 8-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //   SP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [BX + 0x11eb]
                             //   Read from: word ptr [BP + 0x0]
                             //   Read from: word ptr [BP + 0x2]
                             //   Write to: [0x477f]
                             //   Write to: word ptr [BP + 0x0]
                             //   Write to: word ptr [BP + 0x2]
                             //
                             undefined __cdecl16near FUN_1000_8944()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8944                                   XREF[3]:     FUN_1000_8865:1000:887b(c), 
                                                                                          FUN_1000_88d2:1000:88d6(c), 
                                                                                          FUN_1000_9f9e:1000:a029(c)  
       1000:8944 83 ec 32        SUB        SP,0x32
       1000:8947 8b ec           MOV        BP,SP
       1000:8949 1e              PUSH       DS
       1000:894a 07              POP        ES
                             LAB_1000_894b                                   XREF[1]:     1000:8951(j)  
       1000:894b 80 3c 20        CMP        byte ptr [SI],0x20
       1000:894e 75 03           JNZ        LAB_1000_8953
       1000:8950 46              INC        SI
       1000:8951 eb f8           JMP        LAB_1000_894b
                             LAB_1000_8953                                   XREF[9]:     1000:894e(j), 1000:8959(j), 
                                                                                          1000:8999(j), 1000:89a1(j), 
                                                                                          1000:89a8(j), 1000:89ab(j), 
                                                                                          1000:89ae(j), 1000:89bf(j), 
                                                                                          1000:8a20(j)  
       1000:8953 ac              LODSB      SI
       1000:8954 0a c0           OR         AL,AL
       1000:8956 78 03           JS         LAB_1000_895b
       1000:8958 aa              STOSB      ES:DI
       1000:8959 eb f8           JMP        LAB_1000_8953
                             LAB_1000_895b                                   XREF[1]:     1000:8956(j)  
       1000:895b a2 7f 47        MOV        [0x477f],AL
       1000:895e 3c f0           CMP        AL,0xf0
       1000:8960 73 4e           JNC        LAB_1000_89b0
       1000:8962 3c d0           CMP        AL,0xd0
       1000:8964 73 35           JNC        LAB_1000_899b
       1000:8966 3c a0           CMP        AL,0xa0
       1000:8968 73 43           JNC        LAB_1000_89ad
       1000:896a 3c 90           CMP        AL,0x90
       1000:896c 72 02           JC         LAB_1000_8970
       1000:896e eb 74           JMP        LAB_1000_89e4
                             LAB_1000_8970                                   XREF[1]:     1000:896c(j)  
       1000:8970 3c 80           CMP        AL,0x80
       1000:8972 75 05           JNZ        LAB_1000_8979
       1000:8974 ad              LODSW      SI
       1000:8975 86 e0           XCHG       AL,AH
       1000:8977 eb 0b           JMP        LAB_1000_8984
                             LAB_1000_8979                                   XREF[1]:     1000:8972(j)  
       1000:8979 25 0f 00        AND        AX,0xf
       1000:897c d1 e0           SHL        AX,0x1
       1000:897e 8b d8           MOV        BX,AX
       1000:8980 8b 87 eb 11     MOV        AX,word ptr [BX + 0x11eb]
                             LAB_1000_8984                                   XREF[1]:     1000:8977(j)  
       1000:8984 89 76 00        MOV        word ptr [BP + 0x0],SI
       1000:8987 8c 5e 02        MOV        word ptr [BP + 0x2],DS
       1000:898a 83 c5 04        ADD        BP,0x4
       1000:898d 8b f0           MOV        SI,AX
       1000:898f e8 a9 00        CALL       FUN_1000_8a3b                                    undefined FUN_1000_8a3b()
       1000:8992 06              PUSH       ES
       1000:8993 e8 da 45        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:8996 06              PUSH       ES
       1000:8997 1f              POP        DS
       1000:8998 07              POP        ES
       1000:8999 eb b8           JMP        LAB_1000_8953
                             LAB_1000_899b                                   XREF[1]:     1000:8964(j)  
       1000:899b aa              STOSB      ES:DI
       1000:899c a4              MOVSB      ES:DI,SI
       1000:899d 3c d2           CMP        AL,0xd2
       1000:899f 72 02           JC         LAB_1000_89a3
       1000:89a1 eb b0           JMP        LAB_1000_8953
                             LAB_1000_89a3                                   XREF[1]:     1000:899f(j)  
       1000:89a3 a4              MOVSB      ES:DI,SI
       1000:89a4 3c d0           CMP        AL,0xd0
       1000:89a6 75 02           JNZ        LAB_1000_89aa
       1000:89a8 eb a9           JMP        LAB_1000_8953
                             LAB_1000_89aa                                   XREF[1]:     1000:89a6(j)  
       1000:89aa a5              MOVSW      ES:DI,SI
       1000:89ab eb a6           JMP        LAB_1000_8953
                             LAB_1000_89ad                                   XREF[1]:     1000:8968(j)  
       1000:89ad aa              STOSB      ES:DI
       1000:89ae eb a3           JMP        LAB_1000_8953
                             LAB_1000_89b0                                   XREF[1]:     1000:8960(j)  
       1000:89b0 8b dc           MOV        BX,SP
       1000:89b2 3b eb           CMP        BP,BX
       1000:89b4 74 0b           JZ         LAB_1000_89c1
       1000:89b6 83 ed 04        SUB        BP,0x4
       1000:89b9 8b 76 00        MOV        SI,word ptr [BP + 0x0]
       1000:89bc 8e 5e 02        MOV        DS,word ptr [BP + 0x2]
       1000:89bf eb 92           JMP        LAB_1000_8953
                             LAB_1000_89c1                                   XREF[1]:     1000:89b4(j)  
       1000:89c1 aa              STOSB      ES:DI
       1000:89c2 3c ff           CMP        AL,0xff
       1000:89c4 75 02           JNZ        LAB_1000_89c8
       1000:89c6 33 f6           XOR        SI,SI
                             LAB_1000_89c8                                   XREF[1]:     1000:89c4(j)  
       1000:89c8 89 36 b6 47     MOV        word ptr [0x47b6],SI
       1000:89cc 8c 1e b8 47     MOV        word ptr [0x47b8],DS
       1000:89d0 83 c4 32        ADD        SP,0x32
       1000:89d3 f6 06 de        TEST       byte ptr [0x47de],0x10
                 47 10
       1000:89d8 74 09           JZ         LAB_1000_89e3
       1000:89da bb 03 00        MOV        BX,0x3
       1000:89dd e8 d7 59        CALL       FUN_1000_e3b7                                    undefined FUN_1000_e3b7()
       1000:89e0 e8 e0 00        CALL       FUN_1000_8ac3                                    undefined FUN_1000_8ac3()
                             LAB_1000_89e3                                   XREF[1]:     1000:89d8(j)  
       1000:89e3 c3              RET
                             LAB_1000_89e4                                   XREF[1]:     1000:896e(j)  
       1000:89e4 55              PUSH       BP
       1000:89e5 8a d8           MOV        BL,AL
       1000:89e7 ac              LODSB      SI
       1000:89e8 32 e4           XOR        AH,AH
       1000:89ea 8b e8           MOV        BP,AX
       1000:89ec 8b 86 00 00     MOV        AX,word ptr [BP + 0x0]
       1000:89f0 80 fb 92        CMP        BL,0x92
       1000:89f3 74 02           JZ         LAB_1000_89f7
       1000:89f5 32 e4           XOR        AH,AH
                             LAB_1000_89f7                                   XREF[1]:     1000:89f3(j)  
       1000:89f7 50              PUSH       AX
       1000:89f8 e8 d1 00        CALL       FUN_1000_8acc                                    undefined FUN_1000_8acc()
       1000:89fb 58              POP        AX
       1000:89fc e8 24 00        CALL       FUN_1000_8a23                                    undefined FUN_1000_8a23()
       1000:89ff 93              XCHG       AX,BX
       1000:8a00 b9 05 00        MOV        CX,0x5
       1000:8a03 eb 08           JMP        LAB_1000_8a0d
                             LAB_1000_8a05                                   XREF[1]:     1000:8a0f(j)  
       1000:8a05 8a c6           MOV        AL,DH
       1000:8a07 8a f2           MOV        DH,DL
       1000:8a09 8a d7           MOV        DL,BH
       1000:8a0b 8a fb           MOV        BH,BL
                             LAB_1000_8a0d                                   XREF[1]:     1000:8a03(j)  
       1000:8a0d 0a c0           OR         AL,AL
       1000:8a0f e1 f4           LOOPZ      LAB_1000_8a05
       1000:8a11 41              INC        CX
                             LAB_1000_8a12                                   XREF[1]:     1000:8a1d(j)  
       1000:8a12 04 30           ADD        AL,0x30
       1000:8a14 aa              STOSB      ES:DI
       1000:8a15 8a c6           MOV        AL,DH
       1000:8a17 8a f2           MOV        DH,DL
       1000:8a19 8a d7           MOV        DL,BH
       1000:8a1b 8a fb           MOV        BH,BL
       1000:8a1d e2 f3           LOOP       LAB_1000_8a12
       1000:8a1f 5d              POP        BP
       1000:8a20 e9 30 ff        JMP        LAB_1000_8953
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_8a23(uint8_t al);
                             // C Signature: uint32_t FUN_1000_8a23(uint8_t al);
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BL (uint8_t): 8-bit output value in BL register
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             undefined __cdecl16near FUN_1000_8a23()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8a23                                   XREF[2]:     FUN_1000_8944:1000:89fc(c), 
                                                                                          FUN_1000_9b09:1000:9b1c(c)  
       1000:8a23 33 d2           XOR        DX,DX
       1000:8a25 b9 10 27        MOV        CX,0x2710
       1000:8a28 f7 f1           DIV        CX
       1000:8a2a 8a d8           MOV        BL,AL
       1000:8a2c b9 64 00        MOV        CX,0x64
       1000:8a2f 8b c2           MOV        AX,DX
       1000:8a31 33 d2           XOR        DX,DX
       1000:8a33 f7 f1           DIV        CX
       1000:8a35 d4 0a           AAM        0xa
       1000:8a37 92              XCHG       AX,DX
       1000:8a38 d4 0a           AAM        0xa
       1000:8a3a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8a3b(void);
                             // C Signature: uint16_t FUN_1000_8a3b(void);
                             // Input/Output Parameters:
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: byte ptr [0x477f]
                             //   Read from: byte ptr [0x47de]
                             //   Read from: byte ptr [0x47de]
                             //
                             undefined __cdecl16near FUN_1000_8a3b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8a3b                                   XREF[1]:     FUN_1000_8944:1000:898f(c)  
       1000:8a3b f6 06 de        TEST       byte ptr [0x47de],0x10
                 47 10
       1000:8a40 75 01           JNZ        LAB_1000_8a43
       1000:8a42 c3              RET
                             LAB_1000_8a43                                   XREF[1]:     1000:8a40(j)  
       1000:8a43 53              PUSH       BX
       1000:8a44 8a 3e 7f 47     MOV        BH,byte ptr [0x477f]
       1000:8a48 80 ff 8b        CMP        BH,0x8b
       1000:8a4b 75 05           JNZ        LAB_1000_8a52
       1000:8a4d 2d 08 01        SUB        AX,0x108
       1000:8a50 eb 6c           JMP        LAB_1000_8abe
                             LAB_1000_8a52                                   XREF[1]:     1000:8a4b(j)  
       1000:8a52 80 ff 84        CMP        BH,0x84
       1000:8a55 75 12           JNZ        LAB_1000_8a69
       1000:8a57 2d 48 00        SUB        AX,0x48
       1000:8a5a 74 62           JZ         LAB_1000_8abe
       1000:8a5c 48              DEC        AX
       1000:8a5d 3c 03           CMP        AL,0x3
       1000:8a5f 72 5d           JC         LAB_1000_8abe
       1000:8a61 2d cf ff        SUB        AX,0xffcf
       1000:8a64 3d 0c 00        CMP        AX,0xc
       1000:8a67 eb 53           JMP        LAB_1000_8abc
                             LAB_1000_8a69                                   XREF[1]:     1000:8a55(j)  
       1000:8a69 80 ff 83        CMP        BH,0x83
       1000:8a6c 74 03           JZ         LAB_1000_8a71
       1000:8a6e 80 ff 8c        CMP        BH,0x8c
                             LAB_1000_8a71                                   XREF[1]:     1000:8a6c(j)  
       1000:8a71 75 07           JNZ        LAB_1000_8a7a
       1000:8a73 2d e8 00        SUB        AX,0xe8
       1000:8a76 3c 07           CMP        AL,0x7
       1000:8a78 eb 42           JMP        LAB_1000_8abc
                             LAB_1000_8a7a                                   XREF[1]:     1000:8a71(j)  
       1000:8a7a 8a df           MOV        BL,BH
       1000:8a7c 80 eb 86        SUB        BL,0x86
       1000:8a7f 80 fb 03        CMP        BL,0x3
       1000:8a82 73 13           JNC        LAB_1000_8a97
       1000:8a84 8a 1e de 47     MOV        BL,byte ptr [0x47de]
       1000:8a88 80 e3 0f        AND        BL,0xf
       1000:8a8b 80 fb 01        CMP        BL,0x1
       1000:8a8e 75 31           JNZ        LAB_1000_8ac1
       1000:8a90 2d d1 00        SUB        AX,0xd1
       1000:8a93 3c 07           CMP        AL,0x7
       1000:8a95 eb 25           JMP        LAB_1000_8abc
                             LAB_1000_8a97                                   XREF[1]:     1000:8a82(j)  
       1000:8a97 80 ff 85        CMP        BH,0x85
       1000:8a9a 75 16           JNZ        LAB_1000_8ab2
       1000:8a9c 8a 1e de 47     MOV        BL,byte ptr [0x47de]
       1000:8aa0 80 e3 0f        AND        BL,0xf
       1000:8aa3 80 fb 01        CMP        BL,0x1
       1000:8aa6 75 19           JNZ        LAB_1000_8ac1
       1000:8aa8 3d 74 00        CMP        AX,0x74
       1000:8aab b0 00           MOV        AL,0x0
       1000:8aad 75 0f           JNZ        LAB_1000_8abe
       1000:8aaf 40              INC        AX
       1000:8ab0 eb 0c           JMP        LAB_1000_8abe
                             LAB_1000_8ab2                                   XREF[1]:     1000:8a9a(j)  
       1000:8ab2 80 ff 89        CMP        BH,0x89
       1000:8ab5 75 0a           JNZ        LAB_1000_8ac1
       1000:8ab7 2d da 00        SUB        AX,0xda
       1000:8aba 3c 08           CMP        AL,0x8
                             LAB_1000_8abc                                   XREF[3]:     1000:8a67(j), 1000:8a78(j), 
                                                                                          1000:8a95(j)  
       1000:8abc 73 03           JNC        LAB_1000_8ac1
                             LAB_1000_8abe                                   XREF[9]:     1000:8a50(j), 1000:8a5a(j), 
                                                                                          1000:8a5f(j), 1000:8aad(j), 
                                                                                          1000:8ab0(j), 
                                                                                          FUN_1000_8acc:1000:8b01(j), 
                                                                                          FUN_1000_8acc:1000:8b05(j), 
                                                                                          FUN_1000_8acc:1000:8b0a(j), 
                                                                                          FUN_1000_8acc:1000:8b0e(j)  
       1000:8abe e8 02 00        CALL       FUN_1000_8ac3                                    undefined FUN_1000_8ac3()
                             LAB_1000_8ac1                                   XREF[6]:     1000:8a8e(j), 1000:8aa6(j), 
                                                                                          1000:8ab5(j), 1000:8abc(j), 
                                                                                          FUN_1000_8acc:1000:8aef(j), 
                                                                                          FUN_1000_8acc:1000:8afc(j)  
       1000:8ac1 5b              POP        BX
                             LAB_1000_8ac2                                   XREF[1]:     FUN_1000_8acc:1000:8ad2(j)  
       1000:8ac2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_8ac3(uint8_t al);
                             // C Signature: void FUN_1000_8ac3(uint8_t al);
                             // Input Parameters:
                             //   AL (uint8_t): 8-bit input value in AL register
                             //
                             // Memory Access:
                             //   Write to: [0x47e0]
                             //
                             undefined __cdecl16near FUN_1000_8ac3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8ac3                                   XREF[2]:     FUN_1000_8944:1000:89e0(c), 
                                                                                          FUN_1000_8a3b:1000:8abe(c)  
       1000:8ac3 a2 e0 47        MOV        [0x47e0],AL
       1000:8ac6 80 26 de        AND        byte ptr [0x47de],0xef
                 47 ef
       1000:8acb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8acc(uint16_t bx);
                             // C Signature: uint16_t FUN_1000_8acc(uint16_t bx);
                             // Input Parameters:
                             //   BX (uint16_t): 16-bit input value in BX register
                             //   SS (uint16_t): Segment register input value
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: [BP + 0x0]
                             //   Read from: byte ptr SS:[0x47de]
                             //
                             undefined __cdecl16near FUN_1000_8acc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8acc                                   XREF[1]:     FUN_1000_8944:1000:89f8(c)  
       1000:8acc 36 f6 06        TEST       byte ptr SS:[0x47de],0x10
                 de 47 10
       1000:8ad2 74 ee           JZ         LAB_1000_8ac2
       1000:8ad4 53              PUSH       BX
       1000:8ad5 8d ae 00 00     LEA        BP,[BP + 0x0]
       1000:8ad9 81 fd cf 00     CMP        BP,0xcf
       1000:8add 74 20           JZ         LAB_1000_8aff
       1000:8adf 81 fd 55 00     CMP        BP,0x55
       1000:8ae3 74 22           JZ         LAB_1000_8b07
       1000:8ae5 81 fd 61 00     CMP        BP,0x61
       1000:8ae9 74 1c           JZ         LAB_1000_8b07
       1000:8aeb 81 fd 44 00     CMP        BP,0x44
       1000:8aef 75 d0           JNZ        LAB_1000_8ac1
       1000:8af1 36 8a 3e        MOV        BH,byte ptr SS:[0x47de]
                 de 47
       1000:8af6 80 e7 0f        AND        BH,0xf
       1000:8af9 80 ff 01        CMP        BH,0x1
       1000:8afc 75 c3           JNZ        LAB_1000_8ac1
       1000:8afe 48              DEC        AX
                             LAB_1000_8aff                                   XREF[1]:     1000:8add(j)  
       1000:8aff 3c 08           CMP        AL,0x8
       1000:8b01 76 bb           JBE        LAB_1000_8abe
       1000:8b03 b0 08           MOV        AL,0x8
       1000:8b05 eb b7           JMP        LAB_1000_8abe
                             LAB_1000_8b07                                   XREF[2]:     1000:8ae3(j), 1000:8ae9(j)  
       1000:8b07 48              DEC        AX
       1000:8b08 3c 04           CMP        AL,0x4
       1000:8b0a 76 b2           JBE        LAB_1000_8abe
       1000:8b0c b0 04           MOV        AL,0x4
       1000:8b0e eb ae           JMP        LAB_1000_8abe
                             LAB_1000_8b10                                   XREF[1]:     1000:8b19(j)  
       1000:8b10 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_8b11(uint8_t cl);
                             // C Signature: uint32_t FUN_1000_8b11(uint8_t cl);
                             // Input Parameters:
                             //   CL (uint8_t): 8-bit input value in CL register
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x4791]
                             //   Read from: word ptr [0x4793]
                             //   Read from: [0x4799]
                             //   Write to: word ptr [0x479a]
                             //   Write to: [0x479a]
                             //   Write to: [0x478d]
                             //
                             undefined __cdecl16near FUN_1000_8b11()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8b11                                   XREF[2]:     FUN_1000_88d2:1000:88e7(c), 
                                                                                          FUN_1000_9f9e:1000:a02f(c)  
       1000:8b11 56              PUSH       SI
       1000:8b12 e8 75 01        CALL       FUN_1000_8c8a                                    undefined FUN_1000_8c8a()
       1000:8b15 5e              POP        SI
       1000:8b16 e8 b4 01        CALL       FUN_1000_8ccd                                    undefined FUN_1000_8ccd()
       1000:8b19 72 f5           JC         LAB_1000_8b10
       1000:8b1b e8 0a 04        CALL       FUN_1000_8f28                                    undefined FUN_1000_8f28()
       1000:8b1e e8 cf 02        CALL       FUN_1000_8df0                                    undefined FUN_1000_8df0()
       1000:8b21 8b 16 91 47     MOV        DX,word ptr [0x4791]
       1000:8b25 8b 1e 93 47     MOV        BX,word ptr [0x4793]
       1000:8b29 e8 22 45        CALL       FUN_1000_d04e                                    undefined FUN_1000_d04e()
       1000:8b2c bd d0 a9        MOV        BP,0xa9d0
       1000:8b2f c7 06 9a        MOV        word ptr [0x479a],0xa
                 47 0a 00
       1000:8b35 a0 99 47        MOV        AL,[0x4799]
       1000:8b38 24 0c           AND        AL,0xc
       1000:8b3a 74 4f           JZ         LAB_1000_8b8b
       1000:8b3c 3c 08           CMP        AL,0x8
       1000:8b3e 73 26           JNC        LAB_1000_8b66
       1000:8b40 8b 5e 00        MOV        BX,word ptr [BP + 0x0]
       1000:8b43 33 d2           XOR        DX,DX
       1000:8b45 a1 8d 47        MOV        AX,[0x478d]
       1000:8b48 2d 08 00        SUB        AX,0x8
       1000:8b4b 4b              DEC        BX
       1000:8b4c 74 07           JZ         LAB_1000_8b55
       1000:8b4e f7 f3           DIV        BX
       1000:8b50 a3 9a 47        MOV        [0x479a],AX
       1000:8b53 eb 36           JMP        LAB_1000_8b8b
                             LAB_1000_8b55                                   XREF[1]:     1000:8b4c(j)  
       1000:8b55 d1 e8           SHR        AX,0x1
       1000:8b57 8b d8           MOV        BX,AX
       1000:8b59 8b 16 2c d8     MOV        DX,word ptr [0xd82c]
       1000:8b5d 03 1e 2e d8     ADD        BX,word ptr [0xd82e]
       1000:8b61 e8 ea 44        CALL       FUN_1000_d04e                                    undefined FUN_1000_d04e()
       1000:8b64 eb 25           JMP        LAB_1000_8b8b
                             LAB_1000_8b66                                   XREF[1]:     1000:8b3e(j)  
       1000:8b66 9c              PUSHF
       1000:8b67 8b 46 00        MOV        AX,word ptr [BP + 0x0]
       1000:8b6a b4 0a           MOV        AH,0xa
       1000:8b6c f6 e4           MUL        AH
       1000:8b6e 8b 1e 8d 47     MOV        BX,word ptr [0x478d]
       1000:8b72 2b d8           SUB        BX,AX
       1000:8b74 73 02           JNC        LAB_1000_8b78
       1000:8b76 33 db           XOR        BX,BX
                             LAB_1000_8b78                                   XREF[1]:     1000:8b74(j)  
       1000:8b78 a3 8d 47        MOV        [0x478d],AX
       1000:8b7b 9d              POPF
       1000:8b7c 75 02           JNZ        LAB_1000_8b80
       1000:8b7e d1 eb           SHR        BX,0x1
                             LAB_1000_8b80                                   XREF[1]:     1000:8b7c(j)  
       1000:8b80 8b 16 2c d8     MOV        DX,word ptr [0xd82c]
       1000:8b84 03 1e 2e d8     ADD        BX,word ptr [0xd82e]
       1000:8b88 e8 c3 44        CALL       FUN_1000_d04e                                    undefined FUN_1000_d04e()
                             LAB_1000_8b8b                                   XREF[3]:     1000:8b3a(j), 1000:8b53(j), 
                                                                                          1000:8b64(j)  
       1000:8b8b 8b 56 00        MOV        DX,word ptr [BP + 0x0]
       1000:8b8e 83 c5 02        ADD        BP,0x2
                             LAB_1000_8b91                                   XREF[1]:     1000:8c67(j)  
       1000:8b91 52              PUSH       DX
       1000:8b92 8b 4e 00        MOV        CX,word ptr [BP + 0x0]
       1000:8b95 83 c5 02        ADD        BP,0x2
       1000:8b98 8b 56 00        MOV        DX,word ptr [BP + 0x0]
       1000:8b9b 8b 5e 02        MOV        BX,word ptr [BP + 0x2]
       1000:8b9e 83 c5 04        ADD        BP,0x4
       1000:8ba1 e3 69           JCXZ       LAB_1000_8c0c
       1000:8ba3 f6 06 99        TEST       byte ptr [0x4799],0x2
                 47 02
       1000:8ba8 74 27           JZ         LAB_1000_8bd1
       1000:8baa 8a c2           MOV        AL,DL
       1000:8bac 8a d1           MOV        DL,CL
       1000:8bae fe ca           DEC        DL
       1000:8bb0 74 02           JZ         LAB_1000_8bb4
       1000:8bb2 f6 e2           MUL        DL
                             LAB_1000_8bb4                                   XREF[1]:     1000:8bb0(j)  
       1000:8bb4 02 c3           ADD        AL,BL
       1000:8bb6 8a d0           MOV        DL,AL
       1000:8bb8 8a c1           MOV        AL,CL
       1000:8bba fe c8           DEC        AL
       1000:8bbc 32 e4           XOR        AH,AH
       1000:8bbe d1 e0           SHL        AX,0x1
       1000:8bc0 2b d0           SUB        DX,AX
       1000:8bc2 d1 e0           SHL        AX,0x1
       1000:8bc4 2b d0           SUB        DX,AX
       1000:8bc6 d1 ea           SHR        DX,0x1
       1000:8bc8 01 16 2c d8     ADD        word ptr [0xd82c],DX
       1000:8bcc 80 26 99        AND        byte ptr [0x4799],0xfe
                 47 fe
                             LAB_1000_8bd1                                   XREF[1]:     1000:8ba8(j)  
       1000:8bd1 58              POP        AX
       1000:8bd2 50              PUSH       AX
       1000:8bd3 3d 01 00        CMP        AX,0x1
       1000:8bd6 74 07           JZ         LAB_1000_8bdf
       1000:8bd8 f6 06 99        TEST       byte ptr [0x4799],0x1
                 47 01
       1000:8bdd 75 06           JNZ        LAB_1000_8be5
                             LAB_1000_8bdf                                   XREF[1]:     1000:8bd6(j)  
       1000:8bdf ba 06 00        MOV        DX,0x6
       1000:8be2 bb 00 00        MOV        BX,0x0
                             LAB_1000_8be5                                   XREF[1]:     1000:8bdd(j)  
       1000:8be5 89 1e 9c 47     MOV        word ptr [0x479c],BX
                             LAB_1000_8be9                                   XREF[5]:     1000:8c0a(j), 1000:8c12(j), 
                                                                                          1000:8c17(j), 1000:8c3f(j), 
                                                                                          1000:8c45(j)  
       1000:8be9 ac              LODSB      SI
       1000:8bea 0a c0           OR         AL,AL
       1000:8bec 78 38           JS         LAB_1000_8c26
       1000:8bee 3c 20           CMP        AL,0x20
       1000:8bf0 74 27           JZ         LAB_1000_8c19
       1000:8bf2 3c 0d           CMP        AL,0xd
       1000:8bf4 74 23           JZ         LAB_1000_8c19
       1000:8bf6 3c 06           CMP        AL,0x6
       1000:8bf8 74 15           JZ         LAB_1000_8c0f
       1000:8bfa 3c 08           CMP        AL,0x8
       1000:8bfc 74 16           JZ         LAB_1000_8c14
       1000:8bfe 3c 01           CMP        AL,0x1
       1000:8c00 75 3f           JNZ        LAB_1000_8c41
       1000:8c02 a1 e4 db        MOV        AX,[0xdbe4]
       1000:8c05 86 e0           XCHG       AL,AH
       1000:8c07 a3 e4 db        MOV        [0xdbe4],AX
       1000:8c0a eb dd           JMP        LAB_1000_8be9
                             LAB_1000_8c0c                                   XREF[1]:     1000:8ba1(j)  
       1000:8c0c eb 39           JMP        LAB_1000_8c47
                             LAB_1000_8c0f                                   XREF[1]:     1000:8bf8(j)  
       1000:8c0f e8 63 44        CALL       FUN_1000_d075                                    undefined FUN_1000_d075()
       1000:8c12 eb d5           JMP        LAB_1000_8be9
                             LAB_1000_8c14                                   XREF[1]:     1000:8bfc(j)  
       1000:8c14 e8 51 44        CALL       FUN_1000_d068                                    undefined FUN_1000_d068()
       1000:8c17 eb d0           JMP        LAB_1000_8be9
                             LAB_1000_8c19                                   XREF[3]:     1000:8bf0(j), 1000:8bf4(j), 
                                                                                          1000:8c24(j)  
       1000:8c19 80 3c 20        CMP        byte ptr [SI],0x20
       1000:8c1c 74 05           JZ         LAB_1000_8c23
       1000:8c1e 80 3c 0d        CMP        byte ptr [SI],0xd
       1000:8c21 75 03           JNZ        LAB_1000_8c26
                             LAB_1000_8c23                                   XREF[1]:     1000:8c1c(j)  
       1000:8c23 46              INC        SI
       1000:8c24 eb f3           JMP        LAB_1000_8c19
                             LAB_1000_8c26                                   XREF[2]:     1000:8bec(j), 1000:8c21(j)  
       1000:8c26 49              DEC        CX
       1000:8c27 74 1e           JZ         LAB_1000_8c47
       1000:8c29 52              PUSH       DX
       1000:8c2a 03 16 2c d8     ADD        DX,word ptr [0xd82c]
       1000:8c2e 83 3e 9c        CMP        word ptr [0x479c],0x0
                 47 00
       1000:8c33 74 05           JZ         LAB_1000_8c3a
       1000:8c35 42              INC        DX
       1000:8c36 ff 0e 9c 47     DEC        word ptr [0x479c]
                             LAB_1000_8c3a                                   XREF[1]:     1000:8c33(j)  
       1000:8c3a 89 16 2c d8     MOV        word ptr [0xd82c],DX
       1000:8c3e 5a              POP        DX
       1000:8c3f eb a8           JMP        LAB_1000_8be9
                             LAB_1000_8c41                                   XREF[1]:     1000:8c00(j)  
       1000:8c41 ff 16 18 25     CALL       word ptr [0x2518]
       1000:8c45 eb a2           JMP        LAB_1000_8be9
                             LAB_1000_8c47                                   XREF[2]:     1000:8c0c(j), 1000:8c27(j)  
       1000:8c47 8b 16 30 d8     MOV        DX,word ptr [0xd830]
       1000:8c4b 8b 1e 32 d8     MOV        BX,word ptr [0xd832]
       1000:8c4f a1 9a 47        MOV        AX,[0x479a]
       1000:8c52 03 d8           ADD        BX,AX
       1000:8c54 29 06 8d 47     SUB        word ptr [0x478d],AX
       1000:8c58 73 06           JNC        LAB_1000_8c60
       1000:8c5a c7 06 8d        MOV        word ptr [0x478d],0x0
                 47 00 00
                             LAB_1000_8c60                                   XREF[1]:     1000:8c58(j)  
       1000:8c60 e8 eb 43        CALL       FUN_1000_d04e                                    undefined FUN_1000_d04e()
       1000:8c63 5a              POP        DX
       1000:8c64 4a              DEC        DX
       1000:8c65 74 03           JZ         LAB_1000_8c6a
       1000:8c67 e9 27 ff        JMP        LAB_1000_8b91
                             LAB_1000_8c6a                                   XREF[1]:     1000:8c65(j)  
       1000:8c6a 8b 16 30 d8     MOV        DX,word ptr [0xd830]
       1000:8c6e 8b 1e 32 d8     MOV        BX,word ptr [0xd832]
       1000:8c72 89 16 91 47     MOV        word ptr [0x4791],DX
       1000:8c76 89 1e 93 47     MOV        word ptr [0x4793],BX
       1000:8c7a 4e              DEC        SI
       1000:8c7b 81 3e 9e        CMP        word ptr [0x479e],0x223c
                 47 3c 22
       1000:8c81 75 06           JNZ        LAB_1000_8c89
       1000:8c83 e8 c0 03        CALL       FUN_1000_9046                                    undefined FUN_1000_9046()
       1000:8c86 e9 f3 33        JMP        FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_8c89                                   XREF[1]:     1000:8c81(j)  
       1000:8c89 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8c8a(void);
                             // C Signature: uint16_t FUN_1000_8c8a(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0xdbde]
                             //   Read from: word ptr [0x47c8]
                             //   Write to: word ptr [SI + 0x8]
                             //   Write to: word ptr [0x4540]
                             //
                             undefined __cdecl16near FUN_1000_8c8a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8c8a                                   XREF[2]:     FUN_1000_8b11:1000:8b12(c), 
                                                                                          FUN_1000_a0f1:1000:a104(c)  
       1000:8c8a 33 c0           XOR        AX,AX
       1000:8c8c 87 06 9e 47     XCHG       word ptr [0x479e],AX
       1000:8c90 3d 02 00        CMP        AX,0x2
       1000:8c93 72 37           JC         LAB_1000_8ccc
       1000:8c95 be 70 14        MOV        SI,0x1470
       1000:8c98 80 3e e7        CMP        byte ptr [0x28e7],0x0
                 28 00
       1000:8c9d 74 16           JZ         LAB_1000_8cb5
       1000:8c9f bd e2 1b        MOV        BP,0x1be2
       1000:8ca2 be 60 4c        MOV        SI,0x4c60
       1000:8ca5 8e 06 de db     MOV        ES,word ptr [0xdbde]
       1000:8ca9 ff 1e 1d 39     CALLF      [0x391d]
       1000:8cad be e2 1b        MOV        SI,0x1be2
       1000:8cb0 c7 44 08        MOV        word ptr [SI + 0x8],0x0
                 00 00
                             LAB_1000_8cb5                                   XREF[1]:     1000:8c9d(j)  
       1000:8cb5 e8 8e 37        CALL       FUN_1000_c446                                    undefined FUN_1000_c446()
       1000:8cb8 8b 36 c8 47     MOV        SI,word ptr [0x47c8]
       1000:8cbc 0b f6           OR         SI,SI
       1000:8cbe 74 09           JZ         LAB_1000_8cc9
       1000:8cc0 c7 06 40        MOV        word ptr [0x4540],0x0
                 45 00 00
       1000:8cc6 e8 e3 0e        CALL       FUN_1000_9bac                                    undefined FUN_1000_9bac()
                             LAB_1000_8cc9                                   XREF[1]:     1000:8cbe(j)  
       1000:8cc9 e8 11 38        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
                             LAB_1000_8ccc                                   XREF[1]:     1000:8c93(j)  
       1000:8ccc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_8ccd(void);
                             // C Signature: uint32_t FUN_1000_8ccd(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   AH (uint8_t): 8-bit output value in AH register
                             //   AL (uint8_t): 8-bit output value in AL register
                             //   BX (uint16_t): 16-bit output value in BX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x46f1]
                             //   Read from: word ptr [BP + 0x4]
                             //   Read from: [0xa9d0]
                             //   Write to: byte ptr [0x4799]
                             //   Write to: word ptr [0xdbe4]
                             //   Write to: [0x4784]
                             //
                             undefined __cdecl16near FUN_1000_8ccd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8ccd                                   XREF[1]:     FUN_1000_8b11:1000:8b16(c)  
       1000:8ccd c6 06 99        MOV        byte ptr [0x4799],0x9
                 47 09
       1000:8cd2 c7 06 e4        MOV        word ptr [0xdbe4],0xf0
                 db f0 00
       1000:8cd8 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:8cdd 74 1c           JZ         LAB_1000_8cfb
       1000:8cdf 83 3e ef        CMP        word ptr [0x46ef],0x0
                 46 00
       1000:8ce4 75 0f           JNZ        LAB_1000_8cf5
       1000:8ce6 e8 87 55        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:8ce9 06              PUSH       ES
       1000:8cea 8b 36 f1 46     MOV        SI,word ptr [0x46f1]
       1000:8cee e8 fd ec        CALL       FUN_1000_79ee                                    undefined FUN_1000_79ee()
       1000:8cf1 07              POP        ES
       1000:8cf2 e8 8e 55        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_8cf5                                   XREF[1]:     1000:8ce4(j)  
       1000:8cf5 bd 44 22        MOV        BP,0x2244
       1000:8cf8 e9 e0 00        JMP        LAB_1000_8ddb
                             LAB_1000_8cfb                                   XREF[1]:     1000:8cdd(j)  
       1000:8cfb 83 3e c4        CMP        word ptr [0x47c4],-0x1
                 47 ff
       1000:8d00 75 19           JNZ        LAB_1000_8d1b
       1000:8d02 b8 48 00        MOV        AX,0x48
       1000:8d05 a3 84 47        MOV        [0x4784],AX
       1000:8d08 b0 10           MOV        AL,0x10
       1000:8d0a a3 86 47        MOV        [0x4786],AX
       1000:8d0d b0 08           MOV        AL,0x8
       1000:8d0f a3 88 47        MOV        [0x4788],AX
       1000:8d12 a3 8a 47        MOV        [0x478a],AX
       1000:8d15 bd 4c 22        MOV        BP,0x224c
       1000:8d18 e9 c0 00        JMP        LAB_1000_8ddb
                             LAB_1000_8d1b                                   XREF[1]:     1000:8d00(j)  
       1000:8d1b 80 3e c6        CMP        byte ptr [0xc6],0x0
                 00 00
       1000:8d20 74 21           JZ         LAB_1000_8d43
       1000:8d22 bd 65 22        MOV        BP,0x2265
       1000:8d25 b8 3c 00        MOV        AX,0x3c
       1000:8d28 a3 84 47        MOV        [0x4784],AX
       1000:8d2b b0 32           MOV        AL,0x32
       1000:8d2d a3 86 47        MOV        [0x4786],AX
       1000:8d30 b0 0a           MOV        AL,0xa
       1000:8d32 a3 88 47        MOV        [0x4788],AX
       1000:8d35 a3 8a 47        MOV        [0x478a],AX
       1000:8d38 c6 06 e4        MOV        byte ptr [0xdbe4],0x64
                 db 64
       1000:8d3d e8 42 43        CALL       FUN_1000_d082                                    undefined FUN_1000_d082()
       1000:8d40 e9 98 00        JMP        LAB_1000_8ddb
                             LAB_1000_8d43                                   XREF[1]:     1000:8d20(j)  
       1000:8d43 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:8d48 74 18           JZ         LAB_1000_8d62
       1000:8d4a c6 06 e4        MOV        byte ptr [0xdbe4],0x6
                 db 06
       1000:8d4f bd 75 22        MOV        BP,0x2275
       1000:8d52 33 c0           XOR        AX,AX
       1000:8d54 a3 88 47        MOV        [0x4788],AX
       1000:8d57 a3 8a 47        MOV        [0x478a],AX
       1000:8d5a a3 84 47        MOV        [0x4784],AX
       1000:8d5d a3 86 47        MOV        [0x4786],AX
       1000:8d60 eb 79           JMP        LAB_1000_8ddb
                             LAB_1000_8d62                                   XREF[1]:     1000:8d48(j)  
       1000:8d62 80 3e e7        CMP        byte ptr [0x28e7],0x0
                 28 00
       1000:8d67 75 21           JNZ        LAB_1000_8d8a
       1000:8d69 c6 06 99        MOV        byte ptr [0x4799],0x1
                 47 01
       1000:8d6e c6 06 e4        MOV        byte ptr [0xdbe4],0xf
                 db 0f
       1000:8d73 bd 3c 22        MOV        BP,0x223c
       1000:8d76 33 c0           XOR        AX,AX
       1000:8d78 a3 8a 47        MOV        [0x478a],AX
       1000:8d7b 40              INC        AX
       1000:8d7c a3 88 47        MOV        [0x4788],AX
       1000:8d7f b8 10 00        MOV        AX,0x10
       1000:8d82 a3 84 47        MOV        [0x4784],AX
       1000:8d85 a3 86 47        MOV        [0x4786],AX
       1000:8d88 eb 51           JMP        LAB_1000_8ddb
                             LAB_1000_8d8a                                   XREF[1]:     1000:8d67(j)  
       1000:8d8a bd 24 22        MOV        BP,0x2224
       1000:8d8d b9 03 00        MOV        CX,0x3
                             LAB_1000_8d90                                   XREF[1]:     1000:8dbc(j)  
       1000:8d90 8b 46 04        MOV        AX,word ptr [BP + 0x4]
       1000:8d93 2b 06 84 47     SUB        AX,word ptr [0x4784]
       1000:8d97 2b 06 86 47     SUB        AX,word ptr [0x4786]
       1000:8d9b a3 8f 47        MOV        [0x478f],AX
       1000:8d9e 56              PUSH       SI
       1000:8d9f 51              PUSH       CX
       1000:8da0 e8 73 00        CALL       FUN_1000_8e16                                    undefined FUN_1000_8e16()
       1000:8da3 59              POP        CX
       1000:8da4 5e              POP        SI
       1000:8da5 a1 d0 a9        MOV        AX,[0xa9d0]
       1000:8da8 b4 0a           MOV        AH,0xa
       1000:8daa f6 e4           MUL        AH
       1000:8dac 03 06 88 47     ADD        AX,word ptr [0x4788]
       1000:8db0 03 06 8a 47     ADD        AX,word ptr [0x478a]
       1000:8db4 3b 46 06        CMP        AX,word ptr [BP + 0x6]
       1000:8db7 72 14           JC         LAB_1000_8dcd
       1000:8db9 83 c5 08        ADD        BP,0x8
       1000:8dbc e2 d2           LOOP       LAB_1000_8d90
       1000:8dbe 83 ed 08        SUB        BP,0x8
       1000:8dc1 33 c0           XOR        AX,AX
       1000:8dc3 a3 88 47        MOV        [0x4788],AX
       1000:8dc6 87 06 8a 47     XCHG       word ptr [0x478a],AX
       1000:8dca 0b c0           OR         AX,AX
       1000:8dcc c3              RET
                             LAB_1000_8dcd                                   XREF[1]:     1000:8db7(j)  
       1000:8dcd 49              DEC        CX
       1000:8dce 74 1e           JZ         LAB_1000_8dee
       1000:8dd0 bb 01 00        MOV        BX,0x1
       1000:8dd3 e8 e1 55        CALL       FUN_1000_e3b7                                    undefined FUN_1000_e3b7()
       1000:8dd6 74 16           JZ         LAB_1000_8dee
       1000:8dd8 83 c5 08        ADD        BP,0x8
                             LAB_1000_8ddb                                   XREF[5]:     1000:8cf8(j), 1000:8d18(j), 
                                                                                          1000:8d40(j), 1000:8d60(j), 
                                                                                          1000:8d88(j)  
       1000:8ddb 8b 46 04        MOV        AX,word ptr [BP + 0x4]
       1000:8dde 2b 06 84 47     SUB        AX,word ptr [0x4784]
       1000:8de2 2b 06 86 47     SUB        AX,word ptr [0x4786]
       1000:8de6 a3 8f 47        MOV        [0x478f],AX
       1000:8de9 56              PUSH       SI
       1000:8dea e8 29 00        CALL       FUN_1000_8e16                                    undefined FUN_1000_8e16()
       1000:8ded 5e              POP        SI
                             LAB_1000_8dee                                   XREF[2]:     1000:8dce(j), 1000:8dd6(j)  
       1000:8dee f8              CLC
       1000:8def c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8df0(void);
                             // C Signature: uint16_t FUN_1000_8df0(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //
                             undefined __cdecl16near FUN_1000_8df0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8df0                                   XREF[1]:     FUN_1000_8b11:1000:8b1e(c)  
       1000:8df0 f6 06 99        TEST       byte ptr [0x4799],0x1
                 47 01
       1000:8df5 74 1e           JZ         LAB_1000_8e15
       1000:8df7 56              PUSH       SI
       1000:8df8 be d0 a9        MOV        SI,0xa9d0
       1000:8dfb ad              LODSW      SI
       1000:8dfc 8b c8           MOV        CX,AX
                             LAB_1000_8dfe                                   XREF[1]:     1000:8e0b(j)  
       1000:8dfe ad              LODSW      SI
       1000:8dff 0b c0           OR         AX,AX
       1000:8e01 74 05           JZ         LAB_1000_8e08
       1000:8e03 83 3c 1e        CMP        word ptr [SI],0x1e
       1000:8e06 73 07           JNC        LAB_1000_8e0f
                             LAB_1000_8e08                                   XREF[1]:     1000:8e01(j)  
       1000:8e08 83 c6 04        ADD        SI,0x4
       1000:8e0b e2 f1           LOOP       LAB_1000_8dfe
       1000:8e0d 5e              POP        SI
       1000:8e0e c3              RET
                             LAB_1000_8e0f                                   XREF[1]:     1000:8e06(j)  
       1000:8e0f 80 26 99        AND        byte ptr [0x4799],0xfe
                 47 fe
       1000:8e14 5e              POP        SI
                             LAB_1000_8e15                                   XREF[1]:     1000:8df5(j)  
       1000:8e15 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8e16(uint16_t dx);
                             // C Signature: uint16_t FUN_1000_8e16(uint16_t dx);
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   DX (uint16_t): 16-bit input value in DX register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DH (uint8_t): 8-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x478f]
                             //   Read from: byte ptr [SI]
                             //   Write to: byte ptr [0x478c]
                             //   Write to: word ptr [DI + -0x4]
                             //   Write to: word ptr [DI + -0x2]
                             //
                             undefined __cdecl16near FUN_1000_8e16()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8e16                                   XREF[2]:     FUN_1000_8ccd:1000:8da0(c), 
                                                                                          FUN_1000_8ccd:1000:8dea(c)  
       1000:8e16 1e              PUSH       DS
       1000:8e17 07              POP        ES
       1000:8e18 c6 06 8c        MOV        byte ptr [0x478c],0x0
                 47 00
       1000:8e1d bf d2 a9        MOV        DI,0xa9d2
       1000:8e20 32 f6           XOR        DH,DH
       1000:8e22 8b 1e 8f 47     MOV        BX,word ptr [0x478f]
       1000:8e26 32 d2           XOR        DL,DL
                             LAB_1000_8e28                                   XREF[5]:     1000:8e37(j), 1000:8e49(j), 
                                                                                          1000:8e50(j), 1000:8e5b(j), 
                                                                                          1000:8e67(j)  
       1000:8e28 8a 04           MOV        AL,byte ptr [SI]
       1000:8e2a 0a c0           OR         AL,AL
       1000:8e2c 78 46           JS         LAB_1000_8e74
       1000:8e2e 3c 0d           CMP        AL,0xd
       1000:8e30 74 07           JZ         LAB_1000_8e39
       1000:8e32 3c 20           CMP        AL,0x20
       1000:8e34 75 15           JNZ        LAB_1000_8e4b
       1000:8e36 46              INC        SI
       1000:8e37 eb ef           JMP        LAB_1000_8e28
                             LAB_1000_8e39                                   XREF[1]:     1000:8e30(j)  
       1000:8e39 e8 62 00        CALL       FUN_1000_8e9e                                    undefined FUN_1000_8e9e()
       1000:8e3c c7 45 fc        MOV        word ptr [DI + -0x4],0x6
                 06 00
       1000:8e41 c7 45 fe        MOV        word ptr [DI + -0x2],0x0
                 00 00
       1000:8e46 32 d2           XOR        DL,DL
       1000:8e48 46              INC        SI
       1000:8e49 eb dd           JMP        LAB_1000_8e28
                             LAB_1000_8e4b                                   XREF[1]:     1000:8e34(j)  
       1000:8e4b e8 85 00        CALL       FUN_1000_8ed3                                    undefined FUN_1000_8ed3()
       1000:8e4e 0b c9           OR         CX,CX
       1000:8e50 74 d6           JZ         LAB_1000_8e28
       1000:8e52 83 c1 06        ADD        CX,0x6
                             LAB_1000_8e55                                   XREF[1]:     1000:8e72(j)  
       1000:8e55 2b d9           SUB        BX,CX
       1000:8e57 72 04           JC         LAB_1000_8e5d
       1000:8e59 fe c2           INC        DL
       1000:8e5b eb cb           JMP        LAB_1000_8e28
                             LAB_1000_8e5d                                   XREF[1]:     1000:8e57(j)  
       1000:8e5d 83 c3 06        ADD        BX,0x6
       1000:8e60 78 07           JS         LAB_1000_8e69
       1000:8e62 fe c2           INC        DL
       1000:8e64 e8 37 00        CALL       FUN_1000_8e9e                                    undefined FUN_1000_8e9e()
       1000:8e67 eb bf           JMP        LAB_1000_8e28
                             LAB_1000_8e69                                   XREF[1]:     1000:8e60(j)  
       1000:8e69 0a d2           OR         DL,DL
       1000:8e6b 74 2a           JZ         LAB_1000_8e97
       1000:8e6d 03 d9           ADD        BX,CX
       1000:8e6f e8 2c 00        CALL       FUN_1000_8e9e                                    undefined FUN_1000_8e9e()
       1000:8e72 eb e1           JMP        LAB_1000_8e55
                             LAB_1000_8e74                                   XREF[1]:     1000:8e2c(j)  
       1000:8e74 0a d2           OR         DL,DL
       1000:8e76 74 03           JZ         LAB_1000_8e7b
       1000:8e78 e8 23 00        CALL       FUN_1000_8e9e                                    undefined FUN_1000_8e9e()
                             LAB_1000_8e7b                                   XREF[1]:     1000:8e76(j)  
       1000:8e7b c7 45 fc        MOV        word ptr [DI + -0x4],0x6
                 06 00
       1000:8e80 c7 45 fe        MOV        word ptr [DI + -0x2],0x0
                 00 00
       1000:8e85 c7 05 00 00     MOV        word ptr [DI],0x0
       1000:8e89 c7 45 02        MOV        word ptr [DI + 0x2],0x0
                 00 00
       1000:8e8e 32 d2           XOR        DL,DL
       1000:8e90 86 f2           XCHG       DL,DH
       1000:8e92 89 16 d0 a9     MOV        word ptr [0xa9d0],DX
       1000:8e96 c3              RET
                             LAB_1000_8e97                                   XREF[1]:     1000:8e6b(j)  
       1000:8e97 c7 06 d0        MOV        word ptr [0xa9d0],0xc8
                 a9 c8 00
       1000:8e9d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_8e9e(void);
                             // C Signature: uint32_t FUN_1000_8e9e(void);
                             // Input/Output Parameters:
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BH (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DH (uint8_t): 8-bit value, both input and output (modified)
                             //   DL (uint8_t): 8-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x478f]
                             //   Read from: word ptr [0x478f]
                             //
                             undefined __cdecl16near FUN_1000_8e9e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8e9e                                   XREF[4]:     FUN_1000_8e16:1000:8e39(c), 
                                                                                          FUN_1000_8e16:1000:8e64(c), 
                                                                                          FUN_1000_8e16:1000:8e6f(c), 
                                                                                          FUN_1000_8e16:1000:8e78(c)  
       1000:8e9e 8b c2           MOV        AX,DX
       1000:8ea0 32 e4           XOR        AH,AH
       1000:8ea2 ab              STOSW      ES:DI
       1000:8ea3 00 06 8c 47     ADD        byte ptr [0x478c],AL
       1000:8ea7 0b c0           OR         AX,AX
       1000:8ea9 74 1f           JZ         LAB_1000_8eca
       1000:8eab 52              PUSH       DX
       1000:8eac 8b c3           MOV        AX,BX
       1000:8eae 8b da           MOV        BX,DX
       1000:8eb0 32 ff           XOR        BH,BH
       1000:8eb2 33 d2           XOR        DX,DX
       1000:8eb4 4b              DEC        BX
       1000:8eb5 74 02           JZ         LAB_1000_8eb9
       1000:8eb7 f7 f3           DIV        BX
                             LAB_1000_8eb9                                   XREF[1]:     1000:8eb5(j)  
       1000:8eb9 05 06 00        ADD        AX,0x6
       1000:8ebc ab              STOSW      ES:DI
       1000:8ebd 8b c2           MOV        AX,DX
       1000:8ebf ab              STOSW      ES:DI
       1000:8ec0 5a              POP        DX
       1000:8ec1 fe c6           INC        DH
       1000:8ec3 32 d2           XOR        DL,DL
       1000:8ec5 8b 1e 8f 47     MOV        BX,word ptr [0x478f]
       1000:8ec9 c3              RET
                             LAB_1000_8eca                                   XREF[1]:     1000:8ea9(j)  
       1000:8eca ab              STOSW      ES:DI
       1000:8ecb ab              STOSW      ES:DI
       1000:8ecc fe c6           INC        DH
       1000:8ece 8b 1e 8f 47     MOV        BX,word ptr [0x478f]
       1000:8ed2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8ed3(uint16_t si);
                             // C Signature: uint16_t FUN_1000_8ed3(uint16_t si);
                             // Input Parameters:
                             //   SI (uint16_t): 16-bit input value in SI register
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x47a0]
                             //   Write to: word ptr [0x47a0]
                             //   Write to: word ptr [0x47a0]
                             //
                             undefined __cdecl16near FUN_1000_8ed3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8ed3                                   XREF[1]:     FUN_1000_8e16:1000:8e4b(c)  
       1000:8ed3 33 c9           XOR        CX,CX
       1000:8ed5 53              PUSH       BX
       1000:8ed6 8b 1e a0 47     MOV        BX,word ptr [0x47a0]
                             LAB_1000_8eda                                   XREF[5]:     1000:8f02(j), 1000:8f07(j), 
                                                                                          1000:8f13(j), 1000:8f1b(j), 
                                                                                          1000:8f23(j)  
       1000:8eda ac              LODSB      SI
       1000:8edb 3c 20           CMP        AL,0x20
       1000:8edd 74 46           JZ         LAB_1000_8f25
       1000:8edf 3c 0d           CMP        AL,0xd
       1000:8ee1 74 42           JZ         LAB_1000_8f25
       1000:8ee3 0a c0           OR         AL,AL
       1000:8ee5 74 06           JZ         LAB_1000_8eed
       1000:8ee7 3c 09           CMP        AL,0x9
       1000:8ee9 72 1e           JC         LAB_1000_8f09
       1000:8eeb 78 38           JS         LAB_1000_8f25
                             LAB_1000_8eed                                   XREF[1]:     1000:8ee5(j)  
       1000:8eed 81 3e 18        CMP        word ptr [0x2518],0xd0ff
                 25 ff d0
       1000:8ef3 75 0f           JNZ        LAB_1000_8f04
       1000:8ef5 81 fe b1 a6     CMP        SI,0xa6b1
       1000:8ef9 75 09           JNZ        LAB_1000_8f04
       1000:8efb e8 e5 41        CALL       FUN_1000_d0e3                                    undefined FUN_1000_d0e3()
       1000:8efe 72 04           JC         LAB_1000_8f04
       1000:8f00 02 c8           ADD        CL,AL
       1000:8f02 eb d6           JMP        LAB_1000_8eda
                             LAB_1000_8f04                                   XREF[3]:     1000:8ef3(j), 1000:8ef9(j), 
                                                                                          1000:8efe(j)  
       1000:8f04 d7              XLAT       BX
       1000:8f05 02 c8           ADD        CL,AL
       1000:8f07 eb d1           JMP        LAB_1000_8eda
                             LAB_1000_8f09                                   XREF[1]:     1000:8ee9(j)  
       1000:8f09 3c 0d           CMP        AL,0xd
       1000:8f0b 74 18           JZ         LAB_1000_8f25
       1000:8f0d 3c 06           CMP        AL,0x6
       1000:8f0f 74 0c           JZ         LAB_1000_8f1d
       1000:8f11 3c 08           CMP        AL,0x8
       1000:8f13 75 c5           JNZ        LAB_1000_8eda
       1000:8f15 c7 06 a0        MOV        word ptr [0x47a0],0xceec
                 47 ec ce
       1000:8f1b eb bd           JMP        LAB_1000_8eda
                             LAB_1000_8f1d                                   XREF[1]:     1000:8f0f(j)  
       1000:8f1d c7 06 a0        MOV        word ptr [0x47a0],0xcf6c
                 47 6c cf
       1000:8f23 eb b5           JMP        LAB_1000_8eda
                             LAB_1000_8f25                                   XREF[4]:     1000:8edd(j), 1000:8ee1(j), 
                                                                                          1000:8eeb(j), 1000:8f0b(j)  
       1000:8f25 4e              DEC        SI
       1000:8f26 5b              POP        BX
       1000:8f27 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_8f28(void);
                             // C Signature: uint32_t FUN_1000_8f28(void);
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BP (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [BP + 0x0]
                             //   Read from: word ptr [BP + 0x2]
                             //   Read from: word ptr [BP + 0x4]
                             //   Write to: word ptr [0x479e]
                             //   Write to: [0x4791]
                             //   Write to: [0x4795]
                             //
                             undefined __cdecl16near FUN_1000_8f28()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8f28                                   XREF[1]:     FUN_1000_8b11:1000:8b1b(c)  
       1000:8f28 89 2e 9e 47     MOV        word ptr [0x479e],BP
       1000:8f2c bf e2 1b        MOV        DI,0x1be2
       1000:8f2f 1e              PUSH       DS
       1000:8f30 07              POP        ES
       1000:8f31 8b 46 00        MOV        AX,word ptr [BP + 0x0]
       1000:8f34 ab              STOSW      ES:DI
       1000:8f35 8b d0           MOV        DX,AX
       1000:8f37 03 06 84 47     ADD        AX,word ptr [0x4784]
       1000:8f3b a3 91 47        MOV        [0x4791],AX
       1000:8f3e a3 95 47        MOV        [0x4795],AX
       1000:8f41 8b 46 02        MOV        AX,word ptr [BP + 0x2]
       1000:8f44 ab              STOSW      ES:DI
       1000:8f45 8b d8           MOV        BX,AX
       1000:8f47 03 06 88 47     ADD        AX,word ptr [0x4788]
       1000:8f4b a3 93 47        MOV        [0x4793],AX
       1000:8f4e a3 97 47        MOV        [0x4797],AX
       1000:8f51 8b 46 04        MOV        AX,word ptr [BP + 0x4]
       1000:8f54 03 d0           ADD        DX,AX
       1000:8f56 2b 06 84 47     SUB        AX,word ptr [0x4784]
       1000:8f5a 2b 06 86 47     SUB        AX,word ptr [0x4786]
       1000:8f5e a3 8f 47        MOV        [0x478f],AX
       1000:8f61 8b 46 06        MOV        AX,word ptr [BP + 0x6]
       1000:8f64 03 d8           ADD        BX,AX
       1000:8f66 2b 06 88 47     SUB        AX,word ptr [0x4788]
       1000:8f6a 2b 06 8a 47     SUB        AX,word ptr [0x478a]
       1000:8f6e a3 8d 47        MOV        [0x478d],AX
       1000:8f71 8b c2           MOV        AX,DX
       1000:8f73 3d 40 01        CMP        AX,0x140
       1000:8f76 72 03           JC         LAB_1000_8f7b
       1000:8f78 b8 40 01        MOV        AX,0x140
                             LAB_1000_8f7b                                   XREF[1]:     1000:8f76(j)  
       1000:8f7b ab              STOSW      ES:DI
       1000:8f7c 8b c3           MOV        AX,BX
       1000:8f7e ab              STOSW      ES:DI
       1000:8f7f 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:8f84 75 4b           JNZ        FUN_1000_8fd1
       1000:8f86 80 3e c6        CMP        byte ptr [0xc6],0x0
                 00 00
       1000:8f8b 75 68           JNZ        LAB_1000_8ff5
       1000:8f8d 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:8f92 75 3c           JNZ        LAB_1000_8fd0
       1000:8f94 80 3e d9        CMP        byte ptr [0x46d9],0x0
                 46 00
       1000:8f99 75 35           JNZ        LAB_1000_8fd0
       1000:8f9b 80 3e e7        CMP        byte ptr [0x28e7],0x0
                 28 00
       1000:8fa0 74 69           JZ         LAB_1000_900b
       1000:8fa2 56              PUSH       SI
       1000:8fa3 be 60 4c        MOV        SI,0x4c60
       1000:8fa6 bd e2 1b        MOV        BP,0x1be2
       1000:8fa9 b8 80 00        MOV        AX,0x80
       1000:8fac 89 46 08        MOV        word ptr [BP + 0x8],AX
       1000:8faf a3 06 1c        MOV        [0x1c06],AX
       1000:8fb2 c7 46 0c        MOV        word ptr [BP + 0xc],0x9468
                 68 94
       1000:8fb7 8e 06 de db     MOV        ES,word ptr [0xdbde]
       1000:8fbb ff 1e 19 39     CALLF      [0x3919]
       1000:8fbf e8 75 31        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:8fc2 be e2 1b        MOV        SI,0x1be2
       1000:8fc5 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:8fc9 b8 1c 00        MOV        AX,0x1c
       1000:8fcc e8 a1 33        CALL       FUN_1000_c370                                    undefined FUN_1000_c370()
       1000:8fcf 5e              POP        SI
                             LAB_1000_8fd0                                   XREF[2]:     1000:8f92(j), 1000:8f99(j)  
       1000:8fd0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint16_t FUN_1000_8fd1(void);
                             // C Signature: uint16_t FUN_1000_8fd1(void);
                             // Input Parameters:
                             //   DS (uint16_t): Segment register input value
                             //   AL (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   SI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //
                             // Memory Access:
                             //   Read from: [0x18f2]
                             //   Read from: word ptr [0xdbda]
                             //   Read from: word ptr [0xdbd6]
                             //   Write to: word ptr [SI + 0x8]
                             //   Write to: word ptr [SI + 0xc]
                             //   Write to: [0x22fc]
                             //
                             undefined __cdecl16near FUN_1000_8fd1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_8fd1                                   XREF[2]:     FUN_1000_80df:1000:80e3(c), 
                                                                                          FUN_1000_8f28:1000:8f84(j)  
       1000:8fd1 56              PUSH       SI
       1000:8fd2 be e2 1b        MOV        SI,0x1be2
       1000:8fd5 c7 44 08        MOV        word ptr [SI + 0x8],0x80
                 80 00
       1000:8fda c7 44 0c        MOV        word ptr [SI + 0xc],0x7bed
                 ed 7b
       1000:8fdf 83 6c 02 02     SUB        word ptr [SI + 0x2],0x2
       1000:8fe3 a0 f2 18        MOV        AL,[0x18f2]
       1000:8fe6 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:8fea ff 1e dd 38     CALLF      [0x38dd]
       1000:8fee 83 06 e4        ADD        word ptr [0x1be4],0x2
                 1b 02
       1000:8ff3 5e              POP        SI
       1000:8ff4 c3              RET
                             LAB_1000_8ff5                                   XREF[1]:     1000:8f8b(j)  
       1000:8ff5 56              PUSH       SI
       1000:8ff6 b8 32 00        MOV        AX,0x32
       1000:8ff9 e8 42 31        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:8ffc b8 03 00        MOV        AX,0x3
       1000:8fff be 65 22        MOV        SI,0x2265
       1000:9002 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:9006 e8 67 33        CALL       FUN_1000_c370                                    undefined FUN_1000_c370()
       1000:9009 5e              POP        SI
       1000:900a c3              RET
                             LAB_1000_900b                                   XREF[1]:     1000:8fa0(j)  
       1000:900b bf 60 4c        MOV        DI,0x4c60
       1000:900e b9 60 59        MOV        CX,0x5960
       1000:9011 1e              PUSH       DS
       1000:9012 07              POP        ES
       1000:9013 32 c0           XOR        AL,AL
       1000:9015 f3 aa           STOSB.REP  ES:DI
       1000:9017 b8 6f 4c        MOV        AX,0x4c6f
       1000:901a 24 f0           AND        AL,0xf0
       1000:901c a3 fc 22        MOV        [0x22fc],AX
       1000:901f e8 63 30        CALL       FUN_1000_c085                                    undefined FUN_1000_c085()
       1000:9022 e9 70 f8        JMP        LAB_1000_8895
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: void FUN_1000_9025(void);
                             // C Signature: void FUN_1000_9025(void);
                             // Input/Output Parameters:
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CH (uint8_t): 8-bit output value in CH register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: word ptr [0x4793]
                             //   Read from: word ptr [0x22fc]
                             //   Read from: word ptr [0xdbda]
                             //   Write to: word ptr [0x4782]
                             //
                             undefined __cdecl16near FUN_1000_9025()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9025                                   XREF[1]:     FUN_1000_978e:1000:97c5(c)  
       1000:9025 8b 0e 93 47     MOV        CX,word ptr [0x4793]
       1000:9029 bb 92 00        MOV        BX,0x92
       1000:902c 2b d9           SUB        BX,CX
       1000:902e 33 d2           XOR        DX,DX
       1000:9030 b5 ff           MOV        CH,0xff
       1000:9032 bf 40 01        MOV        DI,0x140
       1000:9035 8b 36 fc 22     MOV        SI,word ptr [0x22fc]
       1000:9039 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:903d 89 1e 82 47     MOV        word ptr [0x4782],BX
       1000:9041 ff 1e c9 38     CALLF      [0x38c9]
       1000:9045 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_9046(uint8_t bl);
                             // C Signature: uint32_t FUN_1000_9046(uint8_t bl);
                             // Input Parameters:
                             //   BL (uint8_t): 8-bit input value in BL register
                             //   DS (uint16_t): Segment register input value
                             //   AH (uint8_t): 8-bit value, both input and output (modified)
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   DI (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   CX (uint16_t): 16-bit output value in CX register
                             //   DX (uint16_t): 16-bit output value in DX register
                             //
                             // Memory Access:
                             //   Read from: [0x4793]
                             //   Read from: word ptr [0x22fc]
                             //   Write to: byte ptr [DI + -0x2]
                             //   Write to: byte ptr [DI]
                             //   Write to: byte ptr [DI + 0xfebf]
                             //
                             undefined __cdecl16near FUN_1000_9046()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9046                                   XREF[1]:     FUN_1000_8b11:1000:8c83(c)  
       1000:9046 1e              PUSH       DS
       1000:9047 07              POP        ES
       1000:9048 a1 93 47        MOV        AX,[0x4793]
       1000:904b f7 26 40 22     MUL        word ptr [0x2240]
       1000:904f 8b c8           MOV        CX,AX
       1000:9051 8b 3e fc 22     MOV        DI,word ptr [0x22fc]
       1000:9055 b8 0f f0        MOV        AX,0xf00f
       1000:9058 33 db           XOR        BX,BX
       1000:905a 80 3e ea        CMP        byte ptr [0xea],0x0
                 00 00
       1000:905f 7e 02           JLE        LAB_1000_9063
       1000:9061 b4 08           MOV        AH,0x8
                             LAB_1000_9063                                   XREF[3]:     1000:905f(j), 1000:9083(j), 
                                                                                          1000:9089(j)  
       1000:9063 f2 ae           SCASB.RE   ES:DI
       1000:9065 75 24           JNZ        LAB_1000_908b
       1000:9067 38 5d fe        CMP        byte ptr [DI + -0x2],BL
       1000:906a 75 03           JNZ        LAB_1000_906f
       1000:906c 88 65 fe        MOV        byte ptr [DI + -0x2],AH
                             LAB_1000_906f                                   XREF[1]:     1000:906a(j)  
       1000:906f 38 1d           CMP        byte ptr [DI],BL
       1000:9071 75 02           JNZ        LAB_1000_9075
       1000:9073 88 25           MOV        byte ptr [DI],AH
                             LAB_1000_9075                                   XREF[1]:     1000:9071(j)  
       1000:9075 38 9d bf fe     CMP        byte ptr [DI + 0xfebf],BL
       1000:9079 75 04           JNZ        LAB_1000_907f
       1000:907b 88 a5 bf fe     MOV        byte ptr [DI + 0xfebf],AH
                             LAB_1000_907f                                   XREF[1]:     1000:9079(j)  
       1000:907f 38 9d 3f 01     CMP        byte ptr [DI + 0x13f],BL
       1000:9083 75 de           JNZ        LAB_1000_9063
       1000:9085 88 a5 3f 01     MOV        byte ptr [DI + 0x13f],AH
       1000:9089 eb d8           JMP        LAB_1000_9063
                             LAB_1000_908b                                   XREF[1]:     1000:9065(j)  
       1000:908b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             //
                             // C Signature: uint32_t FUN_1000_908c(void);
                             // C Signature: uint32_t FUN_1000_908c(void);
                             // Input/Output Parameters:
                             //   AX (uint16_t): 16-bit value, both input and output (modified)
                             //   BX (uint16_t): 16-bit value, both input and output (modified)
                             //   CX (uint16_t): 16-bit value, both input and output (modified)
                             //   DX (uint16_t): 16-bit value, both input and output (modified)
                             //
                             // Return Values:
                             //   BP (uint16_t): 16-bit output value in BP register
                             //   CH (uint8_t): 8-bit output value in CH register
                             //   DI (uint16_t): 16-bit output value in DI register
                             //   SI (uint16_t): 16-bit output value in SI register
                             //
                             // Memory Access:
                             //   Read from: [0xd83a]
                             //   Read from: word ptr [0x4793]
                             //   Read from: word ptr [0x22fc]
                             //
                             undefined __cdecl16near FUN_1000_908c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_908c                                   XREF[3]:     FUN_1000_99da:1000:9a0d(c), 
                                                                                          FUN_1000_9de3:1000:9e48(c), 
                                                                                          FUN_1000_9de3:1000:9e6a(c)  
       1000:908c a1 3a d8        MOV        AX,[0xd83a]
       1000:908f 3b 06 82 47     CMP        AX,word ptr [0x4782]
       1000:9093 76 27           JBE        LAB_1000_90bc
       1000:9095 81 3e 9e        CMP        word ptr [0x479e],0x223c
                 47 3c 22
       1000:909b 75 1f           JNZ        LAB_1000_90bc
       1000:909d 8b 0e 93 47     MOV        CX,word ptr [0x4793]
       1000:90a1 bb 92 00        MOV        BX,0x92
       1000:90a4 2b d9           SUB        BX,CX
       1000:90a6 33 d2           XOR        DX,DX
       1000:90a8 b5 ff           MOV        CH,0xff
       1000:90aa bf 40 01        MOV        DI,0x140
       1000:90ad 8b 36 fc 22     MOV        SI,word ptr [0x22fc]
       1000:90b1 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:90b5 bd 34 d8        MOV        BP,0xd834
       1000:90b8 ff 1e cd 38     CALLF      [0x38cd]
                             LAB_1000_90bc                                   XREF[2]:     1000:9093(j), 1000:909b(j)  
       1000:90bc c3              RET