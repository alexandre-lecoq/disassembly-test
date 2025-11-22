
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_90bd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_90bd                                   XREF[1]:     FUN_1000_93df:1000:9409(c)  
       1000:90bd 8a 44 0e        MOV        AL,byte ptr [SI + 0xe]
       1000:90c0 3c 0c           CMP        AL,0xc
       1000:90c2 74 15           JZ         LAB_1000_90d9
       1000:90c4 f7 06 12        TEST       word ptr [0x12],0x1000
                 00 00 10
       1000:90ca 74 0d           JZ         LAB_1000_90d9
       1000:90cc bb 9c 00        MOV        BX,0x9c
       1000:90cf ba 84 95        MOV        DX,0x9584
       1000:90d2 f6 06 a7        TEST       byte ptr [0x10a7],0x10
                 10 10
       1000:90d7 74 38           JZ         LAB_1000_9111
                             LAB_1000_90d9                                   XREF[2]:     1000:90c2(j), 1000:90ca(j)  
       1000:90d9 3c 0f           CMP        AL,0xf
       1000:90db bb 93 00        MOV        BX,0x93
       1000:90de ba 03 5a        MOV        DX,0x5a03
       1000:90e1 74 2e           JZ         LAB_1000_9111
       1000:90e3 3c 0e           CMP        AL,0xe
       1000:90e5 75 10           JNZ        LAB_1000_90f7
       1000:90e7 bb 96 00        MOV        BX,0x96
       1000:90ea ba c1 95        MOV        DX,0x95c1
       1000:90ed f6 06 0a        TEST       byte ptr [0xa],0x10
                 00 10
       1000:90f2 74 1d           JZ         LAB_1000_9111
       1000:90f4 43              INC        BX
       1000:90f5 eb 1a           JMP        LAB_1000_9111
                             LAB_1000_90f7                                   XREF[1]:     1000:90e5(j)  
       1000:90f7 8a 4c 0f        MOV        CL,byte ptr [SI + 0xf]
       1000:90fa bb 91 40        MOV        BX,0x4091
       1000:90fd f6 c1 80        TEST       CL,0x80
       1000:9100 75 0f           JNZ        LAB_1000_9111
       1000:9102 80 e7 bf        AND        BH,0xbf
       1000:9105 ba e2 95        MOV        DX,0x95e2
       1000:9108 f6 c1 40        TEST       CL,0x40
       1000:910b 74 04           JZ         LAB_1000_9111
       1000:910d 43              INC        BX
       1000:910e ba 33 95        MOV        DX,0x9533
                             LAB_1000_9111                                   XREF[6]:     1000:90d7(j), 1000:90e1(j), 
                                                                                          1000:90f2(j), 1000:90f5(j), 
                                                                                          1000:9100(j), 1000:910b(j)  
       1000:9111 bd 7e 1f        MOV        BP,0x1f7e
       1000:9114 89 5e 06        MOV        word ptr [BP + 0x6],BX
       1000:9117 89 56 08        MOV        word ptr [BP + 0x8],DX
       1000:911a e8 f9 41        CALL       FUN_1000_d316                                    undefined FUN_1000_d316()
       1000:911d bb cf 97        MOV        BX,0x97cf
       1000:9120 e9 15 42        JMP        FUN_1000_d338                                    undefined FUN_1000_d338()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9123()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9123                                   XREF[3]:     FUN_1000_3d2f:1000:3d58(c), 
                                                                                          FUN_1000_91a0:1000:91b8(c), 
                                                                                          FUN_1000_a6cc:1000:a72e(c)  
       1000:9123 3c 11           CMP        AL,0x11
       1000:9125 73 53           JNC        LAB_1000_917a
       1000:9127 32 e4           XOR        AH,AH
       1000:9129 3c 0d           CMP        AL,0xd
       1000:912b 72 46           JC         LAB_1000_9173
       1000:912d 75 0c           JNZ        LAB_1000_913b
       1000:912f 8b 3e 4e 11     MOV        DI,word ptr [0x114e]
       1000:9133 8a 25           MOV        AH,byte ptr [DI]
       1000:9135 d0 ec           SHR        AH,0x1
       1000:9137 fe c4           INC        AH
       1000:9139 eb 38           JMP        LAB_1000_9173
                             LAB_1000_913b                                   XREF[1]:     1000:912d(j)  
       1000:913b 8b 36 56 47     MOV        SI,word ptr [0x4756]
       1000:913f 3c 0e           CMP        AL,0xe
       1000:9141 74 12           JZ         LAB_1000_9155
       1000:9143 80 3e 2a        CMP        byte ptr [0x2a],0xc8
                 00 c8
       1000:9148 74 29           JZ         LAB_1000_9173
       1000:914a a0 6c 47        MOV        AL,[0x476c]
       1000:914d d1 e0           SHL        AX,0x1
       1000:914f 8b f0           MOV        SI,AX
       1000:9151 8b b4 58 47     MOV        SI,word ptr [SI + 0x4758]
                             LAB_1000_9155                                   XREF[1]:     1000:9141(j)  
       1000:9155 8a 04           MOV        AL,byte ptr [SI]
       1000:9157 52              PUSH       DX
       1000:9158 b2 03           MOV        DL,0x3
       1000:915a f6 f2           DIV        DL
       1000:915c b2 0f           MOV        DL,0xf
       1000:915e 0a e4           OR         AH,AH
       1000:9160 74 02           JZ         LAB_1000_9164
       1000:9162 b2 11           MOV        DL,0x11
                             LAB_1000_9164                                   XREF[2]:     1000:9160(j), 1000:916a(j)  
       1000:9164 3a c2           CMP        AL,DL
       1000:9166 72 04           JC         LAB_1000_916c
       1000:9168 2a c2           SUB        AL,DL
       1000:916a eb f8           JMP        LAB_1000_9164
                             LAB_1000_916c                                   XREF[1]:     1000:9166(j)  
       1000:916c 5a              POP        DX
       1000:916d 86 c4           XCHG       AH,AL
       1000:916f 04 0e           ADD        AL,0xe
                             LAB_1000_9171                                   XREF[1]:     1000:9195(j)  
       1000:9171 fe c4           INC        AH
                             LAB_1000_9173                                   XREF[3]:     1000:912b(j), 1000:9139(j), 
                                                                                          1000:9148(j)  
       1000:9173 88 26 d0 47     MOV        byte ptr [0x47d0],AH
       1000:9177 32 e4           XOR        AH,AH
       1000:9179 c3              RET
                             LAB_1000_917a                                   XREF[1]:     1000:9125(j)  
       1000:917a a1 02 00        MOV        AX,[0x2]
       1000:917d d1 e0           SHL        AX,0x1
       1000:917f d1 e0           SHL        AX,0x1
       1000:9181 80 fc 08        CMP        AH,0x8
       1000:9184 72 02           JC         LAB_1000_9188
       1000:9186 b4 08           MOV        AH,0x8
                             LAB_1000_9188                                   XREF[1]:     1000:9184(j)  
       1000:9188 d0 e4           SHL        AH,0x1
       1000:918a 80 3e f4        CMP        byte ptr [0xf4],0x10
                 00 10
       1000:918f f5              CMC
       1000:9190 80 d4 00        ADC        AH,0x0
       1000:9193 b0 2d           MOV        AL,0x2d
       1000:9195 eb da           JMP        LAB_1000_9171
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9197()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9197                                   XREF[7]:     FUN_1000_9381:1000:93bc(c), 
                                                                                          FUN_1000_99da:1000:99da(c), 
                                                                                          FUN_1000_9b49:1000:9b52(c), 
                                                                                          FUN_1000_9bac:1000:9bad(c), 
                                                                                          FUN_1000_9de3:1000:9dec(c), 
                                                                                          FUN_1000_9f1c:1000:9f1c(c), 
                                                                                          FUN_1000_a75c:1000:a75c(c)  
       1000:9197 a1 c4 47        MOV        AX,[0x47c4]
       1000:919a 3d ff ff        CMP        AX,0xffff
       1000:919d 75 01           JNZ        FUN_1000_91a0
       1000:919f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_91a0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_91a0                                   XREF[7]:     FUN_1000_0d8e:1000:0dfa(c), 
                                                                                          FUN_1000_79ee:1000:7a88(c), 
                                                                                          FUN_1000_79ee:1000:7aa5(c), 
                                                                                          FUN_1000_9197:1000:919d(j), 
                                                                                          FUN_1000_9381:1000:93b6(c), 
                                                                                          FUN_1000_978e:1000:9799(c), 
                                                                                          FUN_1000_9f9e:1000:9ff3(c)  
       1000:91a0 c7 06 f0        MOV        word ptr [0xf0],0x0
                 00 00 00
       1000:91a6 3d 0c 00        CMP        AX,0xc
       1000:91a9 75 0d           JNZ        LAB_1000_91b8
       1000:91ab f6 06 a7        TEST       byte ptr [0x10a7],0x10
                 10 10
       1000:91b0 74 06           JZ         LAB_1000_91b8
       1000:91b2 c7 06 f0        MOV        word ptr [0xf0],0xa
                 00 0a 00
                             LAB_1000_91b8                                   XREF[2]:     1000:91a9(j), 1000:91b0(j)  
       1000:91b8 e8 68 ff        CALL       FUN_1000_9123                                    undefined FUN_1000_9123()
       1000:91bb 3b 06 a6 22     CMP        AX,word ptr [0x22a6]
       1000:91bf 74 4e           JZ         FUN_1000_920f
       1000:91c1 50              PUSH       AX
       1000:91c2 e8 ed 06        CALL       FUN_1000_98b2                                    undefined FUN_1000_98b2()
       1000:91c5 58              POP        AX
       1000:91c6 a3 a6 22        MOV        [0x22a6],AX
       1000:91c9 8b f0           MOV        SI,AX
       1000:91cb e8 41 00        CALL       FUN_1000_920f                                    undefined FUN_1000_920f()
       1000:91ce 8a 84 a8 22     MOV        AL,byte ptr [SI + 0x22a8]
       1000:91d2 32 e4           XOR        AH,AH
       1000:91d4 a3 24 22        MOV        [0x2224],AX
       1000:91d7 a3 2c 22        MOV        [0x222c],AX
       1000:91da a3 34 22        MOV        [0x2234],AX
       1000:91dd 1e              PUSH       DS
       1000:91de 1e              PUSH       DS
       1000:91df 07              POP        ES
       1000:91e0 c5 36 b0 db     LDS        SI,[0xdbb0]
       1000:91e4 8b 1c           MOV        BX,word ptr [SI]
       1000:91e6 03 70 fe        ADD        SI,word ptr [BX + SI + -0x2]
       1000:91e9 83 c6 04        ADD        SI,0x4
       1000:91ec bf f0 1b        MOV        DI,0x1bf0
       1000:91ef a5              MOVSW      ES:DI,SI
       1000:91f0 a5              MOVSW      ES:DI,SI
       1000:91f1 a5              MOVSW      ES:DI,SI
       1000:91f2 a5              MOVSW      ES:DI,SI
       1000:91f3 8b c6           MOV        AX,SI
       1000:91f5 05 02 00        ADD        AX,0x2
       1000:91f8 36 a3 cc 47     MOV        SS:[0x47cc],AX
       1000:91fc 03 34           ADD        SI,word ptr [SI]
       1000:91fe 8b 1c           MOV        BX,word ptr [SI]
       1000:9200 8b fe           MOV        DI,SI
       1000:9202 03 78 fe        ADD        DI,word ptr [BX + SI + -0x2]
       1000:9205 1f              POP        DS
       1000:9206 89 36 ca 47     MOV        word ptr [0x47ca],SI
       1000:920a 89 3e d2 47     MOV        word ptr [0x47d2],DI
       1000:920e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_920f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_920f                                   XREF[4]:     FUN_1000_91a0:1000:91bf(j), 
                                                                                          FUN_1000_91a0:1000:91cb(c), 
                                                                                          FUN_1000_99be:1000:99cb(c), 
                                                                                          FUN_1000_99be:1000:99d7(c)  
       1000:920f 05 02 00        ADD        AX,0x2
       1000:9212 e9 29 2f        JMP        FUN_1000_c13e                                    undefined FUN_1000_c13e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9215()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9215                                   XREF[1]:     FUN_1000_d815:1000:d90a(c)  
       1000:9215 e8 03 42        CALL       FUN_1000_d41b                                    undefined FUN_1000_d41b()
       1000:9218 81 fd 0e 1f     CMP        BP,0x1f0e
       1000:921c 75 2a           JNZ        LAB_1000_9248
       1000:921e 80 3e c9        CMP        byte ptr [0x11c9],0x0
                 11 00
       1000:9223 75 5c           JNZ        LAB_1000_9281
       1000:9225 e8 5d 00        CALL       FUN_1000_9285                                    undefined FUN_1000_9285()
       1000:9228 73 39           JNC        LAB_1000_9263
       1000:922a 80 f9 2f        CMP        CL,0x2f
       1000:922d 74 53           JZ         LAB_1000_9282
       1000:922f 80 f9 0f        CMP        CL,0xf
       1000:9232 73 0c           JNC        LAB_1000_9240
                             LAB_1000_9234                                   XREF[1]:     1000:9261(j)  
       1000:9234 b0 10           MOV        AL,0x10
       1000:9236 f6 e1           MUL        CL
       1000:9238 05 d8 0f        ADD        AX,0xfd8
       1000:923b 8b f0           MOV        SI,AX
       1000:923d ff 64 04        JMP        word ptr [SI + 0x4]
                             LAB_1000_9240                                   XREF[1]:     1000:9232(j)  
       1000:9240 80 e9 0f        SUB        CL,0xf
       1000:9243 8a c1           MOV        AL,CL
       1000:9245 e9 39 01        JMP        FUN_1000_9381                                    undefined FUN_1000_9381()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_9248                                   XREF[1]:     1000:921c(j)  
       1000:9248 81 fd 7e 1f     CMP        BP,0x1f7e
       1000:924c 75 33           JNZ        LAB_1000_9281
       1000:924e e8 78 00        CALL       FUN_1000_92c9                                    undefined FUN_1000_92c9()
       1000:9251 73 2e           JNC        LAB_1000_9281
       1000:9253 3b 0e c4 47     CMP        CX,word ptr [0x47c4]
       1000:9257 75 03           JNZ        LAB_1000_925c
       1000:9259 e9 ff 01        JMP        FUN_1000_945b                                    undefined FUN_1000_945b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_925c                                   XREF[1]:     1000:9257(j)  
       1000:925c 51              PUSH       CX
       1000:925d e8 5d 40        CALL       FUN_1000_d2bd                                    undefined FUN_1000_d2bd()
       1000:9260 59              POP        CX
       1000:9261 eb d1           JMP        LAB_1000_9234
                             LAB_1000_9263                                   XREF[1]:     1000:9228(j)  
       1000:9263 80 3e 0b        CMP        byte ptr [0xb],0x1
                 00 01
       1000:9268 75 17           JNZ        LAB_1000_9281
       1000:926a 81 fb 98 00     CMP        BX,0x98
       1000:926e 73 11           JNC        LAB_1000_9281
       1000:9270 80 3e 08        CMP        byte ptr [0x8],0x21
                 00 21
       1000:9275 74 0a           JZ         LAB_1000_9281
       1000:9277 80 3e 2b        CMP        byte ptr [0x2b],0x0
                 00 00
       1000:927c 75 03           JNZ        LAB_1000_9281
       1000:927e e9 94 ac        JMP        FUN_1000_3f15                                    undefined FUN_1000_3f15()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_9281                                   XREF[10]:    1000:9223(j), 1000:924c(j), 
                                                                                          1000:9251(j), 1000:9268(j), 
                                                                                          1000:926e(j), 1000:9275(j), 
                                                                                          1000:927c(j), 
                                                                                          FUN_1000_92c9:1000:92d2(j), 
                                                                                          FUN_1000_92c9:1000:92da(j), 
                                                                                          FUN_1000_92c9:1000:92e3(j)  
       1000:9281 c3              RET
                             LAB_1000_9282                                   XREF[1]:     1000:922d(j)  
       1000:9282 e9 64 b0        JMP        FUN_1000_42e9                                    undefined FUN_1000_42e9()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9285()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9285                                   XREF[2]:     FUN_1000_9215:1000:9225(c), 
                                                                                          FUN_1000_d50f:1000:d546(c)  
       1000:9285 81 fb 98 00     CMP        BX,0x98
       1000:9289 73 3e           JNC        FUN_1000_92c9
       1000:928b be f8 47        MOV        SI,0x47f8
       1000:928e b9 17 00        MOV        CX,0x17
                             LAB_1000_9291                                   XREF[1]:     1000:92a9(j)  
       1000:9291 ad              LODSW      SI
       1000:9292 8b f8           MOV        DI,AX
       1000:9294 ad              LODSW      SI
       1000:9295 8b e8           MOV        BP,AX
       1000:9297 0b ff           OR         DI,DI
       1000:9299 78 0e           JS         LAB_1000_92a9
       1000:929b 2b fa           SUB        DI,DX
       1000:929d 83 ff e0        CMP        DI,-0x20
       1000:92a0 72 07           JC         LAB_1000_92a9
       1000:92a2 2b eb           SUB        BP,BX
       1000:92a4 83 fd b0        CMP        BP,-0x50
       1000:92a7 73 42           JNC        LAB_1000_92eb
                             LAB_1000_92a9                                   XREF[2]:     1000:9299(j), 1000:92a0(j)  
       1000:92a9 e2 e6           LOOP       LAB_1000_9291
       1000:92ab a1 2d 47        MOV        AX,[0x472d]
       1000:92ae 0b c0           OR         AX,AX
       1000:92b0 74 16           JZ         LAB_1000_92c8
       1000:92b2 2b c2           SUB        AX,DX
       1000:92b4 3d b2 ff        CMP        AX,0xffb2
       1000:92b7 f5              CMC
       1000:92b8 73 0e           JNC        LAB_1000_92c8
       1000:92ba 8b c3           MOV        AX,BX
       1000:92bc 2b 06 2f 47     SUB        AX,word ptr [0x472f]
       1000:92c0 3d 3c 00        CMP        AX,0x3c
       1000:92c3 73 03           JNC        LAB_1000_92c8
       1000:92c5 b9 2f 00        MOV        CX,0x2f
                             LAB_1000_92c8                                   XREF[3]:     1000:92b0(j), 1000:92b8(j), 
                                                                                          1000:92c3(j)  
       1000:92c8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_92c9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_92c9                                   XREF[3]:     FUN_1000_9215:1000:924e(c), 
                                                                                          FUN_1000_9285:1000:9289(j), 
                                                                                          FUN_1000_d50f:1000:d5a4(c)  
       1000:92c9 33 c9           XOR        CX,CX
       1000:92cb 8a 0e 52 11     MOV        CL,byte ptr [0x1152]
       1000:92cf 80 f9 ff        CMP        CL,0xff
       1000:92d2 74 ad           JZ         LAB_1000_9281
       1000:92d4 bf 0c 1c        MOV        DI,0x1c0c
       1000:92d7 e8 24 44        CALL       FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
       1000:92da 72 a5           JC         LAB_1000_9281
       1000:92dc 8a 0e 53 11     MOV        CL,byte ptr [0x1153]
       1000:92e0 80 f9 ff        CMP        CL,0xff
       1000:92e3 74 9c           JZ         LAB_1000_9281
       1000:92e5 bf 1a 1c        MOV        DI,0x1c1a
       1000:92e8 e9 13 44        JMP        FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_92eb                                   XREF[1]:     1000:92a7(j)  
       1000:92eb 83 e9 17        SUB        CX,0x17
       1000:92ee f7 d9           NEG        CX
       1000:92f0 f9              STC
       1000:92f1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9381()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9381                                   XREF[1]:     FUN_1000_9215:1000:9245(c)  
       1000:9381 3c 09           CMP        AL,0x9
       1000:9383 72 02           JC         LAB_1000_9387
       1000:9385 33 c0           XOR        AX,AX
                             LAB_1000_9387                                   XREF[1]:     1000:9383(j)  
       1000:9387 3c 08           CMP        AL,0x8
       1000:9389 75 09           JNZ        LAB_1000_9394
       1000:938b a0 6b 47        MOV        AL,[0x476b]
       1000:938e fe c8           DEC        AL
       1000:9390 79 02           JNS        LAB_1000_9394
       1000:9392 33 c0           XOR        AX,AX
                             LAB_1000_9394                                   XREF[2]:     1000:9389(j), 1000:9390(j)  
       1000:9394 a2 6c 47        MOV        [0x476c],AL
       1000:9397 be 58 47        MOV        SI,0x4758
       1000:939a 32 e4           XOR        AH,AH
       1000:939c 03 c0           ADD        AX,AX
       1000:939e 03 f0           ADD        SI,AX
       1000:93a0 8b 34           MOV        SI,word ptr [SI]
       1000:93a2 e8 19 8b        CALL       FUN_1000_1ebe                                    undefined FUN_1000_1ebe()
       1000:93a5 e8 4e 9e        CALL       FUN_1000_31f6                                    undefined FUN_1000_31f6()
       1000:93a8 b0 0f           MOV        AL,0xf
                             LAB_1000_93aa                                   XREF[1]:     FUN_1000_945b:1000:9465(j)  
       1000:93aa 32 e4           XOR        AH,AH
       1000:93ac c7 06 e1        MOV        word ptr [0x47e1],0x0
                 47 00 00
       1000:93b2 50              PUSH       AX
       1000:93b3 a3 c4 47        MOV        [0x47c4],AX
       1000:93b6 e8 e7 fd        CALL       FUN_1000_91a0                                    undefined FUN_1000_91a0()
       1000:93b9 e8 3d a7        CALL       FUN_1000_3af9                                    undefined FUN_1000_3af9()
       1000:93bc e8 d8 fd        CALL       FUN_1000_9197                                    undefined FUN_1000_9197()
       1000:93bf e8 46 05        CALL       FUN_1000_9908                                    undefined FUN_1000_9908()
       1000:93c2 8b 36 c8 47     MOV        SI,word ptr [0x47c8]
       1000:93c6 c7 06 40        MOV        word ptr [0x4540],0x0
                 45 00 00
       1000:93cc e8 dd 07        CALL       FUN_1000_9bac                                    undefined FUN_1000_9bac()
       1000:93cf e8 62 84        CALL       FUN_1000_1834                                    undefined FUN_1000_1834()
       1000:93d2 e8 1f 2d        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:93d5 e8 05 31        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
       1000:93d8 58              POP        AX
       1000:93d9 e8 03 00        CALL       FUN_1000_93df                                    undefined FUN_1000_93df()
       1000:93dc e9 93 00        JMP        FUN_1000_9472                                    undefined FUN_1000_9472()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_93df()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_93df                                   XREF[2]:     FUN_1000_3551:1000:35a6(c), 
                                                                                          FUN_1000_9381:1000:93d9(c)  
       1000:93df 8a c8           MOV        CL,AL
       1000:93e1 d0 e0           SHL        AL,0x1
       1000:93e3 d0 e0           SHL        AL,0x1
       1000:93e5 d0 e0           SHL        AL,0x1
       1000:93e7 a3 be 47        MOV        [0x47be],AX
       1000:93ea b8 01 00        MOV        AX,0x1
       1000:93ed d3 e0           SHL        AX,CL
       1000:93ef 09 06 0e 00     OR         word ptr [0xe],AX
       1000:93f3 09 06 14 00     OR         word ptr [0x14],AX
       1000:93f7 b0 10           MOV        AL,0x10
       1000:93f9 f6 e1           MUL        CL
       1000:93fb 05 d8 0f        ADD        AX,0xfd8
       1000:93fe a3 a2 47        MOV        [0x47a2],AX
       1000:9401 8b f0           MOV        SI,AX
       1000:9403 c7 06 ba        MOV        word ptr [0x47ba],0x0
                 47 00 00
       1000:9409 e8 b1 fc        CALL       FUN_1000_90bd                                    undefined FUN_1000_90bd()
       1000:940c c7 06 b6        MOV        word ptr [0x47b6],0x0
                 47 00 00
       1000:9412 c6 06 c2        MOV        byte ptr [0x47c2],0x80
                 47 80
       1000:9417 c6 06 19        MOV        byte ptr [0x19],0x0
                 00 00
       1000:941c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_945b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_945b                                   XREF[1]:     FUN_1000_9215:1000:9259(c)  
       1000:945b 83 3e 9e        CMP        word ptr [0x479e],0x0
                 47 00
       1000:9460 75 06           JNZ        LAB_1000_9468
       1000:9462 a1 c4 47        MOV        AX,[0x47c4]
       1000:9465 e9 42 ff        JMP        LAB_1000_93aa
                             LAB_1000_9468                                   XREF[1]:     1000:9460(j)  
       1000:9468 e8 b0 3f        CALL       FUN_1000_d41b                                    undefined FUN_1000_d41b()
       1000:946b 81 fd fe 1f     CMP        BP,0x1ffe
       1000:946f 75 01           JNZ        FUN_1000_9472
       1000:9471 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9472()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9472                                   XREF[2]:     FUN_1000_9381:1000:93dc(c), 
                                                                                          FUN_1000_945b:1000:946f(j)  
       1000:9472 e8 cb 0a        CALL       FUN_1000_9f40                                    undefined FUN_1000_9f40()
       1000:9475 c6 06 6d        MOV        byte ptr [0x226d],0xa
                 22 0a
       1000:947a c6 06 1b        MOV        byte ptr [0x1b],0x0
                 00 00
       1000:947f 83 3e b6        CMP        word ptr [0x47b6],0x0
                 47 00
       1000:9484 75 57           JNZ        LAB_1000_94dd
       1000:9486 8b 36 ba 47     MOV        SI,word ptr [0x47ba]
       1000:948a 0b f6           OR         SI,SI
       1000:948c 75 0c           JNZ        LAB_1000_949a
       1000:948e 8b 36 be 47     MOV        SI,word ptr [0x47be]
                             LAB_1000_9492                                   XREF[2]:     1000:94b7(j), 1000:94d8(j)  
       1000:9492 8b c6           MOV        AX,SI
       1000:9494 d1 e6           SHL        SI,0x1
       1000:9496 8b b4 76 aa     MOV        SI,word ptr [SI + 0xaa76]
                             LAB_1000_949a                                   XREF[1]:     1000:948c(j)  
       1000:949a 83 fe ff        CMP        SI,-0x1
       1000:949d 74 1a           JZ         LAB_1000_94b9
       1000:949f e8 a7 06        CALL       FUN_1000_9b49                                    undefined FUN_1000_9b49()
       1000:94a2 e8 f9 0a        CALL       FUN_1000_9f9e                                    undefined FUN_1000_9f9e()
                             LAB_1000_94a5                                   XREF[1]:     1000:94f1(j)  
       1000:94a5 89 36 ba 47     MOV        word ptr [0x47ba],SI
       1000:94a9 73 2f           JNC        LAB_1000_94da
       1000:94ab a1 be 47        MOV        AX,[0x47be]
       1000:94ae 40              INC        AX
       1000:94af a3 be 47        MOV        [0x47be],AX
       1000:94b2 8b f0           MOV        SI,AX
       1000:94b4 25 03 00        AND        AX,0x3
       1000:94b7 75 d9           JNZ        LAB_1000_9492
                             LAB_1000_94b9                                   XREF[1]:     1000:949d(j)  
       1000:94b9 83 3e c4        CMP        word ptr [0x47c4],0xd
                 47 0d
       1000:94be 74 03           JZ         LAB_1000_94c3
       1000:94c0 e9 1f 3e        JMP        FUN_1000_d2e2                                    undefined FUN_1000_d2e2()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_94c3                                   XREF[1]:     1000:94be(j)  
       1000:94c3 83 fe ff        CMP        SI,-0x1
       1000:94c6 75 04           JNZ        LAB_1000_94cc
       1000:94c8 8b 36 be 47     MOV        SI,word ptr [0x47be]
                             LAB_1000_94cc                                   XREF[1]:     1000:94c6(j)  
       1000:94cc 83 e6 f8        AND        SI,0xfff8
       1000:94cf 89 36 be 47     MOV        word ptr [0x47be],SI
       1000:94d3 c6 06 c2        MOV        byte ptr [0x47c2],0x20
                 47 20
       1000:94d8 eb b8           JMP        LAB_1000_9492
                             LAB_1000_94da                                   XREF[1]:     1000:94a9(j)  
       1000:94da e9 a3 3d        JMP        FUN_1000_d280                                    undefined FUN_1000_d280()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_94dd                                   XREF[1]:     1000:9484(j)  
       1000:94dd c5 36 b6 47     LDS        SI,[0x47b6]
       1000:94e1 e8 ee f3        CALL       FUN_1000_88d2                                    undefined FUN_1000_88d2()
       1000:94e4 8b 36 ba 47     MOV        SI,word ptr [0x47ba]
       1000:94e8 81 06 80        ADD        word ptr [0x4780],0x1000
                 47 00 10
       1000:94ee e8 4e 0b        CALL       FUN_1000_a03f                                    undefined FUN_1000_a03f()
       1000:94f1 eb b2           JMP        LAB_1000_94a5
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_94f3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_94f3                                   XREF[1]:     FUN_1000_9f9e:1000:9fa2(c)  
       1000:94f3 83 3e c4        CMP        word ptr [0x47c4],0x10
                 47 10
       1000:94f8 73 38           JNC        LAB_1000_9532
       1000:94fa 56              PUSH       SI
       1000:94fb 8b 36 a2 47     MOV        SI,word ptr [0x47a2]
       1000:94ff 8a 44 0f        MOV        AL,byte ptr [SI + 0xf]
       1000:9502 a2 18 00        MOV        [0x18],AL
       1000:9505 a8 40           TEST       AL,0x40
       1000:9507 8b 44 08        MOV        AX,word ptr [SI + 0x8]
       1000:950a 75 03           JNZ        LAB_1000_950f
       1000:950c 8b 44 0a        MOV        AX,word ptr [SI + 0xa]
                             LAB_1000_950f                                   XREF[1]:     1000:950a(j)  
       1000:950f 2b 06 02 00     SUB        AX,word ptr [0x2]
       1000:9513 f7 d8           NEG        AX
       1000:9515 a3 16 00        MOV        [0x16],AX
       1000:9518 5e              POP        SI
       1000:9519 80 3e 2a        CMP        byte ptr [0x2a],0x64
                 00 64
       1000:951e 73 12           JNC        LAB_1000_9532
       1000:9520 83 3e c4        CMP        word ptr [0x47c4],0x9
                 47 09
       1000:9525 73 0b           JNC        LAB_1000_9532
       1000:9527 8b 3e db 11     MOV        DI,word ptr [0x11db]
       1000:952b 0b ff           OR         DI,DI
       1000:952d 74 03           JZ         LAB_1000_9532
       1000:952f e8 66 99        CALL       FUN_1000_2e98                                    undefined FUN_1000_2e98()
                             LAB_1000_9532                                   XREF[4]:     1000:94f8(j), 1000:951e(j), 
                                                                                          1000:9525(j), 1000:952d(j)  
       1000:9532 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9556()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9556                                   XREF[1]:     FUN_1000_40e6:1000:40f2(c)  
       1000:9556 80 64 0f bf     AND        byte ptr [SI + 0xf],0xbf
       1000:955a bb 02 00        MOV        BX,0x2
       1000:955d e8 0d 00        CALL       FUN_1000_956d                                    undefined FUN_1000_956d()
       1000:9560 8a 4c 0e        MOV        CL,byte ptr [SI + 0xe]
       1000:9563 b8 fe ff        MOV        AX,0xfffe
       1000:9566 d3 c0           ROL        AX,CL
       1000:9568 21 06 10 00     AND        word ptr [0x10],AX
       1000:956c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_956d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_956d                                   XREF[1]:     FUN_1000_9556:1000:955d(c)  
       1000:956d 8b eb           MOV        BP,BX
       1000:956f 83 f5 02        XOR        BP,0x2
       1000:9572 a1 02 00        MOV        AX,[0x2]
       1000:9575 2b 42 08        SUB        AX,word ptr [BP + SI + 0x8]
       1000:9578 3d 02 00        CMP        AX,0x2
       1000:957b 72 06           JC         LAB_1000_9583
       1000:957d a1 02 00        MOV        AX,[0x2]
       1000:9580 89 40 08        MOV        word ptr [BX + SI + 0x8],AX
                             LAB_1000_9583                                   XREF[1]:     1000:957b(j)  
       1000:9583 c3              RET
                             LAB_1000_961a                                   XREF[1]:     1000:9664(j)  
       1000:961a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9655()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9655                                   XREF[1]:     FUN_1000_40e6:1000:40f5(c)  
       1000:9655 8a 4c 0e        MOV        CL,byte ptr [SI + 0xe]
       1000:9658 bf 53 11        MOV        DI,0x1153
       1000:965b b0 ff           MOV        AL,0xff
       1000:965d 38 0d           CMP        byte ptr [DI],CL
       1000:965f 74 08           JZ         LAB_1000_9669
       1000:9661 4f              DEC        DI
       1000:9662 38 0d           CMP        byte ptr [DI],CL
       1000:9664 75 b4           JNZ        LAB_1000_961a
       1000:9666 86 45 01        XCHG       byte ptr [DI + 0x1],AL
                             LAB_1000_9669                                   XREF[1]:     1000:965f(j)  
       1000:9669 88 05           MOV        byte ptr [DI],AL
       1000:966b c6 85 d0        MOV        byte ptr [DI + 0x10d0],0x0
                 10 00
       1000:9670 e9 f0 40        JMP        FUN_1000_d763                                    undefined FUN_1000_d763()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_96b5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_96b5                                   XREF[1]:     FUN_1000_b17a:1000:b183(c)  
       1000:96b5 ff 36 c4 47     PUSH       word ptr [0x47c4]
       1000:96b9 ff 36 c2 47     PUSH       word ptr [0x47c2]
       1000:96bd c7 06 c4        MOV        word ptr [0x47c4],0x10
                 47 10 00
       1000:96c3 c6 06 c2        MOV        byte ptr [0x47c2],0x80
                 47 80
       1000:96c8 8b 36 84 ab     MOV        SI,word ptr [0xab84]
       1000:96cc e8 cf 08        CALL       FUN_1000_9f9e                                    undefined FUN_1000_9f9e()
       1000:96cf 8f 06 c2 47     POP        word ptr [0x47c2]
       1000:96d3 8f 06 c4 47     POP        word ptr [0x47c4]
       1000:96d7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_96d8()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_96d8                                   XREF[2]:     FUN_1000_2ad8:1000:2b14(c), 
                                                                                          FUN_1000_35ad:1000:3624(c)  
       1000:96d8 a3 c4 47        MOV        [0x47c4],AX
       1000:96db fe 06 dc 47     INC        byte ptr [0x47dc]
       1000:96df b8 10 00        MOV        AX,0x10
       1000:96e2 e8 1d 00        CALL       FUN_1000_9702                                    undefined FUN_1000_9702()
       1000:96e5 c7 06 ea        MOV        word ptr [0x1bea],0x0
                 1b 00 00
       1000:96eb c6 06 dc        MOV        byte ptr [0x47dc],0x0
                 47 00
       1000:96f0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9702()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9702                                   XREF[1]:     FUN_1000_96d8:1000:96e2(c)  
       1000:9702 d1 e0           SHL        AX,0x1
       1000:9704 d1 e0           SHL        AX,0x1
       1000:9706 d1 e0           SHL        AX,0x1
       1000:9708 0d 04 00        OR         AX,0x4
       1000:970b 8b f0           MOV        SI,AX
       1000:970d d1 e6           SHL        SI,0x1
       1000:970f 8b b4 76 aa     MOV        SI,word ptr [SI + 0xaa76]
       1000:9713 e8 2a 08        CALL       FUN_1000_9f40                                    undefined FUN_1000_9f40()
       1000:9716 e9 72 08        JMP        FUN_1000_9f8b                                    undefined FUN_1000_9f8b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_978e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_978e                                   XREF[3]:     FUN_1000_2e52:1000:2e94(c), 
                                                                                          FUN_1000_368b:1000:36c1(c), 
                                                                                          FUN_1000_a03f:1000:a0b9(c)  
       1000:978e e8 39 b3        CALL       FUN_1000_4aca                                    undefined FUN_1000_4aca()
       1000:9791 a1 c4 47        MOV        AX,[0x47c4]
       1000:9794 3d ff ff        CMP        AX,0xffff
       1000:9797 74 35           JZ         LAB_1000_97ce
       1000:9799 e8 04 fa        CALL       FUN_1000_91a0                                    undefined FUN_1000_91a0()
       1000:979c e8 69 01        CALL       FUN_1000_9908                                    undefined FUN_1000_9908()
       1000:979f 83 3e 9e        CMP        word ptr [0x479e],0x0
                 47 00
       1000:97a4 74 06           JZ         LAB_1000_97ac
       1000:97a6 be e2 1b        MOV        SI,0x1be2
       1000:97a9 e8 cb 2c        CALL       FUN_1000_c477                                    undefined FUN_1000_c477()
                             LAB_1000_97ac                                   XREF[1]:     1000:97a4(j)  
       1000:97ac 8b 36 c8 47     MOV        SI,word ptr [0x47c8]
       1000:97b0 0b f6           OR         SI,SI
       1000:97b2 74 14           JZ         LAB_1000_97c8
       1000:97b4 c7 06 40        MOV        word ptr [0x4540],0x0
                 45 00 00
       1000:97ba e8 ef 03        CALL       FUN_1000_9bac                                    undefined FUN_1000_9bac()
       1000:97bd 81 3e 9e        CMP        word ptr [0x479e],0x223c
                 47 3c 22
       1000:97c3 75 03           JNZ        LAB_1000_97c8
       1000:97c5 e8 5d f8        CALL       FUN_1000_9025                                    undefined FUN_1000_9025()
                             LAB_1000_97c8                                   XREF[2]:     1000:97b2(j), 1000:97c3(j)  
       1000:97c8 e8 29 29        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:97cb e9 0f 2d        JMP        FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_97ce                                   XREF[1]:     1000:9797(j)  
       1000:97ce c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_98b2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_98b2                                   XREF[3]:     FUN_1000_36d3:1000:36da(c), 
                                                                                          FUN_1000_42e9:1000:42e9(c), 
                                                                                          FUN_1000_91a0:1000:91c2(c)  
       1000:98b2 80 3e c3        CMP        byte ptr [0x47c3],0x0
                 47 00
       1000:98b7 75 2c           JNZ        LAB_1000_98e5
       1000:98b9 33 c0           XOR        AX,AX
       1000:98bb a3 40 45        MOV        [0x4540],AX
       1000:98be 80 26 d1        AND        byte ptr [0x47d1],0x3f
                 47 3f
       1000:98c3 87 06 c8 47     XCHG       word ptr [0x47c8],AX
       1000:98c7 0b c0           OR         AX,AX
       1000:98c9 74 1a           JZ         LAB_1000_98e5
       1000:98cb be f0 1b        MOV        SI,0x1bf0
       1000:98ce c7 44 08        MOV        word ptr [SI + 0x8],0x0
                 00 00
       1000:98d3 c7 06 06        MOV        word ptr [0x1c06],0x0
                 1c 00 00
       1000:98d9 e8 6a 2b        CALL       FUN_1000_c446                                    undefined FUN_1000_c446()
       1000:98dc be f0 1b        MOV        SI,0x1bf0
       1000:98df e8 0e 2c        CALL       FUN_1000_c4f0                                    undefined FUN_1000_c4f0()
       1000:98e2 e9 a6 02        JMP        FUN_1000_9b8b                                    undefined FUN_1000_9b8b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_98e5                                   XREF[2]:     1000:98b7(j), 1000:98c9(j)  
       1000:98e5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_98e6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_98e6                                   XREF[5]:     FUN_1000_0911:1000:091d(c), 
                                                                                          FUN_1000_0d8e:1000:0db9(c), 
                                                                                          FUN_1000_18ba:1000:18db(c), 
                                                                                          FUN_1000_2b2a:1000:2c6f(c), 
                                                                                          FUN_1000_37b2:1000:37b2(c)  
       1000:98e6 e8 0c 00        CALL       FUN_1000_98f5                                    undefined FUN_1000_98f5()
       1000:98e9 a3 c8 47        MOV        [0x47c8],AX
       1000:98ec a3 aa 47        MOV        [0x47aa],AX
       1000:98ef a3 9e 47        MOV        [0x479e],AX
       1000:98f2 e9 96 02        JMP        FUN_1000_9b8b                                    undefined FUN_1000_9b8b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_98f5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_98f5                                   XREF[1]:     FUN_1000_98e6:1000:98e6(c)  
       1000:98f5 33 c0           XOR        AX,AX
       1000:98f7 a3 06 1c        MOV        [0x1c06],AX
       1000:98fa a3 f8 1b        MOV        [0x1bf8],AX
       1000:98fd a3 ea 1b        MOV        [0x1bea],AX
       1000:9900 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9901()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9901                                   XREF[2]:     FUN_1000_0d8e:1000:0ddf(c), 
                                                                                          FUN_1000_0d8e:1000:0de5(c)  
       1000:9901 c7 06 9e        MOV        word ptr [0x479e],0x0
                 47 00 00
       1000:9907 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9908()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9908                                   XREF[2]:     FUN_1000_9381:1000:93bf(c), 
                                                                                          FUN_1000_978e:1000:979c(c)  
       1000:9908 8b 36 ca 47     MOV        SI,word ptr [0x47ca]
       1000:990c 8e 06 b2 db     MOV        ES,word ptr [0xdbb2]
       1000:9910 e8 3c 00        CALL       FUN_1000_994f                                    undefined FUN_1000_994f()
       1000:9913 c6 06 d1        MOV        byte ptr [0x47d1],0xc0
                 47 c0
       1000:9918 a0 8c 47        MOV        AL,[0x478c]
       1000:991b 32 e4           XOR        AH,AH
       1000:991d d1 e0           SHL        AX,0x1
       1000:991f d1 e0           SHL        AX,0x1
       1000:9921 a3 ce 47        MOV        [0x47ce],AX
       1000:9924 26 03 32        ADD        SI,word ptr ES:[BP + SI]
       1000:9927 e8 42 00        CALL       FUN_1000_996c                                    undefined FUN_1000_996c()
       1000:992a 89 36 c8 47     MOV        word ptr [0x47c8],SI
       1000:992e 87 36 c6 47     XCHG       word ptr [0x47c6],SI
       1000:9932 0b f6           OR         SI,SI
       1000:9934 75 18           JNZ        LAB_1000_994e
       1000:9936 80 3e ea        CMP        byte ptr [0xea],0x0
                 00 00
       1000:993b 7f 11           JG         LAB_1000_994e
       1000:993d a1 c4 47        MOV        AX,[0x47c4]
       1000:9940 e8 39 79        CALL       FUN_1000_127c                                    undefined FUN_1000_127c()
       1000:9943 72 09           JC         LAB_1000_994e
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9945()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9945                                   XREF[1]:     FUN_1000_2ad8:1000:2b17(c)  
       1000:9945 be be 99        MOV        SI,0x99be
       1000:9948 bd 10 00        MOV        BP,0x10
       1000:994b e8 d7 40        CALL       FUN_1000_da25                                    undefined FUN_1000_da25()
                             LAB_1000_994e                                   XREF[3]:     FUN_1000_9908:1000:9934(j), 
                                                                                          FUN_1000_9908:1000:993b(j), 
                                                                                          FUN_1000_9908:1000:9943(j)  
       1000:994e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_994f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_994f                                   XREF[2]:     FUN_1000_9908:1000:9910(c), 
                                                                                          FUN_1000_99da:1000:9a2c(c)  
       1000:994f a0 d0 47        MOV        AL,[0x47d0]
       1000:9952 0a c0           OR         AL,AL
       1000:9954 75 0d           JNZ        LAB_1000_9963
       1000:9956 bb 06 00        MOV        BX,0x6
       1000:9959 e8 5b 4a        CALL       FUN_1000_e3b7                                    undefined FUN_1000_e3b7()
       1000:995c 8b e8           MOV        BP,AX
       1000:995e 03 2e f0 00     ADD        BP,word ptr [0xf0]
       1000:9962 c3              RET
                             LAB_1000_9963                                   XREF[1]:     1000:9954(j)  
       1000:9963 fe c8           DEC        AL
       1000:9965 32 e4           XOR        AH,AH
       1000:9967 d1 e0           SHL        AX,0x1
       1000:9969 8b e8           MOV        BP,AX
       1000:996b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_996c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_996c                                   XREF[2]:     FUN_1000_9908:1000:9927(c), 
                                                                                          FUN_1000_99da:1000:9a32(c)  
       1000:996c 80 3e d0        CMP        byte ptr [0x47d0],0x0
                 47 00
       1000:9971 74 0e           JZ         LAB_1000_9981
       1000:9973 b9 20 00        MOV        CX,0x20
       1000:9976 06              PUSH       ES
       1000:9977 1f              POP        DS
                             LAB_1000_9978                                   XREF[2]:     1000:997b(j), 1000:997d(j)  
       1000:9978 ac              LODSB      SI
       1000:9979 0a c0           OR         AL,AL
       1000:997b 75 fb           JNZ        LAB_1000_9978
       1000:997d e2 f9           LOOP       LAB_1000_9978
       1000:997f 16              PUSH       SS
       1000:9980 1f              POP        DS
                             LAB_1000_9981                                   XREF[1]:     1000:9971(j)  
       1000:9981 c3              RET
                             LAB_1000_9982                                   XREF[1]:     1000:998b(j)  
       1000:9982 e8 39 00        CALL       FUN_1000_99be                                    undefined FUN_1000_99be()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9985()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9985                                   XREF[3]:     FUN_1000_0580:1000:05fe(c), 
                                                                                          FUN_1000_0911:1000:091a(c), 
                                                                                          FUN_1000_9ed5:1000:9edc(c)  
       1000:9985 f7 06 ce        TEST       word ptr [0x47ce],0x7
                 47 07 00
       1000:998b 75 f5           JNZ        LAB_1000_9982
       1000:998d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_998e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_998e                                   XREF[2]:     FUN_1000_99be:1000:99c5(c), 
                                                                                          FUN_1000_99be:1000:99d1(c)  
       1000:998e bf 60 4c        MOV        DI,0x4c60
       1000:9991 be f0 1b        MOV        SI,0x1bf0
       1000:9994 b9 04 00        MOV        CX,0x4
       1000:9997 e8 18 00        CALL       FUN_1000_99b2                                    undefined FUN_1000_99b2()
       1000:999a be a6 22        MOV        SI,0x22a6
       1000:999d b9 01 00        MOV        CX,0x1
       1000:99a0 e8 0f 00        CALL       FUN_1000_99b2                                    undefined FUN_1000_99b2()
       1000:99a3 be 40 45        MOV        SI,0x4540
       1000:99a6 b9 c9 00        MOV        CX,0xc9
       1000:99a9 e8 06 00        CALL       FUN_1000_99b2                                    undefined FUN_1000_99b2()
       1000:99ac be c4 47        MOV        SI,0x47c4
       1000:99af b9 07 00        MOV        CX,0x7
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_99b2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_99b2                                   XREF[4]:     FUN_1000_998e:1000:9997(c), 
                                                                                          FUN_1000_998e:1000:99a0(c), 
                                                                                          FUN_1000_998e:1000:99a9(c), 
                                                                                          1000:99bb(j)  
       1000:99b2 ad              LODSW      SI
       1000:99b3 87 05           XCHG       word ptr [DI],AX
       1000:99b5 89 44 fe        MOV        word ptr [SI + -0x2],AX
       1000:99b8 83 c7 02        ADD        DI,0x2
       1000:99bb e2 f5           LOOP       FUN_1000_99b2
       1000:99bd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_99be()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_99be                                   XREF[1]:     FUN_1000_9985:1000:9982(c)  
       1000:99be 80 3e c3        CMP        byte ptr [0x47c3],0x0
                 47 00
       1000:99c3 74 15           JZ         FUN_1000_99da
       1000:99c5 e8 c6 ff        CALL       FUN_1000_998e                                    undefined FUN_1000_998e()
       1000:99c8 b8 07 00        MOV        AX,0x7
       1000:99cb e8 41 f8        CALL       FUN_1000_920f                                    undefined FUN_1000_920f()
       1000:99ce e8 09 00        CALL       FUN_1000_99da                                    undefined FUN_1000_99da()
       1000:99d1 e8 ba ff        CALL       FUN_1000_998e                                    undefined FUN_1000_998e()
       1000:99d4 b8 2d 00        MOV        AX,0x2d
       1000:99d7 e8 35 f8        CALL       FUN_1000_920f                                    undefined FUN_1000_920f()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_99da()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_99da                                   XREF[2]:     FUN_1000_99be:1000:99c3(j), 
                                                                                          FUN_1000_99be:1000:99ce(c)  
       1000:99da e8 ba f7        CALL       FUN_1000_9197                                    undefined FUN_1000_9197()
       1000:99dd a0 d1 47        MOV        AL,[0x47d1]
       1000:99e0 0a c0           OR         AL,AL
       1000:99e2 79 38           JNS        LAB_1000_9a1c
       1000:99e4 a8 10           TEST       AL,0x10
       1000:99e6 75 58           JNZ        LAB_1000_9a40
       1000:99e8 8b 36 c6 47     MOV        SI,word ptr [0x47c6]
       1000:99ec 8e 06 b2 db     MOV        ES,word ptr [0xdbb2]
                             LAB_1000_99f0                                   XREF[1]:     1000:9a39(j)  
       1000:99f0 26 80 3c ff     CMP        byte ptr ES:[SI],0xff
       1000:99f4 74 27           JZ         LAB_1000_9a1d
                             LAB_1000_99f6                                   XREF[3]:     1000:9a4d(j), 1000:9a52(j), 
                                                                                          1000:9a5e(j)  
       1000:99f6 ff 0e ce 47     DEC        word ptr [0x47ce]
       1000:99fa 89 36 c8 47     MOV        word ptr [0x47c8],SI
       1000:99fe e8 b0 01        CALL       FUN_1000_9bb1                                    undefined FUN_1000_9bb1()
       1000:9a01 89 36 c6 47     MOV        word ptr [0x47c6],SI
       1000:9a05 81 3e 34        CMP        word ptr [0xd834],0x13f
                 d8 3f 01
       1000:9a0b 74 0f           JZ         LAB_1000_9a1c
       1000:9a0d e8 7c f6        CALL       FUN_1000_908c                                    undefined FUN_1000_908c()
       1000:9a10 be 34 d8        MOV        SI,0xd834
       1000:9a13 e8 5e 41        CALL       FUN_1000_db74                                    undefined FUN_1000_db74()
       1000:9a16 e8 d7 2a        CALL       FUN_1000_c4f0                                    undefined FUN_1000_c4f0()
       1000:9a19 e9 4b 41        JMP        FUN_1000_db67                                    undefined FUN_1000_db67()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_9a1c                                   XREF[3]:     1000:99e2(j), 1000:9a0b(j), 
                                                                                          1000:9a59(j)  
       1000:9a1c c3              RET
                             LAB_1000_9a1d                                   XREF[1]:     1000:99f4(j)  
       1000:9a1d 83 3e ce        CMP        word ptr [0x47ce],0x0
                 47 00
       1000:9a22 78 17           JS         LAB_1000_9a3b
       1000:9a24 8b 36 ca 47     MOV        SI,word ptr [0x47ca]
       1000:9a28 8e 06 b2 db     MOV        ES,word ptr [0xdbb2]
       1000:9a2c e8 20 ff        CALL       FUN_1000_994f                                    undefined FUN_1000_994f()
       1000:9a2f 26 03 32        ADD        SI,word ptr ES:[BP + SI]
       1000:9a32 e8 37 ff        CALL       FUN_1000_996c                                    undefined FUN_1000_996c()
       1000:9a35 89 36 c6 47     MOV        word ptr [0x47c6],SI
       1000:9a39 eb b5           JMP        LAB_1000_99f0
                             LAB_1000_9a3b                                   XREF[1]:     1000:9a22(j)  
       1000:9a3b 80 0e d1        OR         byte ptr [0x47d1],0x10
                 47 10
                             LAB_1000_9a40                                   XREF[1]:     1000:99e6(j)  
       1000:9a40 8b 36 c6 47     MOV        SI,word ptr [0x47c6]
       1000:9a44 8e 06 b2 db     MOV        ES,word ptr [0xdbb2]
       1000:9a48 83 3e ce        CMP        word ptr [0x47ce],0x0
                 47 00
       1000:9a4d 7f a7           JG         LAB_1000_99f6
       1000:9a4f e8 62 00        CALL       FUN_1000_9ab4                                    undefined FUN_1000_9ab4()
       1000:9a52 72 a2           JC         LAB_1000_99f6
       1000:9a54 e8 24 00        CALL       FUN_1000_9a7b                                    undefined FUN_1000_9a7b()
       1000:9a57 0a e4           OR         AH,AH
       1000:9a59 75 c1           JNZ        LAB_1000_9a1c
       1000:9a5b e8 02 00        CALL       FUN_1000_9a60                                    undefined FUN_1000_9a60()
       1000:9a5e eb 96           JMP        LAB_1000_99f6
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9a60()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9a60                                   XREF[2]:     FUN_1000_99da:1000:9a5b(c), 
                                                                                          FUN_1000_9f1c:1000:9f29(c)  
       1000:9a60 0a c0           OR         AL,AL
       1000:9a62 74 10           JZ         LAB_1000_9a74
       1000:9a64 8b d8           MOV        BX,AX
       1000:9a66 32 c0           XOR        AL,AL
       1000:9a68 b9 ff ff        MOV        CX,0xffff
       1000:9a6b 8b fe           MOV        DI,SI
                             LAB_1000_9a6d                                   XREF[1]:     1000:9a70(j)  
       1000:9a6d f2 ae           SCASB.RE   ES:DI
       1000:9a6f 4b              DEC        BX
       1000:9a70 75 fb           JNZ        LAB_1000_9a6d
       1000:9a72 8b f7           MOV        SI,DI
                             LAB_1000_9a74                                   XREF[1]:     1000:9a62(j)  
       1000:9a74 c7 06 ce        MOV        word ptr [0x47ce],0x8
                 47 08 00
       1000:9a7a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9a7b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9a7b                                   XREF[2]:     FUN_1000_99da:1000:9a54(c), 
                                                                                          FUN_1000_9f1c:1000:9f24(c)  
       1000:9a7b a0 d0 47        MOV        AL,[0x47d0]
       1000:9a7e bb 18 0f        MOV        BX,0xf18
       1000:9a81 0a c0           OR         AL,AL
       1000:9a83 75 15           JNZ        LAB_1000_9a9a
       1000:9a85 b0 05           MOV        AL,0x5
       1000:9a87 bb 38 0f        MOV        BX,0xf38
       1000:9a8a 83 3e c4        CMP        word ptr [0x47c4],0x7
                 47 07
       1000:9a8f 75 09           JNZ        LAB_1000_9a9a
       1000:9a91 80 3e 2a        CMP        byte ptr [0x2a],0xc8
                 00 c8
       1000:9a96 72 02           JC         LAB_1000_9a9a
       1000:9a98 fe c0           INC        AL
                             LAB_1000_9a9a                                   XREF[3]:     1000:9a83(j), 1000:9a8f(j), 
                                                                                          1000:9a96(j)  
       1000:9a9a fe c8           DEC        AL
       1000:9a9c 32 e4           XOR        AH,AH
       1000:9a9e d1 e0           SHL        AX,0x1
       1000:9aa0 8b e8           MOV        BP,AX
       1000:9aa2 03 2e f0 00     ADD        BP,word ptr [0xf0]
       1000:9aa6 8b 36 ca 47     MOV        SI,word ptr [0x47ca]
       1000:9aaa 8e 06 b2 db     MOV        ES,word ptr [0xdbb2]
       1000:9aae 26 03 32        ADD        SI,word ptr ES:[BP + SI]
       1000:9ab1 e9 03 49        JMP        FUN_1000_e3b7                                    undefined FUN_1000_e3b7()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9ab4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9ab4                                   XREF[1]:     FUN_1000_99da:1000:9a4f(c)  
       1000:9ab4 a0 e1 47        MOV        AL,[0x47e1]
       1000:9ab7 0a c0           OR         AL,AL
       1000:9ab9 74 4d           JZ         LAB_1000_9b08
       1000:9abb 78 1e           JS         LAB_1000_9adb
       1000:9abd 80 0e e1        OR         byte ptr [0x47e1],0x80
                 47 80
       1000:9ac2 e8 44 00        CALL       FUN_1000_9b09                                    undefined FUN_1000_9b09()
       1000:9ac5 a0 e2 47        MOV        AL,[0x47e2]
       1000:9ac8 32 e4           XOR        AH,AH
       1000:9aca 8b e8           MOV        BP,AX
       1000:9acc 8b 36 ca 47     MOV        SI,word ptr [0x47ca]
       1000:9ad0 26 03 32        ADD        SI,word ptr ES:[BP + SI]
       1000:9ad3 c7 06 ce        MOV        word ptr [0x47ce],0x14
                 47 14 00
       1000:9ad9 f9              STC
       1000:9ada c3              RET
                             LAB_1000_9adb                                   XREF[1]:     1000:9abb(j)  
       1000:9adb d0 e8           SHR        AL,0x1
       1000:9add 73 29           JNC        LAB_1000_9b08
       1000:9adf c6 06 e1        MOV        byte ptr [0x47e1],0x80
                 47 80
       1000:9ae4 e8 8e 35        CALL       FUN_1000_d075                                    undefined FUN_1000_d075()
       1000:9ae7 8b 36 e4 47     MOV        SI,word ptr [0x47e4]
       1000:9aeb 83 3c 38        CMP        word ptr [SI],0x38
       1000:9aee 73 18           JNC        LAB_1000_9b08
       1000:9af0 ad              LODSW      SI
       1000:9af1 8b c8           MOV        CX,AX
       1000:9af3 ad              LODSW      SI
       1000:9af4 8b d0           MOV        DX,AX
       1000:9af6 ad              LODSW      SI
       1000:9af7 8b d8           MOV        BX,AX
       1000:9af9 ad              LODSW      SI
       1000:9afa 91              XCHG       AX,CX
       1000:9afb e8 67 ed        CALL       FUN_1000_8865                                    undefined FUN_1000_8865()
       1000:9afe e8 67 35        CALL       FUN_1000_d068                                    undefined FUN_1000_d068()
       1000:9b01 e8 ae 40        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:9b04 e8 d6 29        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
       1000:9b07 f8              CLC
                             LAB_1000_9b08                                   XREF[3]:     1000:9ab9(j), 1000:9add(j), 
                                                                                          1000:9aee(j)  
       1000:9b08 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9b09()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9b09                                   XREF[1]:     FUN_1000_9ab4:1000:9ac2(c)  
       1000:9b09 8b 36 e4 47     MOV        SI,word ptr [0x47e4]
       1000:9b0d 83 3c 38        CMP        word ptr [SI],0x38
       1000:9b10 72 36           JC         LAB_1000_9b48
       1000:9b12 a1 20 00        MOV        AX,[0x20]
       1000:9b15 74 05           JZ         LAB_1000_9b1c
       1000:9b17 a0 9d 00        MOV        AL,[0x9d]
       1000:9b1a 32 e4           XOR        AH,AH
                             LAB_1000_9b1c                                   XREF[1]:     1000:9b15(j)  
       1000:9b1c e8 04 ef        CALL       FUN_1000_8a23                                    undefined FUN_1000_8a23()
       1000:9b1f 8b c8           MOV        CX,AX
       1000:9b21 c4 36 b0 db     LES        SI,[0xdbb0]
       1000:9b25 8b fe           MOV        DI,SI
       1000:9b27 bd 05 00        MOV        BP,0x5
                             LAB_1000_9b2a                                   XREF[1]:     1000:9b46(j)  
       1000:9b2a 83 e3 0f        AND        BX,0xf
       1000:9b2d 74 03           JZ         LAB_1000_9b32
       1000:9b2f bd 06 00        MOV        BP,0x6
                             LAB_1000_9b32                                   XREF[1]:     1000:9b2d(j)  
       1000:9b32 03 dd           ADD        BX,BP
       1000:9b34 d1 e3           SHL        BX,0x1
       1000:9b36 26 8b 00        MOV        AX,word ptr ES:[BX + SI]
       1000:9b39 ab              STOSW      ES:DI
       1000:9b3a 8a de           MOV        BL,DH
       1000:9b3c 8a f2           MOV        DH,DL
       1000:9b3e 8a d5           MOV        DL,CH
       1000:9b40 8a e9           MOV        CH,CL
       1000:9b42 b1 ff           MOV        CL,0xff
       1000:9b44 3a d9           CMP        BL,CL
       1000:9b46 75 e2           JNZ        LAB_1000_9b2a
                             LAB_1000_9b48                                   XREF[1]:     1000:9b10(j)  
       1000:9b48 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9b49()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9b49                                   XREF[1]:     FUN_1000_9472:1000:949f(c)  
       1000:9b49 a1 e1 47        MOV        AX,[0x47e1]
       1000:9b4c 3c 80           CMP        AL,0x80
       1000:9b4e 75 34           JNZ        LAB_1000_9b84
       1000:9b50 56              PUSH       SI
       1000:9b51 50              PUSH       AX
       1000:9b52 e8 42 f6        CALL       FUN_1000_9197                                    undefined FUN_1000_9197()
       1000:9b55 58              POP        AX
       1000:9b56 8a c4           MOV        AL,AH
       1000:9b58 32 e4           XOR        AH,AH
       1000:9b5a 40              INC        AX
       1000:9b5b 40              INC        AX
       1000:9b5c 8b e8           MOV        BP,AX
       1000:9b5e 8b 36 ca 47     MOV        SI,word ptr [0x47ca]
       1000:9b62 8e 06 b2 db     MOV        ES,word ptr [0xdbb2]
       1000:9b66 26 03 32        ADD        SI,word ptr ES:[BP + SI]
       1000:9b69 c6 06 e1        MOV        byte ptr [0x47e1],0x81
                 47 81
                             LAB_1000_9b6e                                   XREF[1]:     1000:9b81(j)  
       1000:9b6e 06              PUSH       ES
       1000:9b6f bd f6 99        MOV        BP,0x99f6
       1000:9b72 b8 0c 00        MOV        AX,0xc
       1000:9b75 e8 db 47        CALL       FUN_1000_e353                                    undefined FUN_1000_e353()
       1000:9b78 07              POP        ES
       1000:9b79 8b 36 c6 47     MOV        SI,word ptr [0x47c6]
       1000:9b7d 26 80 3c ff     CMP        byte ptr ES:[SI],0xff
       1000:9b81 75 eb           JNZ        LAB_1000_9b6e
       1000:9b83 5e              POP        SI
                             LAB_1000_9b84                                   XREF[1]:     1000:9b4e(j)  
       1000:9b84 c7 06 e1        MOV        word ptr [0x47e1],0x0
                 47 00 00
       1000:9b8a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9b8b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9b8b                                   XREF[2]:     FUN_1000_98b2:1000:98e2(c), 
                                                                                          FUN_1000_98e6:1000:98f2(c)  
       1000:9b8b e8 17 0c        CALL       FUN_1000_a7a5                                    undefined FUN_1000_a7a5()
       1000:9b8e 33 c0           XOR        AX,AX
       1000:9b90 c6 06 c3        MOV        byte ptr [0x47c3],0x0
                 47 00
       1000:9b95 a3 ce 47        MOV        [0x47ce],AX
       1000:9b98 80 26 d1        AND        byte ptr [0x47d1],0x7f
                 47 7f
       1000:9b9d 87 06 c6 47     XCHG       word ptr [0x47c6],AX
       1000:9ba1 0b c0           OR         AX,AX
       1000:9ba3 74 06           JZ         LAB_1000_9bab
       1000:9ba5 be be 99        MOV        SI,0x99be
       1000:9ba8 e9 b4 3e        JMP        FUN_1000_da5f                                    undefined FUN_1000_da5f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_9bab                                   XREF[1]:     1000:9ba3(j)  
       1000:9bab c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9bac()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9bac                                   XREF[3]:     FUN_1000_8c8a:1000:8cc6(c), 
                                                                                          FUN_1000_9381:1000:93cc(c), 
                                                                                          FUN_1000_978e:1000:97ba(c)  
       1000:9bac 56              PUSH       SI
       1000:9bad e8 e7 f5        CALL       FUN_1000_9197                                    undefined FUN_1000_9197()
       1000:9bb0 5e              POP        SI
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9bb1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9bb1                                   XREF[1]:     FUN_1000_99da:1000:99fe(c)  
       1000:9bb1 e8 3a 00        CALL       FUN_1000_9bee                                    undefined FUN_1000_9bee()
       1000:9bb4 56              PUSH       SI
       1000:9bb5 83 3e 40        CMP        word ptr [0x4540],0x0
                 45 00
       1000:9bba 75 10           JNZ        LAB_1000_9bcc
       1000:9bbc be f0 1b        MOV        SI,0x1bf0
       1000:9bbf bf 34 d8        MOV        DI,0xd834
       1000:9bc2 e8 d4 bf        CALL       FUN_1000_5b99                                    undefined FUN_1000_5b99()
       1000:9bc5 c7 04 80 00     MOV        word ptr [SI],0x80
       1000:9bc9 eb 0c           JMP        LAB_1000_9bd7
                             LAB_1000_9bcc                                   XREF[1]:     1000:9bba(j)  
       1000:9bcc e8 5e 00        CALL       FUN_1000_9c2d                                    undefined FUN_1000_9c2d()
       1000:9bcf 81 3e 34        CMP        word ptr [0xd834],0x13f
                 d8 3f 01
       1000:9bd5 74 15           JZ         LAB_1000_9bec
                             LAB_1000_9bd7                                   XREF[1]:     1000:9bc9(j)  
       1000:9bd7 be 34 d8        MOV        SI,0xd834
       1000:9bda 81 7c 06        CMP        word ptr [SI + 0x6],0x98
                 98 00
       1000:9bdf 72 05           JC         LAB_1000_9be6
       1000:9be1 c7 44 06        MOV        word ptr [SI + 0x6],0x98
                 98 00
                             LAB_1000_9be6                                   XREF[1]:     1000:9bdf(j)  
       1000:9be6 e8 5d 28        CALL       FUN_1000_c446                                    undefined FUN_1000_c446()
       1000:9be9 e8 2a 01        CALL       FUN_1000_9d16                                    undefined FUN_1000_9d16()
                             LAB_1000_9bec                                   XREF[1]:     1000:9bd5(j)  
       1000:9bec 5e              POP        SI
       1000:9bed c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9bee()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9bee                                   XREF[2]:     FUN_1000_9bb1:1000:9bb1(c), 
                                                                                          FUN_1000_9de3:1000:9e33(c)  
       1000:9bee 33 c9           XOR        CX,CX
       1000:9bf0 1e              PUSH       DS
       1000:9bf1 07              POP        ES
       1000:9bf2 36 8e 1e        MOV        DS,word ptr SS:[0xdbb2]
                 b2 db
       1000:9bf7 bf 0a 46        MOV        DI,0x460a
                             LAB_1000_9bfa                                   XREF[1]:     1000:9c23(j)  
       1000:9bfa ac              LODSB      SI
       1000:9bfb 32 e4           XOR        AH,AH
       1000:9bfd 0a c0           OR         AL,AL
       1000:9bff 74 24           JZ         LAB_1000_9c25
       1000:9c01 3c 01           CMP        AL,0x1
       1000:9c03 75 03           JNZ        LAB_1000_9c08
       1000:9c05 8a e0           MOV        AH,AL
       1000:9c07 ac              LODSB      SI
                             LAB_1000_9c08                                   XREF[1]:     1000:9c03(j)  
       1000:9c08 56              PUSH       SI
       1000:9c09 2d 02 00        SUB        AX,0x2
       1000:9c0c d1 e0           SHL        AX,0x1
       1000:9c0e 8b e8           MOV        BP,AX
       1000:9c10 36 8b 36        MOV        SI,word ptr SS:[0x47cc]
                 cc 47
       1000:9c15 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
                             LAB_1000_9c18                                   XREF[1]:     1000:9c20(j)  
       1000:9c18 ac              LODSB      SI
       1000:9c19 0a c0           OR         AL,AL
       1000:9c1b 74 05           JZ         LAB_1000_9c22
       1000:9c1d aa              STOSB      ES:DI
       1000:9c1e a5              MOVSW      ES:DI,SI
       1000:9c1f 41              INC        CX
       1000:9c20 eb f6           JMP        LAB_1000_9c18
                             LAB_1000_9c22                                   XREF[1]:     1000:9c1b(j)  
       1000:9c22 5e              POP        SI
       1000:9c23 eb d5           JMP        LAB_1000_9bfa
                             LAB_1000_9c25                                   XREF[1]:     1000:9bff(j)  
       1000:9c25 36 89 0e        MOV        word ptr SS:[0x4608],CX
                 08 46
       1000:9c2a 16              PUSH       SS
       1000:9c2b 1f              POP        DS
       1000:9c2c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9c2d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9c2d                                   XREF[1]:     FUN_1000_9bb1:1000:9bcc(c)  
       1000:9c2d c7 06 34        MOV        word ptr [0xd834],0x13f
                 d8 3f 01
       1000:9c33 c7 06 36        MOV        word ptr [0xd836],0xc7
                 d8 c7 00
       1000:9c39 33 c0           XOR        AX,AX
       1000:9c3b a3 38 d8        MOV        [0xd838],AX
       1000:9c3e a3 3a d8        MOV        [0xd83a],AX
       1000:9c41 8c d8           MOV        AX,DS
       1000:9c43 8e c0           MOV        ES,AX
       1000:9c45 be 40 45        MOV        SI,0x4540
       1000:9c48 bf 08 46        MOV        DI,0x4608
       1000:9c4b e8 06 00        CALL       FUN_1000_9c54                                    undefined FUN_1000_9c54()
       1000:9c4e be 08 46        MOV        SI,0x4608
       1000:9c51 bf 40 45        MOV        DI,0x4540
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9c54()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9c54                                   XREF[1]:     FUN_1000_9c2d:1000:9c4b(c)  
       1000:9c54 ad              LODSW      SI
       1000:9c55 8b c8           MOV        CX,AX
                             LAB_1000_9c57                                   XREF[1]:     1000:9c77(j)  
       1000:9c57 51              PUSH       CX
       1000:9c58 57              PUSH       DI
       1000:9c59 8b 0d           MOV        CX,word ptr [DI]
       1000:9c5b 83 c7 02        ADD        DI,0x2
                             LAB_1000_9c5e                                   XREF[1]:     1000:9c6d(j)  
       1000:9c5e a7              CMPSW      ES:DI,SI
       1000:9c5f 9f              LAHF
       1000:9c60 a6              CMPSB      ES:DI,SI
       1000:9c61 8a c4           MOV        AL,AH
       1000:9c63 9f              LAHF
       1000:9c64 22 c4           AND        AL,AH
       1000:9c66 a8 40           TEST       AL,0x40
       1000:9c68 75 0b           JNZ        LAB_1000_9c75
       1000:9c6a 83 ee 03        SUB        SI,0x3
       1000:9c6d e2 ef           LOOP       LAB_1000_9c5e
       1000:9c6f e8 54 00        CALL       FUN_1000_9cc6                                    undefined FUN_1000_9cc6()
       1000:9c72 83 c6 03        ADD        SI,0x3
                             LAB_1000_9c75                                   XREF[1]:     1000:9c68(j)  
       1000:9c75 5f              POP        DI
       1000:9c76 59              POP        CX
       1000:9c77 e2 de           LOOP       LAB_1000_9c57
       1000:9c79 80 3e e1        CMP        byte ptr [0x47e1],0x81
                 47 81
       1000:9c7e 74 26           JZ         LAB_1000_9ca6
       1000:9c80 e8 49 0f        CALL       FUN_1000_abcc                                    undefined FUN_1000_abcc()
       1000:9c83 74 21           JZ         LAB_1000_9ca6
       1000:9c85 a1 c4 47        MOV        AX,[0x47c4]
       1000:9c88 3c 09           CMP        AL,0x9
       1000:9c8a 74 39           JZ         LAB_1000_9cc5
       1000:9c8c 3c 0c           CMP        AL,0xc
       1000:9c8e 74 35           JZ         LAB_1000_9cc5
       1000:9c90 8b 36 28 dc     MOV        SI,word ptr [0xdc28]
       1000:9c94 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:9c97 3b 06 3a d8     CMP        AX,word ptr [0xd83a]
       1000:9c9b 73 09           JNC        LAB_1000_9ca6
       1000:9c9d a3 3a d8        MOV        [0xd83a],AX
       1000:9ca0 3b 06 36 d8     CMP        AX,word ptr [0xd836]
       1000:9ca4 7e 19           JLE        LAB_1000_9cbf
                             LAB_1000_9ca6                                   XREF[3]:     1000:9c7e(j), 1000:9c83(j), 
                                                                                          1000:9c9b(j)  
       1000:9ca6 80 3e e1        CMP        byte ptr [0x47e1],0x80
                 47 80
       1000:9cab 75 18           JNZ        LAB_1000_9cc5
       1000:9cad b8 4c 00        MOV        AX,0x4c
       1000:9cb0 3b 06 3a d8     CMP        AX,word ptr [0xd83a]
       1000:9cb4 73 0f           JNC        LAB_1000_9cc5
       1000:9cb6 a3 3a d8        MOV        [0xd83a],AX
       1000:9cb9 3b 06 36 d8     CMP        AX,word ptr [0xd836]
       1000:9cbd 7f 06           JG         LAB_1000_9cc5
                             LAB_1000_9cbf                                   XREF[1]:     1000:9ca4(j)  
       1000:9cbf c7 06 34        MOV        word ptr [0xd834],0x13f
                 d8 3f 01
                             LAB_1000_9cc5                                   XREF[5]:     1000:9c8a(j), 1000:9c8e(j), 
                                                                                          1000:9cab(j), 1000:9cb4(j), 
                                                                                          1000:9cbd(j)  
       1000:9cc5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9cc6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9cc6                                   XREF[1]:     FUN_1000_9c54:1000:9c6f(c)  
       1000:9cc6 56              PUSH       SI
       1000:9cc7 1e              PUSH       DS
       1000:9cc8 32 e4           XOR        AH,AH
       1000:9cca ac              LODSB      SI
       1000:9ccb 8b e8           MOV        BP,AX
       1000:9ccd 4d              DEC        BP
       1000:9cce ac              LODSB      SI
       1000:9ccf 8b d0           MOV        DX,AX
       1000:9cd1 03 16 f0 1b     ADD        DX,word ptr [0x1bf0]
       1000:9cd5 ac              LODSB      SI
       1000:9cd6 8b d8           MOV        BX,AX
       1000:9cd8 03 1e f2 1b     ADD        BX,word ptr [0x1bf2]
       1000:9cdc c5 36 b0 db     LDS        SI,[0xdbb0]
       1000:9ce0 d1 e5           SHL        BP,0x1
       1000:9ce2 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:9ce5 bd 34 d8        MOV        BP,0xd834
       1000:9ce8 39 56 00        CMP        word ptr [BP + 0x0],DX
       1000:9ceb 72 03           JC         LAB_1000_9cf0
       1000:9ced 89 56 00        MOV        word ptr [BP + 0x0],DX
                             LAB_1000_9cf0                                   XREF[1]:     1000:9ceb(j)  
       1000:9cf0 39 5e 02        CMP        word ptr [BP + 0x2],BX
       1000:9cf3 72 03           JC         LAB_1000_9cf8
       1000:9cf5 89 5e 02        MOV        word ptr [BP + 0x2],BX
                             LAB_1000_9cf8                                   XREF[1]:     1000:9cf3(j)  
       1000:9cf8 ad              LODSW      SI
       1000:9cf9 25 ff 01        AND        AX,0x1ff
       1000:9cfc 03 d0           ADD        DX,AX
       1000:9cfe ad              LODSW      SI
       1000:9cff 32 e4           XOR        AH,AH
       1000:9d01 03 d8           ADD        BX,AX
       1000:9d03 39 56 04        CMP        word ptr [BP + 0x4],DX
       1000:9d06 73 03           JNC        LAB_1000_9d0b
       1000:9d08 89 56 04        MOV        word ptr [BP + 0x4],DX
                             LAB_1000_9d0b                                   XREF[1]:     1000:9d06(j)  
       1000:9d0b 39 5e 06        CMP        word ptr [BP + 0x6],BX
       1000:9d0e 73 03           JNC        LAB_1000_9d13
       1000:9d10 89 5e 06        MOV        word ptr [BP + 0x6],BX
                             LAB_1000_9d13                                   XREF[1]:     1000:9d0e(j)  
       1000:9d13 1f              POP        DS
       1000:9d14 5e              POP        SI
       1000:9d15 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9d16()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9d16                                   XREF[1]:     FUN_1000_9bb1:1000:9be9(c)  
       1000:9d16 1e              PUSH       DS
       1000:9d17 07              POP        ES
       1000:9d18 bf 40 45        MOV        DI,0x4540
       1000:9d1b be 08 46        MOV        SI,0x4608
       1000:9d1e 8b 0c           MOV        CX,word ptr [SI]
       1000:9d20 56              PUSH       SI
       1000:9d21 8b c1           MOV        AX,CX
       1000:9d23 d1 e1           SHL        CX,0x1
       1000:9d25 03 c8           ADD        CX,AX
       1000:9d27 83 c1 02        ADD        CX,0x2
       1000:9d2a f3 a4           MOVSB.REP  ES:DI,SI
       1000:9d2c 5e              POP        SI
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9d2d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9d2d                                   XREF[2]:     FUN_1000_9de3:1000:9e45(c), 
                                                                                          FUN_1000_9de3:1000:9e67(c)  
       1000:9d2d ad              LODSW      SI
       1000:9d2e 8b c8           MOV        CX,AX
                             LAB_1000_9d30                                   XREF[1]:     1000:9d67(j)  
       1000:9d30 51              PUSH       CX
       1000:9d31 ac              LODSB      SI
       1000:9d32 32 e4           XOR        AH,AH
       1000:9d34 8b e8           MOV        BP,AX
       1000:9d36 ac              LODSB      SI
       1000:9d37 8b d0           MOV        DX,AX
       1000:9d39 ac              LODSB      SI
       1000:9d3a 8b d8           MOV        BX,AX
       1000:9d3c 03 16 f0 1b     ADD        DX,word ptr [0x1bf0]
       1000:9d40 03 1e f2 1b     ADD        BX,word ptr [0x1bf2]
       1000:9d44 56              PUSH       SI
       1000:9d45 4d              DEC        BP
       1000:9d46 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:9d4a c5 36 b0 db     LDS        SI,[0xdbb0]
       1000:9d4e d1 e5           SHL        BP,0x1
       1000:9d50 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:9d53 ad              LODSW      SI
       1000:9d54 8b f8           MOV        DI,AX
       1000:9d56 ad              LODSW      SI
       1000:9d57 32 e4           XOR        AH,AH
       1000:9d59 8b c8           MOV        CX,AX
       1000:9d5b bd 34 d8        MOV        BP,0xd834
       1000:9d5e 36 ff 1e        CALLF      [0x38cd]
                 cd 38
       1000:9d63 16              PUSH       SS
       1000:9d64 1f              POP        DS
       1000:9d65 5e              POP        SI
       1000:9d66 59              POP        CX
       1000:9d67 e2 c7           LOOP       LAB_1000_9d30
       1000:9d69 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9d6a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9d6a                                   XREF[1]:     FUN_1000_79ee:1000:7b02(c)  
       1000:9d6a 36 8e 06        MOV        ES,word ptr SS:[0xdbd8]
                 d8 db
                             LAB_1000_9d6f                                   XREF[1]:     1000:9d91(j)  
       1000:9d6f ac              LODSB      SI
       1000:9d70 32 e4           XOR        AH,AH
       1000:9d72 0a c0           OR         AL,AL
       1000:9d74 74 1d           JZ         LAB_1000_9d93
       1000:9d76 3c 01           CMP        AL,0x1
       1000:9d78 75 03           JNZ        LAB_1000_9d7d
       1000:9d7a 8a e0           MOV        AH,AL
       1000:9d7c ac              LODSB      SI
                             LAB_1000_9d7d                                   XREF[1]:     1000:9d78(j)  
       1000:9d7d 56              PUSH       SI
       1000:9d7e 2d 02 00        SUB        AX,0x2
       1000:9d81 d1 e0           SHL        AX,0x1
       1000:9d83 8b e8           MOV        BP,AX
       1000:9d85 36 8b 36        MOV        SI,word ptr SS:[0x47cc]
                 cc 47
       1000:9d8a 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:9d8d e8 04 00        CALL       FUN_1000_9d94                                    undefined FUN_1000_9d94()
       1000:9d90 5e              POP        SI
       1000:9d91 eb dc           JMP        LAB_1000_9d6f
                             LAB_1000_9d93                                   XREF[3]:     1000:9d74(j), 
                                                                                          FUN_1000_9d94:1000:9d98(j), 
                                                                                          FUN_1000_9de3:1000:9de8(j)  
       1000:9d93 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9d94()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9d94                                   XREF[4]:     FUN_1000_9d6a:1000:9d8d(c), 
                                                                                          1000:9de1(j), 
                                                                                          FUN_1000_9de3:1000:9ebc(c), 
                                                                                          FUN_1000_9de3:1000:9ece(c)  
       1000:9d94 ac              LODSB      SI
       1000:9d95 25 ff 00        AND        AX,0xff
       1000:9d98 74 f9           JZ         LAB_1000_9d93
       1000:9d9a 32 e4           XOR        AH,AH
       1000:9d9c 8b e8           MOV        BP,AX
       1000:9d9e ac              LODSB      SI
       1000:9d9f 8b d0           MOV        DX,AX
       1000:9da1 ac              LODSB      SI
       1000:9da2 8b d8           MOV        BX,AX
       1000:9da4 36 03 16        ADD        DX,word ptr SS:[0x1bf0]
                 f0 1b
       1000:9da9 36 03 1e        ADD        BX,word ptr SS:[0x1bf2]
                 f2 1b
       1000:9dae 36 2b 16        SUB        DX,word ptr SS:[0x46d2]
                 d2 46
       1000:9db3 36 2b 1e        SUB        BX,word ptr SS:[0x46d4]
                 d4 46
       1000:9db8 36 03 16        ADD        DX,word ptr SS:[0x47d4]
                 d4 47
       1000:9dbd 36 03 1e        ADD        BX,word ptr SS:[0x47d6]
                 d6 47
       1000:9dc2 56              PUSH       SI
       1000:9dc3 1e              PUSH       DS
       1000:9dc4 4d              DEC        BP
       1000:9dc5 36 c5 36        LDS        SI,SS:[0xdbb0]
                 b0 db
       1000:9dca d1 e5           SHL        BP,0x1
       1000:9dcc 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:9dcf ad              LODSW      SI
       1000:9dd0 8b f8           MOV        DI,AX
       1000:9dd2 ad              LODSW      SI
       1000:9dd3 32 e4           XOR        AH,AH
       1000:9dd5 8b c8           MOV        CX,AX
       1000:9dd7 bd d4 47        MOV        BP,0x47d4
       1000:9dda 36 ff 1e        CALLF      [0x38cd]
                 cd 38
       1000:9ddf 1f              POP        DS
       1000:9de0 5e              POP        SI
       1000:9de1 eb b1           JMP        FUN_1000_9d94
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9de3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9de3                                   XREF[1]:     FUN_1000_a82e:1000:a83b(c)  
       1000:9de3 83 3e c4        CMP        word ptr [0x47c4],0x10
                 47 10
       1000:9de8 73 a9           JNC        LAB_1000_9d93
       1000:9dea 50              PUSH       AX
       1000:9deb 56              PUSH       SI
       1000:9dec e8 a8 f3        CALL       FUN_1000_9197                                    undefined FUN_1000_9197()
       1000:9def 5e              POP        SI
       1000:9df0 58              POP        AX
       1000:9df1 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:9df6 78 7d           JS         LAB_1000_9e75
       1000:9df8 bf 34 d8        MOV        DI,0xd834
       1000:9dfb e8 9b bd        CALL       FUN_1000_5b99                                    undefined FUN_1000_5b99()
       1000:9dfe 8b 16 f0 1b     MOV        DX,word ptr [0x1bf0]
       1000:9e02 8b 1e f2 1b     MOV        BX,word ptr [0x1bf2]
       1000:9e06 01 55 f8        ADD        word ptr [DI + -0x8],DX
       1000:9e09 01 5d fa        ADD        word ptr [DI + -0x6],BX
       1000:9e0c 01 55 fc        ADD        word ptr [DI + -0x4],DX
       1000:9e0f 01 5d fe        ADD        word ptr [DI + -0x2],BX
       1000:9e12 8b 36 d2 47     MOV        SI,word ptr [0x47d2]
       1000:9e16 8a 26 d0 47     MOV        AH,byte ptr [0x47d0]
       1000:9e1a fe cc           DEC        AH
       1000:9e1c 78 0f           JS         LAB_1000_9e2d
       1000:9e1e 83 3e a6        CMP        word ptr [0x22a6],0xd
                 22 0d
       1000:9e23 75 02           JNZ        LAB_1000_9e27
       1000:9e25 02 c4           ADD        AL,AH
                             LAB_1000_9e27                                   XREF[1]:     1000:9e23(j)  
       1000:9e27 d0 e4           SHL        AH,0x1
       1000:9e29 d0 e4           SHL        AH,0x1
       1000:9e2b 02 c4           ADD        AL,AH
                             LAB_1000_9e2d                                   XREF[1]:     1000:9e1c(j)  
       1000:9e2d 32 e4           XOR        AH,AH
       1000:9e2f d1 e0           SHL        AX,0x1
       1000:9e31 03 f0           ADD        SI,AX
       1000:9e33 e8 b8 fd        CALL       FUN_1000_9bee                                    undefined FUN_1000_9bee()
       1000:9e36 be 08 46        MOV        SI,0x4608
       1000:9e39 80 3e ea        CMP        byte ptr [0xea],0x0
                 00 00
       1000:9e3e 7f 34           JG         LAB_1000_9e74
       1000:9e40 83 3c 02        CMP        word ptr [SI],0x2
       1000:9e43 72 12           JC         LAB_1000_9e57
       1000:9e45 e8 e5 fe        CALL       FUN_1000_9d2d                                    undefined FUN_1000_9d2d()
       1000:9e48 e8 41 f2        CALL       FUN_1000_908c                                    undefined FUN_1000_908c()
       1000:9e4b be 34 d8        MOV        SI,0xd834
       1000:9e4e e8 23 3d        CALL       FUN_1000_db74                                    undefined FUN_1000_db74()
       1000:9e51 e8 9c 26        CALL       FUN_1000_c4f0                                    undefined FUN_1000_c4f0()
       1000:9e54 e9 10 3d        JMP        FUN_1000_db67                                    undefined FUN_1000_db67()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_9e57                                   XREF[1]:     1000:9e43(j)  
       1000:9e57 be 34 d8        MOV        SI,0xd834
       1000:9e5a e8 17 3d        CALL       FUN_1000_db74                                    undefined FUN_1000_db74()
       1000:9e5d ff 36 da db     PUSH       word ptr [0xdbda]
       1000:9e61 e8 2a 22        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:9e64 be 08 46        MOV        SI,0x4608
       1000:9e67 e8 c3 fe        CALL       FUN_1000_9d2d                                    undefined FUN_1000_9d2d()
       1000:9e6a e8 1f f2        CALL       FUN_1000_908c                                    undefined FUN_1000_908c()
       1000:9e6d 8f 06 da db     POP        word ptr [0xdbda]
       1000:9e71 e9 f3 3c        JMP        FUN_1000_db67                                    undefined FUN_1000_db67()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_9e74                                   XREF[1]:     1000:9e3e(j)  
       1000:9e74 c3              RET
                             LAB_1000_9e75                                   XREF[1]:     1000:9df6(j)  
       1000:9e75 8b 36 d2 47     MOV        SI,word ptr [0x47d2]
       1000:9e79 83 3e c4        CMP        word ptr [0x47c4],0xc
                 47 0c
       1000:9e7e 74 0c           JZ         LAB_1000_9e8c
       1000:9e80 8a 26 d0 47     MOV        AH,byte ptr [0x47d0]
       1000:9e84 fe cc           DEC        AH
       1000:9e86 d0 e4           SHL        AH,0x1
       1000:9e88 d0 e4           SHL        AH,0x1
       1000:9e8a 02 c4           ADD        AL,AH
                             LAB_1000_9e8c                                   XREF[1]:     1000:9e7e(j)  
       1000:9e8c 32 e4           XOR        AH,AH
       1000:9e8e d1 e0           SHL        AX,0x1
       1000:9e90 03 f0           ADD        SI,AX
       1000:9e92 56              PUSH       SI
       1000:9e93 be d4 47        MOV        SI,0x47d4
       1000:9e96 e8 db 3c        CALL       FUN_1000_db74                                    undefined FUN_1000_db74()
       1000:9e99 5e              POP        SI
       1000:9e9a 1e              PUSH       DS
       1000:9e9b 36 8e 1e        MOV        DS,word ptr SS:[0xdbb2]
                 b2 db
       1000:9ea0 ac              LODSB      SI
       1000:9ea1 32 e4           XOR        AH,AH
       1000:9ea3 2c 02           SUB        AL,0x2
       1000:9ea5 d1 e0           SHL        AX,0x1
       1000:9ea7 8b e8           MOV        BP,AX
       1000:9ea9 36 8b 36        MOV        SI,word ptr SS:[0x47cc]
                 cc 47
       1000:9eae 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:9eb1 80 7c 03 00     CMP        byte ptr [SI + 0x3],0x0
       1000:9eb5 74 12           JZ         LAB_1000_9ec9
       1000:9eb7 36 8e 06        MOV        ES,word ptr SS:[0xdbd6]
                 d6 db
       1000:9ebc e8 d5 fe        CALL       FUN_1000_9d94                                    undefined FUN_1000_9d94()
       1000:9ebf 1f              POP        DS
       1000:9ec0 be d4 47        MOV        SI,0x47d4
       1000:9ec3 e8 2a 26        CALL       FUN_1000_c4f0                                    undefined FUN_1000_c4f0()
       1000:9ec6 e9 9e 3c        JMP        FUN_1000_db67                                    undefined FUN_1000_db67()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_9ec9                                   XREF[1]:     1000:9eb5(j)  
       1000:9ec9 36 8e 06        MOV        ES,word ptr SS:[0xdbd8]
                 d8 db
       1000:9ece e8 c3 fe        CALL       FUN_1000_9d94                                    undefined FUN_1000_9d94()
       1000:9ed1 1f              POP        DS
       1000:9ed2 e9 92 3c        JMP        FUN_1000_db67                                    undefined FUN_1000_db67()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9ed5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9ed5                                   XREF[1]:     FUN_1000_1707:1000:1717(c)  
       1000:9ed5 83 3e c4        CMP        word ptr [0x47c4],0x10
                 47 10
       1000:9eda 73 0f           JNC        LAB_1000_9eeb
       1000:9edc e8 a6 fa        CALL       FUN_1000_9985                                    undefined FUN_1000_9985()
       1000:9edf 80 3e e1        CMP        byte ptr [0x47e1],0x81
                 47 81
       1000:9ee4 75 05           JNZ        LAB_1000_9eeb
       1000:9ee6 c6 06 e1        MOV        byte ptr [0x47e1],0x1
                 47 01
                             LAB_1000_9eeb                                   XREF[2]:     1000:9eda(j), 1000:9ee4(j)  
       1000:9eeb e8 6d 29        CALL       FUN_1000_c85b                                    undefined FUN_1000_c85b()
       1000:9eee a0 dd 47        MOV        AL,[0x47dd]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9ef1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9ef1                                   XREF[2]:     FUN_1000_2ad8:1000:2b21(c), 
                                                                                          FUN_1000_2b2a:1000:2c4c(c)  
       1000:9ef1 a2 dc 47        MOV        [0x47dc],AL
       1000:9ef4 e8 06 00        CALL       FUN_1000_9efd                                    undefined FUN_1000_9efd()
       1000:9ef7 c6 06 dc        MOV        byte ptr [0x47dc],0x0
                 47 00
                             LAB_1000_9efc                                   XREF[1]:     FUN_1000_9efd:1000:9f0d(j)  
       1000:9efc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9efd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9efd                                   XREF[4]:     FUN_1000_0d8e:1000:0e1f(c), 
                                                                                          FUN_1000_80df:1000:811b(c), 
                                                                                          FUN_1000_9ef1:1000:9ef4(c), 
                                                                                          FUN_1000_a03f:1000:a0d3(c)  
       1000:9efd a0 dc 47        MOV        AL,[0x47dc]
       1000:9f00 a2 dd 47        MOV        [0x47dd],AL
       1000:9f03 a1 80 47        MOV        AX,[0x4780]
       1000:9f06 8b 1e c4 47     MOV        BX,word ptr [0x47c4]
       1000:9f0a e8 bf 07        CALL       FUN_1000_a6cc                                    undefined FUN_1000_a6cc()
       1000:9f0d 73 ed           JNC        LAB_1000_9efc
       1000:9f0f 83 3e c4        CMP        word ptr [0x47c4],0x10
                 47 10
       1000:9f14 73 03           JNC        LAB_1000_9f19
       1000:9f16 e8 03 00        CALL       FUN_1000_9f1c                                    undefined FUN_1000_9f1c()
                             LAB_1000_9f19                                   XREF[1]:     1000:9f14(j)  
       1000:9f19 e9 40 08        JMP        FUN_1000_a75c                                    undefined FUN_1000_a75c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9f1c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9f1c                                   XREF[1]:     FUN_1000_9efd:1000:9f16(c)  
       1000:9f1c e8 78 f2        CALL       FUN_1000_9197                                    undefined FUN_1000_9197()
       1000:9f1f 80 0e d1        OR         byte ptr [0x47d1],0x10
                 47 10
       1000:9f24 e8 54 fb        CALL       FUN_1000_9a7b                                    undefined FUN_1000_9a7b()
       1000:9f27 32 e4           XOR        AH,AH
       1000:9f29 e8 34 fb        CALL       FUN_1000_9a60                                    undefined FUN_1000_9a60()
       1000:9f2c 89 36 c6 47     MOV        word ptr [0x47c6],SI
       1000:9f30 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9f40()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9f40                                   XREF[3]:     FUN_1000_0d8e:1000:0dca(c), 
                                                                                          FUN_1000_9472:1000:9472(c), 
                                                                                          FUN_1000_9702:1000:9713(c)  
       1000:9f40 a1 c4 47        MOV        AX,[0x47c4]
       1000:9f43 3d 02 00        CMP        AX,0x2
       1000:9f46 75 0e           JNZ        LAB_1000_9f56
       1000:9f48 80 3e c2        CMP        byte ptr [0xc2],0x4
                 00 04
       1000:9f4d 75 07           JNZ        LAB_1000_9f56
       1000:9f4f 50              PUSH       AX
       1000:9f50 56              PUSH       SI
       1000:9f51 e8 ef 72        CALL       FUN_1000_1243                                    undefined FUN_1000_1243()
       1000:9f54 5e              POP        SI
       1000:9f55 58              POP        AX
                             LAB_1000_9f56                                   XREF[2]:     1000:9f46(j), 1000:9f4d(j)  
       1000:9f56 b1 10           MOV        CL,0x10
       1000:9f58 f6 e1           MUL        CL
       1000:9f5a 05 d8 0f        ADD        AX,0xfd8
       1000:9f5d a3 a2 47        MOV        [0x47a2],AX
       1000:9f60 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:9f65 75 1b           JNZ        FUN_1000_9f82
       1000:9f67 e8 12 21        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:9f6a c7 06 84        MOV        word ptr [0x4784],0x28
                 47 28 00
       1000:9f70 c7 06 86        MOV        word ptr [0x4786],0x10
                 47 10 00
       1000:9f76 c7 06 88        MOV        word ptr [0x4788],0x10
                 47 10 00
       1000:9f7c c7 06 8a        MOV        word ptr [0x478a],0x10
                 47 10 00
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_9f82()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9f82                                   XREF[2]:     FUN_1000_80df:1000:8102(c), 
                                                                                          FUN_1000_9f40:1000:9f65(j)  
       1000:9f82 c7 06 e4        MOV        word ptr [0xdbe4],0xf0
                 db f0 00
       1000:9f88 e9 dd 30        JMP        FUN_1000_d068                                    undefined FUN_1000_d068()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9f8b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9f8b                                   XREF[1]:     FUN_1000_9702:1000:9716(c)  
       1000:9f8b ff 36 c2 47     PUSH       word ptr [0x47c2]
       1000:9f8f c6 06 c2        MOV        byte ptr [0x47c2],0x20
                 47 20
       1000:9f94 e8 07 00        CALL       FUN_1000_9f9e                                    undefined FUN_1000_9f9e()
       1000:9f97 8f 06 c2 47     POP        word ptr [0x47c2]
       1000:9f9b c3              RET
                             LAB_1000_9f9c                                   XREF[1]:     1000:9fb0(j)  
       1000:9f9c f9              STC
       1000:9f9d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_9f9e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_9f9e                                   XREF[3]:     FUN_1000_9472:1000:94a2(c), 
                                                                                          FUN_1000_96b5:1000:96cc(c), 
                                                                                          FUN_1000_9f8b:1000:9f94(c)  
       1000:9f9e 89 36 7c 47     MOV        word ptr [0x477c],SI
       1000:9fa2 e8 4e f5        CALL       FUN_1000_94f3                                    undefined FUN_1000_94f3()
       1000:9fa5 c7 06 bc        MOV        word ptr [0x47bc],0xa6b0
                 47 b0 a6
                             LAB_1000_9fab                                   XREF[1]:     1000:9fd6(j)  
       1000:9fab 8b 04           MOV        AX,word ptr [SI]
       1000:9fad 3d ff ff        CMP        AX,0xffff
       1000:9fb0 74 ea           JZ         LAB_1000_9f9c
       1000:9fb2 a8 80           TEST       AL,0x80
       1000:9fb4 74 0a           JZ         LAB_1000_9fc0
       1000:9fb6 a8 40           TEST       AL,0x40
       1000:9fb8 75 06           JNZ        LAB_1000_9fc0
       1000:9fba 22 06 c2 47     AND        AL,byte ptr [0x47c2]
       1000:9fbe 75 13           JNZ        LAB_1000_9fd3
                             LAB_1000_9fc0                                   XREF[2]:     1000:9fb4(j), 1000:9fb8(j)  
       1000:9fc0 56              PUSH       SI
       1000:9fc1 8a c4           MOV        AL,AH
       1000:9fc3 8a 64 02        MOV        AH,byte ptr [SI + 0x2]
       1000:9fc6 d0 c4           ROL        AH,0x1
       1000:9fc8 d0 c4           ROL        AH,0x1
       1000:9fca 80 e4 03        AND        AH,0x3
       1000:9fcd e8 c6 03        CALL       FUN_1000_a396                                    undefined FUN_1000_a396()
       1000:9fd0 5e              POP        SI
       1000:9fd1 75 05           JNZ        LAB_1000_9fd8
                             LAB_1000_9fd3                                   XREF[1]:     1000:9fbe(j)  
       1000:9fd3 83 c6 04        ADD        SI,0x4
       1000:9fd6 eb d3           JMP        LAB_1000_9fab
                             LAB_1000_9fd8                                   XREF[1]:     1000:9fd1(j)  
       1000:9fd8 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:9fdd 75 18           JNZ        LAB_1000_9ff7
       1000:9fdf a1 c4 47        MOV        AX,[0x47c4]
       1000:9fe2 3d 10 00        CMP        AX,0x10
       1000:9fe5 73 10           JNC        LAB_1000_9ff7
       1000:9fe7 56              PUSH       SI
       1000:9fe8 50              PUSH       AX
       1000:9fe9 e8 05 01        CALL       FUN_1000_a0f1                                    undefined FUN_1000_a0f1()
       1000:9fec e8 14 78        CALL       FUN_1000_1803                                    undefined FUN_1000_1803()
       1000:9fef e8 07 9b        CALL       FUN_1000_3af9                                    undefined FUN_1000_3af9()
       1000:9ff2 58              POP        AX
       1000:9ff3 e8 aa f1        CALL       FUN_1000_91a0                                    undefined FUN_1000_91a0()
       1000:9ff6 5e              POP        SI
                             LAB_1000_9ff7                                   XREF[2]:     1000:9fdd(j), 1000:9fe5(j)  
       1000:9ff7 56              PUSH       SI
       1000:9ff8 ad              LODSW      SI
       1000:9ff9 a3 de 47        MOV        [0x47de],AX
       1000:9ffc ad              LODSW      SI
       1000:9ffd 86 e0           XCHG       AL,AH
       1000:9fff 25 ff 03        AND        AX,0x3ff
       1000:a002 0d 00 08        OR         AX,0x800
       1000:a005 8b 3e bc 47     MOV        DI,word ptr [0x47bc]
       1000:a009 81 ff b0 a6     CMP        DI,0xa6b0
       1000:a00d 74 25           JZ         LAB_1000_a034
       1000:a00f 8b f0           MOV        SI,AX
       1000:a011 e8 5c 2f        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:a014 26 80 3c 80     CMP        byte ptr ES:[SI],0x80
       1000:a018 72 0c           JC         LAB_1000_a026
       1000:a01a 58              POP        AX
       1000:a01b 2d 04 00        SUB        AX,0x4
       1000:a01e 50              PUSH       AX
       1000:a01f c6 45 ff ff     MOV        byte ptr [DI + -0x1],0xff
       1000:a023 eb 07           JMP        LAB_1000_a02c
                             LAB_1000_a026                                   XREF[1]:     1000:a018(j)  
       1000:a026 e8 c8 e8        CALL       FUN_1000_88f1                                    undefined FUN_1000_88f1()
       1000:a029 e8 18 e9        CALL       FUN_1000_8944                                    undefined FUN_1000_8944()
                             LAB_1000_a02c                                   XREF[1]:     1000:a023(j)  
       1000:a02c be b0 a6        MOV        SI,0xa6b0
       1000:a02f e8 df ea        CALL       FUN_1000_8b11                                    undefined FUN_1000_8b11()
       1000:a032 eb 0a           JMP        LAB_1000_a03e
                             LAB_1000_a034                                   XREF[1]:     1000:a00d(j)  
       1000:a034 80 3e c6        CMP        byte ptr [0xc6],0x0
                 00 00
       1000:a039 75 03           JNZ        LAB_1000_a03e
       1000:a03b e8 71 e8        CALL       FUN_1000_88af                                    undefined FUN_1000_88af()
                             LAB_1000_a03e                                   XREF[2]:     1000:a032(j), 1000:a039(j)  
       1000:a03e 5e              POP        SI
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a03f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a03f                                   XREF[1]:     FUN_1000_9472:1000:94ee(c)  
       1000:a03f e8 19 28        CALL       FUN_1000_c85b                                    undefined FUN_1000_c85b()
       1000:a042 83 3e b6        CMP        word ptr [0x47b6],0x0
                 47 00
       1000:a047 75 61           JNZ        LAB_1000_a0aa
       1000:a049 8a 04           MOV        AL,byte ptr [SI]
       1000:a04b 24 0f           AND        AL,0xf
       1000:a04d 74 0f           JZ         LAB_1000_a05e
       1000:a04f 32 e4           XOR        AH,AH
       1000:a051 56              PUSH       SI
       1000:a052 48              DEC        AX
       1000:a053 d1 e0           SHL        AX,0x1
       1000:a055 bb 07 a1        MOV        BX,0xa107
       1000:a058 03 d8           ADD        BX,AX
       1000:a05a 2e ff 17        CALL       word ptr CS:[BX]
       1000:a05d 5e              POP        SI
                             LAB_1000_a05e                                   XREF[1]:     1000:a04d(j)  
       1000:a05e 8a 44 02        MOV        AL,byte ptr [SI + 0x2]
       1000:a061 24 0c           AND        AL,0xc
       1000:a063 74 2d           JZ         LAB_1000_a092
       1000:a065 f6 04 80        TEST       byte ptr [SI],0x80
       1000:a068 75 28           JNZ        LAB_1000_a092
       1000:a06a 8b c6           MOV        AX,SI
       1000:a06c 2d 78 aa        SUB        AX,0xaa78
       1000:a06f d1 e8           SHR        AX,0x1
       1000:a071 d1 e8           SHR        AX,0x1
       1000:a073 8a 1e c4 47     MOV        BL,byte ptr [0x47c4]
       1000:a077 d0 e3           SHL        BL,0x1
       1000:a079 d0 e3           SHL        BL,0x1
       1000:a07b d0 e3           SHL        BL,0x1
       1000:a07d 0a e3           OR         AH,BL
       1000:a07f 8b 2e bd 11     MOV        BP,word ptr [0x11bd]
       1000:a083 2e 89 46 00     MOV        word ptr CS:[BP + 0x0],AX
       1000:a087 2e c7 46        MOV        word ptr CS:[BP + 0x2],0x0
                 02 00 00
       1000:a08d 83 06 bd        ADD        word ptr [0x11bd],0x2
                 11 02
                             LAB_1000_a092                                   XREF[2]:     1000:a063(j), 1000:a068(j)  
       1000:a092 c6 06 19        MOV        byte ptr [0x19],0xff
                 00 ff
       1000:a097 80 0c 80        OR         byte ptr [SI],0x80
       1000:a09a 83 c6 04        ADD        SI,0x4
       1000:a09d 32 c0           XOR        AL,AL
       1000:a09f 86 06 a8 47     XCHG       byte ptr [0x47a8],AL
       1000:a0a3 0a c0           OR         AL,AL
       1000:a0a5 74 03           JZ         LAB_1000_a0aa
       1000:a0a7 be ff ff        MOV        SI,0xffff
                             LAB_1000_a0aa                                   XREF[2]:     1000:a047(j), 1000:a0a5(j)  
       1000:a0aa 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:a0af 75 31           JNZ        LAB_1000_a0e2
       1000:a0b1 83 3e c4        CMP        word ptr [0x47c4],0x10
                 47 10
       1000:a0b6 73 2a           JNC        LAB_1000_a0e2
       1000:a0b8 56              PUSH       SI
       1000:a0b9 e8 d2 f6        CALL       FUN_1000_978e                                    undefined FUN_1000_978e()
       1000:a0bc 5e              POP        SI
       1000:a0bd 80 3e 74        CMP        byte ptr [0x4774],0x0
                 47 00
       1000:a0c2 74 05           JZ         LAB_1000_a0c9
       1000:a0c4 56              PUSH       SI
       1000:a0c5 e8 f7 8d        CALL       FUN_1000_2ebf                                    undefined FUN_1000_2ebf()
       1000:a0c8 5e              POP        SI
                             LAB_1000_a0c9                                   XREF[1]:     1000:a0c2(j)  
       1000:a0c9 80 3e ea        CMP        byte ptr [0xea],0x0
                 00 00
       1000:a0ce 7f 12           JG         LAB_1000_a0e2
       1000:a0d0 e8 9d 41        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:a0d3 e8 27 fe        CALL       FUN_1000_9efd                                    undefined FUN_1000_9efd()
       1000:a0d6 b8 66 0f        MOV        AX,0xf66
       1000:a0d9 87 06 7e 22     XCHG       word ptr [0x227e],AX
       1000:a0dd ff d0           CALL       AX
       1000:a0df e8 a1 41        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_a0e2                                   XREF[3]:     1000:a0af(j), 1000:a0b6(j), 
                                                                                          1000:a0ce(j)  
       1000:a0e2 80 3e fb        CMP        byte ptr [0xfb],0x0
                 00 00
       1000:a0e7 78 06           JS         LAB_1000_a0ef
       1000:a0e9 a0 e8 28        MOV        AL,[0x28e8]
       1000:a0ec a2 e7 28        MOV        [0x28e7],AL
                             LAB_1000_a0ef                                   XREF[1]:     1000:a0e7(j)  
       1000:a0ef f8              CLC
       1000:a0f0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a0f1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a0f1                                   XREF[1]:     FUN_1000_9f9e:1000:9fe9(c)  
       1000:a0f1 80 3e e7        CMP        byte ptr [0x28e7],0x2
                 28 02
       1000:a0f6 75 0b           JNZ        LAB_1000_a103
       1000:a0f8 f6 44 02 10     TEST       byte ptr [SI + 0x2],0x10
       1000:a0fc 74 06           JZ         LAB_1000_a104
       1000:a0fe c6 06 e7        MOV        byte ptr [0x28e7],0x1
                 28 01
                             LAB_1000_a103                                   XREF[1]:     1000:a0f6(j)  
       1000:a103 c3              RET
                             LAB_1000_a104                                   XREF[1]:     1000:a0fc(j)  
       1000:a104 e9 83 eb        JMP        FUN_1000_8c8a                                    undefined FUN_1000_8c8a()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a1c4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a1c4                                   XREF[1]:     FUN_1000_3f15:1000:3fb3(c)  
       1000:a1c4 c6 06 a5        MOV        byte ptr [0x47a5],0xff
                 47 ff
       1000:a1c9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a1e2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a1e2                                   XREF[1]:     FUN_1000_3f15:1000:3fbd(c)  
       1000:a1e2 80 3e a5        CMP        byte ptr [0x47a5],0xff
                 47 ff
       1000:a1e7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a30b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a30b                                   XREF[2]:     FUN_1000_a396:1000:a3a7(c), 
                                                                                          FUN_1000_a396:1000:a3b8(c)  
       1000:a30b 26 ac           LODSB      ES:SI
       1000:a30d 3c 80           CMP        AL,0x80
       1000:a30f 73 19           JNC        LAB_1000_a32a
       1000:a311 53              PUSH       BX
       1000:a312 26 8a 1c        MOV        BL,byte ptr ES:[SI]
       1000:a315 46              INC        SI
       1000:a316 32 ff           XOR        BH,BH
       1000:a318 3c 01           CMP        AL,0x1
       1000:a31a 74 06           JZ         LAB_1000_a322
       1000:a31c 8b 87 00 00     MOV        AX,word ptr [BX + 0x0]
       1000:a320 5b              POP        BX
       1000:a321 c3              RET
                             LAB_1000_a322                                   XREF[1]:     1000:a31a(j)  
       1000:a322 8a 87 00 00     MOV        AL,byte ptr [BX + 0x0]
       1000:a326 32 e4           XOR        AH,AH
       1000:a328 5b              POP        BX
       1000:a329 c3              RET
                             LAB_1000_a32a                                   XREF[1]:     1000:a30f(j)  
       1000:a32a 75 05           JNZ        LAB_1000_a331
       1000:a32c 26 ac           LODSB      ES:SI
       1000:a32e 32 e4           XOR        AH,AH
       1000:a330 c3              RET
                             LAB_1000_a331                                   XREF[1]:     1000:a32a(j)  
       1000:a331 26 ad           LODSW      ES:SI
       1000:a333 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_a334()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a334                                   XREF[2]:     FUN_1000_a396:1000:a3bb(c), 
                                                                                          FUN_1000_a396:1000:a3db(c)  
       1000:a334 83 e3 1f        AND        BX,0x1f
       1000:a337 2e ff a7        JMP        word ptr CS:[BX + 0xa376]
                 76 a3
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a396()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a396                                   XREF[1]:     FUN_1000_9f9e:1000:9fcd(c)  
       1000:a396 83 ec 32        SUB        SP,0x32
       1000:a399 8b ec           MOV        BP,SP
       1000:a39b d1 e0           SHL        AX,0x1
       1000:a39d c4 36 72 aa     LES        SI,[0xaa72]
       1000:a3a1 03 f0           ADD        SI,AX
       1000:a3a3 26 8b 74 fe     MOV        SI,word ptr ES:[SI + -0x2]
                             LAB_1000_a3a7                                   XREF[1]:     1000:a3c9(j)  
       1000:a3a7 e8 61 ff        CALL       FUN_1000_a30b                                    undefined FUN_1000_a30b()
       1000:a3aa 8b d0           MOV        DX,AX
                             LAB_1000_a3ac                                   XREF[1]:     1000:a3be(j)  
       1000:a3ac 26 ac           LODSB      ES:SI
       1000:a3ae 3c ff           CMP        AL,0xff
       1000:a3b0 74 19           JZ         LAB_1000_a3cb
       1000:a3b2 a8 80           TEST       AL,0x80
       1000:a3b4 75 0a           JNZ        LAB_1000_a3c0
       1000:a3b6 8a d8           MOV        BL,AL
       1000:a3b8 e8 50 ff        CALL       FUN_1000_a30b                                    undefined FUN_1000_a30b()
       1000:a3bb e8 76 ff        CALL       FUN_1000_a334                                    undefined FUN_1000_a334()
       1000:a3be eb ec           JMP        LAB_1000_a3ac
                             LAB_1000_a3c0                                   XREF[1]:     1000:a3b4(j)  
       1000:a3c0 89 56 00        MOV        word ptr [BP + 0x0],DX
       1000:a3c3 89 46 02        MOV        word ptr [BP + 0x2],AX
       1000:a3c6 83 c5 04        ADD        BP,0x4
       1000:a3c9 eb dc           JMP        LAB_1000_a3a7
                             LAB_1000_a3cb                                   XREF[1]:     1000:a3b0(j)  
       1000:a3cb 8b f4           MOV        SI,SP
       1000:a3cd 3b f5           CMP        SI,BP
       1000:a3cf 74 11           JZ         LAB_1000_a3e2
       1000:a3d1 89 56 00        MOV        word ptr [BP + 0x0],DX
       1000:a3d4 ad              LODSW      SI
       1000:a3d5 8b d0           MOV        DX,AX
                             LAB_1000_a3d7                                   XREF[1]:     1000:a3e0(j)  
       1000:a3d7 ad              LODSW      SI
       1000:a3d8 8b d8           MOV        BX,AX
       1000:a3da ad              LODSW      SI
       1000:a3db e8 56 ff        CALL       FUN_1000_a334                                    undefined FUN_1000_a334()
       1000:a3de 3b f5           CMP        SI,BP
       1000:a3e0 72 f5           JC         LAB_1000_a3d7
                             LAB_1000_a3e2                                   XREF[1]:     1000:a3cf(j)  
       1000:a3e2 83 c4 32        ADD        SP,0x32
       1000:a3e5 0b d2           OR         DX,DX
       1000:a3e7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a637()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a637                                   XREF[1]:     FUN_1000_e76a:1000:e789(c)  
       1000:a637 f7 06 c8        TEST       word ptr [0xdbc8],0x4
                 db 04 00
       1000:a63d 75 05           JNZ        LAB_1000_a644
       1000:a63f c6 06 8e        MOV        byte ptr [0x288e],0xff
                 28 ff
                             LAB_1000_a644                                   XREF[1]:     1000:a63d(j)  
       1000:a644 a0 8e 28        MOV        AL,[0x288e]
       1000:a647 8a 26 a6 28     MOV        AH,byte ptr [0x28a6]
       1000:a64b ff 1e a5 39     CALLF      [0x39a5]
       1000:a64f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a650()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a650                                   XREF[1]:     FUN_1000_e76a:1000:e7e8(c)  
       1000:a650 f7 06 c8        TEST       word ptr [0xdbc8],0x400
                 db 00 04
       1000:a656 75 08           JNZ        LAB_1000_a660
       1000:a658 b0 ff           MOV        AL,0xff
       1000:a65a a2 96 28        MOV        [0x2896],AL
       1000:a65d a2 9e 28        MOV        [0x289e],AL
                             LAB_1000_a660                                   XREF[1]:     1000:a656(j)  
       1000:a660 8a 26 ae 28     MOV        AH,byte ptr [0x28ae]
       1000:a664 a0 96 28        MOV        AL,[0x2896]
       1000:a667 3c 04           CMP        AL,0x4
       1000:a669 73 02           JNC        LAB_1000_a66d
       1000:a66b b0 04           MOV        AL,0x4
                             LAB_1000_a66d                                   XREF[1]:     1000:a669(j)  
       1000:a66d ff 1e 85 39     CALLF      [0x3985]
       1000:a671 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a6cc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a6cc                                   XREF[2]:     FUN_1000_9efd:1000:9f0a(c), 
                                                                                          FUN_1000_a7c2:1000:a79e(c)  
       1000:a6cc 83 fb ff        CMP        BX,-0x1
       1000:a6cf 75 15           JNZ        LAB_1000_a6e6
                             LAB_1000_a6d1+2                                 XREF[0,1]:   1000:a6d4(RW)  
       1000:a6d1 b8 ff 0f        MOV        AX,0xfff
       1000:a6d4 2e 80 36        XOR        byte ptr CS:[LAB_1000_a6d1+2],0x10
                 d3 a6 10
       1000:a6da 8b 1e a6 22     MOV        BX,word ptr [0x22a6]
       1000:a6de e8 db 01        CALL       FUN_1000_a8bc                                    undefined FUN_1000_a8bc()
       1000:a6e1 e8 c1 00        CALL       FUN_1000_a7a5                                    undefined FUN_1000_a7a5()
       1000:a6e4 eb 5a           JMP        LAB_1000_a740
                             LAB_1000_a6e6                                   XREF[1]:     1000:a6cf(j)  
       1000:a6e6 53              PUSH       BX
       1000:a6e7 80 fb 0e        CMP        BL,0xe
       1000:a6ea 72 02           JC         LAB_1000_a6ee
       1000:a6ec b3 0e           MOV        BL,0xe
                             LAB_1000_a6ee                                   XREF[1]:     1000:a6ea(j)  
       1000:a6ee 80 e4 f3        AND        AH,0xf3
       1000:a6f1 80 3e dc        CMP        byte ptr [0x47dc],0x0
                 47 00
       1000:a6f6 74 09           JZ         LAB_1000_a701
       1000:a6f8 2b 06 14 d8     SUB        AX,word ptr [0xd814]
       1000:a6fc 05 e7 03        ADD        AX,0x3e7
       1000:a6ff eb 0f           JMP        LAB_1000_a710
                             LAB_1000_a701                                   XREF[1]:     1000:a6f6(j)  
       1000:a701 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:a706 75 08           JNZ        LAB_1000_a710
       1000:a708 d1 e3           SHL        BX,0x1
       1000:a70a 2b 87 f4 d7     SUB        AX,word ptr [BX + 0xd7f4]
       1000:a70e d1 eb           SHR        BX,0x1
                             LAB_1000_a710                                   XREF[2]:     1000:a6ff(j), 1000:a706(j)  
       1000:a710 80 fb 0e        CMP        BL,0xe
       1000:a713 75 12           JNZ        LAB_1000_a727
       1000:a715 8b c8           MOV        CX,AX
       1000:a717 80 e1 fe        AND        CL,0xfe
       1000:a71a 80 f9 2c        CMP        CL,0x2c
       1000:a71d 75 08           JNZ        LAB_1000_a727
       1000:a71f 59              POP        CX
       1000:a720 b1 0c           MOV        CL,0xc
       1000:a722 89 0e c4 47     MOV        word ptr [0x47c4],CX
       1000:a726 51              PUSH       CX
                             LAB_1000_a727                                   XREF[2]:     1000:a713(j), 1000:a71d(j)  
       1000:a727 e8 92 01        CALL       FUN_1000_a8bc                                    undefined FUN_1000_a8bc()
       1000:a72a e8 78 00        CALL       FUN_1000_a7a5                                    undefined FUN_1000_a7a5()
       1000:a72d 58              POP        AX
       1000:a72e e8 f2 e9        CALL       FUN_1000_9123                                    undefined FUN_1000_9123()
       1000:a731 d1 e0           SHL        AX,0x1
       1000:a733 d1 e0           SHL        AX,0x1
       1000:a735 d1 e0           SHL        AX,0x1
       1000:a737 05 fa 27        ADD        AX,0x27fa
       1000:a73a 8b f0           MOV        SI,AX
       1000:a73c 89 36 28 dc     MOV        word ptr [0xdc28],SI
                             LAB_1000_a740                                   XREF[1]:     1000:a6e4(j)  
       1000:a740 c6 06 2a        MOV        byte ptr [0xdc2a],0xff
                 dc ff
       1000:a745 e8 f7 00        CALL       FUN_1000_a83f                                    undefined FUN_1000_a83f()
       1000:a748 72 0a           JC         LAB_1000_a754
       1000:a74a 80 36 e2        XOR        byte ptr [0x37e2],0x6
                 37 06
       1000:a74f e8 ed 00        CALL       FUN_1000_a83f                                    undefined FUN_1000_a83f()
       1000:a752 73 07           JNC        LAB_1000_a75b
                             LAB_1000_a754                                   XREF[1]:     1000:a748(j)  
       1000:a754 e8 89 06        CALL       FUN_1000_ade0                                    undefined FUN_1000_ade0()
       1000:a757 e8 bd 2e        CALL       FUN_1000_d617                                    undefined FUN_1000_d617()
       1000:a75a f9              STC
                             LAB_1000_a75b                                   XREF[1]:     1000:a752(j)  
       1000:a75b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a75c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a75c                                   XREF[2]:     FUN_1000_9efd:1000:9f19(c), 
                                                                                          FUN_1000_a7c2:1000:a7a3(c)  
       1000:a75c e8 38 ea        CALL       FUN_1000_9197                                    undefined FUN_1000_9197()
       1000:a75f bd 00 00        MOV        BP,0x0
       1000:a762 be c2 a7        MOV        SI,0xa7c2
       1000:a765 e8 bd 32        CALL       FUN_1000_da25                                    undefined FUN_1000_da25()
       1000:a768 c6 06 2b        MOV        byte ptr [0xdc2b],0x1
                 dc 01
       1000:a76d be 11 38        MOV        SI,0x3811
       1000:a770 ff 1e 91 39     CALLF      [0x3991]
       1000:a774 a1 7a ce        MOV        AX,[0xce7a]
       1000:a777 a3 2c dc        MOV        [0xdc2c],AX
       1000:a77a c7 06 2e        MOV        word ptr [0xdc2e],0x8000
                 dc 00 80
       1000:a780 e8 91 00        CALL       FUN_1000_a814                                    undefined FUN_1000_a814()
       1000:a783 73 03           JNC        LAB_1000_a788
       1000:a785 e8 a6 00        CALL       FUN_1000_a82e                                    undefined FUN_1000_a82e()
                             LAB_1000_a788                                   XREF[4]:     1000:a783(j), 
                                                                                          FUN_1000_a7c2:1000:a7a1(j), 
                                                                                          FUN_1000_a7a5:1000:a7b7(j), 
                                                                                          FUN_1000_a7c2:1000:a7c5(j)  
       1000:a788 c3              RET
                             LAB_1000_a789                                   XREF[2]:     1000:a7d1(j), 1000:a7f8(j)  
       1000:a789 33 c0           XOR        AX,AX
       1000:a78b 87 06 30 dc     XCHG       word ptr [0xdc30],AX
       1000:a78f 0b c0           OR         AX,AX
       1000:a791 74 12           JZ         FUN_1000_a7a5
       1000:a793 50              PUSH       AX
       1000:a794 e8 0e 00        CALL       FUN_1000_a7a5                                    undefined FUN_1000_a7a5()
       1000:a797 58              POP        AX
       1000:a798 03 06 10 d8     ADD        AX,word ptr [0xd810]
       1000:a79c b3 0e           MOV        BL,0xe
       1000:a79e e8 2b ff        CALL       FUN_1000_a6cc                                    undefined FUN_1000_a6cc()
       1000:a7a1 73 e5           JNC        LAB_1000_a788
       1000:a7a3 eb b7           JMP        FUN_1000_a75c                                    undefined FUN_1000_a75c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_a7a5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a7a5                                   XREF[7]:     FUN_1000_0e66:1000:0e6d(c), 
                                                                                          FUN_1000_3f15:1000:3f2e(c), 
                                                                                          FUN_1000_9b8b:1000:9b8b(c), 
                                                                                          FUN_1000_a6cc:1000:a6e1(c), 
                                                                                          FUN_1000_a6cc:1000:a72a(c), 
                                                                                          FUN_1000_a7c2:1000:a791(j), 
                                                                                          FUN_1000_a7c2:1000:a794(c)  
       1000:a7a5 be c2 a7        MOV        SI,0xa7c2
       1000:a7a8 e8 b4 32        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:a7ab c7 06 26        MOV        word ptr [0xdc26],0x0
                 dc 00 00
       1000:a7b1 e8 69 2e        CALL       FUN_1000_d61d                                    undefined FUN_1000_d61d()
       1000:a7b4 e8 15 04        CALL       FUN_1000_abcc                                    undefined FUN_1000_abcc()
       1000:a7b7 74 cf           JZ         LAB_1000_a788
       1000:a7b9 e8 0a 04        CALL       FUN_1000_abc6                                    undefined FUN_1000_abc6()
       1000:a7bc e8 e2 01        CALL       FUN_1000_a9a1                                    undefined FUN_1000_a9a1()
       1000:a7bf e9 2b 06        JMP        FUN_1000_aded                                    undefined FUN_1000_aded()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_a7c2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a7c2                                   XREF[2]:     FUN_1000_abd5:1000:abd2(c), 
                                                                                          FUN_1000_d280:1000:d2a5(c)  
       1000:a7c2 e8 07 04        CALL       FUN_1000_abcc                                    undefined FUN_1000_abcc()
       1000:a7c5 74 c1           JZ         LAB_1000_a788
       1000:a7c7 83 3e 26        CMP        word ptr [0xdc26],0x0
                 dc 00
       1000:a7cc 75 07           JNZ        LAB_1000_a7d5
       1000:a7ce e8 16 02        CALL       FUN_1000_a9e7                                    undefined FUN_1000_a9e7()
       1000:a7d1 75 b6           JNZ        LAB_1000_a789
       1000:a7d3 eb 3c           JMP        LAB_1000_a811
                             LAB_1000_a7d5                                   XREF[1]:     1000:a7cc(j)  
       1000:a7d5 8b 16 7a ce     MOV        DX,word ptr [0xce7a]
       1000:a7d9 33 ff           XOR        DI,DI
       1000:a7db 8b 1e 2c dc     MOV        BX,word ptr [0xdc2c]
       1000:a7df 8b 2e 2e dc     MOV        BP,word ptr [0xdc2e]
       1000:a7e3 8b 0e 82 28     MOV        CX,word ptr [0x2882]
       1000:a7e7 8b 36 84 28     MOV        SI,word ptr [0x2884]
       1000:a7eb 03 ee           ADD        BP,SI
       1000:a7ed 13 d9           ADC        BX,CX
       1000:a7ef 2b d3           SUB        DX,BX
       1000:a7f1 78 1e           JS         LAB_1000_a811
                             LAB_1000_a7f3                                   XREF[1]:     1000:a804(j)  
       1000:a7f3 57              PUSH       DI
       1000:a7f4 e8 1d 00        CALL       FUN_1000_a814                                    undefined FUN_1000_a814()
       1000:a7f7 5f              POP        DI
       1000:a7f8 73 8f           JNC        LAB_1000_a789
       1000:a7fa 2b fe           SUB        DI,SI
       1000:a7fc 1b d1           SBB        DX,CX
       1000:a7fe 72 06           JC         LAB_1000_a806
       1000:a800 03 ee           ADD        BP,SI
       1000:a802 13 d9           ADC        BX,CX
       1000:a804 eb ed           JMP        LAB_1000_a7f3
                             LAB_1000_a806                                   XREF[1]:     1000:a7fe(j)  
       1000:a806 89 1e 2c dc     MOV        word ptr [0xdc2c],BX
       1000:a80a 89 2e 2e dc     MOV        word ptr [0xdc2e],BP
       1000:a80e e8 1d 00        CALL       FUN_1000_a82e                                    undefined FUN_1000_a82e()
                             LAB_1000_a811                                   XREF[2]:     1000:a7d3(j), 1000:a7f1(j)  
       1000:a811 e9 a5 01        JMP        FUN_1000_a9b9                                    undefined FUN_1000_a9b9()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a814()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a814                                   XREF[2]:     FUN_1000_a75c:1000:a780(c), 
                                                                                          FUN_1000_a7c2:1000:a7f4(c)  
       1000:a814 8b 3e 26 dc     MOV        DI,word ptr [0xdc26]
       1000:a818 0b ff           OR         DI,DI
       1000:a81a 74 11           JZ         LAB_1000_a82d
       1000:a81c 8e 06 13 38     MOV        ES,word ptr [0x3813]
       1000:a820 26 8a 05        MOV        AL,byte ptr ES:[DI]
       1000:a823 3c ff           CMP        AL,0xff
       1000:a825 73 06           JNC        LAB_1000_a82d
       1000:a827 47              INC        DI
       1000:a828 89 3e 26 dc     MOV        word ptr [0xdc26],DI
       1000:a82c f9              STC
                             LAB_1000_a82d                                   XREF[2]:     1000:a81a(j), 1000:a825(j)  
       1000:a82d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a82e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a82e                                   XREF[2]:     FUN_1000_a75c:1000:a785(c), 
                                                                                          FUN_1000_a7c2:1000:a80e(c)  
       1000:a82e 3a 06 2a dc     CMP        AL,byte ptr [0xdc2a]
       1000:a832 74 0a           JZ         LAB_1000_a83e
       1000:a834 a2 2a dc        MOV        [0xdc2a],AL
       1000:a837 8b 36 28 dc     MOV        SI,word ptr [0xdc28]
       1000:a83b e9 a5 f5        JMP        FUN_1000_9de3                                    undefined FUN_1000_9de3()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_a83e                                   XREF[1]:     1000:a832(j)  
       1000:a83e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a83f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a83f                                   XREF[2]:     FUN_1000_a6cc:1000:a745(c), 
                                                                                          FUN_1000_a6cc:1000:a74f(c)  
       1000:a83f c7 06 26        MOV        word ptr [0xdc26],0x0
                 dc 00 00
       1000:a845 e8 e7 05        CALL       FUN_1000_ae2f                                    undefined FUN_1000_ae2f()
       1000:a848 74 33           JZ         LAB_1000_a87d
       1000:a84a e8 c7 03        CALL       FUN_1000_ac14                                    undefined FUN_1000_ac14()
       1000:a84d e8 bb 00        CALL       FUN_1000_a90b                                    undefined FUN_1000_a90b()
       1000:a850 f5              CMC
       1000:a851 73 2a           JNC        LAB_1000_a87d
       1000:a853 c4 3e 11 38     LES        DI,[0x3811]
       1000:a857 83 c7 1a        ADD        DI,0x1a
       1000:a85a 26 80 3d 05     CMP        byte ptr ES:[DI],0x5
       1000:a85e 75 11           JNZ        LAB_1000_a871
       1000:a860 26 8b 4d 01     MOV        CX,word ptr ES:[DI + 0x1]
       1000:a864 83 c7 04        ADD        DI,0x4
       1000:a867 8b c7           MOV        AX,DI
       1000:a869 05 02 00        ADD        AX,0x2
       1000:a86c a3 26 dc        MOV        [0xdc26],AX
       1000:a86f 03 f9           ADD        DI,CX
                             LAB_1000_a871                                   XREF[1]:     1000:a85e(j)  
       1000:a871 89 3e 11 38     MOV        word ptr [0x3811],DI
       1000:a875 29 3e 15 38     SUB        word ptr [0x3815],DI
       1000:a879 e8 3d 01        CALL       FUN_1000_a9b9                                    undefined FUN_1000_a9b9()
       1000:a87c f9              STC
                             LAB_1000_a87d                                   XREF[2]:     1000:a848(j), 1000:a851(j)  
       1000:a87d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a87e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a87e                                   XREF[1]:     FUN_1000_e76a:1000:e7c2(c)  
       1000:a87e 9c              PUSHF
       1000:a87f fb              STI
       1000:a880 e8 ac 05        CALL       FUN_1000_ae2f                                    undefined FUN_1000_ae2f()
       1000:a883 74 2a           JZ         LAB_1000_a8af
       1000:a885 e8 8c 03        CALL       FUN_1000_ac14                                    undefined FUN_1000_ac14()
       1000:a888 b0 0b           MOV        AL,0xb
       1000:a88a e8 5c 03        CALL       FUN_1000_abe9                                    undefined FUN_1000_abe9()
       1000:a88d be 11 38        MOV        SI,0x3811
       1000:a890 ff 1e 91 39     CALLF      [0x3991]
       1000:a894 ff 36 7a ce     PUSH       word ptr [0xce7a]
                             LAB_1000_a898                                   XREF[1]:     1000:a89b(j)  
       1000:a898 e8 4c 01        CALL       FUN_1000_a9e7                                    undefined FUN_1000_a9e7()
       1000:a89b 74 fb           JZ         LAB_1000_a898
       1000:a89d a1 7a ce        MOV        AX,[0xce7a]
       1000:a8a0 5b              POP        BX
       1000:a8a1 2b c3           SUB        AX,BX
       1000:a8a3 b9 00 08        MOV        CX,0x800
       1000:a8a6 f7 e1           MUL        CX
       1000:a8a8 89 16 82 28     MOV        word ptr [0x2882],DX
       1000:a8ac a3 84 28        MOV        [0x2884],AX
                             LAB_1000_a8af                                   XREF[1]:     1000:a883(j)  
       1000:a8af 9d              POPF
       1000:a8b0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a8b1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a8b1                                   XREF[3]:     FUN_1000_a8bc:1000:a8cf(c), 
                                                                                          FUN_1000_a8bc:1000:a8d7(c), 
                                                                                          FUN_1000_a8bc:1000:a8dd(c)  
       1000:a8b1 24 0f           AND        AL,0xf
       1000:a8b3 04 30           ADD        AL,0x30
       1000:a8b5 3c 39           CMP        AL,0x39
       1000:a8b7 76 02           JBE        LAB_1000_a8bb
       1000:a8b9 04 07           ADD        AL,0x7
                             LAB_1000_a8bb                                   XREF[1]:     1000:a8b7(j)  
       1000:a8bb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a8bc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a8bc                                   XREF[3]:     FUN_1000_a6cc:1000:a6de(c), 
                                                                                          FUN_1000_a6cc:1000:a727(c), 
                                                                                          FUN_1000_ab4f:1000:ab57(c)  
       1000:a8bc bf db 37        MOV        DI,0x37db
       1000:a8bf 1e              PUSH       DS
       1000:a8c0 07              POP        ES
       1000:a8c1 50              PUSH       AX
       1000:a8c2 8a c3           MOV        AL,BL
       1000:a8c4 04 41           ADD        AL,0x41
       1000:a8c6 aa              STOSB      ES:DI
       1000:a8c7 47              INC        DI
       1000:a8c8 47              INC        DI
       1000:a8c9 aa              STOSB      ES:DI
       1000:a8ca 5b              POP        BX
       1000:a8cb b1 04           MOV        CL,0x4
       1000:a8cd 8a c7           MOV        AL,BH
       1000:a8cf e8 df ff        CALL       FUN_1000_a8b1                                    undefined FUN_1000_a8b1()
       1000:a8d2 aa              STOSB      ES:DI
       1000:a8d3 8a c3           MOV        AL,BL
       1000:a8d5 d2 e8           SHR        AL,CL
       1000:a8d7 e8 d7 ff        CALL       FUN_1000_a8b1                                    undefined FUN_1000_a8b1()
       1000:a8da aa              STOSB      ES:DI
       1000:a8db 8a c3           MOV        AL,BL
       1000:a8dd e8 d1 ff        CALL       FUN_1000_a8b1                                    undefined FUN_1000_a8b1()
       1000:a8e0 aa              STOSB      ES:DI
       1000:a8e1 b0 4f           MOV        AL,0x4f
       1000:a8e3 80 3e ea        CMP        byte ptr [0xea],0x0
                 00 00
       1000:a8e8 7f 10           JG         LAB_1000_a8fa
       1000:a8ea 80 3e 06        CMP        byte ptr [0x6],0x80
                 00 80
       1000:a8ef 75 09           JNZ        LAB_1000_a8fa
       1000:a8f1 80 3e 04        CMP        byte ptr [0x4],0x1
                 00 01
       1000:a8f6 74 02           JZ         LAB_1000_a8fa
       1000:a8f8 b0 49           MOV        AL,0x49
                             LAB_1000_a8fa                                   XREF[3]:     1000:a8e8(j), 1000:a8ef(j), 
                                                                                          1000:a8f6(j)  
       1000:a8fa aa              STOSB      ES:DI
       1000:a8fb b0 20           MOV        AL,0x20
       1000:a8fd d2 ef           SHR        BH,CL
       1000:a8ff 0a 3e e0 47     OR         BH,byte ptr [0x47e0]
       1000:a903 74 04           JZ         LAB_1000_a909
       1000:a905 8a c7           MOV        AL,BH
       1000:a907 04 41           ADD        AL,0x41
                             LAB_1000_a909                                   XREF[1]:     1000:a903(j)  
       1000:a909 aa              STOSB      ES:DI
                             LAB_1000_a90a                                   XREF[1]:     FUN_1000_a90b:1000:a91f(j)  
       1000:a90a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a90b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a90b                                   XREF[2]:     FUN_1000_a83f:1000:a84d(c), 
                                                                                          FUN_1000_ab4f:1000:ab70(c)  
       1000:a90b ba da 37        MOV        DX,0x37da
       1000:a90e 33 c0           XOR        AX,AX
       1000:a910 a3 11 38        MOV        [0x3811],AX
       1000:a913 a3 17 38        MOV        [0x3817],AX
       1000:a916 a3 1f 38        MOV        [0x381f],AX
       1000:a919 a2 23 38        MOV        [0x3823],AL
       1000:a91c e8 dc 48        CALL       FUN_1000_f1fb                                    undefined FUN_1000_f1fb()
       1000:a91f 72 e9           JC         LAB_1000_a90a
       1000:a921 89 1e 21 38     MOV        word ptr [0x3821],BX
       1000:a925 83 e9 01        SUB        CX,0x1
       1000:a928 83 dd 00        SBB        BP,0x0
       1000:a92b 89 0e c4 db     MOV        word ptr [0xdbc4],CX
       1000:a92f 89 2e c6 db     MOV        word ptr [0xdbc6],BP
       1000:a933 a3 c0 db        MOV        [0xdbc0],AX
       1000:a936 89 16 c2 db     MOV        word ptr [0xdbc2],DX
       1000:a93a be 11 38        MOV        SI,0x3811
       1000:a93d c4 14           LES        DX,[SI]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a93f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a93f                                   XREF[1]:     FUN_1000_a9b9:1000:a9dc(c)  
       1000:a93f 52              PUSH       DX
       1000:a940 8b 16 c0 db     MOV        DX,word ptr [0xdbc0]
       1000:a944 8b 0e c2 db     MOV        CX,word ptr [0xdbc2]
       1000:a948 b8 00 42        MOV        AX,0x4200
       1000:a94b cd 21           INT        0x21
       1000:a94d 5a              POP        DX
       1000:a94e 56              PUSH       SI
       1000:a94f 1e              PUSH       DS
       1000:a950 b9 00 20        MOV        CX,0x2000
       1000:a953 a1 c4 db        MOV        AX,[0xdbc4]
       1000:a956 29 0e c4 db     SUB        word ptr [0xdbc4],CX
       1000:a95a 83 1e c6        SBB        word ptr [0xdbc6],0x0
                 db 00
       1000:a95f 73 03           JNC        LAB_1000_a964
       1000:a961 8b c8           MOV        CX,AX
       1000:a963 41              INC        CX
                             LAB_1000_a964                                   XREF[1]:     1000:a95f(j)  
       1000:a964 06              PUSH       ES
       1000:a965 1f              POP        DS
       1000:a966 b4 3f           MOV        AH,0x3f
       1000:a968 cd 21           INT        0x21
       1000:a96a 1f              POP        DS
       1000:a96b 5e              POP        SI
       1000:a96c 89 44 04        MOV        word ptr [SI + 0x4],AX
       1000:a96f 72 47           JC         LAB_1000_a9b8
       1000:a971 01 06 c0 db     ADD        word ptr [0xdbc0],AX
       1000:a975 83 16 c2        ADC        word ptr [0xdbc2],0x0
                 db 00
       1000:a97a c6 06 6a        MOV        byte ptr [0x376a],0xff
                 37 ff
       1000:a97f c6 44 06 01     MOV        byte ptr [SI + 0x6],0x1
       1000:a983 8a 1e 23 38     MOV        BL,byte ptr [0x3823]
       1000:a987 80 fb 3f        CMP        BL,0x3f
       1000:a98a 73 06           JNC        LAB_1000_a992
       1000:a98c fe 06 23 38     INC        byte ptr [0x3823]
       1000:a990 fe c3           INC        BL
                             LAB_1000_a992                                   XREF[1]:     1000:a98a(j)  
       1000:a992 88 5c 07        MOV        byte ptr [SI + 0x7],BL
       1000:a995 83 3e c6        CMP        word ptr [0xdbc6],0x0
                 db 00
       1000:a99a f8              CLC
       1000:a99b 79 1b           JNS        LAB_1000_a9b8
       1000:a99d 80 4c 07 80     OR         byte ptr [SI + 0x7],0x80
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a9a1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a9a1                                   XREF[2]:     FUN_1000_a7a5:1000:a7bc(c), 
                                                                                          FUN_1000_ac14:1000:ac21(c)  
       1000:a9a1 33 db           XOR        BX,BX
       1000:a9a3 87 1e 21 38     XCHG       word ptr [0x3821],BX
       1000:a9a7 0b db           OR         BX,BX
       1000:a9a9 74 0c           JZ         LAB_1000_a9b7
       1000:a9ab 3b 1e ba db     CMP        BX,word ptr [0xdbba]
       1000:a9af 74 06           JZ         LAB_1000_a9b7
       1000:a9b1 50              PUSH       AX
       1000:a9b2 b4 3e           MOV        AH,0x3e
       1000:a9b4 cd 21           INT        0x21
       1000:a9b6 58              POP        AX
                             LAB_1000_a9b7                                   XREF[2]:     1000:a9a9(j), 1000:a9af(j)  
       1000:a9b7 f8              CLC
                             LAB_1000_a9b8                                   XREF[2]:     FUN_1000_a93f:1000:a96f(j), 
                                                                                          FUN_1000_a93f:1000:a99b(j)  
       1000:a9b8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a9b9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a9b9                                   XREF[4]:     FUN_1000_a7c2:1000:a811(c), 
                                                                                          FUN_1000_a83f:1000:a879(c), 
                                                                                          FUN_1000_ab4f:1000:ab7a(c), 
                                                                                          FUN_1000_ab92:1000:ab92(c)  
       1000:a9b9 e8 e7 01        CALL       FUN_1000_aba3                                    undefined FUN_1000_aba3()
       1000:a9bc 74 28           JZ         LAB_1000_a9e6
       1000:a9be be 11 38        MOV        SI,0x3811
       1000:a9c1 80 3e 17        CMP        byte ptr [0x3817],0x0
                 38 00
       1000:a9c6 74 0a           JZ         LAB_1000_a9d2
       1000:a9c8 80 3e 1f        CMP        byte ptr [0x381f],0x0
                 38 00
       1000:a9cd 75 17           JNZ        LAB_1000_a9e6
       1000:a9cf be 19 38        MOV        SI,0x3819
                             LAB_1000_a9d2                                   XREF[1]:     1000:a9c6(j)  
       1000:a9d2 8b 1e 21 38     MOV        BX,word ptr [0x3821]
       1000:a9d6 c4 14           LES        DX,[SI]
       1000:a9d8 83 c2 06        ADD        DX,0x6
       1000:a9db 56              PUSH       SI
       1000:a9dc e8 60 ff        CALL       FUN_1000_a93f                                    undefined FUN_1000_a93f()
       1000:a9df 5e              POP        SI
       1000:a9e0 72 04           JC         LAB_1000_a9e6
       1000:a9e2 ff 1e a1 39     CALLF      [0x39a1]
                             LAB_1000_a9e6                                   XREF[3]:     1000:a9bc(j), 1000:a9cd(j), 
                                                                                          1000:a9e0(j)  
       1000:a9e6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a9e7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a9e7                                   XREF[2]:     FUN_1000_a7c2:1000:a7ce(c), 
                                                                                          FUN_1000_a87e:1000:a898(c)  
       1000:a9e7 80 3e 17        CMP        byte ptr [0x3817],0x3
                 38 03
       1000:a9ec 74 05           JZ         LAB_1000_a9f3
       1000:a9ee 80 3e 1f        CMP        byte ptr [0x381f],0x3
                 38 03
                             LAB_1000_a9f3                                   XREF[1]:     1000:a9ec(j)  
       1000:a9f3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_a9f4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_a9f4                                   XREF[1]:     FUN_1000_cad4:1000:cafb(c)  
       1000:a9f4 8b 36 24 38     MOV        SI,word ptr [0x3824]
       1000:a9f8 c4 3c           LES        DI,[SI]
       1000:a9fa 83 c7 06        ADD        DI,0x6
       1000:a9fd e8 70 00        CALL       FUN_1000_aa70                                    undefined FUN_1000_aa70()
       1000:aa00 ff 1e a1 39     CALLF      [0x39a1]
       1000:aa04 b8 11 38        MOV        AX,0x3811
       1000:aa07 35 19 38        XOR        AX,0x3819
       1000:aa0a 31 06 24 38     XOR        word ptr [0x3824],AX
                             LAB_1000_aa0e                                   XREF[1]:     FUN_1000_aa0f:1000:aa13(j)  
       1000:aa0e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_aa0f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_aa0f                                   XREF[1]:     FUN_1000_ca1b:1000:ca37(c)  
       1000:aa0f a1 1c dc        MOV        AX,[0xdc1c]
       1000:aa12 40              INC        AX
       1000:aa13 74 f9           JZ         LAB_1000_aa0e
       1000:aa15 c6 06 6a        MOV        byte ptr [0x376a],0xff
                 37 ff
       1000:aa1a e8 f7 01        CALL       FUN_1000_ac14                                    undefined FUN_1000_ac14()
       1000:aa1d 33 c0           XOR        AX,AX
       1000:aa1f a3 11 38        MOV        [0x3811],AX
       1000:aa22 a3 17 38        MOV        [0x3817],AX
       1000:aa25 a3 1f 38        MOV        [0x381f],AX
       1000:aa28 be 11 38        MOV        SI,0x3811
       1000:aa2b c4 3c           LES        DI,[SI]
       1000:aa2d e8 40 00        CALL       FUN_1000_aa70                                    undefined FUN_1000_aa70()
       1000:aa30 83 2e 15        SUB        word ptr [0x3815],0x20
                 38 20
       1000:aa35 8b 0e 15 38     MOV        CX,word ptr [0x3815]
       1000:aa39 89 0e 1d 38     MOV        word ptr [0x381d],CX
       1000:aa3d 83 c1 06        ADD        CX,0x6
       1000:aa40 be 1a 00        MOV        SI,0x1a
       1000:aa43 33 ff           XOR        DI,DI
       1000:aa45 f3 26 a4        MOVSB.REP  ES:DI,ES:SI
       1000:aa48 c4 3e 19 38     LES        DI,[0x3819]
       1000:aa4c 8b 0e 15 38     MOV        CX,word ptr [0x3815]
       1000:aa50 1e              PUSH       DS
       1000:aa51 c5 36 11 38     LDS        SI,[0x3811]
       1000:aa55 a5              MOVSW      ES:DI,SI
       1000:aa56 a5              MOVSW      ES:DI,SI
       1000:aa57 a5              MOVSW      ES:DI,SI
       1000:aa58 b0 80           MOV        AL,0x80
       1000:aa5a f3 aa           STOSB.REP  ES:DI
       1000:aa5c 1f              POP        DS
       1000:aa5d be 19 38        MOV        SI,0x3819
       1000:aa60 89 36 24 38     MOV        word ptr [0x3824],SI
       1000:aa64 ff 1e 91 39     CALLF      [0x3991]
       1000:aa68 be 11 38        MOV        SI,0x3811
       1000:aa6b ff 1e a1 39     CALLF      [0x39a1]
       1000:aa6f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_aa70()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_aa70                                   XREF[2]:     FUN_1000_a9f4:1000:a9fd(c), 
                                                                                          FUN_1000_aa0f:1000:aa2d(c)  
       1000:aa70 56              PUSH       SI
       1000:aa71 1e              PUSH       DS
       1000:aa72 8b 36 1c dc     MOV        SI,word ptr [0xdc1c]
       1000:aa76 8e 1e de db     MOV        DS,word ptr [0xdbde]
       1000:aa7a ad              LODSW      SI
       1000:aa7b 2d 04 00        SUB        AX,0x4
       1000:aa7e 8b c8           MOV        CX,AX
       1000:aa80 d1 e9           SHR        CX,0x1
       1000:aa82 f3 a5           MOVSW.REP  ES:DI,SI
       1000:aa84 12 c9           ADC        CL,CL
       1000:aa86 f3 a4           MOVSB.REP  ES:DI,SI
       1000:aa88 1f              POP        DS
       1000:aa89 5e              POP        SI
       1000:aa8a 89 44 04        MOV        word ptr [SI + 0x4],AX
       1000:aa8d c6 44 06 01     MOV        byte ptr [SI + 0x6],0x1
       1000:aa91 c6 44 07 41     MOV        byte ptr [SI + 0x7],0x41
       1000:aa95 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_aa96()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_aa96                                   XREF[1]:     FUN_1000_ad5e:1000:ad63(c)  
       1000:aa96 33 c0           XOR        AX,AX
       1000:aa98 38 26 74 47     CMP        byte ptr [0x4774],AH
       1000:aa9c 74 09           JZ         LAB_1000_aaa7
       1000:aa9e 80 3e 2a        CMP        byte ptr [0x2a],0x48
                 00 48
       1000:aaa3 75 6f           JNZ        LAB_1000_ab14
       1000:aaa5 eb 6b           JMP        LAB_1000_ab12
                             LAB_1000_aaa7                                   XREF[1]:     1000:aa9c(j)  
       1000:aaa7 b0 0d           MOV        AL,0xd
       1000:aaa9 38 26 d9 46     CMP        byte ptr [0x46d9],AH
       1000:aaad 75 65           JNZ        LAB_1000_ab14
       1000:aaaf b0 01           MOV        AL,0x1
       1000:aab1 38 26 03 dd     CMP        byte ptr [0xdd03],AH
       1000:aab5 75 5d           JNZ        LAB_1000_ab14
       1000:aab7 40              INC        AX
       1000:aab8 38 26 fb 00     CMP        byte ptr [0xfb],AH
       1000:aabc 78 56           JS         LAB_1000_ab14
       1000:aabe 40              INC        AX
       1000:aabf 38 26 c6 00     CMP        byte ptr [0xc6],AH
       1000:aac3 75 4f           JNZ        LAB_1000_ab14
       1000:aac5 40              INC        AX
       1000:aac6 38 26 ea 00     CMP        byte ptr [0xea],AH
       1000:aaca 7f 48           JG         LAB_1000_ab14
       1000:aacc 40              INC        AX
       1000:aacd 8b 16 04 00     MOV        DX,word ptr [0x4]
       1000:aad1 8b 1e 06 00     MOV        BX,word ptr [0x6]
       1000:aad5 80 fb 80        CMP        BL,0x80
       1000:aad8 75 05           JNZ        LAB_1000_aadf
       1000:aada 80 fa 01        CMP        DL,0x1
       1000:aadd 75 10           JNZ        LAB_1000_aaef
                             LAB_1000_aadf                                   XREF[1]:     1000:aad8(j)  
       1000:aadf 8a 1e c9 11     MOV        BL,byte ptr [0x11c9]
       1000:aae3 80 e3 03        AND        BL,0x3
       1000:aae6 74 2c           JZ         LAB_1000_ab14
       1000:aae8 40              INC        AX
       1000:aae9 fe cb           DEC        BL
       1000:aaeb 74 27           JZ         LAB_1000_ab14
       1000:aaed 40              INC        AX
       1000:aaee c3              RET
                             LAB_1000_aaef                                   XREF[1]:     1000:aadd(j)  
       1000:aaef 80 fe 20        CMP        DH,0x20
       1000:aaf2 73 14           JNC        LAB_1000_ab08
       1000:aaf4 b0 09           MOV        AL,0x9
       1000:aaf6 80 fe 07        CMP        DH,0x7
       1000:aaf9 1c 00           SBB        AL,0x0
       1000:aafb 80 3e 2a        CMP        byte ptr [0x2a],0x48
                 00 48
       1000:ab00 72 12           JC         LAB_1000_ab14
       1000:ab02 d0 eb           SHR        BL,0x1
       1000:ab04 72 0e           JC         LAB_1000_ab14
       1000:ab06 eb 0a           JMP        LAB_1000_ab12
                             LAB_1000_ab08                                   XREF[1]:     1000:aaf2(j)  
       1000:ab08 b0 0c           MOV        AL,0xc
       1000:ab0a 75 08           JNZ        LAB_1000_ab14
       1000:ab0c 48              DEC        AX
       1000:ab0d 80 fa 03        CMP        DL,0x3
       1000:ab10 75 02           JNZ        LAB_1000_ab14
                             LAB_1000_ab12                                   XREF[2]:     1000:aaa5(j), 1000:ab06(j)  
       1000:ab12 b0 0a           MOV        AL,0xa
                             LAB_1000_ab14                                   XREF[12]:    1000:aaa3(j), 1000:aaad(j), 
                                                                                          1000:aab5(j), 1000:aabc(j), 
                                                                                          1000:aac3(j), 1000:aaca(j), 
                                                                                          1000:aae6(j), 1000:aaeb(j), 
                                                                                          1000:ab00(j), 1000:ab04(j), 
                                                                                          1000:ab0a(j), 1000:ab10(j)  
       1000:ab14 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ab15()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ab15                                   XREF[5]:     FUN_1000_0acd:1000:0b1e(c), 
                                                                                          FUN_1000_2566:1000:2638(c), 
                                                                                          FUN_1000_2773:1000:277b(c), 
                                                                                          FUN_1000_488a:1000:4904(c), 
                                                                                          FUN_1000_4d06:1000:4d45(c)  
       1000:ab15 e8 b4 00        CALL       FUN_1000_abcc                                    undefined FUN_1000_abcc()
       1000:ab18 75 2a           JNZ        LAB_1000_ab44
       1000:ab1a e8 12 03        CALL       FUN_1000_ae2f                                    undefined FUN_1000_ae2f()
       1000:ab1d 74 25           JZ         LAB_1000_ab44
       1000:ab1f 06              PUSH       ES
       1000:ab20 e8 4d 37        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:ab23 3a 06 6a 37     CMP        AL,byte ptr [0x376a]
       1000:ab27 74 0c           JZ         LAB_1000_ab35
       1000:ab29 e8 e8 00        CALL       FUN_1000_ac14                                    undefined FUN_1000_ac14()
       1000:ab2c 0a c0           OR         AL,AL
       1000:ab2e 74 10           JZ         LAB_1000_ab40
       1000:ab30 e8 b6 00        CALL       FUN_1000_abe9                                    undefined FUN_1000_abe9()
       1000:ab33 eb 04           JMP        LAB_1000_ab39
                             LAB_1000_ab35                                   XREF[1]:     1000:ab27(j)  
       1000:ab35 c4 3e 11 38     LES        DI,[0x3811]
                             LAB_1000_ab39                                   XREF[1]:     1000:ab33(j)  
       1000:ab39 be 11 38        MOV        SI,0x3811
       1000:ab3c ff 1e 91 39     CALLF      [0x3991]
                             LAB_1000_ab40                                   XREF[1]:     1000:ab2e(j)  
       1000:ab40 e8 40 37        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:ab43 07              POP        ES
                             LAB_1000_ab44                                   XREF[6]:     1000:ab18(j), 1000:ab1d(j), 
                                                                                          FUN_1000_ab4f:1000:ab62(j), 
                                                                                          FUN_1000_ab4f:1000:ab67(j), 
                                                                                          FUN_1000_ab92:1000:ab98(j), 
                                                                                          FUN_1000_aba9:1000:abac(j)  
       1000:ab44 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ab4f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ab4f                                   XREF[3]:     FUN_1000_021c:1000:023d(c), 
                                                                                          FUN_1000_2566:1000:261c(c), 
                                                                                          FUN_1000_42e9:1000:4340(c)  
       1000:ab4f c6 06 e0        MOV        byte ptr [0x47e0],0x0
                 47 00
       1000:ab54 bb 19 00        MOV        BX,0x19
       1000:ab57 e8 62 fd        CALL       FUN_1000_a8bc                                    undefined FUN_1000_a8bc()
       1000:ab5a c6 06 e2        MOV        byte ptr [0x37e2],0x49
                 37 49
       1000:ab5f e8 6a 00        CALL       FUN_1000_abcc                                    undefined FUN_1000_abcc()
       1000:ab62 75 e0           JNZ        LAB_1000_ab44
       1000:ab64 e8 c8 02        CALL       FUN_1000_ae2f                                    undefined FUN_1000_ae2f()
       1000:ab67 74 db           JZ         LAB_1000_ab44
       1000:ab69 06              PUSH       ES
       1000:ab6a e8 03 37        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:ab6d e8 a4 00        CALL       FUN_1000_ac14                                    undefined FUN_1000_ac14()
       1000:ab70 e8 98 fd        CALL       FUN_1000_a90b                                    undefined FUN_1000_a90b()
       1000:ab73 72 18           JC         LAB_1000_ab8d
       1000:ab75 83 06 11        ADD        word ptr [0x3811],0x1a
                 38 1a
       1000:ab7a e8 3c fe        CALL       FUN_1000_a9b9                                    undefined FUN_1000_a9b9()
       1000:ab7d be 92 ab        MOV        SI,0xab92
       1000:ab80 bd 01 00        MOV        BP,0x1
       1000:ab83 e8 9f 2e        CALL       FUN_1000_da25                                    undefined FUN_1000_da25()
       1000:ab86 be 11 38        MOV        SI,0x3811
       1000:ab89 ff 1e 91 39     CALLF      [0x3991]
                             LAB_1000_ab8d                                   XREF[1]:     1000:ab73(j)  
       1000:ab8d e8 f3 36        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:ab90 07              POP        ES
       1000:ab91 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ab92()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ab92                                   XREF[1]:     FUN_1000_aba9:1000:abb3(c)  
       1000:ab92 e8 24 fe        CALL       FUN_1000_a9b9                                    undefined FUN_1000_a9b9()
       1000:ab95 e8 0b 00        CALL       FUN_1000_aba3                                    undefined FUN_1000_aba3()
       1000:ab98 75 aa           JNZ        LAB_1000_ab44
       1000:ab9a e8 50 02        CALL       FUN_1000_aded                                    undefined FUN_1000_aded()
       1000:ab9d be 92 ab        MOV        SI,0xab92
       1000:aba0 e9 bc 2e        JMP        FUN_1000_da5f                                    undefined FUN_1000_da5f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_aba3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_aba3                                   XREF[5]:     FUN_1000_a9b9:1000:a9b9(c), 
                                                                                          FUN_1000_ab92:1000:ab95(c), 
                                                                                          FUN_1000_aba9:1000:abb6(c), 
                                                                                          FUN_1000_ddf0:1000:ddf7(c), 
                                                                                          FUN_1000_ddf0:1000:ddfc(c)  
       1000:aba3 83 3e 21        CMP        word ptr [0x3821],0x0
                 38 00
       1000:aba8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_aba9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_aba9                                   XREF[2]:     FUN_1000_2566:1000:2633(c), 
                                                                                          FUN_1000_2806:1000:2814(c)  
       1000:aba9 e8 83 02        CALL       FUN_1000_ae2f                                    undefined FUN_1000_ae2f()
       1000:abac 74 96           JZ         LAB_1000_ab44
       1000:abae 8b 1e 7a ce     MOV        BX,word ptr [0xce7a]
                             LAB_1000_abb2                                   XREF[1]:     1000:abc4(j)  
       1000:abb2 53              PUSH       BX
       1000:abb3 e8 dc ff        CALL       FUN_1000_ab92                                    undefined FUN_1000_ab92()
       1000:abb6 e8 ea ff        CALL       FUN_1000_aba3                                    undefined FUN_1000_aba3()
       1000:abb9 5b              POP        BX
       1000:abba 74 0a           JZ         FUN_1000_abc6
       1000:abbc a1 7a ce        MOV        AX,[0xce7a]
       1000:abbf 2b c3           SUB        AX,BX
       1000:abc1 3d e8 03        CMP        AX,0x3e8
       1000:abc4 72 ec           JC         LAB_1000_abb2
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_abc6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_abc6                                   XREF[2]:     FUN_1000_a7a5:1000:a7b9(c), 
                                                                                          FUN_1000_aba9:1000:abba(j)  
       1000:abc6 c6 06 2b        MOV        byte ptr [0xdc2b],0x0
                 dc 00
       1000:abcb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_abcc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_abcc                                   XREF[8]:     FUN_1000_1b0d:1000:1b0d(c), 
                                                                                          FUN_1000_9c54:1000:9c80(c), 
                                                                                          FUN_1000_a7a5:1000:a7b4(c), 
                                                                                          FUN_1000_a7c2:1000:a7c2(c), 
                                                                                          FUN_1000_ab15:1000:ab15(c), 
                                                                                          FUN_1000_ab4f:1000:ab5f(c), 
                                                                                          FUN_1000_abd5:1000:abd5(c), 
                                                                                          FUN_1000_ace6:1000:ace6(c)  
       1000:abcc 80 3e 2b        CMP        byte ptr [0xdc2b],0x0
                 dc 00
       1000:abd1 c3              RET
                             LAB_1000_abd2                                   XREF[1]:     1000:abd8(j)  
       1000:abd2 e8 ed fb        CALL       FUN_1000_a7c2                                    undefined FUN_1000_a7c2()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_abd5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_abd5                                   XREF[1]:     FUN_1000_3f15:1000:3fc5(c)  
       1000:abd5 e8 f4 ff        CALL       FUN_1000_abcc                                    undefined FUN_1000_abcc()
       1000:abd8 75 f8           JNZ        LAB_1000_abd2
       1000:abda c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_abe9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_abe9                                   XREF[2]:     FUN_1000_a87e:1000:a88a(c), 
                                                                                          FUN_1000_ab15:1000:ab30(c)  
       1000:abe9 c7 06 11        MOV        word ptr [0x3811],0x0
                 38 00 00
       1000:abef c4 3e 11 38     LES        DI,[0x3811]
       1000:abf3 83 06 11        ADD        word ptr [0x3811],0x1a
                 38 1a
       1000:abf8 32 e4           XOR        AH,AH
       1000:abfa 8b f0           MOV        SI,AX
       1000:abfc 81 c6 ae 00     ADD        SI,0xae
       1000:ac00 a2 6a 37        MOV        [0x376a],AL
       1000:ac03 e8 b3 44        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:ac06 83 e9 1a        SUB        CX,0x1a
       1000:ac09 89 0e 15 38     MOV        word ptr [0x3815],CX
       1000:ac0d c7 06 17        MOV        word ptr [0x3817],0x8101
                 38 01 81
       1000:ac13 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ac14()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ac14                                   XREF[7]:     FUN_1000_021c:1000:0254(c), 
                                                                                          FUN_1000_021c:1000:029a(c), 
                                                                                          FUN_1000_a83f:1000:a84a(c), 
                                                                                          FUN_1000_a87e:1000:a885(c), 
                                                                                          FUN_1000_aa0f:1000:aa1a(c), 
                                                                                          FUN_1000_ab15:1000:ab29(c), 
                                                                                          FUN_1000_ab4f:1000:ab6d(c)  
       1000:ac14 50              PUSH       AX
       1000:ac15 53              PUSH       BX
       1000:ac16 51              PUSH       CX
       1000:ac17 56              PUSH       SI
       1000:ac18 57              PUSH       DI
       1000:ac19 55              PUSH       BP
       1000:ac1a 06              PUSH       ES
       1000:ac1b be 92 ab        MOV        SI,0xab92
       1000:ac1e e8 3e 2e        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:ac21 e8 7d fd        CALL       FUN_1000_a9a1                                    undefined FUN_1000_a9a1()
       1000:ac24 ff 1e 95 39     CALLF      [0x3995]
       1000:ac28 07              POP        ES
       1000:ac29 5d              POP        BP
       1000:ac2a 5f              POP        DI
       1000:ac2b 5e              POP        SI
       1000:ac2c 59              POP        CX
       1000:ac2d 5b              POP        BX
       1000:ac2e 58              POP        AX
       1000:ac2f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ac30()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ac30                                   XREF[5]:     FUN_1000_0b21:1000:0b21(c), 
                                                                                          FUN_1000_18ba:1000:18cf(c), 
                                                                                          FUN_1000_2566:1000:2653(c), 
                                                                                          FUN_1000_3f15:1000:3f2b(c), 
                                                                                          FUN_1000_47fb:1000:4813(c)  
       1000:ac30 ff 1e 99 39     CALLF      [0x3999]
       1000:ac34 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_acbf()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_acbf                                   XREF[1]:     FUN_1000_ace6:1000:ad2c(c)  
       1000:acbf bd fa 37        MOV        BP,0x37fa
       1000:acc2 b9 12 00        MOV        CX,0x12
                             LAB_1000_acc5                                   XREF[1]:     1000:ace1(j)  
       1000:acc5 bb 08 00        MOV        BX,0x8
       1000:acc8 e8 14 37        CALL       FUN_1000_e3df                                    undefined FUN_1000_e3df()
       1000:accb 8b f0           MOV        SI,AX
       1000:accd a1 7a ce        MOV        AX,[0xce7a]
       1000:acd0 33 c1           XOR        AX,CX
       1000:acd2 01 06 28 d8     ADD        word ptr [0xd828],AX
       1000:acd6 e8 06 37        CALL       FUN_1000_e3df                                    undefined FUN_1000_e3df()
       1000:acd9 8b f8           MOV        DI,AX
       1000:acdb 8a 02           MOV        AL,byte ptr [BP + SI]
       1000:acdd 86 03           XCHG       byte ptr [BP + DI],AL
       1000:acdf 88 02           MOV        byte ptr [BP + SI],AL
       1000:ace1 e2 e2           LOOP       LAB_1000_acc5
       1000:ace3 8b f5           MOV        SI,BP
       1000:ace5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ace6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ace6                                   XREF[2]:     FUN_1000_c8fb:1000:c913(c), 
                                                                                          FUN_1000_d9d2:1000:d9d2(c)  
       1000:ace6 e8 e3 fe        CALL       FUN_1000_abcc                                    undefined FUN_1000_abcc()
       1000:ace9 75 4b           JNZ        LAB_1000_ad36
       1000:aceb f6 06 10        TEST       byte ptr [0x3810],0x1
                 38 01
       1000:acf0 74 45           JZ         LAB_1000_ad37
       1000:acf2 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:acf7 75 3d           JNZ        LAB_1000_ad36
       1000:acf9 80 3e cd        CMP        byte ptr [0xdbcd],0x0
                 db 00
       1000:acfe 78 36           JS         LAB_1000_ad36
       1000:ad00 a1 d2 db        MOV        AX,[0xdbd2]
       1000:ad03 0b c0           OR         AX,AX
       1000:ad05 75 06           JNZ        LAB_1000_ad0d
       1000:ad07 a1 7a ce        MOV        AX,[0xce7a]
       1000:ad0a a3 d2 db        MOV        [0xdbd2],AX
                             LAB_1000_ad0d                                   XREF[1]:     1000:ad05(j)  
       1000:ad0d 2b 06 7a ce     SUB        AX,word ptr [0xce7a]
       1000:ad11 f7 d8           NEG        AX
       1000:ad13 3d c8 00        CMP        AX,0xc8
       1000:ad16 72 1e           JC         LAB_1000_ad36
                             LAB_1000_ad18                                   XREF[1]:     FUN_1000_ad5e:1000:ad72(j)  
       1000:ad18 8b 36 0e 38     MOV        SI,word ptr [0x380e]
       1000:ad1c ac              LODSB      SI
       1000:ad1d 0a c0           OR         AL,AL
       1000:ad1f 79 0f           JNS        LAB_1000_ad30
       1000:ad21 be fa 37        MOV        SI,0x37fa
       1000:ad24 ac              LODSB      SI
       1000:ad25 f6 06 10        TEST       byte ptr [0x3810],0x2
                 38 02
       1000:ad2a 74 04           JZ         LAB_1000_ad30
       1000:ad2c e8 90 ff        CALL       FUN_1000_acbf                                    undefined FUN_1000_acbf()
       1000:ad2f ac              LODSB      SI
                             LAB_1000_ad30                                   XREF[2]:     1000:ad1f(j), 1000:ad2a(j)  
       1000:ad30 89 36 0e 38     MOV        word ptr [0x380e],SI
       1000:ad34 eb 5f           JMP        FUN_1000_ad95                                    undefined FUN_1000_ad95()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_ad36                                   XREF[6]:     1000:ace9(j), 1000:acf7(j), 
                                                                                          1000:acfe(j), 1000:ad16(j), 
                                                                                          1000:ad3a(j), 1000:ad41(j)  
       1000:ad36 c3              RET
                             LAB_1000_ad37                                   XREF[1]:     1000:acf0(j)  
       1000:ad37 e8 8c 01        CALL       FUN_1000_aec6                                    undefined FUN_1000_aec6()
       1000:ad3a 72 fa           JC         LAB_1000_ad36
       1000:ad3c 80 3e cd        CMP        byte ptr [0xdbcd],0x0
                 db 00
       1000:ad41 78 f3           JS         LAB_1000_ad36
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ad43()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ad43                                   XREF[1]:     FUN_1000_ae04:1000:ae21(c)  
       1000:ad43 a0 cc db        MOV        AL,[0xdbcc]
       1000:ad46 c6 06 cb        MOV        byte ptr [0xdbcb],0x0
                 db 00
       1000:ad4b 0a c0           OR         AL,AL
       1000:ad4d 75 46           JNZ        FUN_1000_ad95
       1000:ad4f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ad50()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ad50                                   XREF[3]:     FUN_1000_021c:1000:0228(c), 
                                                                                          FUN_1000_0309:1000:0321(c), 
                                                                                          FUN_1000_0e77:1000:0e77(c)  
       1000:ad50 e8 64 01        CALL       FUN_1000_aeb7                                    undefined FUN_1000_aeb7()
       1000:ad53 b0 03           MOV        AL,0x3
       1000:ad55 eb 3e           JMP        FUN_1000_ad95                                    undefined FUN_1000_ad95()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ad5e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ad5e                                   XREF[5]:     FUN_1000_0e66:1000:0e66(c), 
                                                                                          FUN_1000_1707:1000:1762(c), 
                                                                                          FUN_1000_1771:1000:1781(c), 
                                                                                          FUN_1000_2b2a:1000:2bd5(c), 
                                                                                          FUN_1000_2db1:1000:2e20(c)  
       1000:ad5e e8 65 01        CALL       FUN_1000_aec6                                    undefined FUN_1000_aec6()
       1000:ad61 72 11           JC         LAB_1000_ad74
       1000:ad63 e8 30 fd        CALL       FUN_1000_aa96                                    undefined FUN_1000_aa96()
       1000:ad66 80 3e 10        CMP        byte ptr [0x3810],0x0
                 38 00
       1000:ad6b 74 08           JZ         LAB_1000_ad75
       1000:ad6d 80 3e cd        CMP        byte ptr [0xdbcd],0x0
                 db 00
       1000:ad72 79 a4           JNS        LAB_1000_ad18
                             LAB_1000_ad74                                   XREF[1]:     1000:ad61(j)  
       1000:ad74 c3              RET
                             LAB_1000_ad75                                   XREF[1]:     1000:ad6b(j)  
       1000:ad75 bb 5c 37        MOV        BX,0x375c
       1000:ad78 d7              XLAT       BX
       1000:ad79 0a c0           OR         AL,AL
       1000:ad7b 74 40           JZ         LAB_1000_adbd
       1000:ad7d 0a c0           OR         AL,AL
       1000:ad7f 78 08           JS         LAB_1000_ad89
       1000:ad81 a2 cc db        MOV        [0xdbcc],AL
       1000:ad84 ff 1e 79 39     CALLF      [0x3979]
       1000:ad88 c3              RET
                             LAB_1000_ad89                                   XREF[1]:     1000:ad7f(j)  
       1000:ad89 24 3f           AND        AL,0x3f
       1000:ad8b a2 cc db        MOV        [0xdbcc],AL
       1000:ad8e 3a 06 cb db     CMP        AL,byte ptr [0xdbcb]
       1000:ad92 75 2a           JNZ        FUN_1000_adbe
       1000:ad94 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ad95()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ad95                                   XREF[3]:     FUN_1000_ace6:1000:ad34(c), 
                                                                                          FUN_1000_ad43:1000:ad4d(j), 
                                                                                          FUN_1000_ad50:1000:ad55(c)  
       1000:ad95 32 e4           XOR        AH,AH
       1000:ad97 e8 2c 01        CALL       FUN_1000_aec6                                    undefined FUN_1000_aec6()
       1000:ad9a 72 21           JC         LAB_1000_adbd
       1000:ad9c 3a 06 cb db     CMP        AL,byte ptr [0xdbcb]
       1000:ada0 74 1b           JZ         LAB_1000_adbd
       1000:ada2 e8 bd 00        CALL       FUN_1000_ae62                                    undefined FUN_1000_ae62()
       1000:ada5 a2 cb db        MOV        [0xdbcb],AL
       1000:ada8 c4 36 b6 db     LES        SI,[0xdbb6]
       1000:adac a0 10 38        MOV        AL,[0x3810]
       1000:adaf 24 01           AND        AL,0x1
       1000:adb1 ff 1e 71 39     CALLF      [0x3971]
       1000:adb5 a2 cd db        MOV        [0xdbcd],AL
       1000:adb8 33 c0           XOR        AX,AX
       1000:adba a3 d2 db        MOV        [0xdbd2],AX
                             LAB_1000_adbd                                   XREF[9]:     FUN_1000_ad5e:1000:ad7b(j), 
                                                                                          1000:ad9a(j), 1000:ada0(j), 
                                                                                          FUN_1000_adbe:1000:adc1(j), 
                                                                                          FUN_1000_adbe:1000:adc8(j), 
                                                                                          FUN_1000_adbe:1000:adcf(j), 
                                                                                          FUN_1000_ae04:1000:ae07(j), 
                                                                                          FUN_1000_ae04:1000:ae0e(j), 
                                                                                          FUN_1000_ae04:1000:ae1c(j)  
       1000:adbd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_adbe()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_adbe                                   XREF[2]:     FUN_1000_1707:1000:1752(c), 
                                                                                          FUN_1000_ad5e:1000:ad92(j)  
       1000:adbe e8 05 01        CALL       FUN_1000_aec6                                    undefined FUN_1000_aec6()
       1000:adc1 72 fa           JC         LAB_1000_adbd
       1000:adc3 f6 06 10        TEST       byte ptr [0x3810],0x1
                 38 01
       1000:adc8 75 f3           JNZ        LAB_1000_adbd
       1000:adca f6 06 cd        TEST       byte ptr [0xdbcd],0x40
                 db 40
       1000:adcf 75 ec           JNZ        LAB_1000_adbd
       1000:add1 53              PUSH       BX
       1000:add2 b8 2c 01        MOV        AX,0x12c
       1000:add5 33 db           XOR        BX,BX
       1000:add7 ff 1e 7d 39     CALLF      [0x397d]
       1000:addb a2 cd db        MOV        [0xdbcd],AL
       1000:adde 5b              POP        BX
       1000:addf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ade0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ade0                                   XREF[2]:     FUN_1000_021c:1000:0238(c), 
                                                                                          FUN_1000_a6cc:1000:a754(c)  
       1000:ade0 b8 64 00        MOV        AX,0x64
       1000:ade3 8a 1e 9e 28     MOV        BL,byte ptr [0x289e]
       1000:ade7 8a 3e b6 28     MOV        BH,byte ptr [0x28b6]
       1000:adeb eb 0b           JMP        LAB_1000_adf8
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_aded()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_aded                                   XREF[3]:     FUN_1000_021c:1000:0257(c), 
                                                                                          FUN_1000_a7a5:1000:a7bf(c), 
                                                                                          FUN_1000_ab92:1000:ab9a(c)  
       1000:aded b8 90 01        MOV        AX,0x190
       1000:adf0 8a 1e 96 28     MOV        BL,byte ptr [0x2896]
       1000:adf4 8a 3e ae 28     MOV        BH,byte ptr [0x28ae]
                             LAB_1000_adf8                                   XREF[1]:     FUN_1000_ade0:1000:adeb(j)  
       1000:adf8 80 fb 04        CMP        BL,0x4
       1000:adfb 73 02           JNC        LAB_1000_adff
       1000:adfd b3 04           MOV        BL,0x4
                             LAB_1000_adff                                   XREF[1]:     1000:adfb(j)  
       1000:adff ff 1e 7d 39     CALLF      [0x397d]
       1000:ae03 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ae04()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ae04                                   XREF[3]:     FUN_1000_189a:1000:18ae(c), 
                                                                                          FUN_1000_2db1:1000:2e47(c), 
                                                                                          FUN_1000_47fb:1000:4816(c)  
       1000:ae04 e8 bf 00        CALL       FUN_1000_aec6                                    undefined FUN_1000_aec6()
       1000:ae07 72 b4           JC         LAB_1000_adbd
       1000:ae09 f6 06 10        TEST       byte ptr [0x3810],0x1
                 38 01
       1000:ae0e 75 ad           JNZ        LAB_1000_adbd
       1000:ae10 80 3e cd        CMP        byte ptr [0xdbcd],0x0
                 db 00
       1000:ae15 79 07           JNS        LAB_1000_ae1e
       1000:ae17 f6 06 cd        TEST       byte ptr [0xdbcd],0x40
                 db 40
       1000:ae1c 74 9f           JZ         LAB_1000_adbd
                             LAB_1000_ae1e                                   XREF[1]:     1000:ae15(j)  
       1000:ae1e e8 4f 34        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:ae21 e8 1f ff        CALL       FUN_1000_ad43                                    undefined FUN_1000_ad43()
       1000:ae24 e8 5c 34        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:ae27 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ae28()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ae28                                   XREF[3]:     FUN_1000_ae3f:1000:ae3f(c), 
                                                                                          FUN_1000_aec6:1000:aecd(c), 
                                                                                          FUN_1000_e76a:1000:e818(c)  
       1000:ae28 f7 06 c8        TEST       word ptr [0xdbc8],0x100
                 db 00 01
       1000:ae2e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ae2f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ae2f                                   XREF[8]:     FUN_1000_a83f:1000:a845(c), 
                                                                                          FUN_1000_a87e:1000:a880(c), 
                                                                                          FUN_1000_ab15:1000:ab1a(c), 
                                                                                          FUN_1000_ab4f:1000:ab64(c), 
                                                                                          FUN_1000_aba9:1000:aba9(c), 
                                                                                          FUN_1000_ae54:1000:ae54(c), 
                                                                                          FUN_1000_ccf4:1000:cd13(c), 
                                                                                          FUN_1000_cfa0:1000:cfa0(c)  
       1000:ae2f 50              PUSH       AX
       1000:ae30 1e              PUSH       DS
       1000:ae31 b8 4b 1f        MOV        AX,0x1f4b
       1000:ae34 8e d8           MOV        DS,AX
       1000:ae36 f7 06 c8        TEST       word ptr [DAT_1f4b_dbc8],0x1                     = ??
                 db 01 00
       1000:ae3c 1f              POP        DS
       1000:ae3d 58              POP        AX
                             LAB_1000_ae3e                                   XREF[3]:     FUN_1000_ae3f:1000:ae42(j), 
                                                                                          FUN_1000_ae3f:1000:ae4c(j), 
                                                                                          FUN_1000_ae54:1000:ae57(j)  
       1000:ae3e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ae3f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ae3f                                   XREF[1]:     FUN_1000_e76a:1000:e7eb(c)  
       1000:ae3f e8 e6 ff        CALL       FUN_1000_ae28                                    undefined FUN_1000_ae28()
       1000:ae42 74 fa           JZ         LAB_1000_ae3e
       1000:ae44 bf b6 db        MOV        DI,0xdbb6
       1000:ae47 8b 05           MOV        AX,word ptr [DI]
       1000:ae49 0b 45 02        OR         AX,word ptr [DI + 0x2]
       1000:ae4c 75 f0           JNZ        LAB_1000_ae3e
       1000:ae4e b9 40 9c        MOV        CX,0x9c40
       1000:ae51 e9 a2 42        JMP        FUN_1000_f0f6                                    undefined FUN_1000_f0f6()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ae54()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ae54                                   XREF[1]:     FUN_1000_e76a:1000:e78c(c)  
       1000:ae54 e8 d8 ff        CALL       FUN_1000_ae2f                                    undefined FUN_1000_ae2f()
       1000:ae57 74 e5           JZ         LAB_1000_ae3e
       1000:ae59 bf 11 38        MOV        DI,0x3811
       1000:ae5c b9 20 4e        MOV        CX,0x4e20
       1000:ae5f e9 94 42        JMP        FUN_1000_f0f6                                    undefined FUN_1000_f0f6()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ae62()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ae62                                   XREF[1]:     FUN_1000_ad95:1000:ada2(c)  
       1000:ae62 3a 06 ca db     CMP        AL,byte ptr [0xdbca]
       1000:ae66 74 1c           JZ         LAB_1000_ae84
       1000:ae68 e8 4c 00        CALL       FUN_1000_aeb7                                    undefined FUN_1000_aeb7()
       1000:ae6b a2 ca db        MOV        [0xdbca],AL
       1000:ae6e 50              PUSH       AX
       1000:ae6f 05 a4 00        ADD        AX,0xa4
       1000:ae72 8b f0           MOV        SI,AX
       1000:ae74 c4 3e b6 db     LES        DI,[0xdbb6]
       1000:ae78 8c c0           MOV        AX,ES
       1000:ae7a 3b 06 68 ce     CMP        AX,word ptr [0xce68]
       1000:ae7e 73 05           JNC        LAB_1000_ae85
       1000:ae80 e8 36 42        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:ae83 58              POP        AX
                             LAB_1000_ae84                                   XREF[1]:     1000:ae66(j)  
       1000:ae84 c3              RET
                             LAB_1000_ae85                                   XREF[1]:     1000:ae7e(j)  
       1000:ae85 ff 36 84 27     PUSH       word ptr [0x2784]
       1000:ae89 56              PUSH       SI
       1000:ae8a b9 af 02        MOV        CX,0x2af
       1000:ae8d e8 8c 42        CALL       FUN_1000_f11c                                    undefined FUN_1000_f11c()
       1000:ae90 5e              POP        SI
       1000:ae91 fe 06 71 ce     INC        byte ptr [0xce71]
       1000:ae95 e8 21 42        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:ae98 fe 0e 71 ce     DEC        byte ptr [0xce71]
       1000:ae9c 1e              PUSH       DS
       1000:ae9d 57              PUSH       DI
       1000:ae9e 06              PUSH       ES
       1000:ae9f c4 3e b6 db     LES        DI,[0xdbb6]
       1000:aea3 1f              POP        DS
       1000:aea4 5e              POP        SI
       1000:aea5 e8 5b 45        CALL       FUN_1000_f403                                    undefined FUN_1000_f403()
       1000:aea8 1f              POP        DS
       1000:aea9 58              POP        AX
       1000:aeaa e8 91 12        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:aead 58              POP        AX
       1000:aeae c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_aeb7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_aeb7                                   XREF[4]:     entry:1000:0016(c), 
                                                                                          FUN_1000_0580:1000:0589(c), 
                                                                                          FUN_1000_ad50:1000:ad50(c), 
                                                                                          FUN_1000_ae62:1000:ae68(c)  
       1000:aeb7 50              PUSH       AX
       1000:aeb8 c6 06 cb        MOV        byte ptr [0xdbcb],0x0
                 db 00
       1000:aebd ff 1e 75 39     CALLF      [0x3975]
       1000:aec1 a2 cd db        MOV        [0xdbcd],AL
       1000:aec4 58              POP        AX
       1000:aec5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_aec6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_aec6                                   XREF[5]:     FUN_1000_ace6:1000:ad37(c), 
                                                                                          FUN_1000_ad5e:1000:ad5e(c), 
                                                                                          FUN_1000_ad95:1000:ad97(c), 
                                                                                          FUN_1000_adbe:1000:adbe(c), 
                                                                                          FUN_1000_ae04:1000:ae04(c)  
       1000:aec6 f6 06 43        TEST       byte ptr [0x2943],0x10
                 29 10
       1000:aecb 75 07           JNZ        LAB_1000_aed4
       1000:aecd e8 58 ff        CALL       FUN_1000_ae28                                    undefined FUN_1000_ae28()
       1000:aed0 74 02           JZ         LAB_1000_aed4
       1000:aed2 f8              CLC
       1000:aed3 c3              RET
                             LAB_1000_aed4                                   XREF[2]:     1000:aecb(j), 1000:aed0(j)  
       1000:aed4 f9              STC
       1000:aed5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b17a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b17a                                   XREF[4]:     FUN_1000_00b0:1000:00b9(c), 
                                                                                          FUN_1000_00b0:1000:00bc(c), 
                                                                                          FUN_1000_121f:1000:122d(c), 
                                                                                          FUN_1000_2b2a:1000:2bc1(c)  
       1000:b17a a0 c6 00        MOV        AL,[0xc6]
       1000:b17d 50              PUSH       AX
       1000:b17e 0c 80           OR         AL,0x80
       1000:b180 a2 c6 00        MOV        [0xc6],AL
       1000:b183 e8 2f e5        CALL       FUN_1000_96b5                                    undefined FUN_1000_96b5()
       1000:b186 58              POP        AX
       1000:b187 a2 c6 00        MOV        [0xc6],AL
       1000:b18a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b270()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b270                                   XREF[2]:     1000:b285(W), 
                                                                                          FUN_1000_d815:1000:d82e(c)  
       1000:b270 be 2a 24        MOV        SI,0x242a
       1000:b273 8b 3e bd 11     MOV        DI,word ptr [0x11bd]
       1000:b277 0e              PUSH       CS
       1000:b278 07              POP        ES
       1000:b279 b9 0a 00        MOV        CX,0xa
       1000:b27c f3 a5           MOVSW.REP  ES:DI,SI
       1000:b27e 89 3e bd 11     MOV        word ptr [0x11bd],DI
       1000:b282 33 c0           XOR        AX,AX
       1000:b284 ab              STOSW      ES:DI
       1000:b285 2e c6 06        MOV        byte ptr CS:[FUN_1000_b270],0xc3
                 70 b2 c3
       1000:b28b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b2b3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b2b3                                   XREF[1]:     FUN_1000_2b2a:1000:2c66(c)  
       1000:b2b3 fe 0e 88 27     DEC        byte ptr [0x2788]
       1000:b2b7 79 04           JNS        LAB_1000_b2bd
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b2b9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b2b9                                   XREF[2]:     FUN_1000_1771:1000:177e(c), 
                                                                                          FUN_1000_2b2a:1000:2c5d(c)  
       1000:b2b9 fe 06 88 27     INC        byte ptr [0x2788]
                             LAB_1000_b2bd                                   XREF[1]:     FUN_1000_b2b3:1000:b2b7(j)  
       1000:b2bd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b2be()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b2be                                   XREF[3]:     entry:1000:0034(c), 
                                                                                          FUN_1000_0fd9:1000:0fde(c), 
                                                                                          FUN_1000_1707:1000:1755(c)  
       1000:b2be c6 06 88        MOV        byte ptr [0x2788],0x0
                 27 00
       1000:b2c3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_b389()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b389                                   XREF[3]:     entry:1000:0029(c), 
                                                                                          FUN_1000_3f15:1000:3f7e(c), 
                                                                                          FUN_1000_3f15:1000:3fa4(c)  
       1000:b389 80 c1 31        ADD        CL,0x31
       1000:b38c 88 0e af 38     MOV        byte ptr [0x38af],CL
       1000:b390 e8 94 00        CALL       FUN_1000_b427                                    undefined FUN_1000_b427()
       1000:b393 a1 02 00        MOV        AX,[0x2]
       1000:b396 1e              PUSH       DS
       1000:b397 06              PUSH       ES
       1000:b398 1f              POP        DS
       1000:b399 8b f7           MOV        SI,DI
       1000:b39b 33 ff           XOR        DI,DI
       1000:b39d ab              STOSW      ES:DI
       1000:b39e e8 49 01        CALL       FUN_1000_b4ea                                    undefined FUN_1000_b4ea()
       1000:b3a1 1f              POP        DS
       1000:b3a2 ba a8 38        MOV        DX,0x38a8
       1000:b3a5 e8 54 3f        CALL       FUN_1000_f2fc                                    undefined FUN_1000_f2fc()
       1000:b3a8 33 ff           XOR        DI,DI
       1000:b3aa 83 c1 02        ADD        CX,0x2
       1000:b3ad e9 cc 3e        JMP        FUN_1000_f27c                                    undefined FUN_1000_f27c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b427()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b427                                   XREF[1]:     FUN_1000_b389:1000:b390(c)  
       1000:b427 b9 78 05        MOV        CX,0x578
       1000:b42a e8 ef 3c        CALL       FUN_1000_f11c                                    undefined FUN_1000_f11c()
       1000:b42d bf 00 01        MOV        DI,0x100
       1000:b430 57              PUSH       DI
       1000:b431 06              PUSH       ES
       1000:b432 1e              PUSH       DS
       1000:b433 c5 36 fe dc     LDS        SI,[0xdcfe]
       1000:b437 33 f6           XOR        SI,SI
       1000:b439 b9 fc c5        MOV        CX,0xc5fc
       1000:b43c d1 e9           SHR        CX,0x1
       1000:b43e d1 e9           SHR        CX,0x1
                             LAB_1000_b440                                   XREF[1]:     1000:b450(j)  
       1000:b440 b4 03           MOV        AH,0x3
                             LAB_1000_b442                                   XREF[1]:     1000:b44b(j)  
       1000:b442 ac              LODSB      SI
       1000:b443 d0 e0           SHL        AL,0x1
       1000:b445 d0 e0           SHL        AL,0x1
       1000:b447 d1 e0           SHL        AX,0x1
       1000:b449 d1 e0           SHL        AX,0x1
       1000:b44b 73 f5           JNC        LAB_1000_b442
       1000:b44d 8a c4           MOV        AL,AH
       1000:b44f aa              STOSB      ES:DI
       1000:b450 e2 ee           LOOP       LAB_1000_b440
       1000:b452 0e              PUSH       CS
       1000:b453 1f              POP        DS
       1000:b454 be aa 00        MOV        SI,0xaa
       1000:b457 b9 a2 00        MOV        CX,0xa2
       1000:b45a f3 a4           MOVSB.REP  ES:DI,SI
       1000:b45c 1f              POP        DS
       1000:b45d be 76 aa        MOV        SI,0xaa76
       1000:b460 b9 f8 11        MOV        CX,0x11f8
       1000:b463 f3 a4           MOVSB.REP  ES:DI,SI
       1000:b465 be 00 00        MOV        SI,0x0
       1000:b468 b9 61 12        MOV        CX,0x1261
       1000:b46b f3 a4           MOVSB.REP  ES:DI,SI
       1000:b46d 07              POP        ES
       1000:b46e 5f              POP        DI
       1000:b46f b9 7a 56        MOV        CX,0x567a
       1000:b472 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b4ea()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b4ea                                   XREF[1]:     FUN_1000_b389:1000:b39e(c)  
       1000:b4ea b2 f7           MOV        DL,0xf7
       1000:b4ec 57              PUSH       DI
       1000:b4ed 83 c7 04        ADD        DI,0x4
                             LAB_1000_b4f0                                   XREF[1]:     1000:b51d(j)  
       1000:b4f0 32 f6           XOR        DH,DH
                             LAB_1000_b4f2                                   XREF[1]:     1000:b501(j)  
       1000:b4f2 ac              LODSB      SI
       1000:b4f3 fe c6           INC        DH
       1000:b4f5 3a 04           CMP        AL,byte ptr [SI]
       1000:b4f7 75 0b           JNZ        LAB_1000_b504
       1000:b4f9 80 fe ff        CMP        DH,0xff
       1000:b4fc 74 06           JZ         LAB_1000_b504
       1000:b4fe 49              DEC        CX
       1000:b4ff 0b c9           OR         CX,CX
       1000:b501 75 ef           JNZ        LAB_1000_b4f2
       1000:b503 41              INC        CX
                             LAB_1000_b504                                   XREF[2]:     1000:b4f7(j), 1000:b4fc(j)  
       1000:b504 3a c2           CMP        AL,DL
       1000:b506 74 0a           JZ         LAB_1000_b512
       1000:b508 80 fe 01        CMP        DH,0x1
       1000:b50b 74 0f           JZ         LAB_1000_b51c
       1000:b50d 80 fe 02        CMP        DH,0x2
       1000:b510 74 1d           JZ         LAB_1000_b52f
                             LAB_1000_b512                                   XREF[1]:     1000:b506(j)  
       1000:b512 8a e0           MOV        AH,AL
       1000:b514 8a c2           MOV        AL,DL
       1000:b516 aa              STOSB      ES:DI
       1000:b517 8a c6           MOV        AL,DH
       1000:b519 aa              STOSB      ES:DI
       1000:b51a 8a c4           MOV        AL,AH
                             LAB_1000_b51c                                   XREF[2]:     1000:b50b(j), 1000:b530(j)  
       1000:b51c aa              STOSB      ES:DI
       1000:b51d e2 d1           LOOP       LAB_1000_b4f0
       1000:b51f 8b cf           MOV        CX,DI
       1000:b521 33 c0           XOR        AX,AX
       1000:b523 ab              STOSW      ES:DI
       1000:b524 5f              POP        DI
       1000:b525 2b cf           SUB        CX,DI
       1000:b527 26 89 15        MOV        word ptr ES:[DI],DX
       1000:b52a 26 89 4d 02     MOV        word ptr ES:[DI + 0x2],CX
       1000:b52e c3              RET
                             LAB_1000_b52f                                   XREF[1]:     1000:b510(j)  
       1000:b52f aa              STOSB      ES:DI
       1000:b530 eb ea           JMP        LAB_1000_b51c
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b532()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b532                                   XREF[5]:     FUN_1000_3f15:1000:4007(c), 
                                                                                          FUN_1000_4182:1000:419e(c), 
                                                                                          FUN_1000_4e12:1000:4e1b(c), 
                                                                                          FUN_1000_4f0c:1000:4eac(c), 
                                                                                          FUN_1000_4f0c:1000:4eb9(c)  
       1000:b532 52              PUSH       DX
       1000:b533 e8 55 00        CALL       FUN_1000_b58b                                    undefined FUN_1000_b58b()
       1000:b536 5a              POP        DX
       1000:b537 26 8a 05        MOV        AL,byte ptr ES:[DI]
       1000:b53a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b53b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b53b                                   XREF[1]:     FUN_1000_b56c:1000:b57f(c)  
       1000:b53b 53              PUSH       BX
       1000:b53c 51              PUSH       CX
       1000:b53d 52              PUSH       DX
       1000:b53e 50              PUSH       AX
       1000:b53f e8 49 00        CALL       FUN_1000_b58b                                    undefined FUN_1000_b58b()
       1000:b542 58              POP        AX
       1000:b543 8b c8           MOV        CX,AX
       1000:b545 d1 e8           SHR        AX,0x1
       1000:b547 2b f8           SUB        DI,AX
       1000:b549 2b d0           SUB        DX,AX
       1000:b54b 73 04           JNC        LAB_1000_b551
       1000:b54d 03 d5           ADD        DX,BP
       1000:b54f 03 fd           ADD        DI,BP
                             LAB_1000_b551                                   XREF[2]:     1000:b54b(j), 1000:b566(j)  
       1000:b551 26 8a 05        MOV        AL,byte ptr ES:[DI]
       1000:b554 88 04           MOV        byte ptr [SI],AL
       1000:b556 89 7c 01        MOV        word ptr [SI + 0x1],DI
       1000:b559 83 c6 03        ADD        SI,0x3
       1000:b55c 47              INC        DI
       1000:b55d 42              INC        DX
       1000:b55e 3b d5           CMP        DX,BP
       1000:b560 72 04           JC         LAB_1000_b566
       1000:b562 2b d5           SUB        DX,BP
       1000:b564 2b fd           SUB        DI,BP
                             LAB_1000_b566                                   XREF[1]:     1000:b560(j)  
       1000:b566 e2 e9           LOOP       LAB_1000_b551
       1000:b568 5a              POP        DX
       1000:b569 59              POP        CX
       1000:b56a 5b              POP        BX
       1000:b56b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b56c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b56c                                   XREF[2]:     FUN_1000_40f9:1000:4111(c), 
                                                                                          FUN_1000_41e1:1000:41f8(c)  
       1000:b56c 51              PUSH       CX
       1000:b56d 8b f1           MOV        SI,CX
       1000:b56f d1 ee           SHR        SI,0x1
       1000:b571 2b de           SUB        BX,SI
       1000:b573 83 fb 9e        CMP        BX,-0x62
       1000:b576 7d 03           JGE        LAB_1000_b57b
       1000:b578 bb 9e ff        MOV        BX,0xff9e
                             LAB_1000_b57b                                   XREF[1]:     1000:b576(j)  
       1000:b57b be 68 9e        MOV        SI,0x9e68
                             LAB_1000_b57e                                   XREF[1]:     1000:b584(j)  
       1000:b57e 50              PUSH       AX
       1000:b57f e8 b9 ff        CALL       FUN_1000_b53b                                    undefined FUN_1000_b53b()
       1000:b582 58              POP        AX
       1000:b583 43              INC        BX
       1000:b584 e2 f8           LOOP       LAB_1000_b57e
       1000:b586 be 68 9e        MOV        SI,0x9e68
       1000:b589 59              POP        CX
       1000:b58a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b58b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b58b                                   XREF[7]:     FUN_1000_380c:1000:3857(c), 
                                                                                          FUN_1000_4f0c:1000:4f46(c), 
                                                                                          FUN_1000_636a:1000:636e(c), 
                                                                                          FUN_1000_639a:1000:639e(c), 
                                                                                          FUN_1000_b532:1000:b533(c), 
                                                                                          FUN_1000_b53b:1000:b53f(c), 
                                                                                          FUN_1000_b5c5:1000:b5c5(c)  
       1000:b58b e8 12 00        CALL       FUN_1000_b5a0                                    undefined FUN_1000_b5a0()
       1000:b58e c4 3e fe dc     LES        DI,[0xdcfe]
       1000:b592 03 f8           ADD        DI,AX
       1000:b594 8b c5           MOV        AX,BP
       1000:b596 f7 e2           MUL        DX
       1000:b598 d1 e0           SHL        AX,0x1
       1000:b59a 83 d2 00        ADC        DX,0x0
       1000:b59d 03 fa           ADD        DI,DX
       1000:b59f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b5a0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b5a0                                   XREF[1]:     FUN_1000_b58b:1000:b58b(c)  
       1000:b5a0 53              PUSH       BX
       1000:b5a1 d1 e3           SHL        BX,0x1
       1000:b5a3 d1 e3           SHL        BX,0x1
       1000:b5a5 d1 e3           SHL        BX,0x1
       1000:b5a7 79 10           JNS        LAB_1000_b5b9
       1000:b5a9 f7 db           NEG        BX
       1000:b5ab 8b 87 48 49     MOV        AX,word ptr [BX + 0x4948]
       1000:b5af f7 d8           NEG        AX
       1000:b5b1 8b af 4a 49     MOV        BP,word ptr [BX + 0x494a]
       1000:b5b5 d1 e5           SHL        BP,0x1
       1000:b5b7 5b              POP        BX
       1000:b5b8 c3              RET
                             LAB_1000_b5b9                                   XREF[1]:     1000:b5a7(j)  
       1000:b5b9 8b 87 48 49     MOV        AX,word ptr [BX + 0x4948]
       1000:b5bd 8b af 4a 49     MOV        BP,word ptr [BX + 0x494a]
       1000:b5c1 d1 e5           SHL        BP,0x1
       1000:b5c3 5b              POP        BX
       1000:b5c4 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b5c5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b5c5                                   XREF[1]:     FUN_1000_0169:1000:0198(c)  
       1000:b5c5 e8 c3 ff        CALL       FUN_1000_b58b                                    undefined FUN_1000_b58b()
       1000:b5c8 33 c0           XOR        AX,AX
       1000:b5ca f7 f5           DIV        BP
       1000:b5cc 8b d0           MOV        DX,AX
       1000:b5ce c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b5cf()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b5cf                                   XREF[1]:     FUN_1000_3f15:1000:3ffb(c)  
       1000:b5cf 0a e4           OR         AH,AH
       1000:b5d1 74 22           JZ         LAB_1000_b5f5
       1000:b5d3 78 11           JS         LAB_1000_b5e6
       1000:b5d5 02 fc           ADD        BH,AH
       1000:b5d7 73 1c           JNC        LAB_1000_b5f5
       1000:b5d9 fe c3           INC        BL
       1000:b5db 80 fb 62        CMP        BL,0x62
       1000:b5de 7c 15           JL         LAB_1000_b5f5
       1000:b5e0 fe cb           DEC        BL
       1000:b5e2 2a fc           SUB        BH,AH
       1000:b5e4 eb 0f           JMP        LAB_1000_b5f5
                             LAB_1000_b5e6                                   XREF[1]:     1000:b5d3(j)  
       1000:b5e6 02 fc           ADD        BH,AH
       1000:b5e8 72 0b           JC         LAB_1000_b5f5
       1000:b5ea fe cb           DEC        BL
       1000:b5ec 80 fb 9e        CMP        BL,0x9e
       1000:b5ef 7f 04           JG         LAB_1000_b5f5
       1000:b5f1 fe c3           INC        BL
       1000:b5f3 2a fc           SUB        BH,AH
                             LAB_1000_b5f5                                   XREF[6]:     1000:b5d1(j), 1000:b5d7(j), 
                                                                                          1000:b5de(j), 1000:b5e4(j), 
                                                                                          1000:b5e8(j), 1000:b5ef(j)  
       1000:b5f5 98              CBW
       1000:b5f6 03 d0           ADD        DX,AX
       1000:b5f8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b5f9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b5f9                                   XREF[1]:     FUN_1000_4944:1000:4950(c)  
       1000:b5f9 2b 16 f6 dc     SUB        DX,word ptr [0xdcf6]
       1000:b5fd 2b 1e f8 dc     SUB        BX,word ptr [0xdcf8]
       1000:b601 33 c9           XOR        CX,CX
       1000:b603 f6 06 eb        TEST       byte ptr [0x46eb],0x80
                 46 80
       1000:b608 74 02           JZ         LAB_1000_b60c
       1000:b60a b1 02           MOV        CL,0x2
                             LAB_1000_b60c                                   XREF[1]:     1000:b608(j)  
       1000:b60c d3 fb           SAR        BX,CL
       1000:b60e 03 1e 7e 19     ADD        BX,word ptr [0x197e]
       1000:b612 8b c3           MOV        AX,BX
       1000:b614 79 02           JNS        LAB_1000_b618
       1000:b616 f7 d8           NEG        AX
                             LAB_1000_b618                                   XREF[1]:     1000:b614(j)  
       1000:b618 d1 e0           SHL        AX,0x1
       1000:b61a d1 e0           SHL        AX,0x1
       1000:b61c d1 e0           SHL        AX,0x1
       1000:b61e be 48 49        MOV        SI,0x4948
       1000:b621 03 f0           ADD        SI,AX
       1000:b623 e3 07           JCXZ       LAB_1000_b62c
       1000:b625 d3 fa           SAR        DX,CL
       1000:b627 03 54 04        ADD        DX,word ptr [SI + 0x4]
       1000:b62a eb 12           JMP        LAB_1000_b63e
                             LAB_1000_b62c                                   XREF[1]:     1000:b623(j)  
       1000:b62c 03 54 06        ADD        DX,word ptr [SI + 0x6]
       1000:b62f 8b 4c 02        MOV        CX,word ptr [SI + 0x2]
       1000:b632 d1 e1           SHL        CX,0x1
       1000:b634 3b d1           CMP        DX,CX
       1000:b636 72 08           JC         LAB_1000_b640
       1000:b638 78 04           JS         LAB_1000_b63e
       1000:b63a 2b d1           SUB        DX,CX
       1000:b63c eb 02           JMP        LAB_1000_b640
                             LAB_1000_b63e                                   XREF[2]:     1000:b62a(j), 1000:b638(j)  
       1000:b63e 03 d1           ADD        DX,CX
                             LAB_1000_b640                                   XREF[2]:     1000:b636(j), 1000:b63c(j)  
       1000:b640 33 c0           XOR        AX,AX
       1000:b642 f7 f1           DIV        CX
       1000:b644 8b d0           MOV        DX,AX
       1000:b646 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b647()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b647                                   XREF[4]:     FUN_1000_542f:1000:54bb(c), 
                                                                                          FUN_1000_62d6:1000:62d6(c), 
                                                                                          FUN_1000_686e:1000:68b5(c), 
                                                                                          FUN_1000_81d7:1000:81db(c)  
       1000:b647 33 c9           XOR        CX,CX
       1000:b649 f6 06 eb        TEST       byte ptr [0x46eb],0x80
                 46 80
       1000:b64e 74 02           JZ         LAB_1000_b652
       1000:b650 b1 02           MOV        CL,0x2
                             LAB_1000_b652                                   XREF[1]:     1000:b64e(j)  
       1000:b652 8b eb           MOV        BP,BX
       1000:b654 2b 1e 7e 19     SUB        BX,word ptr [0x197e]
       1000:b658 d3 e3           SHL        BX,CL
       1000:b65a 03 1e f8 dc     ADD        BX,word ptr [0xdcf8]
       1000:b65e d1 e5           SHL        BP,0x1
       1000:b660 d1 e5           SHL        BP,0x1
       1000:b662 d1 e5           SHL        BP,0x1
       1000:b664 79 02           JNS        LAB_1000_b668
       1000:b666 f7 dd           NEG        BP
                             LAB_1000_b668                                   XREF[1]:     1000:b664(j)  
       1000:b668 8b ae 4a 49     MOV        BP,word ptr [BP + 0x494a]
       1000:b66c 03 ed           ADD        BP,BP
       1000:b66e 2b 16 7c 19     SUB        DX,word ptr [0x197c]
       1000:b672 8b c2           MOV        AX,DX
       1000:b674 f7 ed           IMUL       BP
       1000:b676 e3 06           JCXZ       LAB_1000_b67e
                             LAB_1000_b678                                   XREF[1]:     1000:b67c(j)  
       1000:b678 d1 e0           SHL        AX,0x1
       1000:b67a d1 d2           RCL        DX,0x1
       1000:b67c e2 fa           LOOP       LAB_1000_b678
                             LAB_1000_b67e                                   XREF[1]:     1000:b676(j)  
       1000:b67e 03 16 f6 dc     ADD        DX,word ptr [0xdcf6]
       1000:b682 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b69a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b69a                                   XREF[2]:     FUN_1000_542f:1000:5494(c), 
                                                                                          FUN_1000_542f:1000:5561(c)  
       1000:b69a a1 7c 19        MOV        AX,[0x197c]
       1000:b69d 87 06 80 19     XCHG       word ptr [0x1980],AX
       1000:b6a1 a3 7c 19        MOV        [0x197c],AX
       1000:b6a4 a1 7e 19        MOV        AX,[0x197e]
       1000:b6a7 87 06 82 19     XCHG       word ptr [0x1982],AX
       1000:b6ab a3 7e 19        MOV        [0x197e],AX
       1000:b6ae a1 f6 dc        MOV        AX,[0xdcf6]
       1000:b6b1 87 06 fa dc     XCHG       word ptr [0xdcfa],AX
       1000:b6b5 a3 f6 dc        MOV        [0xdcf6],AX
       1000:b6b8 a1 f8 dc        MOV        AX,[0xdcf8]
       1000:b6bb 87 06 fc dc     XCHG       word ptr [0xdcfc],AX
       1000:b6bf a3 f8 dc        MOV        [0xdcf8],AX
       1000:b6c2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b6c3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b6c3                                   XREF[4]:     FUN_1000_42e9:1000:434f(c), 
                                                                                          FUN_1000_49a0:1000:49ab(c), 
                                                                                          FUN_1000_542f:1000:5497(c), 
                                                                                          FUN_1000_5d6d:1000:5d96(c)  
       1000:b6c3 f6 06 eb        TEST       byte ptr [0x46eb],0x80
                 46 80
       1000:b6c8 74 4a           JZ         LAB_1000_b714
       1000:b6ca 1e              PUSH       DS
       1000:b6cb 07              POP        ES
       1000:b6cc c7 06 f6        MOV        word ptr [0xdcf6],0xa0
                 dc a0 00
       1000:b6d2 c7 06 f8        MOV        word ptr [0xdcf8],0x4c
                 dc 4c 00
       1000:b6d8 b9 12 00        MOV        CX,0x12
       1000:b6db bb 4b 00        MOV        BX,0x4b
       1000:b6de a1 7e 19        MOV        AX,[0x197e]
       1000:b6e1 0b c0           OR         AX,AX
       1000:b6e3 8b d0           MOV        DX,AX
       1000:b6e5 79 02           JNS        LAB_1000_b6e9
       1000:b6e7 f7 d8           NEG        AX
                             LAB_1000_b6e9                                   XREF[1]:     1000:b6e5(j)  
       1000:b6e9 3b c3           CMP        AX,BX
       1000:b6eb 72 0b           JC         LAB_1000_b6f8
       1000:b6ed 8b c3           MOV        AX,BX
       1000:b6ef 0b d2           OR         DX,DX
       1000:b6f1 79 02           JNS        LAB_1000_b6f5
       1000:b6f3 f7 d8           NEG        AX
                             LAB_1000_b6f5                                   XREF[1]:     1000:b6f1(j)  
       1000:b6f5 a3 7e 19        MOV        [0x197e],AX
                             LAB_1000_b6f8                                   XREF[1]:     1000:b6eb(j)  
       1000:b6f8 bd 48 49        MOV        BP,0x4948
       1000:b6fb 8b 16 7c 19     MOV        DX,word ptr [0x197c]
       1000:b6ff a1 7e 19        MOV        AX,[0x197e]
       1000:b702 2b c1           SUB        AX,CX
       1000:b704 c4 3e fe dc     LES        DI,[0xdcfe]
       1000:b708 be 60 4c        MOV        SI,0x4c60
       1000:b70b 8b 1e da db     MOV        BX,word ptr [0xdbda]
       1000:b70f ff 1e 29 39     CALLF      [0x3929]
       1000:b713 c3              RET
                             LAB_1000_b714                                   XREF[1]:     1000:b6c8(j)  
       1000:b714 bf 60 4c        MOV        DI,0x4c60
       1000:b717 a1 e7 46        MOV        AX,[0x46e7]
       1000:b71a 2b 06 e3 46     SUB        AX,word ptr [0x46e3]
       1000:b71e 8b d0           MOV        DX,AX
       1000:b720 d1 ea           SHR        DX,0x1
       1000:b722 03 16 e3 46     ADD        DX,word ptr [0x46e3]
       1000:b726 89 16 f6 dc     MOV        word ptr [0xdcf6],DX
       1000:b72a a3 f2 dc        MOV        [0xdcf2],AX
       1000:b72d a1 e9 46        MOV        AX,[0x46e9]
       1000:b730 2b 06 e5 46     SUB        AX,word ptr [0x46e5]
       1000:b734 48              DEC        AX
       1000:b735 8b d8           MOV        BX,AX
       1000:b737 d1 eb           SHR        BX,0x1
       1000:b739 03 1e e5 46     ADD        BX,word ptr [0x46e5]
       1000:b73d 89 1e f8 dc     MOV        word ptr [0xdcf8],BX
       1000:b741 40              INC        AX
       1000:b742 a3 f4 dc        MOV        [0xdcf4],AX
       1000:b745 48              DEC        AX
       1000:b746 d1 e8           SHR        AX,0x1
       1000:b748 8b c8           MOV        CX,AX
       1000:b74a bb 56 00        MOV        BX,0x56
       1000:b74d 2b d8           SUB        BX,AX
       1000:b74f a1 7e 19        MOV        AX,[0x197e]
       1000:b752 0b c0           OR         AX,AX
       1000:b754 8b d0           MOV        DX,AX
       1000:b756 79 02           JNS        LAB_1000_b75a
       1000:b758 f7 d8           NEG        AX
                             LAB_1000_b75a                                   XREF[1]:     1000:b756(j)  
       1000:b75a 3b c3           CMP        AX,BX
       1000:b75c 72 0b           JC         LAB_1000_b769
       1000:b75e 8b c3           MOV        AX,BX
       1000:b760 0b d2           OR         DX,DX
       1000:b762 79 02           JNS        LAB_1000_b766
       1000:b764 f7 d8           NEG        AX
                             LAB_1000_b766                                   XREF[1]:     1000:b762(j)  
       1000:b766 a3 7e 19        MOV        [0x197e],AX
                             LAB_1000_b769                                   XREF[1]:     1000:b75c(j)  
       1000:b769 bd 48 49        MOV        BP,0x4948
       1000:b76c 8b 16 7c 19     MOV        DX,word ptr [0x197c]
       1000:b770 a1 7e 19        MOV        AX,[0x197e]
       1000:b773 2b c1           SUB        AX,CX
       1000:b775 50              PUSH       AX
       1000:b776 8b 0e f4 dc     MOV        CX,word ptr [0xdcf4]
       1000:b77a d1 e0           SHL        AX,0x1
       1000:b77c d1 e0           SHL        AX,0x1
       1000:b77e d1 e0           SHL        AX,0x1
       1000:b780 79 1a           JNS        LAB_1000_b79c
       1000:b782 f7 d8           NEG        AX
       1000:b784 03 e8           ADD        BP,AX
                             LAB_1000_b786                                   XREF[1]:     1000:b798(j)  
       1000:b786 51              PUSH       CX
       1000:b787 8b 4e 00        MOV        CX,word ptr [BP + 0x0]
       1000:b78a 8b 5e 02        MOV        BX,word ptr [BP + 0x2]
       1000:b78d f7 d9           NEG        CX
       1000:b78f 74 14           JZ         LAB_1000_b7a5
       1000:b791 e8 3e 00        CALL       FUN_1000_b7d2                                    undefined FUN_1000_b7d2()
       1000:b794 83 ed 08        SUB        BP,0x8
       1000:b797 59              POP        CX
       1000:b798 e2 ec           LOOP       LAB_1000_b786
       1000:b79a eb 12           JMP        LAB_1000_b7ae
                             LAB_1000_b79c                                   XREF[1]:     1000:b780(j)  
       1000:b79c 03 e8           ADD        BP,AX
                             LAB_1000_b79e                                   XREF[1]:     1000:b7ac(j)  
       1000:b79e 51              PUSH       CX
       1000:b79f 8b 4e 00        MOV        CX,word ptr [BP + 0x0]
       1000:b7a2 8b 5e 02        MOV        BX,word ptr [BP + 0x2]
                             LAB_1000_b7a5                                   XREF[1]:     1000:b78f(j)  
       1000:b7a5 e8 2a 00        CALL       FUN_1000_b7d2                                    undefined FUN_1000_b7d2()
       1000:b7a8 83 c5 08        ADD        BP,0x8
       1000:b7ab 59              POP        CX
       1000:b7ac e2 f0           LOOP       LAB_1000_b79e
                             LAB_1000_b7ae                                   XREF[1]:     1000:b79a(j)  
       1000:b7ae 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:b7b2 8b 3e f2 dc     MOV        DI,word ptr [0xdcf2]
       1000:b7b6 8b 0e f4 dc     MOV        CX,word ptr [0xdcf4]
       1000:b7ba 8b 16 e3 46     MOV        DX,word ptr [0x46e3]
       1000:b7be 8b 1e e5 46     MOV        BX,word ptr [0x46e5]
       1000:b7c2 be 60 4c        MOV        SI,0x4c60
       1000:b7c5 58              POP        AX
       1000:b7c6 f6 06 eb        TEST       byte ptr [0x46eb],0x40
                 46 40
       1000:b7cb 75 04           JNZ        LAB_1000_b7d1
       1000:b7cd ff 1e 0d 39     CALLF      [0x390d]
                             LAB_1000_b7d1                                   XREF[1]:     1000:b7cb(j)  
       1000:b7d1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_b7d2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b7d2                                   XREF[2]:     FUN_1000_b6c3:1000:b791(c), 
                                                                                          FUN_1000_b6c3:1000:b7a5(c)  
       1000:b7d2 52              PUSH       DX
       1000:b7d3 57              PUSH       DI
       1000:b7d4 1e              PUSH       DS
       1000:b7d5 c5 36 fe dc     LDS        SI,[0xdcfe]
       1000:b7d9 16              PUSH       SS
       1000:b7da 07              POP        ES
       1000:b7db 03 f1           ADD        SI,CX
       1000:b7dd 03 db           ADD        BX,BX
       1000:b7df 8b c2           MOV        AX,DX
       1000:b7e1 f7 e3           MUL        BX
       1000:b7e3 89 56 06        MOV        word ptr [BP + 0x6],DX
       1000:b7e6 8b c2           MOV        AX,DX
       1000:b7e8 36 8b 16        MOV        DX,word ptr SS:[0xdcf2]
                 f2 dc
       1000:b7ed 3b da           CMP        BX,DX
       1000:b7ef 73 0a           JNC        LAB_1000_b7fb
       1000:b7f1 8b ca           MOV        CX,DX
       1000:b7f3 2b cb           SUB        CX,BX
       1000:b7f5 d1 e9           SHR        CX,0x1
       1000:b7f7 03 f9           ADD        DI,CX
       1000:b7f9 8b d3           MOV        DX,BX
                             LAB_1000_b7fb                                   XREF[1]:     1000:b7ef(j)  
       1000:b7fb 8b ca           MOV        CX,DX
       1000:b7fd d1 e9           SHR        CX,0x1
       1000:b7ff 2b c1           SUB        AX,CX
       1000:b801 79 02           JNS        LAB_1000_b805
       1000:b803 03 c3           ADD        AX,BX
                             LAB_1000_b805                                   XREF[1]:     1000:b801(j)  
       1000:b805 8b ca           MOV        CX,DX
       1000:b807 2b d8           SUB        BX,AX
       1000:b809 2b cb           SUB        CX,BX
       1000:b80b 79 06           JNS        LAB_1000_b813
       1000:b80d 03 cb           ADD        CX,BX
       1000:b80f 03 f0           ADD        SI,AX
       1000:b811 eb 0a           JMP        LAB_1000_b81d
                             LAB_1000_b813                                   XREF[1]:     1000:b80b(j)  
       1000:b813 87 d9           XCHG       CX,BX
       1000:b815 56              PUSH       SI
       1000:b816 03 f0           ADD        SI,AX
       1000:b818 f3 a4           MOVSB.REP  ES:DI,SI
       1000:b81a 5e              POP        SI
       1000:b81b 87 d9           XCHG       CX,BX
                             LAB_1000_b81d                                   XREF[1]:     1000:b811(j)  
       1000:b81d f3 a4           MOVSB.REP  ES:DI,SI
       1000:b81f 1f              POP        DS
       1000:b820 5f              POP        DI
       1000:b821 5a              POP        DX
       1000:b822 81 c7 c8 00     ADD        DI,0xc8
       1000:b826 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_b930()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_b930                                   XREF[2]:     FUN_1000_0911:1000:0914(c), 
                                                                                          FUN_1000_1860:1000:1883(c)  
       1000:b930 c6 06 03        MOV        byte ptr [0xdd03],0x0
                 dd 00
       1000:b935 be ae b9        MOV        SI,0xb9ae
       1000:b938 e8 24 21        CALL       FUN_1000_da5f                                    undefined FUN_1000_da5f()
       1000:b93b be 57 be        MOV        SI,0xbe57
       1000:b93e e9 1e 21        JMP        FUN_1000_da5f                                    undefined FUN_1000_da5f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_bdbb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_bdbb                                   XREF[1]:     FUN_1000_1c18:1000:1c42(c)  
       1000:bdbb 83 3e 0f        CMP        word ptr [0xdd0f],0x0
                 dd 00
       1000:bdc0 74 37           JZ         LAB_1000_bdf9
       1000:bdc2 e8 c9 02        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:bdc5 e8 ea 1d        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:bdc8 e8 2f 00        CALL       FUN_1000_bdfa                                    undefined FUN_1000_bdfa()
       1000:bdcb e8 09 01        CALL       FUN_1000_bed7                                    undefined FUN_1000_bed7()
       1000:bdce a1 02 00        MOV        AX,[0x2]
       1000:bdd1 25 f0 ff        AND        AX,0xfff0
       1000:bdd4 a3 5c 11        MOV        [0x115c],AX
       1000:bdd7 e8 9b 12        CALL       FUN_1000_d075                                    undefined FUN_1000_d075()
       1000:bdda be 94 24        MOV        SI,0x2494
       1000:bddd e8 c6 13        CALL       FUN_1000_d1a6                                    undefined FUN_1000_d1a6()
       1000:bde0 be 11 dd        MOV        SI,0xdd11
       1000:bde3 bf 17 dd        MOV        DI,0xdd17
       1000:bde6 1e              PUSH       DS
       1000:bde7 07              POP        ES
       1000:bde8 b9 06 00        MOV        CX,0x6
                             LAB_1000_bdeb                                   XREF[2]:     1000:bdec(j), 1000:bdf4(j)  
       1000:bdeb a6              CMPSB      ES:DI,SI
       1000:bdec e0 fd           LOOPNZ     LAB_1000_bdeb
       1000:bdee 75 09           JNZ        LAB_1000_bdf9
       1000:bdf0 fe 4d ff        DEC        byte ptr [DI + -0x1]
       1000:bdf3 41              INC        CX
       1000:bdf4 e2 f5           LOOP       LAB_1000_bdeb
       1000:bdf6 e8 f3 1d        CALL       FUN_1000_dbec                                    undefined FUN_1000_dbec()
                             LAB_1000_bdf9                                   XREF[2]:     1000:bdc0(j), 1000:bdee(j)  
       1000:bdf9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_bdfa()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_bdfa                                   XREF[1]:     FUN_1000_bdbb:1000:bdc8(c)  
       1000:bdfa be c2 00        MOV        SI,0xc2
       1000:bdfd e8 d1 5c        CALL       FUN_1000_1ad1                                    undefined FUN_1000_1ad1()
       1000:be00 40              INC        AX
       1000:be01 e8 d7 24        CALL       FUN_1000_e2db                                    undefined FUN_1000_e2db()
       1000:be04 e8 a0 01        CALL       FUN_1000_bfa7                                    undefined FUN_1000_bfa7()
       1000:be07 a0 29 00        MOV        AL,[0x29]
       1000:be0a 32 e4           XOR        AH,AH
       1000:be0c d1 e8           SHR        AX,0x1
       1000:be0e be c3 00        MOV        SI,0xc3
       1000:be11 e8 c7 24        CALL       FUN_1000_e2db                                    undefined FUN_1000_e2db()
       1000:be14 e8 51 12        CALL       FUN_1000_d068                                    undefined FUN_1000_d068()
       1000:be17 be 82 24        MOV        SI,0x2482
       1000:be1a e9 89 13        JMP        FUN_1000_d1a6                                    undefined FUN_1000_d1a6()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_bed7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_bed7                                   XREF[1]:     FUN_1000_bdbb:1000:bdcb(c)  
       1000:bed7 a1 02 00        MOV        AX,[0x2]
       1000:beda 25 f0 ff        AND        AX,0xfff0
       1000:bedd a3 5c 11        MOV        [0x115c],AX
       1000:bee0 e8 4b 01        CALL       FUN_1000_c02e                                    undefined FUN_1000_c02e()
       1000:bee3 e8 40 00        CALL       FUN_1000_bf26                                    undefined FUN_1000_bf26()
       1000:bee6 1e              PUSH       DS
       1000:bee7 07              POP        ES
       1000:bee8 bf 11 dd        MOV        DI,0xdd11
       1000:beeb a1 a4 00        MOV        AX,[0xa4]
       1000:beee d1 e8           SHR        AX,0x1
       1000:bef0 40              INC        AX
       1000:bef1 aa              STOSB      ES:DI
       1000:bef2 a1 a2 00        MOV        AX,[0xa2]
       1000:bef5 d1 e8           SHR        AX,0x1
       1000:bef7 40              INC        AX
       1000:bef8 aa              STOSB      ES:DI
       1000:bef9 a1 a8 00        MOV        AX,[0xa8]
       1000:befc d1 e8           SHR        AX,0x1
       1000:befe d1 e8           SHR        AX,0x1
       1000:bf00 d1 e8           SHR        AX,0x1
       1000:bf02 d1 e8           SHR        AX,0x1
       1000:bf04 fe c0           INC        AL
       1000:bf06 aa              STOSB      ES:DI
       1000:bf07 a1 a6 00        MOV        AX,[0xa6]
       1000:bf0a d1 e8           SHR        AX,0x1
       1000:bf0c d1 e8           SHR        AX,0x1
       1000:bf0e d1 e8           SHR        AX,0x1
       1000:bf10 d1 e8           SHR        AX,0x1
       1000:bf12 fe c0           INC        AL
       1000:bf14 aa              STOSB      ES:DI
       1000:bf15 a1 ac 00        MOV        AX,[0xac]
       1000:bf18 8a c4           MOV        AL,AH
       1000:bf1a fe c0           INC        AL
       1000:bf1c aa              STOSB      ES:DI
       1000:bf1d a1 aa 00        MOV        AX,[0xaa]
       1000:bf20 8a c4           MOV        AL,AH
       1000:bf22 fe c0           INC        AL
       1000:bf24 aa              STOSB      ES:DI
       1000:bf25 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_bf26()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_bf26                                   XREF[2]:     FUN_1000_1c46:1000:1ca3(c), 
                                                                                          FUN_1000_bed7:1000:bee3(c)  
       1000:bf26 bf 5e 11        MOV        DI,0x115e
       1000:bf29 bd 6a 11        MOV        BP,0x116a
       1000:bf2c be c4 00        MOV        SI,0xc4
       1000:bf2f e8 3e 10        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:bf32 a1 a4 00        MOV        AX,[0xa4]
       1000:bf35 e8 3b 00        CALL       FUN_1000_bf73                                    undefined FUN_1000_bf73()
       1000:bf38 a1 a2 00        MOV        AX,[0xa2]
       1000:bf3b e8 35 00        CALL       FUN_1000_bf73                                    undefined FUN_1000_bf73()
       1000:bf3e a1 a8 00        MOV        AX,[0xa8]
       1000:bf41 e8 1d 00        CALL       FUN_1000_bf61                                    undefined FUN_1000_bf61()
       1000:bf44 a1 a6 00        MOV        AX,[0xa6]
       1000:bf47 e8 17 00        CALL       FUN_1000_bf61                                    undefined FUN_1000_bf61()
       1000:bf4a a1 ac 00        MOV        AX,[0xac]
       1000:bf4d e8 11 00        CALL       FUN_1000_bf61                                    undefined FUN_1000_bf61()
       1000:bf50 a1 aa 00        MOV        AX,[0xaa]
       1000:bf53 eb 0c           JMP        FUN_1000_bf61                                    undefined FUN_1000_bf61()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_bf61()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_bf61                                   XREF[4]:     FUN_1000_bf26:1000:bf41(c), 
                                                                                          FUN_1000_bf26:1000:bf47(c), 
                                                                                          FUN_1000_bf26:1000:bf4d(c), 
                                                                                          FUN_1000_bf26:1000:bf53(c)  
       1000:bf61 57              PUSH       DI
       1000:bf62 50              PUSH       AX
       1000:bf63 e8 d6 10        CALL       FUN_1000_d03c                                    undefined FUN_1000_d03c()
       1000:bf66 4e              DEC        SI
       1000:bf67 26 c6 04 30     MOV        byte ptr ES:[SI],0x30
       1000:bf6b 58              POP        AX
       1000:bf6c 50              PUSH       AX
       1000:bf6d e8 ac 23        CALL       FUN_1000_e31c                                    undefined FUN_1000_e31c()
       1000:bf70 46              INC        SI
       1000:bf71 eb 0a           JMP        LAB_1000_bf7d
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_bf73()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_bf73                                   XREF[2]:     FUN_1000_bf26:1000:bf35(c), 
                                                                                          FUN_1000_bf26:1000:bf3b(c)  
       1000:bf73 57              PUSH       DI
       1000:bf74 50              PUSH       AX
       1000:bf75 e8 c4 10        CALL       FUN_1000_d03c                                    undefined FUN_1000_d03c()
       1000:bf78 58              POP        AX
       1000:bf79 50              PUSH       AX
       1000:bf7a e8 66 23        CALL       FUN_1000_e2e3                                    undefined FUN_1000_e2e3()
                             LAB_1000_bf7d                                   XREF[1]:     FUN_1000_bf61:1000:bf71(j)  
       1000:bf7d 58              POP        AX
       1000:bf7e 5f              POP        DI
       1000:bf7f 8b d0           MOV        DX,AX
       1000:bf81 87 05           XCHG       word ptr [DI],AX
       1000:bf83 3b d0           CMP        DX,AX
       1000:bf85 b0 03           MOV        AL,0x3
       1000:bf87 75 10           JNZ        LAB_1000_bf99
       1000:bf89 a1 02 00        MOV        AX,[0x2]
       1000:bf8c 25 f0 ff        AND        AX,0xfff0
       1000:bf8f 39 06 5c 11     CMP        word ptr [0x115c],AX
       1000:bf93 74 0d           JZ         LAB_1000_bfa2
       1000:bf95 b0 03           MOV        AL,0x3
       1000:bf97 eb 06           JMP        LAB_1000_bf9f
                             LAB_1000_bf99                                   XREF[1]:     1000:bf87(j)  
       1000:bf99 b0 02           MOV        AL,0x2
       1000:bf9b 72 02           JC         LAB_1000_bf9f
       1000:bf9d fe c8           DEC        AL
                             LAB_1000_bf9f                                   XREF[2]:     1000:bf97(j), 1000:bf9b(j)  
       1000:bf9f 88 46 00        MOV        byte ptr [BP + 0x0],AL
                             LAB_1000_bfa2                                   XREF[1]:     1000:bf93(j)  
       1000:bfa2 83 c7 02        ADD        DI,0x2
       1000:bfa5 45              INC        BP
       1000:bfa6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_bfa7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_bfa7                                   XREF[1]:     FUN_1000_bdfa:1000:be04(c)  
       1000:bfa7 8a 1e eb ce     MOV        BL,byte ptr [0xceeb]
       1000:bfab 32 ff           XOR        BH,BH
       1000:bfad d1 e3           SHL        BX,0x1
       1000:bfaf d1 e3           SHL        BX,0x1
       1000:bfb1 d1 e3           SHL        BX,0x1
       1000:bfb3 81 c3 1a 25     ADD        BX,0x251a
       1000:bfb7 26 8b 44 fe     MOV        AX,word ptr ES:[SI + -0x2]
       1000:bfbb 86 c4           XCHG       AH,AL
       1000:bfbd 24 0f           AND        AL,0xf
       1000:bfbf 80 fc 31        CMP        AH,0x31
       1000:bfc2 74 19           JZ         LAB_1000_bfdd
       1000:bfc4 3c 04           CMP        AL,0x4
       1000:bfc6 73 15           JNC        LAB_1000_bfdd
       1000:bfc8 3c 01           CMP        AL,0x1
       1000:bfca 75 0b           JNZ        LAB_1000_bfd7
       1000:bfcc 81 fb 22 25     CMP        BX,0x2522
       1000:bfd0 75 05           JNZ        LAB_1000_bfd7
       1000:bfd2 80 fc 20        CMP        AH,0x20
       1000:bfd5 75 06           JNZ        LAB_1000_bfdd
                             LAB_1000_bfd7                                   XREF[2]:     1000:bfca(j), 1000:bfd0(j)  
       1000:bfd7 32 e4           XOR        AH,AH
       1000:bfd9 d1 e0           SHL        AX,0x1
       1000:bfdb 03 d8           ADD        BX,AX
                             LAB_1000_bfdd                                   XREF[3]:     1000:bfc2(j), 1000:bfc6(j), 
                                                                                          1000:bfd5(j)  
       1000:bfdd 8b 07           MOV        AX,word ptr [BX]
       1000:bfdf 26 89 04        MOV        word ptr ES:[SI],AX
       1000:bfe2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_bfe3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_bfe3                                   XREF[1]:     FUN_1000_c02e:1000:c02e(c)  
       1000:bfe3 1e              PUSH       DS
       1000:bfe4 33 db           XOR        BX,BX
       1000:bfe6 33 d2           XOR        DX,DX
       1000:bfe8 b9 f9 c5        MOV        CX,0xc5f9
       1000:bfeb 33 f6           XOR        SI,SI
       1000:bfed 8e 1e 00 dd     MOV        DS,word ptr [0xdd00]
                             LAB_1000_bff1                                   XREF[1]:     1000:bffc(j)  
       1000:bff1 ac              LODSB      SI
       1000:bff2 24 30           AND        AL,0x30
       1000:bff4 74 06           JZ         LAB_1000_bffc
       1000:bff6 42              INC        DX
       1000:bff7 3c 30           CMP        AL,0x30
       1000:bff9 74 01           JZ         LAB_1000_bffc
       1000:bffb 43              INC        BX
                             LAB_1000_bffc                                   XREF[2]:     1000:bff4(j), 1000:bff9(j)  
       1000:bffc e2 f3           LOOP       LAB_1000_bff1
       1000:bffe 2b d3           SUB        DX,BX
       1000:c000 33 c0           XOR        AX,AX
       1000:c002 81 ee 88 01     SUB        SI,0x188
       1000:c006 46              INC        SI
       1000:c007 f7 f6           DIV        SI
       1000:c009 ba 64 00        MOV        DX,0x64
       1000:c00c f7 e2           MUL        DX
       1000:c00e 03 c0           ADD        AX,AX
       1000:c010 83 d2 00        ADC        DX,0x0
       1000:c013 87 d3           XCHG       BX,DX
       1000:c015 33 c0           XOR        AX,AX
       1000:c017 f7 f6           DIV        SI
       1000:c019 ba 64 00        MOV        DX,0x64
       1000:c01c f7 e2           MUL        DX
       1000:c01e 03 c0           ADD        AX,AX
       1000:c020 83 d2 00        ADC        DX,0x0
       1000:c023 42              INC        DX
       1000:c024 1f              POP        DS
       1000:c025 89 16 a2 00     MOV        word ptr [0xa2],DX
       1000:c029 89 1e a4 00     MOV        word ptr [0xa4],BX
       1000:c02d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c02e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c02e                                   XREF[2]:     FUN_1000_1c46:1000:1ca0(c), 
                                                                                          FUN_1000_bed7:1000:bee0(c)  
       1000:c02e e8 b2 ff        CALL       FUN_1000_bfe3                                    undefined FUN_1000_bfe3()
       1000:c031 a1 a0 00        MOV        AX,[0xa0]
       1000:c034 03 06 72 11     ADD        AX,word ptr [0x1172]
       1000:c038 2b 06 70 11     SUB        AX,word ptr [0x1170]
       1000:c03c 73 02           JNC        LAB_1000_c040
       1000:c03e 33 c0           XOR        AX,AX
                             LAB_1000_c040                                   XREF[1]:     1000:c03c(j)  
       1000:c040 3b 06 a6 00     CMP        AX,word ptr [0xa6]
       1000:c044 72 03           JC         LAB_1000_c049
       1000:c046 a3 a6 00        MOV        [0xa6],AX
                             LAB_1000_c049                                   XREF[1]:     1000:c044(j)  
       1000:c049 33 c0           XOR        AX,AX
       1000:c04b a3 aa 00        MOV        [0xaa],AX
       1000:c04e a3 ac 00        MOV        [0xac],AX
       1000:c051 be aa 08        MOV        SI,0x8aa
                             LAB_1000_c054                                   XREF[1]:     1000:c079(j)  
       1000:c054 8a 44 1a        MOV        AL,byte ptr [SI + 0x1a]
       1000:c057 f6 44 03 20     TEST       byte ptr [SI + 0x3],0x20
       1000:c05b 75 16           JNZ        LAB_1000_c073
       1000:c05d f6 44 10 80     TEST       byte ptr [SI + 0x10],0x80
       1000:c061 74 06           JZ         LAB_1000_c069
       1000:c063 01 06 ac 00     ADD        word ptr [0xac],AX
       1000:c067 eb 0a           JMP        LAB_1000_c073
                             LAB_1000_c069                                   XREF[1]:     1000:c061(j)  
       1000:c069 f6 44 03 80     TEST       byte ptr [SI + 0x3],0x80
       1000:c06d 75 04           JNZ        LAB_1000_c073
       1000:c06f 01 06 aa 00     ADD        word ptr [0xaa],AX
                             LAB_1000_c073                                   XREF[3]:     1000:c05b(j), 1000:c067(j), 
                                                                                          1000:c06d(j)  
       1000:c073 83 c6 1b        ADD        SI,0x1b
       1000:c076 80 3c 00        CMP        byte ptr [SI],0x0
       1000:c079 75 d9           JNZ        LAB_1000_c054
       1000:c07b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c07c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c07c                                   XREF[31]:    FUN_1000_0086:1000:0086(c), 
                                                                                          FUN_1000_0309:1000:030e(c), 
                                                                                          FUN_1000_0580:1000:05dc(c), 
                                                                                          FUN_1000_0a23:1000:0a30(c), 
                                                                                          FUN_1000_0acd:1000:0adc(c), 
                                                                                          FUN_1000_0e77:1000:0e7a(c), 
                                                                                          FUN_1000_17be:1000:17be(c), 
                                                                                          FUN_1000_189a:1000:18ab(c), 
                                                                                          FUN_1000_2db1:1000:2e0d(c), 
                                                                                          FUN_1000_3723:1000:3734(c), 
                                                                                          FUN_1000_439f:1000:439f(c), 
                                                                                          FUN_1000_488a:1000:48ee(c), 
                                                                                          FUN_1000_4aeb:1000:4af1(c), 
                                                                                          FUN_1000_4f0c:1000:4faa(c), 
                                                                                          FUN_1000_542f:1000:5474(c), 
                                                                                          FUN_1000_5d6d:1000:5d82(c), 
                                                                                          FUN_1000_5f91:1000:5f9f(c), 
                                                                                          FUN_1000_80df:1000:8126(c), 
                                                                                          FUN_1000_c097:1000:c097(c), 
                                                                                          FUN_1000_c8fb:1000:c8fb(c), [more]
       1000:c07c ff 36 d6 db     PUSH       word ptr [0xdbd6]
       1000:c080 8f 06 da db     POP        word ptr [0xdbda]
       1000:c084 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c085()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c085                                   XREF[5]:     FUN_1000_49a0:1000:49a0(c), 
                                                                                          FUN_1000_4a1a:1000:4a50(c), 
                                                                                          FUN_1000_4a5a:1000:4a61(c), 
                                                                                          FUN_1000_4f0c:1000:4fa4(c), 
                                                                                          FUN_1000_8f28:1000:901f(c)  
       1000:c085 ff 36 32 dc     PUSH       word ptr [0xdc32]
       1000:c089 8f 06 da db     POP        word ptr [0xdbda]
       1000:c08d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c08e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c08e                                   XREF[17]:    FUN_1000_0a23:1000:0a2a(c), 
                                                                                          FUN_1000_1a34:1000:1a3f(c), 
                                                                                          FUN_1000_274e:1000:274e(c), 
                                                                                          FUN_1000_275f:1000:275f(c), 
                                                                                          FUN_1000_27c9:1000:27c9(c), 
                                                                                          FUN_1000_445d:1000:44b3(c), 
                                                                                          FUN_1000_5bb0:1000:5bb0(c), 
                                                                                          FUN_1000_5ee4:1000:5f0c(c), 
                                                                                          FUN_1000_600e:1000:600e(c), 
                                                                                          FUN_1000_78e9:1000:78f1(c), 
                                                                                          FUN_1000_80df:1000:80e0(c), 
                                                                                          FUN_1000_9de3:1000:9e61(c), 
                                                                                          FUN_1000_bdbb:1000:bdc2(c), 
                                                                                          FUN_1000_d200:1000:d204(c), 
                                                                                          FUN_1000_d48a:1000:d48e(c), 
                                                                                          FUN_1000_de7b:1000:de9e(c), 
                                                                                          FUN_1000_e594:1000:e5f5(c)  
       1000:c08e ff 36 d8 db     PUSH       word ptr [0xdbd8]
       1000:c092 8f 06 da db     POP        word ptr [0xdbda]
       1000:c096 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c097()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c097                                   XREF[10]:    FUN_1000_0086:1000:0092(c), 
                                                                                          FUN_1000_0580:1000:05b4(c), 
                                                                                          FUN_1000_1860:1000:1895(c), 
                                                                                          FUN_1000_2566:1000:267f(c), 
                                                                                          FUN_1000_2566:1000:2693(c), 
                                                                                          FUN_1000_2db1:1000:2db4(c), 
                                                                                          FUN_1000_2db1:1000:2dd0(c), 
                                                                                          FUN_1000_3723:1000:376e(c), 
                                                                                          FUN_1000_3723:1000:377d(c), 
                                                                                          FUN_1000_c108:1000:c10f(c)  
       1000:c097 e8 e2 ff        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:c09a ff 36 d8 db     PUSH       word ptr [0xdbd8]
       1000:c09e ff 36 d6 db     PUSH       word ptr [0xdbd6]
       1000:c0a2 8f 06 d8 db     POP        word ptr [0xdbd8]
       1000:c0a6 ff d5           CALL       BP
       1000:c0a8 8f 06 d8 db     POP        word ptr [0xdbd8]
       1000:c0ac c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c0ad()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c0ad                                   XREF[3]:     FUN_1000_0086:1000:0089(c), 
                                                                                          FUN_1000_0309:1000:0311(c), 
                                                                                          FUN_1000_e594:1000:e66e(c)  
       1000:c0ad 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:c0b1 ff 1e d5 38     CALLF      [0x38d5]
       1000:c0b5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c0d5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c0d5                                   XREF[1]:     FUN_1000_d280:1000:d2a0(c)  
       1000:c0d5 1e              PUSH       DS
       1000:c0d6 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:c0da 8e 1e d6 db     MOV        DS,word ptr [0xdbd6]
       1000:c0de bd 7a ce        MOV        BP,0xce7a
       1000:c0e1 36 ff 1e        CALLF      [0x392d]
                 2d 39
       1000:c0e6 1f              POP        DS
       1000:c0e7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c0e8()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c0e8                                   XREF[3]:     FUN_1000_542f:1000:554a(c), 
                                                                                          FUN_1000_7b0f:1000:7b17(c), 
                                                                                          FUN_1000_7b2b:1000:7b32(c)  
       1000:c0e8 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:c0ec bd 7a ce        MOV        BP,0xce7a
       1000:c0ef ff 1e 2d 39     CALLF      [0x392d]
       1000:c0f3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c0f4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c0f4                                   XREF[15]:    FUN_1000_0580:1000:05d6(c), 
                                                                                          FUN_1000_0d45:1000:0d5e(c), 
                                                                                          FUN_1000_0e77:1000:0e86(c), 
                                                                                          FUN_1000_2566:1000:25ec(c), 
                                                                                          FUN_1000_2db1:1000:2df5(c), 
                                                                                          FUN_1000_2db1:1000:2e4c(c), 
                                                                                          FUN_1000_35ad:1000:3656(c), 
                                                                                          FUN_1000_368b:1000:36b3(c), 
                                                                                          FUN_1000_42e9:1000:436b(c), 
                                                                                          FUN_1000_488a:1000:48f7(c), 
                                                                                          FUN_1000_79ee:1000:7a8b(c), 
                                                                                          FUN_1000_79ee:1000:7aa8(c), 
                                                                                          FUN_1000_9381:1000:93d2(c), 
                                                                                          FUN_1000_978e:1000:97c8(c), 
                                                                                          FUN_1000_c8fb:1000:c905(c)  
       1000:c0f4 a1 d6 db        MOV        AX,[0xdbd6]
       1000:c0f7 3b 06 d8 db     CMP        AX,word ptr [0xdbd8]
       1000:c0fb 74 04           JZ         LAB_1000_c101
       1000:c0fd ff 1e 35 39     CALLF      [0x3935]
                             LAB_1000_c101                                   XREF[1]:     1000:c0fb(j)  
       1000:c101 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c102()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c102                                   XREF[2]:     FUN_1000_021c:1000:0235(c), 
                                                                                          FUN_1000_0309:1000:031e(c)  
       1000:c102 ff 1e 59 39     CALLF      [0x3959]
       1000:c106 b0 3a           MOV        AL,0x3a
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c108()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c108                                   XREF[15]:    FUN_1000_021c:1000:0269(c), 
                                                                                          FUN_1000_021c:1000:028f(c), 
                                                                                          FUN_1000_0580:1000:05d3(c), 
                                                                                          FUN_1000_0e77:1000:0e97(c), 
                                                                                          FUN_1000_189a:1000:18a8(c), 
                                                                                          FUN_1000_2566:1000:25f4(c), 
                                                                                          FUN_1000_2566:1000:2605(c), 
                                                                                          FUN_1000_2566:1000:268d(c), 
                                                                                          FUN_1000_2566:1000:26a0(c), 
                                                                                          FUN_1000_2b2a:1000:2b9b(c), 
                                                                                          FUN_1000_2c92:1000:2c97(c), 
                                                                                          FUN_1000_2db1:1000:2e44(c), 
                                                                                          FUN_1000_3723:1000:3765(c), 
                                                                                          FUN_1000_3723:1000:37a0(c), 
                                                                                          FUN_1000_5a1a:1000:5a2d(c)  
       1000:c108 c6 06 e6        MOV        byte ptr [0xdce6],0x80
                 dc 80
       1000:c10d 50              PUSH       AX
       1000:c10e 52              PUSH       DX
       1000:c10f e8 85 ff        CALL       FUN_1000_c097                                    undefined FUN_1000_c097()
       1000:c112 5a              POP        DX
       1000:c113 58              POP        AX
       1000:c114 1e              PUSH       DS
       1000:c115 8b 36 de db     MOV        SI,word ptr [0xdbde]
       1000:c119 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:c11d 8e 1e d6 db     MOV        DS,word ptr [0xdbd6]
       1000:c121 bd 7a ce        MOV        BP,0xce7a
       1000:c124 36 ff 1e        CALLF      [0x3921]
                 21 39
       1000:c129 1f              POP        DS
       1000:c12a e8 a0 03        CALL       FUN_1000_c4cd                                    undefined FUN_1000_c4cd()
       1000:c12d ff 1e 35 39     CALLF      [0x3935]
       1000:c131 c6 06 e6        MOV        byte ptr [0xdce6],0x0
                 dc 00
       1000:c136 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c137()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c137                                   XREF[15]:    FUN_1000_00d1:1000:015c(c), 
                                                                                          FUN_1000_1797:1000:179b(c), 
                                                                                          FUN_1000_1a0f:1000:1a1d(c), 
                                                                                          FUN_1000_42e9:1000:4352(c), 
                                                                                          FUN_1000_445d:1000:4472(c), 
                                                                                          FUN_1000_445d:1000:44b9(c), 
                                                                                          FUN_1000_49a0:1000:49b1(c), 
                                                                                          FUN_1000_4a1a:1000:4a4a(c), 
                                                                                          FUN_1000_4a5a:1000:4a5a(c), 
                                                                                          FUN_1000_4f0c:1000:4f9e(c), 
                                                                                          FUN_1000_542f:1000:54a1(c), 
                                                                                          FUN_1000_6314:1000:6329(c), 
                                                                                          FUN_1000_8f28:1000:8fbf(c), 
                                                                                          FUN_1000_d1f2:1000:d1f2(c), 
                                                                                          FUN_1000_d7b7:1000:d800(c)  
       1000:c137 33 c0           XOR        AX,AX
       1000:c139 eb 03           JMP        FUN_1000_c13e                                    undefined FUN_1000_c13e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c13b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c13b+1                                 XREF[16,2]:  FUN_1000_0acd:1000:0ad9(c), 
                             FUN_1000_c13b                                                FUN_1000_1c18:1000:1c1f(c), 
                                                                                          FUN_1000_542f:1000:5468(c), 
                                                                                          FUN_1000_563e:1000:5671(c), 
                                                                                          FUN_1000_5d6d:1000:5d99(c), 
                                                                                          FUN_1000_5d6d:1000:5dca(c), 
                                                                                          FUN_1000_60ac:1000:60ac(c), 
                                                                                          FUN_1000_780a:1000:7844(c), 
                                                                                          FUN_1000_79ee:1000:7b0c(c), 
                                                                                          FUN_1000_7e3d:1000:7e3d(c), 
                                                                                          FUN_1000_878c:1000:881c(c), 
                                                                                          FUN_1000_c58a:1000:c58a(c), 
                                                                                          FUN_1000_c60b:1000:c60c(c), 
                                                                                          FUN_1000_c653:1000:c653(c), 
                                                                                          FUN_1000_c653:1000:c661(c), 
                                                                                          FUN_1000_c6ad:1000:c6ad(c), 
                                                                                          FUN_1000_0acd:1000:0ad3(W), 
                                                                                          FUN_1000_0b21:1000:0b24(W)  
       1000:c13b b8 25 00        MOV        AX,0x25
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c13e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c13e                                   XREF[33]:    FUN_1000_0169:1000:016c(c), 
                                                                                          FUN_1000_1a0f:1000:1a30(c), 
                                                                                          FUN_1000_2566:1000:25e9(c), 
                                                                                          FUN_1000_2566:1000:2685(c), 
                                                                                          FUN_1000_274e:1000:2754(c), 
                                                                                          FUN_1000_2773:1000:2776(c), 
                                                                                          FUN_1000_2795:1000:2798(c), 
                                                                                          FUN_1000_38b4:1000:38ba(c), 
                                                                                          FUN_1000_3971:1000:397b(c), 
                                                                                          FUN_1000_39ec:1000:3a54(c), 
                                                                                          FUN_1000_3b59:1000:3b6d(c), 
                                                                                          FUN_1000_3d2f:1000:3d47(c), 
                                                                                          FUN_1000_4aeb:1000:4aee(c), 
                                                                                          FUN_1000_4bdf:1000:4be2(c), 
                                                                                          FUN_1000_4c92:1000:4cb5(c), 
                                                                                          FUN_1000_542f:1000:5481(c), 
                                                                                          FUN_1000_57e5:1000:57ec(c), 
                                                                                          FUN_1000_8f28:1000:8ff9(c), 
                                                                                          FUN_1000_ae62:1000:aeaa(c), 
                                                                                          FUN_1000_c2f2:1000:c2f4(c), [more]
       1000:c13e 0b c0           OR         AX,AX
       1000:c140 78 67           JS         LAB_1000_c1a9
       1000:c142 53              PUSH       BX
       1000:c143 8b d8           MOV        BX,AX
       1000:c145 87 1e 84 27     XCHG       word ptr [0x2784],BX
       1000:c149 3b c3           CMP        AX,BX
       1000:c14b 74 5b           JZ         LAB_1000_c1a8
       1000:c14d 56              PUSH       SI
       1000:c14e 57              PUSH       DI
       1000:c14f d1 e3           SHL        BX,0x1
       1000:c151 78 08           JS         LAB_1000_c15b
       1000:c153 8b 36 7b ce     MOV        SI,word ptr [0xce7b]
       1000:c157 89 b7 8c da     MOV        word ptr [BX + 0xda8c],SI
                             LAB_1000_c15b                                   XREF[1]:     1000:c151(j)  
       1000:c15b 8b f0           MOV        SI,AX
       1000:c15d d1 e6           SHL        SI,0x1
       1000:c15f d1 e6           SHL        SI,0x1
       1000:c161 81 c6 44 d8     ADD        SI,0xd844
       1000:c165 c4 3c           LES        DI,[SI]
       1000:c167 8c c3           MOV        BX,ES
       1000:c169 0b db           OR         BX,BX
       1000:c16b 74 0a           JZ         LAB_1000_c177
       1000:c16d 83 ff 02        CMP        DI,0x2
       1000:c170 76 2c           JBE        LAB_1000_c19e
       1000:c172 e8 35 00        CALL       FUN_1000_c1aa                                    undefined FUN_1000_c1aa()
       1000:c175 eb 27           JMP        LAB_1000_c19e
                             LAB_1000_c177                                   XREF[1]:     1000:c16b(j)  
       1000:c177 51              PUSH       CX
       1000:c178 52              PUSH       DX
       1000:c179 55              PUSH       BP
       1000:c17a 56              PUSH       SI
       1000:c17b 8b f0           MOV        SI,AX
       1000:c17d e8 39 2f        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:c180 26 83 3d 02     CMP        word ptr ES:[DI],0x2
       1000:c184 76 03           JBE        LAB_1000_c189
       1000:c186 e8 21 00        CALL       FUN_1000_c1aa                                    undefined FUN_1000_c1aa()
                             LAB_1000_c189                                   XREF[1]:     1000:c184(j)  
       1000:c189 5e              POP        SI
       1000:c18a 26 8b 3d        MOV        DI,word ptr ES:[DI]
       1000:c18d 2b cf           SUB        CX,DI
       1000:c18f 89 3c           MOV        word ptr [SI],DI
       1000:c191 8c 44 02        MOV        word ptr [SI + 0x2],ES
       1000:c194 a1 84 27        MOV        AX,[0x2784]
       1000:c197 ff 1e 05 39     CALLF      [0x3905]
       1000:c19b 5d              POP        BP
       1000:c19c 5a              POP        DX
       1000:c19d 59              POP        CX
                             LAB_1000_c19e                                   XREF[2]:     1000:c170(j), 1000:c175(j)  
       1000:c19e 89 3e b0 db     MOV        word ptr [0xdbb0],DI
       1000:c1a2 8c 06 b2 db     MOV        word ptr [0xdbb2],ES
       1000:c1a6 5f              POP        DI
       1000:c1a7 5e              POP        SI
                             LAB_1000_c1a8                                   XREF[1]:     1000:c14b(j)  
       1000:c1a8 5b              POP        BX
                             LAB_1000_c1a9                                   XREF[2]:     1000:c140(j), 
                                                                                          FUN_1000_c1aa:1000:c1b5(j)  
       1000:c1a9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c1aa()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c1aa                                   XREF[2]:     FUN_1000_c13e:1000:c172(c), 
                                                                                          FUN_1000_c13e:1000:c186(c)  
       1000:c1aa a1 84 27        MOV        AX,[0x2784]
       1000:c1ad 8a e0           MOV        AH,AL
       1000:c1af 86 06 b4 db     XCHG       byte ptr [0xdbb4],AL
       1000:c1b3 3a c4           CMP        AL,AH
       1000:c1b5 74 f2           JZ         LAB_1000_c1a9
       1000:c1b7 be 02 00        MOV        SI,0x2
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c1ba()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c1ba                                   XREF[2]:     FUN_1000_c93c:1000:c9a9(c), 
                                                                                          FUN_1000_ce3b:1000:ce43(c)  
       1000:c1ba 51              PUSH       CX
       1000:c1bb 52              PUSH       DX
       1000:c1bc 57              PUSH       DI
                             LAB_1000_c1bd                                   XREF[2]:     1000:c1c7(j), 1000:c1ee(j)  
       1000:c1bd 26 ad           LODSW      ES:SI
       1000:c1bf 3d 00 01        CMP        AX,0x100
       1000:c1c2 75 05           JNZ        LAB_1000_c1c9
       1000:c1c4 83 c6 03        ADD        SI,0x3
       1000:c1c7 eb f4           JMP        LAB_1000_c1bd
                             LAB_1000_c1c9                                   XREF[1]:     1000:c1c2(j)  
       1000:c1c9 8b d8           MOV        BX,AX
       1000:c1cb 40              INC        AX
       1000:c1cc 74 22           JZ         LAB_1000_c1f0
       1000:c1ce 8a cf           MOV        CL,BH
       1000:c1d0 32 ff           XOR        BH,BH
       1000:c1d2 81 e1 ff 00     AND        CX,0xff
       1000:c1d6 75 02           JNZ        LAB_1000_c1da
       1000:c1d8 fe c5           INC        CH
                             LAB_1000_c1da                                   XREF[1]:     1000:c1d6(j)  
       1000:c1da 8b c3           MOV        AX,BX
       1000:c1dc 03 db           ADD        BX,BX
       1000:c1de 03 d8           ADD        BX,AX
       1000:c1e0 8b c1           MOV        AX,CX
       1000:c1e2 03 c9           ADD        CX,CX
       1000:c1e4 03 c8           ADD        CX,AX
       1000:c1e6 8b d6           MOV        DX,SI
       1000:c1e8 03 f1           ADD        SI,CX
       1000:c1ea ff 1e bd 38     CALLF      [0x38bd]
       1000:c1ee eb cd           JMP        LAB_1000_c1bd
                             LAB_1000_c1f0                                   XREF[1]:     1000:c1cc(j)  
       1000:c1f0 5f              POP        DI
       1000:c1f1 5a              POP        DX
       1000:c1f2 59              POP        CX
       1000:c1f3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c1f4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c1f4                                   XREF[10]:    FUN_1000_1a9b:1000:1aa8(c), 
                                                                                          FUN_1000_3971:1000:3985(c), 
                                                                                          FUN_1000_445d:1000:4478(c), 
                                                                                          FUN_1000_617a:1000:6184(c), 
                                                                                          FUN_1000_617a:1000:61ca(c), 
                                                                                          FUN_1000_61d3:1000:61dd(c), 
                                                                                          FUN_1000_61d3:1000:6224(c), 
                                                                                          FUN_1000_6314:1000:632d(c), 
                                                                                          FUN_1000_c202:1000:c204(c), 
                                                                                          FUN_1000_c60b:1000:c634(c)  
       1000:c1f4 53              PUSH       BX
       1000:c1f5 c4 36 b0 db     LES        SI,[0xdbb0]
       1000:c1f9 8b d8           MOV        BX,AX
       1000:c1fb d1 e3           SHL        BX,0x1
       1000:c1fd 26 03 30        ADD        SI,word ptr ES:[BX + SI]
       1000:c200 5b              POP        BX
       1000:c201 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c202()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c202                                   XREF[2]:     FUN_1000_c60b:1000:c610(c), 
                                                                                          FUN_1000_c653:1000:c659(c)  
       1000:c202 50              PUSH       AX
       1000:c203 56              PUSH       SI
       1000:c204 e8 ed ff        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:c207 26 ad           LODSW      ES:SI
       1000:c209 80 e4 0f        AND        AH,0xf
       1000:c20c d1 e8           SHR        AX,0x1
       1000:c20e 2b d0           SUB        DX,AX
       1000:c210 26 ac           LODSB      ES:SI
       1000:c212 d0 e8           SHR        AL,0x1
       1000:c214 98              CBW
       1000:c215 2b d8           SUB        BX,AX
       1000:c217 5e              POP        SI
       1000:c218 58              POP        AX
       1000:c219 c3              RET
                             DAT_1000_c21a                                   XREF[4]:     FUN_1000_3b59:1000:3b99(W), 
                                                                                          FUN_1000_3b59:1000:3bb5(W), 
                                                                                          FUN_1000_c22f:1000:c250(R), 
                                                                                          FUN_1000_c22f:1000:c258(R)  
       1000:c21a 00              undefined1 00h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c21b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c21b                                   XREF[6]:     FUN_1000_0acd:1000:0af8(c), 
                                                                                          FUN_1000_274e:1000:275a(c), 
                                                                                          FUN_1000_27c9:1000:2800(c), 
                                                                                          FUN_1000_42e9:1000:4368(c), 
                                                                                          FUN_1000_439f:1000:43df(c), 
                                                                                          1000:c22d(j)  
       1000:c21b ad              LODSW      SI
       1000:c21c 3d ff ff        CMP        AX,0xffff
       1000:c21f 74 49           JZ         LAB_1000_c26a
       1000:c221 8b d8           MOV        BX,AX
       1000:c223 ad              LODSW      SI
       1000:c224 8b d0           MOV        DX,AX
       1000:c226 ad              LODSW      SI
       1000:c227 93              XCHG       AX,BX
       1000:c228 56              PUSH       SI
       1000:c229 e8 03 00        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:c22c 5e              POP        SI
       1000:c22d eb ec           JMP        FUN_1000_c21b
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c22f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c22f                                   XREF[19]:    FUN_1000_0d8e:1000:0e18(c), 
                                                                                          FUN_1000_1797:1000:17a7(c), 
                                                                                          FUN_1000_1797:1000:17b7(c), 
                                                                                          FUN_1000_26ac:1000:26c8(c), 
                                                                                          FUN_1000_275f:1000:276d(c), 
                                                                                          FUN_1000_3b59:1000:3baf(c), 
                                                                                          FUN_1000_3d2f:1000:3d7c(c), 
                                                                                          FUN_1000_49a0:1000:49c9(c), 
                                                                                          FUN_1000_4a1a:1000:4a53(c), 
                                                                                          FUN_1000_4a5a:1000:4a95(c), 
                                                                                          FUN_1000_4f0c:1000:4fa7(c), 
                                                                                          FUN_1000_542f:1000:5471(c), 
                                                                                          FUN_1000_563e:1000:5689(c), 
                                                                                          FUN_1000_60ac:1000:60f5(c), 
                                                                                          FUN_1000_617a:1000:61bc(c), 
                                                                                          FUN_1000_61d3:1000:6216(c), 
                                                                                          FUN_1000_c21b:1000:c229(c), 
                                                                                          FUN_1000_c2fd:1000:c2ff(c), 
                                                                                          FUN_1000_d200:1000:d230(c)  
       1000:c22f 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:c233 c5 36 b0 db     LDS        SI,[0xdbb0]
       1000:c237 8b e8           MOV        BP,AX
       1000:c239 81 e5 ff 01     AND        BP,0x1ff
       1000:c23d d1 e5           SHL        BP,0x1
       1000:c23f 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:c242 8b c8           MOV        CX,AX
       1000:c244 50              PUSH       AX
       1000:c245 ad              LODSW      SI
       1000:c246 80 e5 60        AND        CH,0x60
       1000:c249 0a e5           OR         AH,CH
       1000:c24b 8b f8           MOV        DI,AX
       1000:c24d ad              LODSW      SI
       1000:c24e 8b c8           MOV        CX,AX
       1000:c250 2e 80 3e        CMP        byte ptr CS:[DAT_1000_c21a],0x0
                 1a c2 00
       1000:c256 74 05           JZ         LAB_1000_c25d
       1000:c258 2e 8a 2e        MOV        CH,byte ptr CS:[DAT_1000_c21a]
                 1a c2
                             LAB_1000_c25d                                   XREF[1]:     1000:c256(j)  
       1000:c25d 58              POP        AX
       1000:c25e 25 00 1c        AND        AX,0x1c00
       1000:c261 75 08           JNZ        LAB_1000_c26b
       1000:c263 36 ff 1e        CALLF      [0x38c9]
                 c9 38
       1000:c268 16              PUSH       SS
       1000:c269 1f              POP        DS
                             LAB_1000_c26a                                   XREF[1]:     FUN_1000_c21b:1000:c21f(j)  
       1000:c26a c3              RET
                             LAB_1000_c26b                                   XREF[1]:     1000:c261(j)  
       1000:c26b 86 e0           XCHG       AL,AH
       1000:c26d 8b e8           MOV        BP,AX
       1000:c26f d1 ed           SHR        BP,0x1
       1000:c271 8b ae 74 27     MOV        BP,word ptr [BP + 0x2774]
       1000:c275 8b c7           MOV        AX,DI
       1000:c277 25 ff 01        AND        AX,0x1ff
       1000:c27a 52              PUSH       DX
       1000:c27b 86 e0           XCHG       AL,AH
       1000:c27d 33 d2           XOR        DX,DX
       1000:c27f f7 f5           DIV        BP
       1000:c281 5a              POP        DX
       1000:c282 50              PUSH       AX
       1000:c283 8b c1           MOV        AX,CX
       1000:c285 32 e4           XOR        AH,AH
       1000:c287 52              PUSH       DX
       1000:c288 86 e0           XCHG       AL,AH
       1000:c28a 33 d2           XOR        DX,DX
       1000:c28c f7 f5           DIV        BP
       1000:c28e 5a              POP        DX
       1000:c28f 8a c8           MOV        CL,AL
       1000:c291 58              POP        AX
       1000:c292 0b ff           OR         DI,DI
       1000:c294 79 03           JNS        LAB_1000_c299
       1000:c296 e8 08 00        CALL       FUN_1000_c2a1                                    undefined FUN_1000_c2a1()
                             LAB_1000_c299                                   XREF[1]:     1000:c294(j)  
       1000:c299 36 ff 1e        CALLF      [0x3941]
                 41 39
       1000:c29e 16              PUSH       SS
       1000:c29f 1f              POP        DS
       1000:c2a0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c2a1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c2a1                                   XREF[1]:     FUN_1000_c22f:1000:c296(c)  
       1000:c2a1 50              PUSH       AX
       1000:c2a2 53              PUSH       BX
       1000:c2a3 51              PUSH       CX
       1000:c2a4 57              PUSH       DI
       1000:c2a5 06              PUSH       ES
       1000:c2a6 55              PUSH       BP
       1000:c2a7 16              PUSH       SS
       1000:c2a8 07              POP        ES
       1000:c2a9 8b ef           MOV        BP,DI
       1000:c2ab bf 60 4c        MOV        DI,0x4c60
       1000:c2ae 81 e5 ff 01     AND        BP,0x1ff
       1000:c2b2 83 c5 03        ADD        BP,0x3
       1000:c2b5 d1 ed           SHR        BP,0x1
       1000:c2b7 d1 ed           SHR        BP,0x1
       1000:c2b9 d1 e5           SHL        BP,0x1
       1000:c2bb 8b 4c fe        MOV        CX,word ptr [SI + -0x2]
       1000:c2be 32 ed           XOR        CH,CH
                             LAB_1000_c2c0                                   XREF[1]:     1000:c2e4(j)  
       1000:c2c0 51              PUSH       CX
       1000:c2c1 8b dd           MOV        BX,BP
                             LAB_1000_c2c3                                   XREF[2]:     1000:c2d2(j), 1000:c2e1(j)  
       1000:c2c3 ac              LODSB      SI
       1000:c2c4 a8 80           TEST       AL,0x80
       1000:c2c6 75 0e           JNZ        LAB_1000_c2d6
       1000:c2c8 b1 01           MOV        CL,0x1
       1000:c2ca 02 c8           ADD        CL,AL
       1000:c2cc 32 ed           XOR        CH,CH
       1000:c2ce 2b d9           SUB        BX,CX
       1000:c2d0 f3 a4           MOVSB.REP  ES:DI,SI
       1000:c2d2 75 ef           JNZ        LAB_1000_c2c3
       1000:c2d4 eb 0d           JMP        LAB_1000_c2e3
                             LAB_1000_c2d6                                   XREF[1]:     1000:c2c6(j)  
       1000:c2d6 b1 01           MOV        CL,0x1
       1000:c2d8 2a c8           SUB        CL,AL
       1000:c2da 32 ed           XOR        CH,CH
       1000:c2dc 2b d9           SUB        BX,CX
       1000:c2de ac              LODSB      SI
       1000:c2df f3 aa           STOSB.REP  ES:DI
       1000:c2e1 75 e0           JNZ        LAB_1000_c2c3
                             LAB_1000_c2e3                                   XREF[1]:     1000:c2d4(j)  
       1000:c2e3 59              POP        CX
       1000:c2e4 e2 da           LOOP       LAB_1000_c2c0
       1000:c2e6 be 60 4c        MOV        SI,0x4c60
       1000:c2e9 16              PUSH       SS
       1000:c2ea 1f              POP        DS
       1000:c2eb 5d              POP        BP
       1000:c2ec 07              POP        ES
       1000:c2ed 5f              POP        DI
       1000:c2ee 59              POP        CX
       1000:c2ef 5b              POP        BX
       1000:c2f0 58              POP        AX
       1000:c2f1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c2f2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c2f2                                   XREF[4]:     FUN_1000_368b:1000:36b0(c), 
                                                                                          thunk_FUN_1000_c2f2:1000:37ad(T), 
                                                                                          thunk_FUN_1000_c2f2:1000:37af(c), 
                                                                                          FUN_1000_380c:1000:3847(c), 
                                                                                          FUN_1000_380c:1000:388a(c)  
       1000:c2f2 32 e4           XOR        AH,AH
       1000:c2f4 e8 47 fe        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:c2f7 33 c0           XOR        AX,AX
       1000:c2f9 33 db           XOR        BX,BX
       1000:c2fb 33 d2           XOR        DX,DX
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c2fd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c2fd                                   XREF[5]:     FUN_1000_0d8e:1000:0e13(c), 
                                                                                          FUN_1000_27c9:1000:27e4(c), 
                                                                                          FUN_1000_38b4:1000:38cc(c), 
                                                                                          FUN_1000_3d2f:1000:3d77(c), 
                                                                                          FUN_1000_563e:1000:5680(c)  
       1000:c2fd 53              PUSH       BX
       1000:c2fe 52              PUSH       DX
       1000:c2ff e8 2d ff        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
       1000:c302 5a              POP        DX
       1000:c303 5b              POP        BX
       1000:c304 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c305()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c305                                   XREF[3]:     FUN_1000_3aa9:1000:3aab(c), 
                                                                                          FUN_1000_3aa9:1000:3ab7(c), 
                                                                                          FUN_1000_3aa9:1000:3ad4(c)  
       1000:c305 53              PUSH       BX
       1000:c306 52              PUSH       DX
       1000:c307 e8 03 00        CALL       FUN_1000_c30d                                    undefined FUN_1000_c30d()
       1000:c30a 5a              POP        DX
       1000:c30b 5b              POP        BX
       1000:c30c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c30d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c30d                                   XREF[5]:     FUN_1000_3aa9:1000:3ae6(c), 
                                                                                          FUN_1000_445d:1000:4504(c), 
                                                                                          FUN_1000_6314:1000:6334(c), 
                                                                                          FUN_1000_c305:1000:c307(c), 
                                                                                          FUN_1000_c6ad:1000:c779(c)  
       1000:c30d 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:c311 c5 36 b0 db     LDS        SI,[0xdbb0]
       1000:c315 8b e8           MOV        BP,AX
       1000:c317 d1 e5           SHL        BP,0x1
       1000:c319 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:c31c ad              LODSW      SI
       1000:c31d 8b f8           MOV        DI,AX
       1000:c31f ad              LODSW      SI
       1000:c320 32 e4           XOR        AH,AH
       1000:c322 8b c8           MOV        CX,AX
       1000:c324 bd 34 d8        MOV        BP,0xd834
       1000:c327 36 ff 1e        CALLF      [0x38cd]
                 cd 38
       1000:c32c 16              PUSH       SS
       1000:c32d 1f              POP        DS
       1000:c32e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c343()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c343                                   XREF[2]:     FUN_1000_5dce:1000:5e30(c), 
                                                                                          FUN_1000_63c7:1000:63e6(c)  
       1000:c343 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:c347 c5 36 b0 db     LDS        SI,[0xdbb0]
       1000:c34b 8b e8           MOV        BP,AX
       1000:c34d d1 e5           SHL        BP,0x1
       1000:c34f 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:c352 ad              LODSW      SI
       1000:c353 8b f8           MOV        DI,AX
       1000:c355 80 e4 0f        AND        AH,0xf
       1000:c358 d1 e8           SHR        AX,0x1
       1000:c35a 2b d0           SUB        DX,AX
       1000:c35c ad              LODSW      SI
       1000:c35d 32 e4           XOR        AH,AH
       1000:c35f 8b c8           MOV        CX,AX
       1000:c361 d1 e8           SHR        AX,0x1
       1000:c363 2b d8           SUB        BX,AX
       1000:c365 bd 34 d8        MOV        BP,0xd834
       1000:c368 36 ff 1e        CALLF      [0x38cd]
                 cd 38
       1000:c36d 16              PUSH       SS
       1000:c36e 1f              POP        DS
       1000:c36f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c370()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c370                                   XREF[4]:     FUN_1000_0acd:1000:0ae9(c), 
                                                                                          FUN_1000_0acd:1000:0af2(c), 
                                                                                          FUN_1000_8f28:1000:8fcc(c), 
                                                                                          FUN_1000_8f28:1000:9006(c)  
       1000:c370 1e              PUSH       DS
       1000:c371 1e              PUSH       DS
       1000:c372 50              PUSH       AX
       1000:c373 56              PUSH       SI
       1000:c374 ff 1e d9 38     CALLF      [0x38d9]
       1000:c378 5e              POP        SI
       1000:c379 58              POP        AX
       1000:c37a 1f              POP        DS
       1000:c37b 8b 14           MOV        DX,word ptr [SI]
       1000:c37d 52              PUSH       DX
       1000:c37e 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:c381 53              PUSH       BX
       1000:c382 8b 4c 04        MOV        CX,word ptr [SI + 0x4]
       1000:c385 2b ca           SUB        CX,DX
       1000:c387 51              PUSH       CX
       1000:c388 8b 4c 06        MOV        CX,word ptr [SI + 0x6]
       1000:c38b 2b cb           SUB        CX,BX
       1000:c38d 51              PUSH       CX
       1000:c38e c5 36 b0 db     LDS        SI,[0xdbb0]
       1000:c392 8b e8           MOV        BP,AX
       1000:c394 d1 e5           SHL        BP,0x1
       1000:c396 3e 03 32        ADD        SI,word ptr DS:[BP + SI]
       1000:c399 ad              LODSW      SI
       1000:c39a 8b f8           MOV        DI,AX
       1000:c39c 25 ff 01        AND        AX,0x1ff
       1000:c39f 50              PUSH       AX
       1000:c3a0 ad              LODSW      SI
       1000:c3a1 8b c8           MOV        CX,AX
       1000:c3a3 32 e4           XOR        AH,AH
       1000:c3a5 50              PUSH       AX
       1000:c3a6 36 ff 1e        CALLF      [0x38c9]
                 c9 38
       1000:c3ab 06              PUSH       ES
       1000:c3ac 1f              POP        DS
       1000:c3ad 8b ec           MOV        BP,SP
       1000:c3af 8b 56 0a        MOV        DX,word ptr [BP + 0xa]
       1000:c3b2 8b 5e 08        MOV        BX,word ptr [BP + 0x8]
       1000:c3b5 53              PUSH       BX
       1000:c3b6 52              PUSH       DX
       1000:c3b7 ff 76 00        PUSH       word ptr [BP + 0x0]
       1000:c3ba ff 76 02        PUSH       word ptr [BP + 0x2]
       1000:c3bd 53              PUSH       BX
       1000:c3be 52              PUSH       DX
       1000:c3bf 8b ec           MOV        BP,SP
       1000:c3c1 8b 56 12        MOV        DX,word ptr [BP + 0x12]
       1000:c3c4 2b 56 04        SUB        DX,word ptr [BP + 0x4]
                             LAB_1000_c3c7                                   XREF[1]:     1000:c3de(j)  
       1000:c3c7 8b 46 04        MOV        AX,word ptr [BP + 0x4]
       1000:c3ca 01 46 08        ADD        word ptr [BP + 0x8],AX
       1000:c3cd 2b d0           SUB        DX,AX
       1000:c3cf 73 03           JNC        LAB_1000_c3d4
       1000:c3d1 01 56 04        ADD        word ptr [BP + 0x4],DX
                             LAB_1000_c3d4                                   XREF[1]:     1000:c3cf(j)  
       1000:c3d4 52              PUSH       DX
       1000:c3d5 36 ff 1e        CALLF      [0x3931]
                 31 39
       1000:c3da 5a              POP        DX
       1000:c3db 83 fa 00        CMP        DX,0x0
       1000:c3de 7f e7           JG         LAB_1000_c3c7
       1000:c3e0 8b 46 12        MOV        AX,word ptr [BP + 0x12]
       1000:c3e3 89 46 04        MOV        word ptr [BP + 0x4],AX
       1000:c3e6 8b 46 00        MOV        AX,word ptr [BP + 0x0]
       1000:c3e9 89 46 08        MOV        word ptr [BP + 0x8],AX
       1000:c3ec 8b 5e 10        MOV        BX,word ptr [BP + 0x10]
       1000:c3ef 2b 5e 06        SUB        BX,word ptr [BP + 0x6]
       1000:c3f2 74 19           JZ         LAB_1000_c40d
                             LAB_1000_c3f4                                   XREF[1]:     1000:c40b(j)  
       1000:c3f4 8b 46 06        MOV        AX,word ptr [BP + 0x6]
       1000:c3f7 01 46 0a        ADD        word ptr [BP + 0xa],AX
       1000:c3fa 2b d8           SUB        BX,AX
       1000:c3fc 73 03           JNC        LAB_1000_c401
       1000:c3fe 01 5e 06        ADD        word ptr [BP + 0x6],BX
                             LAB_1000_c401                                   XREF[1]:     1000:c3fc(j)  
       1000:c401 53              PUSH       BX
       1000:c402 36 ff 1e        CALLF      [0x3931]
                 31 39
       1000:c407 5b              POP        BX
       1000:c408 83 fb 00        CMP        BX,0x0
       1000:c40b 7f e7           JG         LAB_1000_c3f4
                             LAB_1000_c40d                                   XREF[1]:     1000:c3f2(j)  
       1000:c40d 83 c4 18        ADD        SP,0x18
       1000:c410 1f              POP        DS
       1000:c411 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c412()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c412                                   XREF[11]:    FUN_1000_0acd:1000:0b19(c), 
                                                                                          FUN_1000_0e77:1000:0ea0(c), 
                                                                                          FUN_1000_2b2a:1000:2c8f(c), 
                                                                                          FUN_1000_2db1:1000:2e1d(c), 
                                                                                          FUN_1000_368b:1000:36b6(c), 
                                                                                          FUN_1000_439f:1000:43b2(c), 
                                                                                          FUN_1000_488a:1000:48fa(c), 
                                                                                          FUN_1000_4d06:1000:4d3a(c), 
                                                                                          FUN_1000_5d6d:1000:5da2(c), 
                                                                                          FUN_1000_c8fb:1000:c91b(c), 
                                                                                          FUN_1000_e594:1000:e671(c)  
       1000:c412 1e              PUSH       DS
       1000:c413 8e 06 de db     MOV        ES,word ptr [0xdbde]
       1000:c417 8e 1e da db     MOV        DS,word ptr [0xdbda]
       1000:c41b 36 ff 1e        CALLF      [0x38e1]
                 e1 38
       1000:c420 1f              POP        DS
       1000:c421 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c432()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c432                                   XREF[1]:     FUN_1000_37b5:1000:37c1(c)  
       1000:c432 be 70 14        MOV        SI,0x1470
       1000:c435 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:c439 ff 1e d9 38     CALLF      [0x38d9]
       1000:c43d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c43e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c43e                                   XREF[2]:     FUN_1000_3af9:1000:3b00(c), 
                                                                                          FUN_1000_3af9:1000:3b55(c)  
       1000:c43e be 70 14        MOV        SI,0x1470
       1000:c441 eb 03           JMP        FUN_1000_c446                                    undefined FUN_1000_c446()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c443()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c443                                   XREF[1]:     FUN_1000_c6ad:1000:c718(c)  
       1000:c443 be 34 d8        MOV        SI,0xd834
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c446()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c446                                   XREF[5]:     FUN_1000_17be:1000:17cc(c), 
                                                                                          FUN_1000_8c8a:1000:8cb5(c), 
                                                                                          FUN_1000_98b2:1000:98d9(c), 
                                                                                          FUN_1000_9bb1:1000:9be6(c), 
                                                                                          FUN_1000_c43e:1000:c441(c)  
       1000:c446 a1 de db        MOV        AX,[0xdbde]
                             LAB_1000_c449                                   XREF[1]:     FUN_1000_c46f:1000:c472(j)  
       1000:c449 51              PUSH       CX
       1000:c44a 8b c8           MOV        CX,AX
       1000:c44c 8b 14           MOV        DX,word ptr [SI]
       1000:c44e 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:c451 8b 6c 04        MOV        BP,word ptr [SI + 0x4]
       1000:c454 8b 44 06        MOV        AX,word ptr [SI + 0x6]
       1000:c457 2b ea           SUB        BP,DX
       1000:c459 76 12           JBE        LAB_1000_c46d
       1000:c45b 2b c3           SUB        AX,BX
       1000:c45d 76 0e           JBE        LAB_1000_c46d
       1000:c45f 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:c463 56              PUSH       SI
       1000:c464 1e              PUSH       DS
       1000:c465 8b f1           MOV        SI,CX
       1000:c467 ff 1e ed 38     CALLF      [0x38ed]
       1000:c46b 1f              POP        DS
       1000:c46c 5e              POP        SI
                             LAB_1000_c46d                                   XREF[2]:     1000:c459(j), 1000:c45d(j)  
       1000:c46d 59              POP        CX
       1000:c46e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c46f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c46f                                   XREF[1]:     FUN_1000_4b2b:1000:4b35(c)  
       1000:c46f a1 32 dc        MOV        AX,[0xdc32]
       1000:c472 eb d5           JMP        LAB_1000_c449
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c474()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c474                                   XREF[1]:     FUN_1000_368b:1000:36ce(c)  
       1000:c474 be 70 14        MOV        SI,0x1470
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c477()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c477                                   XREF[1]:     FUN_1000_978e:1000:97a9(c)  
       1000:c477 8b 14           MOV        DX,word ptr [SI]
       1000:c479 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:c47c 8b 6c 04        MOV        BP,word ptr [SI + 0x4]
       1000:c47f 8b 44 06        MOV        AX,word ptr [SI + 0x6]
       1000:c482 2b ea           SUB        BP,DX
       1000:c484 76 13           JBE        LAB_1000_c499
       1000:c486 2b c3           SUB        AX,BX
       1000:c488 76 0f           JBE        LAB_1000_c499
       1000:c48a 8e 06 de db     MOV        ES,word ptr [0xdbde]
       1000:c48e 1e              PUSH       DS
       1000:c48f 8e 1e d6 db     MOV        DS,word ptr [0xdbd6]
       1000:c493 36 ff 1e        CALLF      [0x38e5]
                 e5 38
       1000:c498 1f              POP        DS
                             LAB_1000_c499                                   XREF[2]:     1000:c484(j), 1000:c488(j)  
       1000:c499 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c49a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c49a                                   XREF[3]:     FUN_1000_2566:1000:25e3(c), 
                                                                                          FUN_1000_2b2a:1000:2b94(c), 
                                                                                          FUN_1000_439f:1000:43af(c)  
       1000:c49a 1e              PUSH       DS
       1000:c49b 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:c49f 8e 1e d8 db     MOV        DS,word ptr [0xdbd8]
       1000:c4a3 36 ff 1e        CALLF      [0x38f1]
                 f1 38
       1000:c4a8 1f              POP        DS
       1000:c4a9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c4aa()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c4aa                                   XREF[2]:     FUN_1000_1a0f:1000:1a2c(c), 
                                                                                          FUN_1000_79ee:1000:7b09(c)  
       1000:c4aa 8b 14           MOV        DX,word ptr [SI]
       1000:c4ac 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:c4af 8b 6c 04        MOV        BP,word ptr [SI + 0x4]
       1000:c4b2 8b 44 06        MOV        AX,word ptr [SI + 0x6]
       1000:c4b5 2b ea           SUB        BP,DX
       1000:c4b7 76 13           JBE        LAB_1000_c4cc
       1000:c4b9 2b c3           SUB        AX,BX
       1000:c4bb 76 0f           JBE        LAB_1000_c4cc
       1000:c4bd 1e              PUSH       DS
       1000:c4be 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:c4c2 8e 1e d8 db     MOV        DS,word ptr [0xdbd8]
       1000:c4c6 36 ff 1e        CALLF      [0x38f5]
                 f5 38
       1000:c4cb 1f              POP        DS
                             LAB_1000_c4cc                                   XREF[2]:     1000:c4b7(j), 1000:c4bb(j)  
       1000:c4cc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c4cd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c4cd                                   XREF[4]:     FUN_1000_0d8e:1000:0e22(c), 
                                                                                          FUN_1000_2db1:1000:2df2(c), 
                                                                                          FUN_1000_2db1:1000:2e4f(c), 
                                                                                          FUN_1000_c108:1000:c12a(c)  
       1000:c4cd 1e              PUSH       DS
       1000:c4ce 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:c4d2 8e 1e d6 db     MOV        DS,word ptr [0xdbd6]
       1000:c4d6 36 ff 1e        CALLF      [0x38f1]
                 f1 38
       1000:c4db 1f              POP        DS
       1000:c4dc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c4dd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c4dd                                   XREF[14]:    FUN_1000_0a23:1000:0a38(c), 
                                                                                          FUN_1000_0e77:1000:0e83(c), 
                                                                                          FUN_1000_35ad:1000:3659(c), 
                                                                                          FUN_1000_368b:1000:36c4(c), 
                                                                                          FUN_1000_3723:1000:373a(c), 
                                                                                          FUN_1000_42e9:1000:436e(c), 
                                                                                          FUN_1000_439f:1000:43c9(c), 
                                                                                          FUN_1000_4aeb:1000:4afa(c), 
                                                                                          FUN_1000_8c8a:1000:8cc9(c), 
                                                                                          FUN_1000_9381:1000:93d5(c), 
                                                                                          FUN_1000_978e:1000:97cb(c), 
                                                                                          FUN_1000_9ab4:1000:9b04(c), 
                                                                                          FUN_1000_c8fb:1000:c902(c), 
                                                                                          FUN_1000_c8fb:1000:c910(c)  
       1000:c4dd a1 38 dc        MOV        AX,[0xdc38]
       1000:c4e0 3d 98 00        CMP        AX,0x98
       1000:c4e3 73 03           JNC        LAB_1000_c4e8
       1000:c4e5 e8 ca 16        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
                             LAB_1000_c4e8                                   XREF[1]:     1000:c4e3(j)  
       1000:c4e8 be 70 14        MOV        SI,0x1470
       1000:c4eb eb 03           JMP        FUN_1000_c4f0                                    undefined FUN_1000_c4f0()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c4f0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c4f0                                   XREF[7]:     FUN_1000_17be:1000:17e3(c), 
                                                                                          FUN_1000_542f:1000:555e(c), 
                                                                                          FUN_1000_98b2:1000:98df(c), 
                                                                                          FUN_1000_99da:1000:9a16(c), 
                                                                                          FUN_1000_9de3:1000:9e51(c), 
                                                                                          FUN_1000_9de3:1000:9ec3(c), 
                                                                                          FUN_1000_c4dd:1000:c4eb(c)  
       1000:c4f0 8b 14           MOV        DX,word ptr [SI]
       1000:c4f2 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:c4f5 8b 6c 04        MOV        BP,word ptr [SI + 0x4]
       1000:c4f8 8b 44 06        MOV        AX,word ptr [SI + 0x6]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c4fb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c4fb                                   XREF[1]:     FUN_1000_445d:1000:44ee(c)  
       1000:c4fb 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:c500 75 1c           JNZ        FUN_1000_c51e
       1000:c502 3d 89 00        CMP        AX,0x89
       1000:c505 7c 17           JL         FUN_1000_c51e
       1000:c507 81 fd 7e 00     CMP        BP,0x7e
       1000:c50b 7c 11           JL         FUN_1000_c51e
       1000:c50d 81 fa c2 00     CMP        DX,0xc2
       1000:c511 7d 0b           JGE        FUN_1000_c51e
       1000:c513 50              PUSH       AX
       1000:c514 53              PUSH       BX
       1000:c515 52              PUSH       DX
       1000:c516 55              PUSH       BP
       1000:c517 e8 7d 52        CALL       FUN_1000_1797                                    undefined FUN_1000_1797()
       1000:c51a 5d              POP        BP
       1000:c51b 5a              POP        DX
       1000:c51c 5b              POP        BX
       1000:c51d 58              POP        AX
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c51e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c51e                                   XREF[5]:     FUN_1000_c4fb:1000:c500(j), 
                                                                                          FUN_1000_c4fb:1000:c505(j), 
                                                                                          FUN_1000_c4fb:1000:c50b(j), 
                                                                                          FUN_1000_c4fb:1000:c511(j), 
                                                                                          FUN_1000_c6ad:1000:c7cc(c)  
       1000:c51e 2b ea           SUB        BP,DX
       1000:c520 76 1b           JBE        LAB_1000_c53d
       1000:c522 2b c3           SUB        AX,BX
       1000:c524 76 17           JBE        LAB_1000_c53d
                             LAB_1000_c526                                   XREF[1]:     FUN_1000_26ac:1000:26d7(j)  
       1000:c526 81 3e 70        CMP        word ptr [0x2570],0x1ad6
                 25 d6 1a
       1000:c52c 74 0f           JZ         LAB_1000_c53d
       1000:c52e 1e              PUSH       DS
       1000:c52f 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:c533 8e 1e d6 db     MOV        DS,word ptr [0xdbd6]
       1000:c537 36 ff 1e        CALLF      [0x38f5]
                 f5 38
       1000:c53c 1f              POP        DS
                             LAB_1000_c53d                                   XREF[3]:     1000:c520(j), 1000:c524(j), 
                                                                                          1000:c52c(j)  
       1000:c53d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c53e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c53e                                   XREF[4]:     FUN_1000_c560:1000:c569(c), 
                                                                                          FUN_1000_c560:1000:c573(c), 
                                                                                          FUN_1000_c560:1000:c57d(c), 
                                                                                          FUN_1000_c560:1000:c583(c)  
       1000:c53e be 6a 27        MOV        SI,0x276a
       1000:c541 8b 2e 72 27     MOV        BP,word ptr [0x2772]
       1000:c545 a0 e4 db        MOV        AL,[0xdbe4]
       1000:c548 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:c54c ff 1e 01 39     CALLF      [0x3901]
       1000:c550 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c551()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c551                                   XREF[1]:     FUN_1000_7b1b:1000:7b28(c)  
       1000:c551 ad              LODSW      SI
       1000:c552 8b d0           MOV        DX,AX
       1000:c554 ad              LODSW      SI
       1000:c555 8b d8           MOV        BX,AX
       1000:c557 ad              LODSW      SI
       1000:c558 8b f8           MOV        DI,AX
       1000:c55a 4f              DEC        DI
       1000:c55b ad              LODSW      SI
       1000:c55c 8b c8           MOV        CX,AX
       1000:c55e 49              DEC        CX
       1000:c55f ac              LODSB      SI
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c560()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c560                                   XREF[2]:     FUN_1000_542f:1000:551a(c), 
                                                                                          FUN_1000_5b69:1000:5b80(c)  
       1000:c560 a2 e4 db        MOV        [0xdbe4],AL
       1000:c563 53              PUSH       BX
       1000:c564 51              PUSH       CX
       1000:c565 52              PUSH       DX
       1000:c566 57              PUSH       DI
       1000:c567 8b cb           MOV        CX,BX
       1000:c569 e8 d2 ff        CALL       FUN_1000_c53e                                    undefined FUN_1000_c53e()
       1000:c56c 8b ec           MOV        BP,SP
       1000:c56e 8b 4e 04        MOV        CX,word ptr [BP + 0x4]
       1000:c571 8b d9           MOV        BX,CX
       1000:c573 e8 c8 ff        CALL       FUN_1000_c53e                                    undefined FUN_1000_c53e()
       1000:c576 8b ec           MOV        BP,SP
       1000:c578 8b fa           MOV        DI,DX
       1000:c57a 8b 5e 06        MOV        BX,word ptr [BP + 0x6]
       1000:c57d e8 be ff        CALL       FUN_1000_c53e                                    undefined FUN_1000_c53e()
       1000:c580 5f              POP        DI
       1000:c581 8b d7           MOV        DX,DI
       1000:c583 e8 b8 ff        CALL       FUN_1000_c53e                                    undefined FUN_1000_c53e()
       1000:c586 5a              POP        DX
       1000:c587 59              POP        CX
       1000:c588 5b              POP        BX
       1000:c589 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c58a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c58a                                   XREF[3]:     FUN_1000_66b1:1000:66bb(c), 
                                                                                          FUN_1000_8308:1000:8338(c), 
                                                                                          FUN_1000_8461:1000:8468(c)  
       1000:c58a e8 ae fb        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:c58d be be 3c        MOV        SI,0x3cbe
       1000:c590 ad              LODSW      SI
       1000:c591 0b c0           OR         AX,AX
       1000:c593 74 39           JZ         LAB_1000_c5ce
       1000:c595 b4 11           MOV        AH,0x11
       1000:c597 f6 e4           MUL        AH
       1000:c599 03 f0           ADD        SI,AX
       1000:c59b 3b fe           CMP        DI,SI
       1000:c59d 73 2f           JNC        LAB_1000_c5ce
       1000:c59f 80 4d 0c 80     OR         byte ptr [DI + 0xc],0x80
       1000:c5a3 56              PUSH       SI
       1000:c5a4 57              PUSH       DI
       1000:c5a5 8b f7           MOV        SI,DI
       1000:c5a7 e8 03 01        CALL       FUN_1000_c6ad                                    undefined FUN_1000_c6ad()
       1000:c5aa 5f              POP        DI
       1000:c5ab 59              POP        CX
       1000:c5ac 57              PUSH       DI
       1000:c5ad 8d 75 11        LEA        SI,[DI + 0x11]
       1000:c5b0 2b ce           SUB        CX,SI
       1000:c5b2 74 04           JZ         LAB_1000_c5b8
       1000:c5b4 1e              PUSH       DS
       1000:c5b5 07              POP        ES
       1000:c5b6 f3 a4           MOVSB.REP  ES:DI,SI
                             LAB_1000_c5b8                                   XREF[1]:     1000:c5b2(j)  
       1000:c5b8 ff 0e be 3c     DEC        word ptr [0x3cbe]
       1000:c5bc 5f              POP        DI
       1000:c5bd be 52 47        MOV        SI,0x4752
       1000:c5c0 b9 02 00        MOV        CX,0x2
                             LAB_1000_c5c3                                   XREF[1]:     1000:c5cc(j)  
       1000:c5c3 ad              LODSW      SI
       1000:c5c4 3b c7           CMP        AX,DI
       1000:c5c6 72 04           JC         LAB_1000_c5cc
       1000:c5c8 83 6c fe 11     SUB        word ptr [SI + -0x2],0x11
                             LAB_1000_c5cc                                   XREF[1]:     1000:c5c6(j)  
       1000:c5cc e2 f5           LOOP       LAB_1000_c5c3
                             LAB_1000_c5ce                                   XREF[2]:     1000:c593(j), 1000:c59d(j)  
       1000:c5ce c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c5cf()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c5cf                                   XREF[3]:     FUN_1000_6757:1000:6768(c), 
                                                                                          FUN_1000_697c:1000:6997(c), 
                                                                                          FUN_1000_8308:1000:833f(c)  
       1000:c5cf 32 e4           XOR        AH,AH
       1000:c5d1 8a 46 00        MOV        AL,byte ptr [BP + 0x0]
       1000:c5d4 80 7e 03 00     CMP        byte ptr [BP + 0x3],0x0
       1000:c5d8 74 31           JZ         FUN_1000_c60b
       1000:c5da 55              PUSH       BP
       1000:c5db e8 2d 00        CALL       FUN_1000_c60b                                    undefined FUN_1000_c60b()
       1000:c5de 5d              POP        BP
       1000:c5df 89 6d 0f        MOV        word ptr [DI + 0xf],BP
       1000:c5e2 56              PUSH       SI
       1000:c5e3 8b f5           MOV        SI,BP
       1000:c5e5 bb ff ff        MOV        BX,0xffff
                             LAB_1000_c5e8                                   XREF[1]:     1000:c5f1(j)  
       1000:c5e8 43              INC        BX
       1000:c5e9 78 1e           JS         LAB_1000_c609
       1000:c5eb 83 c6 03        ADD        SI,0x3
       1000:c5ee 80 3c 00        CMP        byte ptr [SI],0x0
       1000:c5f1 75 f5           JNZ        LAB_1000_c5e8
       1000:c5f3 0b db           OR         BX,BX
       1000:c5f5 74 12           JZ         LAB_1000_c609
       1000:c5f7 e8 e5 1d        CALL       FUN_1000_e3df                                    undefined FUN_1000_e3df()
       1000:c5fa 8b d8           MOV        BX,AX
       1000:c5fc d1 e0           SHL        AX,0x1
       1000:c5fe 03 c3           ADD        AX,BX
       1000:c600 03 e8           ADD        BP,AX
       1000:c602 89 6d 0d        MOV        word ptr [DI + 0xd],BP
       1000:c605 80 4d 0c 01     OR         byte ptr [DI + 0xc],0x1
                             LAB_1000_c609                                   XREF[2]:     1000:c5e9(j), 1000:c5f5(j)  
       1000:c609 5e              POP        SI
       1000:c60a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c60b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c60b                                   XREF[2]:     FUN_1000_c5cf:1000:c5d8(j), 
                                                                                          FUN_1000_c5cf:1000:c5db(c)  
       1000:c60b 50              PUSH       AX
       1000:c60c e8 2c fb        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:c60f 58              POP        AX
       1000:c610 e8 ef fb        CALL       FUN_1000_c202                                    undefined FUN_1000_c202()
       1000:c613 56              PUSH       SI
       1000:c614 bf be 3c        MOV        DI,0x3cbe
       1000:c617 8b e8           MOV        BP,AX
       1000:c619 8b 05           MOV        AX,word ptr [DI]
       1000:c61b ff 05           INC        word ptr [DI]
       1000:c61d b4 11           MOV        AH,0x11
       1000:c61f f6 e4           MUL        AH
       1000:c621 95              XCHG       AX,BP
       1000:c622 8d 7b 02        LEA        DI,[BP + DI + 0x2]
       1000:c625 89 15           MOV        word ptr [DI],DX
       1000:c627 89 5d 02        MOV        word ptr [DI + 0x2],BX
       1000:c62a 89 45 08        MOV        word ptr [DI + 0x8],AX
       1000:c62d 89 75 0a        MOV        word ptr [DI + 0xa],SI
       1000:c630 c6 45 0c 00     MOV        byte ptr [DI + 0xc],0x0
       1000:c634 e8 bd fb        CALL       FUN_1000_c1f4                                    undefined FUN_1000_c1f4()
       1000:c637 26 ad           LODSW      ES:SI
       1000:c639 80 e4 0f        AND        AH,0xf
       1000:c63c 03 d0           ADD        DX,AX
       1000:c63e 26 02 1c        ADD        BL,byte ptr ES:[SI]
       1000:c641 80 d7 00        ADC        BH,0x0
       1000:c644 89 55 04        MOV        word ptr [DI + 0x4],DX
       1000:c647 89 5d 06        MOV        word ptr [DI + 0x6],BX
       1000:c64a 5e              POP        SI
       1000:c64b c3              RET