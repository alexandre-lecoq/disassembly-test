
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c653()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c653                                   XREF[1]:     FUN_1000_8308:1000:8330(c)  
       1000:c653 e8 e5 fa        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:c656 8b 45 08        MOV        AX,word ptr [DI + 0x8]
       1000:c659 e8 a6 fb        CALL       FUN_1000_c202                                    undefined FUN_1000_c202()
       1000:c65c 2b 15           SUB        DX,word ptr [DI]
       1000:c65e 2b 5d 02        SUB        BX,word ptr [DI + 0x2]
       1000:c661 e8 d7 fa        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:c664 8b f7           MOV        SI,DI
       1000:c666 83 ec 08        SUB        SP,0x8
       1000:c669 8b fc           MOV        DI,SP
       1000:c66b 1e              PUSH       DS
       1000:c66c 07              POP        ES
       1000:c66d a5              MOVSW      ES:DI,SI
       1000:c66e a5              MOVSW      ES:DI,SI
       1000:c66f a5              MOVSW      ES:DI,SI
       1000:c670 a5              MOVSW      ES:DI,SI
       1000:c671 83 ee 08        SUB        SI,0x8
       1000:c674 83 ef 08        SUB        DI,0x8
       1000:c677 01 14           ADD        word ptr [SI],DX
       1000:c679 01 5c 02        ADD        word ptr [SI + 0x2],BX
       1000:c67c 01 54 04        ADD        word ptr [SI + 0x4],DX
       1000:c67f 01 5c 06        ADD        word ptr [SI + 0x6],BX
       1000:c682 0b d2           OR         DX,DX
       1000:c684 78 08           JS         LAB_1000_c68e
       1000:c686 8b 44 04        MOV        AX,word ptr [SI + 0x4]
       1000:c689 89 45 04        MOV        word ptr [DI + 0x4],AX
       1000:c68c eb 04           JMP        LAB_1000_c692
                             LAB_1000_c68e                                   XREF[1]:     1000:c684(j)  
       1000:c68e 8b 04           MOV        AX,word ptr [SI]
       1000:c690 89 05           MOV        word ptr [DI],AX
                             LAB_1000_c692                                   XREF[1]:     1000:c68c(j)  
       1000:c692 0b db           OR         BX,BX
       1000:c694 78 08           JS         LAB_1000_c69e
       1000:c696 8b 44 06        MOV        AX,word ptr [SI + 0x6]
       1000:c699 89 45 06        MOV        word ptr [DI + 0x6],AX
       1000:c69c eb 06           JMP        LAB_1000_c6a4
                             LAB_1000_c69e                                   XREF[1]:     1000:c694(j)  
       1000:c69e 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:c6a1 89 45 02        MOV        word ptr [DI + 0x2],AX
                             LAB_1000_c6a4                                   XREF[1]:     1000:c69c(j)  
       1000:c6a4 8b f7           MOV        SI,DI
       1000:c6a6 e8 04 00        CALL       FUN_1000_c6ad                                    undefined FUN_1000_c6ad()
       1000:c6a9 83 c4 08        ADD        SP,0x8
                             LAB_1000_c6ac                                   XREF[2]:     FUN_1000_c6ad:1000:c708(j), 
                                                                                          FUN_1000_c6ad:1000:c715(j)  
       1000:c6ac c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c6ad()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c6ad                                   XREF[6]:     FUN_1000_5d6d:1000:5db1(c), 
                                                                                          FUN_1000_5f91:1000:5fa8(c), 
                                                                                          FUN_1000_8308:1000:8344(c), 
                                                                                          FUN_1000_8461:1000:8485(c), 
                                                                                          FUN_1000_c58a:1000:c5a7(c), 
                                                                                          FUN_1000_c653:1000:c6a6(c)  
       1000:c6ad e8 8b fa        CALL       FUN_1000_c13b                                    undefined FUN_1000_c13b()
       1000:c6b0 80 3e 46        CMP        byte ptr [0xdc46],0x0
                 dc 00
       1000:c6b5 78 2d           JS         LAB_1000_c6e4
       1000:c6b7 a1 44 dc        MOV        AX,[0xdc44]
       1000:c6ba 3b 44 06        CMP        AX,word ptr [SI + 0x6]
       1000:c6bd 7d 25           JGE        LAB_1000_c6e4
       1000:c6bf 05 10 00        ADD        AX,0x10
       1000:c6c2 3b 44 02        CMP        AX,word ptr [SI + 0x2]
       1000:c6c5 7e 1d           JLE        LAB_1000_c6e4
       1000:c6c7 a1 42 dc        MOV        AX,[0xdc42]
       1000:c6ca 3b 44 04        CMP        AX,word ptr [SI + 0x4]
       1000:c6cd 7d 15           JGE        LAB_1000_c6e4
       1000:c6cf 05 10 00        ADD        AX,0x10
       1000:c6d2 8b 1c           MOV        BX,word ptr [SI]
       1000:c6d4 80 e7 0f        AND        BH,0xf
       1000:c6d7 3b c3           CMP        AX,BX
       1000:c6d9 7e 09           JLE        LAB_1000_c6e4
       1000:c6db b8 ec db        MOV        AX,0xdbec
       1000:c6de 50              PUSH       AX
       1000:c6df 56              PUSH       SI
       1000:c6e0 e8 cf 14        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:c6e3 5e              POP        SI
                             LAB_1000_c6e4                                   XREF[5]:     1000:c6b5(j), 1000:c6bd(j), 
                                                                                          1000:c6c5(j), 1000:c6cd(j), 
                                                                                          1000:c6d9(j)  
       1000:c6e4 8c d8           MOV        AX,DS
       1000:c6e6 8e c0           MOV        ES,AX
       1000:c6e8 bf 34 d8        MOV        DI,0xd834
       1000:c6eb bb 08 00        MOV        BX,0x8
       1000:c6ee ad              LODSW      SI
       1000:c6ef 3b 01           CMP        AX,word ptr [BX + DI]
       1000:c6f1 7d 02           JGE        LAB_1000_c6f5
       1000:c6f3 8b 01           MOV        AX,word ptr [BX + DI]
                             LAB_1000_c6f5                                   XREF[1]:     1000:c6f1(j)  
       1000:c6f5 ab              STOSW      ES:DI
       1000:c6f6 ad              LODSW      SI
       1000:c6f7 3b 01           CMP        AX,word ptr [BX + DI]
       1000:c6f9 7d 02           JGE        LAB_1000_c6fd
       1000:c6fb 8b 01           MOV        AX,word ptr [BX + DI]
                             LAB_1000_c6fd                                   XREF[1]:     1000:c6f9(j)  
       1000:c6fd ab              STOSW      ES:DI
       1000:c6fe ad              LODSW      SI
       1000:c6ff 3b 01           CMP        AX,word ptr [BX + DI]
       1000:c701 7e 02           JLE        LAB_1000_c705
       1000:c703 8b 01           MOV        AX,word ptr [BX + DI]
                             LAB_1000_c705                                   XREF[1]:     1000:c701(j)  
       1000:c705 3b 45 fc        CMP        AX,word ptr [DI + -0x4]
       1000:c708 7e a2           JLE        LAB_1000_c6ac
       1000:c70a ab              STOSW      ES:DI
       1000:c70b ad              LODSW      SI
       1000:c70c 3b 01           CMP        AX,word ptr [BX + DI]
       1000:c70e 7e 02           JLE        LAB_1000_c712
       1000:c710 8b 01           MOV        AX,word ptr [BX + DI]
                             LAB_1000_c712                                   XREF[1]:     1000:c70e(j)  
       1000:c712 3b 45 fc        CMP        AX,word ptr [DI + -0x4]
       1000:c715 7e 95           JLE        LAB_1000_c6ac
       1000:c717 ab              STOSW      ES:DI
       1000:c718 e8 28 fd        CALL       FUN_1000_c443                                    undefined FUN_1000_c443()
       1000:c71b 81 ec 00 02     SUB        SP,0x200
       1000:c71f 8b fc           MOV        DI,SP
       1000:c721 8b 0e be 3c     MOV        CX,word ptr [0x3cbe]
       1000:c725 e3 59           JCXZ       LAB_1000_c780
       1000:c727 be 34 d8        MOV        SI,0xd834
       1000:c72a ad              LODSW      SI
       1000:c72b 8b d0           MOV        DX,AX
       1000:c72d ad              LODSW      SI
       1000:c72e 8b d8           MOV        BX,AX
       1000:c730 ad              LODSW      SI
       1000:c731 8b e8           MOV        BP,AX
       1000:c733 8b 04           MOV        AX,word ptr [SI]
       1000:c735 be c0 3c        MOV        SI,0x3cc0
                             LAB_1000_c738                                   XREF[1]:     1000:c759(j)  
       1000:c738 80 7c 0c 00     CMP        byte ptr [SI + 0xc],0x0
       1000:c73c 78 18           JS         LAB_1000_c756
       1000:c73e 39 2c           CMP        word ptr [SI],BP
       1000:c740 7d 14           JGE        LAB_1000_c756
       1000:c742 39 44 02        CMP        word ptr [SI + 0x2],AX
       1000:c745 7d 0f           JGE        LAB_1000_c756
       1000:c747 39 54 04        CMP        word ptr [SI + 0x4],DX
       1000:c74a 7e 0a           JLE        LAB_1000_c756
       1000:c74c 39 5c 06        CMP        word ptr [SI + 0x6],BX
       1000:c74f 7e 05           JLE        LAB_1000_c756
       1000:c751 89 35           MOV        word ptr [DI],SI
       1000:c753 83 c7 02        ADD        DI,0x2
                             LAB_1000_c756                                   XREF[5]:     1000:c73c(j), 1000:c740(j), 
                                                                                          1000:c745(j), 1000:c74a(j), 
                                                                                          1000:c74f(j)  
       1000:c756 83 c6 11        ADD        SI,0x11
       1000:c759 e2 dd           LOOP       LAB_1000_c738
       1000:c75b 8b cf           MOV        CX,DI
       1000:c75d 2b cc           SUB        CX,SP
       1000:c75f d1 e9           SHR        CX,0x1
       1000:c761 74 1d           JZ         LAB_1000_c780
                             LAB_1000_c763                                   XREF[1]:     1000:c77d(j)  
       1000:c763 8b f4           MOV        SI,SP
       1000:c765 51              PUSH       CX
       1000:c766 ff 16 86 27     CALL       word ptr [0x2786]
       1000:c76a 78 13           JS         LAB_1000_c77f
       1000:c76c 33 f6           XOR        SI,SI
       1000:c76e 87 77 fe        XCHG       word ptr [BX + -0x2],SI
       1000:c771 8b 44 08        MOV        AX,word ptr [SI + 0x8]
       1000:c774 8b 14           MOV        DX,word ptr [SI]
       1000:c776 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:c779 e8 91 fb        CALL       FUN_1000_c30d                                    undefined FUN_1000_c30d()
       1000:c77c 59              POP        CX
       1000:c77d eb e4           JMP        LAB_1000_c763
                             LAB_1000_c77f                                   XREF[1]:     1000:c76a(j)  
       1000:c77f 59              POP        CX
                             LAB_1000_c780                                   XREF[2]:     1000:c725(j), 1000:c761(j)  
       1000:c780 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:c785 75 1b           JNZ        LAB_1000_c7a2
       1000:c787 81 3e 3a        CMP        word ptr [0xd83a],0x89
                 d8 89 00
       1000:c78d 7c 13           JL         LAB_1000_c7a2
       1000:c78f 81 3e 38        CMP        word ptr [0xd838],0x7e
                 d8 7e 00
       1000:c795 7c 0b           JL         LAB_1000_c7a2
       1000:c797 81 3e 34        CMP        word ptr [0xd834],0xc2
                 d8 c2 00
       1000:c79d 7d 03           JGE        LAB_1000_c7a2
       1000:c79f e8 f5 4f        CALL       FUN_1000_1797                                    undefined FUN_1000_1797()
                             LAB_1000_c7a2                                   XREF[4]:     1000:c785(j), 1000:c78d(j), 
                                                                                          1000:c795(j), 1000:c79d(j)  
       1000:c7a2 8b 36 e0 db     MOV        SI,word ptr [0xdbe0]
       1000:c7a6 0b f6           OR         SI,SI
       1000:c7a8 74 14           JZ         LAB_1000_c7be
       1000:c7aa bf 34 d8        MOV        DI,0xd834
       1000:c7ad e8 24 00        CALL       FUN_1000_c7d4                                    undefined FUN_1000_c7d4()
       1000:c7b0 8b 36 e2 db     MOV        SI,word ptr [0xdbe2]
       1000:c7b4 0b f6           OR         SI,SI
       1000:c7b6 74 06           JZ         LAB_1000_c7be
       1000:c7b8 bf 34 d8        MOV        DI,0xd834
       1000:c7bb e8 16 00        CALL       FUN_1000_c7d4                                    undefined FUN_1000_c7d4()
                             LAB_1000_c7be                                   XREF[2]:     1000:c7a8(j), 1000:c7b6(j)  
       1000:c7be be 34 d8        MOV        SI,0xd834
       1000:c7c1 8b 14           MOV        DX,word ptr [SI]
       1000:c7c3 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:c7c6 8b 6c 04        MOV        BP,word ptr [SI + 0x4]
       1000:c7c9 8b 44 06        MOV        AX,word ptr [SI + 0x6]
       1000:c7cc e8 4f fd        CALL       FUN_1000_c51e                                    undefined FUN_1000_c51e()
       1000:c7cf 81 c4 00 02     ADD        SP,0x200
       1000:c7d3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c7d4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c7d4                                   XREF[2]:     FUN_1000_c6ad:1000:c7ad(c), 
                                                                                          FUN_1000_c6ad:1000:c7bb(c)  
       1000:c7d4 ad              LODSW      SI
       1000:c7d5 3b 45 04        CMP        AX,word ptr [DI + 0x4]
       1000:c7d8 7d 4c           JGE        LAB_1000_c826
       1000:c7da 8b d0           MOV        DX,AX
       1000:c7dc ad              LODSW      SI
       1000:c7dd 3b 45 06        CMP        AX,word ptr [DI + 0x6]
       1000:c7e0 7d 44           JGE        LAB_1000_c826
       1000:c7e2 8b d8           MOV        BX,AX
       1000:c7e4 ad              LODSW      SI
       1000:c7e5 3b 05           CMP        AX,word ptr [DI]
       1000:c7e7 7e 3d           JLE        LAB_1000_c826
       1000:c7e9 8b e8           MOV        BP,AX
       1000:c7eb ad              LODSW      SI
       1000:c7ec 3b 45 02        CMP        AX,word ptr [DI + 0x2]
       1000:c7ef 7e 35           JLE        LAB_1000_c826
       1000:c7f1 3b 15           CMP        DX,word ptr [DI]
       1000:c7f3 73 02           JNC        LAB_1000_c7f7
       1000:c7f5 8b 15           MOV        DX,word ptr [DI]
                             LAB_1000_c7f7                                   XREF[1]:     1000:c7f3(j)  
       1000:c7f7 3b 6d 04        CMP        BP,word ptr [DI + 0x4]
       1000:c7fa 72 03           JC         LAB_1000_c7ff
       1000:c7fc 8b 6d 04        MOV        BP,word ptr [DI + 0x4]
                             LAB_1000_c7ff                                   XREF[1]:     1000:c7fa(j)  
       1000:c7ff 3b 5d 02        CMP        BX,word ptr [DI + 0x2]
       1000:c802 73 03           JNC        LAB_1000_c807
       1000:c804 8b 5d 02        MOV        BX,word ptr [DI + 0x2]
                             LAB_1000_c807                                   XREF[1]:     1000:c802(j)  
       1000:c807 3b 45 06        CMP        AX,word ptr [DI + 0x6]
       1000:c80a 72 03           JC         LAB_1000_c80f
       1000:c80c 8b 45 06        MOV        AX,word ptr [DI + 0x6]
                             LAB_1000_c80f                                   XREF[1]:     1000:c80a(j)  
       1000:c80f 2b ea           SUB        BP,DX
       1000:c811 76 13           JBE        LAB_1000_c826
       1000:c813 2b c3           SUB        AX,BX
       1000:c815 76 0f           JBE        LAB_1000_c826
       1000:c817 8e 06 d6 db     MOV        ES,word ptr [0xdbd6]
       1000:c81b 8e 1e d8 db     MOV        DS,word ptr [0xdbd8]
       1000:c81f 36 ff 1e        CALLF      [0x38f5]
                 f5 38
       1000:c824 16              PUSH       SS
       1000:c825 1f              POP        DS
                             LAB_1000_c826                                   XREF[6]:     1000:c7d8(j), 1000:c7e0(j), 
                                                                                          1000:c7e7(j), 1000:c7ef(j), 
                                                                                          1000:c811(j), 1000:c815(j)  
       1000:c826 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c85b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c85b                                   XREF[2]:     FUN_1000_9ed5:1000:9eeb(c), 
                                                                                          FUN_1000_a03f:1000:a03f(c)  
       1000:c85b a1 7a ce        MOV        AX,[0xce7a]
       1000:c85e a3 6e 47        MOV        [0x476e],AX
       1000:c861 c7 06 72        MOV        word ptr [0x4772],0x1770
                 47 70 17
       1000:c867 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c8fb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c8fb                                   XREF[2]:     FUN_1000_0e66:1000:0e74(c), 
                                                                                          FUN_1000_488a:1000:48e0(c)  
       1000:c8fb e8 7e f7        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:c8fe 55              PUSH       BP
       1000:c8ff e8 19 01        CALL       FUN_1000_ca1b                                    undefined FUN_1000_ca1b()
       1000:c902 e8 d8 fb        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
       1000:c905 e8 ec f7        CALL       FUN_1000_c0f4                                    undefined FUN_1000_c0f4()
       1000:c908 5d              POP        BP
       1000:c909 ff d5           CALL       BP
                             LAB_1000_c90b                                   XREF[2]:     1000:c90e(j), 1000:c919(j)  
       1000:c90b e8 e6 00        CALL       FUN_1000_c9f4                                    undefined FUN_1000_c9f4()
       1000:c90e 74 fb           JZ         LAB_1000_c90b
       1000:c910 e8 ca fb        CALL       FUN_1000_c4dd                                    undefined FUN_1000_c4dd()
       1000:c913 e8 d0 e3        CALL       FUN_1000_ace6                                    undefined FUN_1000_ace6()
       1000:c916 e8 6c 03        CALL       FUN_1000_cc85                                    undefined FUN_1000_cc85()
       1000:c919 74 f0           JZ         LAB_1000_c90b
       1000:c91b e8 f4 fa        CALL       FUN_1000_c412                                    undefined FUN_1000_c412()
       1000:c91e e9 e0 00        JMP        FUN_1000_ca01                                    undefined FUN_1000_ca01()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c921()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c921                                   XREF[5]:     FUN_1000_c93c:1000:c942(c), 
                                                                                          FUN_1000_cb1a:1000:cb85(c), 
                                                                                          FUN_1000_ce6c:1000:ce7e(c), 
                                                                                          FUN_1000_ce6c:1000:ce93(c), 
                                                                                          FUN_1000_ceb0:1000:ceb0(c)  
       1000:c921 bb a3 33        MOV        BX,0x33a3
       1000:c924 03 d8           ADD        BX,AX
       1000:c926 03 d8           ADD        BX,AX
       1000:c928 8b 1f           MOV        BX,word ptr [BX]
       1000:c92a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_c92b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c92b                                   XREF[2]:     FUN_1000_ca1b:1000:ca1b(c), 
                                                                                          FUN_1000_ceb0:1000:ceb4(c)  
       1000:c92b a3 00 dc        MOV        [0xdc00],AX
       1000:c92e e8 d0 00        CALL       FUN_1000_ca01                                    undefined FUN_1000_ca01()
       1000:c931 e8 e6 04        CALL       FUN_1000_ce1a                                    undefined FUN_1000_ce1a()
       1000:c934 c6 06 e7        MOV        byte ptr [0xdbe7],0x0
                 db 00
       1000:c939 e8 c5 04        CALL       FUN_1000_ce01                                    undefined FUN_1000_ce01()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c93c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c93c                                   XREF[1]:     FUN_1000_cb1a:1000:cb48(c)  
       1000:c93c a1 00 dc        MOV        AX,[0xdc00]
       1000:c93f a3 02 dc        MOV        [0xdc02],AX
       1000:c942 e8 dc ff        CALL       FUN_1000_c921                                    undefined FUN_1000_c921()
       1000:c945 8b 07           MOV        AX,word ptr [BX]
       1000:c947 a3 fe db        MOV        [0xdbfe],AX
       1000:c94a 8d 57 02        LEA        DX,[BX + 0x2]
       1000:c94d e8 d9 28        CALL       FUN_1000_f229                                    undefined FUN_1000_f229()
       1000:c950 89 1e a6 35     MOV        word ptr [0x35a6],BX
       1000:c954 a3 04 dc        MOV        [0xdc04],AX
       1000:c957 89 16 06 dc     MOV        word ptr [0xdc06],DX
       1000:c95b 89 0e 08 dc     MOV        word ptr [0xdc08],CX
       1000:c95f 89 2e 0a dc     MOV        word ptr [0xdc0a],BP
       1000:c963 ff 36 1a dc     PUSH       word ptr [0xdc1a]
       1000:c967 ff 36 0c dc     PUSH       word ptr [0xdc0c]
       1000:c96b e8 21 04        CALL       FUN_1000_cd8f                                    undefined FUN_1000_cd8f()
       1000:c96e 72 18           JC         LAB_1000_c988
       1000:c970 03 f0           ADD        SI,AX
       1000:c972 72 06           JC         LAB_1000_c97a
       1000:c974 3b 36 74 ce     CMP        SI,word ptr [0xce74]
       1000:c978 76 06           JBE        LAB_1000_c980
                             LAB_1000_c97a                                   XREF[1]:     1000:c972(j)  
       1000:c97a c7 06 0c        MOV        word ptr [0xdc0c],0x0
                 dc 00 00
                             LAB_1000_c980                                   XREF[1]:     1000:c978(j)  
       1000:c980 2d 02 00        SUB        AX,0x2
       1000:c983 8b c8           MOV        CX,AX
       1000:c985 e8 37 04        CALL       FUN_1000_cdbf                                    undefined FUN_1000_cdbf()
                             LAB_1000_c988                                   XREF[1]:     1000:c96e(j)  
       1000:c988 8f 06 0c dc     POP        word ptr [0xdc0c]
       1000:c98c 8f 06 1a dc     POP        word ptr [0xdc1a]
       1000:c990 72 55           JC         LAB_1000_c9e7
       1000:c992 c4 36 0c dc     LES        SI,[0xdc0c]
       1000:c996 26 ad           LODSW      ES:SI
       1000:c998 03 c6           ADD        AX,SI
       1000:c99a 72 06           JC         LAB_1000_c9a2
       1000:c99c 3b 06 74 ce     CMP        AX,word ptr [0xce74]
       1000:c9a0 76 02           JBE        LAB_1000_c9a4
                             LAB_1000_c9a2                                   XREF[1]:     1000:c99a(j)  
       1000:c9a2 33 f6           XOR        SI,SI
                             LAB_1000_c9a4                                   XREF[1]:     1000:c9a0(j)  
       1000:c9a4 c6 06 b4        MOV        byte ptr [0xdbb4],0xff
                 db ff
       1000:c9a9 e8 0e f8        CALL       FUN_1000_c1ba                                    undefined FUN_1000_c1ba()
       1000:c9ac 4e              DEC        SI
                             LAB_1000_c9ad                                   XREF[1]:     1000:c9b2(j)  
       1000:c9ad 46              INC        SI
       1000:c9ae 26 80 3c ff     CMP        byte ptr ES:[SI],0xff
       1000:c9b2 74 f9           JZ         LAB_1000_c9ad
       1000:c9b4 33 db           XOR        BX,BX
       1000:c9b6 f6 06 fe        TEST       byte ptr [0xdbfe],0x4
                 db 04
       1000:c9bb 74 02           JZ         LAB_1000_c9bf
       1000:c9bd b3 10           MOV        BL,0x10
                             LAB_1000_c9bf                                   XREF[1]:     1000:c9bb(j)  
       1000:c9bf 26 8b 08        MOV        CX,word ptr ES:[BX + SI]
       1000:c9c2 26 8b 58 02     MOV        BX,word ptr ES:[BX + SI + 0x2]
       1000:c9c6 a1 04 dc        MOV        AX,[0xdc04]
       1000:c9c9 03 c1           ADD        AX,CX
       1000:c9cb a3 f6 db        MOV        [0xdbf6],AX
       1000:c9ce a1 06 dc        MOV        AX,[0xdc06]
       1000:c9d1 13 c3           ADC        AX,BX
       1000:c9d3 a3 f8 db        MOV        [0xdbf8],AX
       1000:c9d6 a1 08 dc        MOV        AX,[0xdc08]
       1000:c9d9 2b c1           SUB        AX,CX
       1000:c9db a3 fa db        MOV        [0xdbfa],AX
       1000:c9de a1 0a dc        MOV        AX,[0xdc0a]
       1000:c9e1 1b c3           SBB        AX,BX
       1000:c9e3 a3 fc db        MOV        [0xdbfc],AX
       1000:c9e6 f8              CLC
                             LAB_1000_c9e7                                   XREF[1]:     1000:c990(j)  
       1000:c9e7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_c9f4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_c9f4                                   XREF[3]:     FUN_1000_0a23:1000:0a33(c), 
                                                                                          FUN_1000_0e77:1000:0e8d(c), 
                                                                                          FUN_1000_c8fb:1000:c90b(c)  
       1000:c9f4 ff 36 e8 db     PUSH       word ptr [0xdbe8]
       1000:c9f8 e8 65 00        CALL       FUN_1000_ca60                                    undefined FUN_1000_ca60()
       1000:c9fb 58              POP        AX
       1000:c9fc 3b 06 e8 db     CMP        AX,word ptr [0xdbe8]
       1000:ca00 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ca01()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ca01                                   XREF[9]:     FUN_1000_0580:1000:060e(c), 
                                                                                          FUN_1000_0e77:1000:0e9d(c), 
                                                                                          FUN_1000_4f0c:1000:4fc0(c), 
                                                                                          FUN_1000_c8fb:1000:c91e(c), 
                                                                                          FUN_1000_c92b:1000:c92e(c), 
                                                                                          FUN_1000_ca1b:1000:ca1e(j), 
                                                                                          FUN_1000_ca1b:1000:ca23(j), 
                                                                                          FUN_1000_cb1a:1000:cb5d(c), 
                                                                                          FUN_1000_ce6c:1000:cead(c)  
       1000:ca01 33 db           XOR        BX,BX
       1000:ca03 87 1e a6 35     XCHG       word ptr [0x35a6],BX
       1000:ca07 0b db           OR         BX,BX
       1000:ca09 74 0d           JZ         LAB_1000_ca18
       1000:ca0b e8 f3 03        CALL       FUN_1000_ce01                                    undefined FUN_1000_ce01()
       1000:ca0e 3b 1e ba db     CMP        BX,word ptr [0xdbba]
       1000:ca12 74 04           JZ         LAB_1000_ca18
       1000:ca14 b4 3e           MOV        AH,0x3e
       1000:ca16 cd 21           INT        0x21
                             LAB_1000_ca18                                   XREF[2]:     1000:ca09(j), 1000:ca12(j)  
       1000:ca18 33 c9           XOR        CX,CX
       1000:ca1a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ca1b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ca1b                                   XREF[3]:     FUN_1000_0e77:1000:0e80(c), 
                                                                                          FUN_1000_37b5:1000:3802(c), 
                                                                                          FUN_1000_c8fb:1000:c8ff(c)  
       1000:ca1b e8 0d ff        CALL       FUN_1000_c92b                                    undefined FUN_1000_c92b()
       1000:ca1e 72 e1           JC         FUN_1000_ca01
       1000:ca20 e8 7d 03        CALL       FUN_1000_cda0                                    undefined FUN_1000_cda0()
       1000:ca23 72 dc           JC         FUN_1000_ca01
       1000:ca25 c6 06 e6        MOV        byte ptr [0xdce6],0x0
                 dc 00
       1000:ca2a c4 36 10 dc     LES        SI,[0xdc10]
       1000:ca2e 26 ad           LODSW      ES:SI
       1000:ca30 8b 2e de db     MOV        BP,word ptr [0xdbde]
       1000:ca34 e8 bd 02        CALL       FUN_1000_ccf4                                    undefined FUN_1000_ccf4()
       1000:ca37 e8 d5 df        CALL       FUN_1000_aa0f                                    undefined FUN_1000_aa0f()
       1000:ca3a e8 59 02        CALL       FUN_1000_cc96                                    undefined FUN_1000_cc96()
       1000:ca3d e8 da 03        CALL       FUN_1000_ce1a                                    undefined FUN_1000_ce1a()
       1000:ca40 ff 06 e8 db     INC        word ptr [0xdbe8]
       1000:ca44 ff 06 ea db     INC        word ptr [0xdbea]
       1000:ca48 f6 06 fe        TEST       byte ptr [0xdbfe],0x40
                 db 40
       1000:ca4d 75 0a           JNZ        FUN_1000_ca59
       1000:ca4f b9 32 00        MOV        CX,0x32
                             LAB_1000_ca52                                   XREF[1]:     1000:ca57(j)  
       1000:ca52 51              PUSH       CX
       1000:ca53 e8 c4 00        CALL       FUN_1000_cb1a                                    undefined FUN_1000_cb1a()
       1000:ca56 59              POP        CX
       1000:ca57 e2 f9           LOOP       LAB_1000_ca52
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ca59()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ca59                                   XREF[2]:     FUN_1000_ca1b:1000:ca4d(j), 
                                                                                          FUN_1000_cad4:1000:caeb(c)  
       1000:ca59 a1 7a ce        MOV        AX,[0xce7a]
       1000:ca5c a3 22 dc        MOV        [0xdc22],AX
       1000:ca5f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ca60()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ca60                                   XREF[6]:     FUN_1000_0a23:1000:0a2d(c), 
                                                                                          FUN_1000_488a:1000:48a3(c), 
                                                                                          FUN_1000_488a:1000:48c9(c), 
                                                                                          FUN_1000_4f0c:1000:4f24(c), 
                                                                                          FUN_1000_c9f4:1000:c9f8(c), 
                                                                                          1000:ca79(j)  
       1000:ca60 83 3e a6        CMP        word ptr [0x35a6],0x0
                 35 00
       1000:ca65 74 33           JZ         FUN_1000_ca9a
       1000:ca67 80 3e fe        CMP        byte ptr [0xdbfe],0x0
                 db 00
       1000:ca6c 79 03           JNS        LAB_1000_ca71
       1000:ca6e e8 1e 00        CALL       FUN_1000_ca8f                                    undefined FUN_1000_ca8f()
                             LAB_1000_ca71                                   XREF[1]:     1000:ca6c(j)  
       1000:ca71 e8 2c 00        CALL       FUN_1000_caa0                                    undefined FUN_1000_caa0()
       1000:ca74 73 05           JNC        LAB_1000_ca7b
       1000:ca76 e8 a1 00        CALL       FUN_1000_cb1a                                    undefined FUN_1000_cb1a()
       1000:ca79 eb e5           JMP        FUN_1000_ca60
                             LAB_1000_ca7b                                   XREF[1]:     1000:ca74(j)  
       1000:ca7b e8 56 00        CALL       FUN_1000_cad4                                    undefined FUN_1000_cad4()
       1000:ca7e 72 0f           JC         FUN_1000_ca8f
       1000:ca80 a1 1e dc        MOV        AX,[0xdc1e]
       1000:ca83 40              INC        AX
       1000:ca84 74 03           JZ         LAB_1000_ca89
       1000:ca86 e8 b2 03        CALL       FUN_1000_ce3b                                    undefined FUN_1000_ce3b()
                             LAB_1000_ca89                                   XREF[1]:     1000:ca84(j)  
       1000:ca89 e8 0a 02        CALL       FUN_1000_cc96                                    undefined FUN_1000_cc96()
       1000:ca8c e8 bf 01        CALL       FUN_1000_cc4e                                    undefined FUN_1000_cc4e()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ca8f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ca8f                                   XREF[2]:     FUN_1000_ca60:1000:ca6e(c), 
                                                                                          FUN_1000_ca60:1000:ca7e(j)  
       1000:ca8f a0 fe db        MOV        AL,[0xdbfe]
       1000:ca92 24 80           AND        AL,0x80
       1000:ca94 a2 b5 db        MOV        [0xdbb5],AL
       1000:ca97 e8 80 00        CALL       FUN_1000_cb1a                                    undefined FUN_1000_cb1a()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ca9a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ca9a                                   XREF[2]:     FUN_1000_ca60:1000:ca65(j), 
                                                                                          FUN_1000_cb1a:1000:cb79(c)  
       1000:ca9a c6 06 b5        MOV        byte ptr [0xdbb5],0x0
                 db 00
       1000:ca9f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_caa0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_caa0                                   XREF[1]:     FUN_1000_ca60:1000:ca71(c)  
       1000:caa0 83 3e 16        CMP        word ptr [0xdc16],0x0
                 dc 00
       1000:caa5 77 2c           JA         LAB_1000_cad3
       1000:caa7 8b 0e 1a dc     MOV        CX,word ptr [0xdc1a]
       1000:caab f9              STC
       1000:caac e3 25           JCXZ       LAB_1000_cad3
       1000:caae c4 36 10 dc     LES        SI,[0xdc10]
       1000:cab2 26 ad           LODSW      ES:SI
       1000:cab4 26 81 3c        CMP        word ptr ES:[SI],0x6d6d
                 6d 6d
       1000:cab9 74 04           JZ         LAB_1000_cabf
       1000:cabb 3b c8           CMP        CX,AX
       1000:cabd 72 14           JC         LAB_1000_cad3
                             LAB_1000_cabf                                   XREF[1]:     1000:cab9(j)  
       1000:cabf 8b 2e d6 db     MOV        BP,word ptr [0xdbd6]
       1000:cac3 f6 06 fe        TEST       byte ptr [0xdbfe],0x40
                 db 40
       1000:cac8 74 04           JZ         LAB_1000_cace
       1000:caca 8b 2e 32 dc     MOV        BP,word ptr [0xdc32]
                             LAB_1000_cace                                   XREF[1]:     1000:cac8(j)  
       1000:cace e8 23 02        CALL       FUN_1000_ccf4                                    undefined FUN_1000_ccf4()
       1000:cad1 33 c0           XOR        AX,AX
                             LAB_1000_cad3                                   XREF[3]:     1000:caa5(j), 1000:caac(j), 
                                                                                          1000:cabd(j)  
       1000:cad3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cad4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cad4                                   XREF[1]:     FUN_1000_ca60:1000:ca7b(c)  
       1000:cad4 a1 1c dc        MOV        AX,[0xdc1c]
       1000:cad7 40              INC        AX
       1000:cad8 75 16           JNZ        LAB_1000_caf0
       1000:cada a1 7a ce        MOV        AX,[0xce7a]
       1000:cadd 2b 06 22 dc     SUB        AX,word ptr [0xdc22]
       1000:cae1 0a e4           OR         AH,AH
       1000:cae3 75 06           JNZ        LAB_1000_caeb
       1000:cae5 3a 06 ff db     CMP        AL,byte ptr [0xdbff]
       1000:cae9 72 04           JC         LAB_1000_caef
                             LAB_1000_caeb                                   XREF[1]:     1000:cae3(j)  
       1000:caeb e8 6b ff        CALL       FUN_1000_ca59                                    undefined FUN_1000_ca59()
       1000:caee f8              CLC
                             LAB_1000_caef                                   XREF[2]:     1000:cae9(j), 1000:caf9(j)  
       1000:caef c3              RET
                             LAB_1000_caf0                                   XREF[1]:     1000:cad8(j)  
       1000:caf0 8b 36 24 38     MOV        SI,word ptr [0x3824]
       1000:caf4 80 7c 06 01     CMP        byte ptr [SI + 0x6],0x1
       1000:caf8 f5              CMC
       1000:caf9 72 f4           JC         LAB_1000_caef
       1000:cafb e8 f6 de        CALL       FUN_1000_a9f4                                    undefined FUN_1000_a9f4()
       1000:cafe f8              CLC
       1000:caff c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cb00()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cb00                                   XREF[2]:     FUN_1000_cb1a:1000:cb1e(j), 
                                                                                          FUN_1000_cb1a:1000:cc09(c)  
       1000:cb00 a1 ea db        MOV        AX,[0xdbea]
       1000:cb03 3b 06 ee db     CMP        AX,word ptr [0xdbee]
       1000:cb07 74 58           JZ         LAB_1000_cb61
       1000:cb09 a1 08 dc        MOV        AX,[0xdc08]
       1000:cb0c 0b 06 0a dc     OR         AX,word ptr [0xdc0a]
       1000:cb10 74 4f           JZ         LAB_1000_cb61
       1000:cb12 e8 7a 02        CALL       FUN_1000_cd8f                                    undefined FUN_1000_cd8f()
       1000:cb15 72 2d           JC         LAB_1000_cb44
       1000:cb17 e8 f2 00        CALL       FUN_1000_cc0c                                    undefined FUN_1000_cc0c()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cb1a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cb1a                                   XREF[3]:     FUN_1000_ca1b:1000:ca53(c), 
                                                                                          FUN_1000_ca60:1000:ca76(c), 
                                                                                          FUN_1000_ca8f:1000:ca97(c)  
       1000:cb1a 8b 0e 20 dc     MOV        CX,word ptr [0xdc20]
       1000:cb1e e3 e0           JCXZ       FUN_1000_cb00
       1000:cb20 80 3e fe        CMP        byte ptr [0xdbfe],0x0
                 db 00
       1000:cb25 78 11           JS         LAB_1000_cb38
       1000:cb27 a1 04 dc        MOV        AX,[0xdc04]
       1000:cb2a f7 d8           NEG        AX
       1000:cb2c 25 ff 07        AND        AX,0x7ff
       1000:cb2f 80 c4 08        ADD        AH,0x8
       1000:cb32 3b c1           CMP        AX,CX
       1000:cb34 73 02           JNC        LAB_1000_cb38
       1000:cb36 8b c8           MOV        CX,AX
                             LAB_1000_cb38                                   XREF[2]:     1000:cb25(j), 1000:cb34(j)  
       1000:cb38 e8 f0 00        CALL       FUN_1000_cc2b                                    undefined FUN_1000_cc2b()
       1000:cb3b 72 07           JC         LAB_1000_cb44
       1000:cb3d 29 0e 20 dc     SUB        word ptr [0xdc20],CX
       1000:cb41 e9 7b 02        JMP        FUN_1000_cdbf                                    undefined FUN_1000_cdbf()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_cb44                                   XREF[3]:     FUN_1000_cb00:1000:cb15(j), 
                                                                                          1000:cb3b(j), 1000:cb6e(j)  
       1000:cb44 c3              RET
                             LAB_1000_cb45                                   XREF[2]:     1000:cb8b(j), 1000:cb91(j)  
       1000:cb45 a3 00 dc        MOV        [0xdc00],AX
       1000:cb48 e8 f1 fd        CALL       FUN_1000_c93c                                    undefined FUN_1000_c93c()
       1000:cb4b c3              RET
                             LAB_1000_cb4c                                   XREF[1]:     1000:cb66(j)  
       1000:cb4c 80 0e e7        OR         byte ptr [0xdbe7],0x1
                 db 01
       1000:cb51 83 3e 1a        CMP        word ptr [0xdc1a],0x0
                 dc 00
       1000:cb56 75 08           JNZ        LAB_1000_cb60
       1000:cb58 80 0e e7        OR         byte ptr [0xdbe7],0x2
                 db 02
       1000:cb5d e8 a1 fe        CALL       FUN_1000_ca01                                    undefined FUN_1000_ca01()
                             LAB_1000_cb60                                   XREF[1]:     1000:cb56(j)  
       1000:cb60 c3              RET
                             LAB_1000_cb61                                   XREF[2]:     FUN_1000_cb00:1000:cb07(j), 
                                                                                          FUN_1000_cb00:1000:cb10(j)  
       1000:cb61 f6 06 fe        TEST       byte ptr [0xdbfe],0x1
                 db 01
       1000:cb66 74 e4           JZ         LAB_1000_cb4c
       1000:cb68 b9 00 10        MOV        CX,0x1000
       1000:cb6b e8 bd 00        CALL       FUN_1000_cc2b                                    undefined FUN_1000_cc2b()
       1000:cb6e 72 d4           JC         LAB_1000_cb44
       1000:cb70 a1 ea db        MOV        AX,[0xdbea]
       1000:cb73 e8 91 02        CALL       FUN_1000_ce07                                    undefined FUN_1000_ce07()
       1000:cb76 a3 ec db        MOV        [0xdbec],AX
       1000:cb79 e8 1e ff        CALL       FUN_1000_ca9a                                    undefined FUN_1000_ca9a()
       1000:cb7c a1 02 dc        MOV        AX,[0xdc02]
       1000:cb7f 3b 06 00 dc     CMP        AX,word ptr [0xdc00]
       1000:cb83 74 1b           JZ         LAB_1000_cba0
       1000:cb85 e8 99 fd        CALL       FUN_1000_c921                                    undefined FUN_1000_c921()
       1000:cb88 f6 07 08        TEST       byte ptr [BX],0x8
       1000:cb8b 74 b8           JZ         LAB_1000_cb45
       1000:cb8d 83 7f fa 00     CMP        word ptr [BX + -0x6],0x0
       1000:cb91 74 b2           JZ         LAB_1000_cb45
       1000:cb93 a3 00 dc        MOV        [0xdc00],AX
       1000:cb96 8d 77 f8        LEA        SI,[BX + -0x8]
       1000:cb99 bf f6 db        MOV        DI,0xdbf6
       1000:cb9c e8 fa 8f        CALL       FUN_1000_5b99                                    undefined FUN_1000_5b99()
       1000:cb9f a4              MOVSB      ES:DI,SI
                             LAB_1000_cba0                                   XREF[1]:     1000:cb83(j)  
       1000:cba0 a1 fa db        MOV        AX,[0xdbfa]
       1000:cba3 a3 08 dc        MOV        [0xdc08],AX
       1000:cba6 a1 fc db        MOV        AX,[0xdbfc]
       1000:cba9 a3 0a dc        MOV        [0xdc0a],AX
       1000:cbac a1 f6 db        MOV        AX,[0xdbf6]
       1000:cbaf a3 04 dc        MOV        [0xdc04],AX
       1000:cbb2 a1 f8 db        MOV        AX,[0xdbf8]
       1000:cbb5 a3 06 dc        MOV        [0xdc06],AX
       1000:cbb8 f6 06 fe        TEST       byte ptr [0xdbfe],0x4
                 db 04
       1000:cbbd 74 4a           JZ         LAB_1000_cc09
       1000:cbbf a1 00 dc        MOV        AX,[0xdc00]
       1000:cbc2 05 61 00        ADD        AX,0x61
       1000:cbc5 e8 76 f5        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:cbc8 8b 2e b0 db     MOV        BP,word ptr [0xdbb0]
       1000:cbcc b9 04 00        MOV        CX,0x4
                             LAB_1000_cbcf                                   XREF[1]:     1000:cc02(j)  
       1000:cbcf c4 3e 0c dc     LES        DI,[0xdc0c]
       1000:cbd3 b8 02 00        MOV        AX,0x2
       1000:cbd6 e8 1e 02        CALL       FUN_1000_cdf7                                    undefined FUN_1000_cdf7()
       1000:cbd9 b8 0a 00        MOV        AX,0xa
       1000:cbdc ab              STOSW      ES:DI
       1000:cbdd 8b f7           MOV        SI,DI
       1000:cbdf e8 2a 00        CALL       FUN_1000_cc0c                                    undefined FUN_1000_cc0c()
       1000:cbe2 8e 06 b2 db     MOV        ES,word ptr [0xdbb2]
       1000:cbe6 26 ff 76 00     PUSH       word ptr ES:[BP + 0x0]
       1000:cbea 06              PUSH       ES
       1000:cbeb c4 3e 0c dc     LES        DI,[0xdc0c]
       1000:cbef b8 6d 6d        MOV        AX,0x6d6d
       1000:cbf2 ab              STOSW      ES:DI
       1000:cbf3 8b c5           MOV        AX,BP
       1000:cbf5 ab              STOSW      ES:DI
       1000:cbf6 58              POP        AX
       1000:cbf7 ab              STOSW      ES:DI
       1000:cbf8 58              POP        AX
       1000:cbf9 ab              STOSW      ES:DI
       1000:cbfa 03 e8           ADD        BP,AX
       1000:cbfc b8 08 00        MOV        AX,0x8
       1000:cbff e8 f5 01        CALL       FUN_1000_cdf7                                    undefined FUN_1000_cdf7()
       1000:cc02 e2 cb           LOOP       LAB_1000_cbcf
       1000:cc04 c6 06 b5        MOV        byte ptr [0xdbb5],0x80
                 db 80
                             LAB_1000_cc09                                   XREF[1]:     1000:cbbd(j)  
       1000:cc09 e9 f4 fe        JMP        FUN_1000_cb00                                    undefined FUN_1000_cb00()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cc0c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cc0c                                   XREF[2]:     FUN_1000_cb00:1000:cb17(c), 
                                                                                          FUN_1000_cb1a:1000:cbdf(c)  
       1000:cc0c 03 f0           ADD        SI,AX
       1000:cc0e 72 06           JC         LAB_1000_cc16
       1000:cc10 3b 36 74 ce     CMP        SI,word ptr [0xce74]
       1000:cc14 76 0a           JBE        LAB_1000_cc20
                             LAB_1000_cc16                                   XREF[1]:     1000:cc0e(j)  
       1000:cc16 33 c9           XOR        CX,CX
       1000:cc18 87 0e 0c dc     XCHG       word ptr [0xdc0c],CX
       1000:cc1c 89 0e 18 dc     MOV        word ptr [0xdc18],CX
                             LAB_1000_cc20                                   XREF[1]:     1000:cc14(j)  
       1000:cc20 2d 02 00        SUB        AX,0x2
       1000:cc23 a3 20 dc        MOV        [0xdc20],AX
       1000:cc26 ff 06 ea db     INC        word ptr [0xdbea]
       1000:cc2a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cc2b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cc2b                                   XREF[2]:     FUN_1000_cb1a:1000:cb38(c), 
                                                                                          FUN_1000_cb1a:1000:cb6b(c)  
       1000:cc2b a1 0c dc        MOV        AX,[0xdc0c]
       1000:cc2e 8b 1e 10 dc     MOV        BX,word ptr [0xdc10]
       1000:cc32 3b c3           CMP        AX,BX
       1000:cc34 73 09           JNC        LAB_1000_cc3f
       1000:cc36 03 c1           ADD        AX,CX
       1000:cc38 05 12 00        ADD        AX,0x12
       1000:cc3b 3b d8           CMP        BX,AX
       1000:cc3d 72 0e           JC         LAB_1000_cc4d
                             LAB_1000_cc3f                                   XREF[1]:     1000:cc34(j)  
       1000:cc3f a1 1a dc        MOV        AX,[0xdc1a]
       1000:cc42 05 0a 00        ADD        AX,0xa
       1000:cc45 03 c1           ADD        AX,CX
       1000:cc47 72 04           JC         LAB_1000_cc4d
       1000:cc49 39 06 18 dc     CMP        word ptr [0xdc18],AX
                             LAB_1000_cc4d                                   XREF[3]:     1000:cc3d(j), 1000:cc47(j), 
                                                                                          FUN_1000_cc96:1000:cca5(j)  
       1000:cc4d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cc4e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cc4e                                   XREF[2]:     FUN_1000_ca60:1000:ca8c(c), 
                                                                                          FUN_1000_ccf4:1000:cd4b(c)  
       1000:cc4e c4 36 10 dc     LES        SI,[0xdc10]
       1000:cc52 26 ad           LODSW      ES:SI
       1000:cc54 29 06 1a dc     SUB        word ptr [0xdc1a],AX
       1000:cc58 03 f0           ADD        SI,AX
       1000:cc5a 72 06           JC         LAB_1000_cc62
       1000:cc5c 3b 36 74 ce     CMP        SI,word ptr [0xce74]
       1000:cc60 76 08           JBE        LAB_1000_cc6a
                             LAB_1000_cc62                                   XREF[1]:     1000:cc5a(j)  
       1000:cc62 2d 02 00        SUB        AX,0x2
       1000:cc65 a3 10 dc        MOV        [0xdc10],AX
       1000:cc68 33 c0           XOR        AX,AX
                             LAB_1000_cc6a                                   XREF[1]:     1000:cc60(j)  
       1000:cc6a 01 06 10 dc     ADD        word ptr [0xdc10],AX
       1000:cc6e a1 e8 db        MOV        AX,[0xdbe8]
       1000:cc71 40              INC        AX
       1000:cc72 3b 06 ec db     CMP        AX,word ptr [0xdbec]
       1000:cc76 76 09           JBE        LAB_1000_cc81
       1000:cc78 b8 01 00        MOV        AX,0x1
       1000:cc7b c7 06 ec        MOV        word ptr [0xdbec],0xffff
                 db ff ff
                             LAB_1000_cc81                                   XREF[1]:     1000:cc76(j)  
       1000:cc81 a3 e8 db        MOV        [0xdbe8],AX
       1000:cc84 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cc85()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cc85                                   XREF[3]:     FUN_1000_0309:1000:0327(c), 
                                                                                          FUN_1000_488a:1000:48cc(c), 
                                                                                          FUN_1000_c8fb:1000:c916(c)  
       1000:cc85 80 3e e7        CMP        byte ptr [0xdbe7],0x0
                 db 00
       1000:cc8a 74 05           JZ         LAB_1000_cc91
       1000:cc8c 80 3e e7        CMP        byte ptr [0xdbe7],0x1
                 db 01
                             LAB_1000_cc91                                   XREF[1]:     1000:cc8a(j)  
       1000:cc91 c3              RET
                             DAT_1000_cc94                                   XREF[1]:     FUN_1000_cc96:1000:cc99(W)  
       1000:cc94 00 00           undefined2 0000h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cc96()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cc96                                   XREF[2]:     FUN_1000_ca1b:1000:ca3a(c), 
                                                                                          FUN_1000_ca60:1000:ca89(c)  
       1000:cc96 a1 fb 38        MOV        AX,[0x38fb]
       1000:cc99 2e a3 94 cc     MOV        CS:[DAT_1000_cc94],AX
       1000:cc9d 33 ed           XOR        BP,BP
       1000:cc9f 87 2e 16 dc     XCHG       word ptr [0xdc16],BP
       1000:cca3 0b ed           OR         BP,BP
       1000:cca5 74 a6           JZ         LAB_1000_cc4d
       1000:cca7 8b 36 14 dc     MOV        SI,word ptr [0xdc14]
       1000:ccab a0 fe db        MOV        AL,[0xdbfe]
       1000:ccae a8 30           TEST       AL,0x30
       1000:ccb0 75 38           JNZ        LAB_1000_ccea
       1000:ccb2 1e              PUSH       DS
       1000:ccb3 f7 06 24        TEST       word ptr [0xdc24],0x400
                 dc 00 04
       1000:ccb9 75 26           JNZ        LAB_1000_cce1
       1000:ccbb 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:ccbf 8b 1e 00 dc     MOV        BX,word ptr [0xdc00]
       1000:ccc3 8e dd           MOV        DS,BP
       1000:ccc5 ad              LODSW      SI
       1000:ccc6 80 e4 f9        AND        AH,0xf9
       1000:ccc9 8b f8           MOV        DI,AX
       1000:cccb ad              LODSW      SI
       1000:cccc 8b c8           MOV        CX,AX
       1000:ccce 0a c9           OR         CL,CL
       1000:ccd0 74 0f           JZ         LAB_1000_cce1
       1000:ccd2 ad              LODSW      SI
       1000:ccd3 8b d0           MOV        DX,AX
       1000:ccd5 ad              LODSW      SI
       1000:ccd6 93              XCHG       AX,BX
       1000:ccd7 3d 19 00        CMP        AX,0x19
       1000:ccda 73 07           JNC        LAB_1000_cce3
       1000:ccdc 36 ff 1e        CALLF      [0x38c9]
                 c9 38
                             LAB_1000_cce1                                   XREF[2]:     1000:ccb9(j), 1000:ccd0(j)  
       1000:cce1 1f              POP        DS
       1000:cce2 c3              RET
                             LAB_1000_cce3                                   XREF[1]:     1000:ccda(j)  
       1000:cce3 2e ff 1e        CALLF      [0xcc92]
                 92 cc
       1000:cce8 1f              POP        DS
       1000:cce9 c3              RET
                             LAB_1000_ccea                                   XREF[1]:     1000:ccb0(j)  
       1000:ccea a8 20           TEST       AL,0x20
       1000:ccec 75 03           JNZ        LAB_1000_ccf1
       1000:ccee e9 0c 7e        JMP        FUN_1000_4afd                                    undefined FUN_1000_4afd()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_ccf1                                   XREF[1]:     1000:ccec(j)  
       1000:ccf1 e9 f7 7d        JMP        FUN_1000_4aeb                                    undefined FUN_1000_4aeb()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ccf4()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ccf4                                   XREF[2]:     FUN_1000_ca1b:1000:ca34(c), 
                                                                                          FUN_1000_caa0:1000:cace(c)  
       1000:ccf4 c7 06 1c        MOV        word ptr [0xdc1c],0xffff
                 dc ff ff
       1000:ccfa c7 06 1e        MOV        word ptr [0xdc1e],0xffff
                 dc ff ff
       1000:cd00 03 c6           ADD        AX,SI
       1000:cd02 72 06           JC         LAB_1000_cd0a
       1000:cd04 3b 06 74 ce     CMP        AX,word ptr [0xce74]
       1000:cd08 76 02           JBE        LAB_1000_cd0c
                             LAB_1000_cd0a                                   XREF[1]:     1000:cd02(j)  
       1000:cd0a 33 f6           XOR        SI,SI
                             LAB_1000_cd0c                                   XREF[2]:     1000:cd08(j), 1000:cd35(j)  
       1000:cd0c 26 ad           LODSW      ES:SI
       1000:cd0e 3d 73 64        CMP        AX,0x6473
       1000:cd11 75 12           JNZ        LAB_1000_cd25
       1000:cd13 e8 19 e1        CALL       FUN_1000_ae2f                                    undefined FUN_1000_ae2f()
       1000:cd16 74 04           JZ         LAB_1000_cd1c
       1000:cd18 89 36 1c dc     MOV        word ptr [0xdc1c],SI
                             LAB_1000_cd1c                                   XREF[1]:     1000:cd16(j)  
       1000:cd1c 26 ad           LODSW      ES:SI
       1000:cd1e 2d 04 00        SUB        AX,0x4
       1000:cd21 03 f0           ADD        SI,AX
       1000:cd23 26 ad           LODSW      ES:SI
                             LAB_1000_cd25                                   XREF[1]:     1000:cd11(j)  
       1000:cd25 3d 70 6c        CMP        AX,0x6c70
       1000:cd28 75 0d           JNZ        LAB_1000_cd37
       1000:cd2a 26 ad           LODSW      ES:SI
       1000:cd2c 89 36 1e dc     MOV        word ptr [0xdc1e],SI
       1000:cd30 2d 04 00        SUB        AX,0x4
       1000:cd33 03 f0           ADD        SI,AX
       1000:cd35 eb d5           JMP        LAB_1000_cd0c
                             LAB_1000_cd37                                   XREF[1]:     1000:cd28(j)  
       1000:cd37 3d 6d 6d        CMP        AX,0x6d6d
       1000:cd3a 75 12           JNZ        LAB_1000_cd4e
       1000:cd3c 26 8b 5c 04     MOV        BX,word ptr ES:[SI + 0x4]
       1000:cd40 26 c4 34        LES        SI,ES:[SI]
       1000:cd43 26 ad           LODSW      ES:SI
       1000:cd45 3b c3           CMP        AX,BX
       1000:cd47 26 ad           LODSW      ES:SI
       1000:cd49 74 03           JZ         LAB_1000_cd4e
       1000:cd4b e9 00 ff        JMP        FUN_1000_cc4e                                    undefined FUN_1000_cc4e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_cd4e                                   XREF[2]:     1000:cd3a(j), 1000:cd49(j)  
       1000:cd4e 1e              PUSH       DS
       1000:cd4f 06              PUSH       ES
       1000:cd50 8e c5           MOV        ES,BP
       1000:cd52 33 ff           XOR        DI,DI
       1000:cd54 f6 c4 04        TEST       AH,0x4
       1000:cd57 74 04           JZ         LAB_1000_cd5d
       1000:cd59 8e 06 da db     MOV        ES,word ptr [0xdbda]
                             LAB_1000_cd5d                                   XREF[1]:     1000:cd57(j)  
       1000:cd5d 8c 06 16 dc     MOV        word ptr [0xdc16],ES
       1000:cd61 89 3e 14 dc     MOV        word ptr [0xdc14],DI
       1000:cd65 a3 24 dc        MOV        [0xdc24],AX
       1000:cd68 1f              POP        DS
       1000:cd69 8b c8           MOV        CX,AX
       1000:cd6b ad              LODSW      SI
       1000:cd6c 91              XCHG       AX,CX
       1000:cd6d f6 c4 04        TEST       AH,0x4
       1000:cd70 75 0a           JNZ        LAB_1000_cd7c
       1000:cd72 ab              STOSW      ES:DI
       1000:cd73 91              XCHG       AX,CX
       1000:cd74 ab              STOSW      ES:DI
       1000:cd75 e3 08           JCXZ       LAB_1000_cd7f
       1000:cd77 f6 c5 02        TEST       CH,0x2
       1000:cd7a 74 05           JZ         LAB_1000_cd81
                             LAB_1000_cd7c                                   XREF[1]:     1000:cd70(j)  
       1000:cd7c e8 84 26        CALL       FUN_1000_f403                                    undefined FUN_1000_f403()
                             LAB_1000_cd7f                                   XREF[1]:     1000:cd75(j)  
       1000:cd7f 1f              POP        DS
       1000:cd80 c3              RET
                             LAB_1000_cd81                                   XREF[1]:     1000:cd7a(j)  
       1000:cd81 83 ee 04        SUB        SI,0x4
       1000:cd84 8c d8           MOV        AX,DS
       1000:cd86 1f              POP        DS
       1000:cd87 89 36 14 dc     MOV        word ptr [0xdc14],SI
       1000:cd8b a3 16 dc        MOV        [0xdc16],AX
       1000:cd8e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cd8f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cd8f                                   XREF[3]:     FUN_1000_c93c:1000:c96b(c), 
                                                                                          FUN_1000_cb00:1000:cb12(c), 
                                                                                          FUN_1000_cda0:1000:cda3(c)  
       1000:cd8f b9 02 00        MOV        CX,0x2
       1000:cd92 e8 2a 00        CALL       FUN_1000_cdbf                                    undefined FUN_1000_cdbf()
       1000:cd95 72 08           JC         LAB_1000_cd9f
       1000:cd97 c4 36 0c dc     LES        SI,[0xdc0c]
       1000:cd9b 26 8b 44 fe     MOV        AX,word ptr ES:[SI + -0x2]
                             LAB_1000_cd9f                                   XREF[1]:     1000:cd95(j)  
       1000:cd9f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cda0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cda0                                   XREF[1]:     FUN_1000_ca1b:1000:ca20(c)  
       1000:cda0 e8 77 00        CALL       FUN_1000_ce1a                                    undefined FUN_1000_ce1a()
       1000:cda3 e8 e9 ff        CALL       FUN_1000_cd8f                                    undefined FUN_1000_cd8f()
       1000:cda6 72 58           JC         LAB_1000_ce00
       1000:cda8 8b 3e 74 ce     MOV        DI,word ptr [0xce74]
       1000:cdac 2b f8           SUB        DI,AX
       1000:cdae 83 ef 02        SUB        DI,0x2
       1000:cdb1 89 3e 10 dc     MOV        word ptr [0xdc10],DI
       1000:cdb5 ab              STOSW      ES:DI
       1000:cdb6 89 3e 0c dc     MOV        word ptr [0xdc0c],DI
       1000:cdba 8b c8           MOV        CX,AX
       1000:cdbc 83 e9 02        SUB        CX,0x2
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cdbf()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cdbf                                   XREF[3]:     FUN_1000_c93c:1000:c985(c), 
                                                                                          FUN_1000_cb1a:1000:cb41(c), 
                                                                                          FUN_1000_cd8f:1000:cd92(c)  
       1000:cdbf 8b 1e a6 35     MOV        BX,word ptr [0x35a6]
       1000:cdc3 83 fb 01        CMP        BX,0x1
       1000:cdc6 72 38           JC         LAB_1000_ce00
                             LAB_1000_cdc8                                   XREF[1]:     1000:cde3(j)  
       1000:cdc8 51              PUSH       CX
       1000:cdc9 8b 0e 06 dc     MOV        CX,word ptr [0xdc06]
       1000:cdcd 8b 16 04 dc     MOV        DX,word ptr [0xdc04]
       1000:cdd1 b8 00 42        MOV        AX,0x4200
       1000:cdd4 cd 21           INT        0x21
       1000:cdd6 59              POP        CX
       1000:cdd7 1e              PUSH       DS
       1000:cdd8 c5 16 0c dc     LDS        DX,[0xdc0c]
       1000:cddc b4 3f           MOV        AH,0x3f
       1000:cdde cd 21           INT        0x21
       1000:cde0 1f              POP        DS
       1000:cde1 3b c1           CMP        AX,CX
       1000:cde3 72 e3           JC         LAB_1000_cdc8
       1000:cde5 29 06 08 dc     SUB        word ptr [0xdc08],AX
       1000:cde9 83 1e 0a        SBB        word ptr [0xdc0a],0x0
                 dc 00
       1000:cdee 01 06 04 dc     ADD        word ptr [0xdc04],AX
       1000:cdf2 83 16 06        ADC        word ptr [0xdc06],0x0
                 dc 00
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cdf7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cdf7                                   XREF[2]:     FUN_1000_cb1a:1000:cbd6(c), 
                                                                                          FUN_1000_cb1a:1000:cbff(c)  
       1000:cdf7 01 06 0c dc     ADD        word ptr [0xdc0c],AX
       1000:cdfb 01 06 1a dc     ADD        word ptr [0xdc1a],AX
       1000:cdff f8              CLC
                             LAB_1000_ce00                                   XREF[2]:     FUN_1000_cda0:1000:cda6(j), 
                                                                                          FUN_1000_cdbf:1000:cdc6(j)  
       1000:ce00 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ce01()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ce01                                   XREF[2]:     FUN_1000_c92b:1000:c939(c), 
                                                                                          FUN_1000_ca01:1000:ca0b(c)  
       1000:ce01 c7 06 e8        MOV        word ptr [0xdbe8],0x0
                 db 00 00
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ce07()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ce07                                   XREF[1]:     FUN_1000_cb1a:1000:cb73(c)  
       1000:ce07 c7 06 ea        MOV        word ptr [0xdbea],0x0
                 db 00 00
       1000:ce0d c7 06 ec        MOV        word ptr [0xdbec],0xffff
                 db ff ff
       1000:ce13 c7 06 ee        MOV        word ptr [0xdbee],0xffff
                 db ff ff
       1000:ce19 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ce1a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ce1a                                   XREF[3]:     FUN_1000_c92b:1000:c931(c), 
                                                                                          FUN_1000_ca1b:1000:ca3d(c), 
                                                                                          FUN_1000_cda0:1000:cda0(c)  
       1000:ce1a a1 de db        MOV        AX,[0xdbde]
       1000:ce1d a3 0e dc        MOV        [0xdc0e],AX
       1000:ce20 a3 12 dc        MOV        [0xdc12],AX
       1000:ce23 33 c0           XOR        AX,AX
       1000:ce25 a3 0c dc        MOV        [0xdc0c],AX
       1000:ce28 a3 10 dc        MOV        [0xdc10],AX
       1000:ce2b a3 1a dc        MOV        [0xdc1a],AX
       1000:ce2e a3 20 dc        MOV        [0xdc20],AX
       1000:ce31 a3 16 dc        MOV        [0xdc16],AX
       1000:ce34 a1 74 ce        MOV        AX,[0xce74]
       1000:ce37 a3 18 dc        MOV        [0xdc18],AX
       1000:ce3a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ce3b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ce3b                                   XREF[1]:     FUN_1000_ca60:1000:ca86(c)  
       1000:ce3b c4 36 0c dc     LES        SI,[0xdc0c]
       1000:ce3f 8b 36 1e dc     MOV        SI,word ptr [0xdc1e]
       1000:ce43 e8 74 f3        CALL       FUN_1000_c1ba                                    undefined FUN_1000_c1ba()
       1000:ce46 ff 1e 35 39     CALLF      [0x3935]
       1000:ce4a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ce4b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ce4b                                   XREF[1]:     FUN_1000_488a:1000:48c6(c)  
       1000:ce4b 89 1e 02 dc     MOV        word ptr [0xdc02],BX
       1000:ce4f a3 ee db        MOV        [0xdbee],AX
       1000:ce52 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ce6c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ce6c                                   XREF[1]:     FUN_1000_e594:1000:e668(c)  
       1000:ce6c f6 06 43        TEST       byte ptr [0x2943],0x2
                 29 02
       1000:ce71 75 08           JNZ        LAB_1000_ce7b
       1000:ce73 81 3e a9        CMP        word ptr [0x39a9],0x15e
                 39 5e 01
       1000:ce79 73 0f           JNC        LAB_1000_ce8a
                             LAB_1000_ce7b                                   XREF[1]:     1000:ce71(j)  
       1000:ce7b b8 02 00        MOV        AX,0x2
                             LAB_1000_ce7e                                   XREF[1]:     1000:ce88(j)  
       1000:ce7e e8 a0 fa        CALL       FUN_1000_c921                                    undefined FUN_1000_c921()
       1000:ce81 80 27 fb        AND        byte ptr [BX],0xfb
       1000:ce84 40              INC        AX
       1000:ce85 3d 09 00        CMP        AX,0x9
       1000:ce88 72 f4           JC         LAB_1000_ce7e
                             LAB_1000_ce8a                                   XREF[1]:     1000:ce79(j)  
       1000:ce8a f6 06 43        TEST       byte ptr [0x2943],0x3
                 29 03
       1000:ce8f 74 0e           JZ         LAB_1000_ce9f
       1000:ce91 33 c0           XOR        AX,AX
                             LAB_1000_ce93                                   XREF[1]:     1000:ce9d(j)  
       1000:ce93 e8 8b fa        CALL       FUN_1000_c921                                    undefined FUN_1000_c921()
       1000:ce96 80 27 7f        AND        byte ptr [BX],0x7f
       1000:ce99 40              INC        AX
       1000:ce9a 3d 25 00        CMP        AX,0x25
       1000:ce9d 72 f4           JC         LAB_1000_ce93
                             LAB_1000_ce9f                                   XREF[1]:     1000:ce8f(j)  
       1000:ce9f b8 02 00        MOV        AX,0x2
                             LAB_1000_cea2                                   XREF[1]:     1000:ceab(j)  
       1000:cea2 50              PUSH       AX
       1000:cea3 e8 0a 00        CALL       FUN_1000_ceb0                                    undefined FUN_1000_ceb0()
       1000:cea6 58              POP        AX
       1000:cea7 40              INC        AX
       1000:cea8 3d 08 00        CMP        AX,0x8
       1000:ceab 72 f5           JC         LAB_1000_cea2
       1000:cead e9 51 fb        JMP        FUN_1000_ca01                                    undefined FUN_1000_ca01()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ceb0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ceb0                                   XREF[1]:     FUN_1000_ce6c:1000:cea3(c)  
       1000:ceb0 e8 6e fa        CALL       FUN_1000_c921                                    undefined FUN_1000_c921()
       1000:ceb3 53              PUSH       BX
       1000:ceb4 e8 74 fa        CALL       FUN_1000_c92b                                    undefined FUN_1000_c92b()
       1000:ceb7 5f              POP        DI
       1000:ceb8 72 0e           JC         LAB_1000_cec8
       1000:ceba f6 05 08        TEST       byte ptr [DI],0x8
       1000:cebd 74 09           JZ         LAB_1000_cec8
       1000:cebf 83 ef 08        SUB        DI,0x8
       1000:cec2 be f6 db        MOV        SI,0xdbf6
       1000:cec5 e8 d1 8c        CALL       FUN_1000_5b99                                    undefined FUN_1000_5b99()
                             LAB_1000_cec8                                   XREF[2]:     1000:ceb8(j), 1000:cebd(j)  
       1000:cec8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cf70()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cf70                                   XREF[11]:    FUN_1000_32c7:1000:32fb(c), 
                                                                                          FUN_1000_4658:1000:4665(c), 
                                                                                          FUN_1000_5bb0:1000:5bc3(c), 
                                                                                          FUN_1000_8865:1000:8871(c), 
                                                                                          FUN_1000_88af:1000:88cc(c), 
                                                                                          FUN_1000_8944:1000:8993(c), 
                                                                                          FUN_1000_9f9e:1000:a011(c), 
                                                                                          FUN_1000_bf26:1000:bf2f(c), 
                                                                                          FUN_1000_d19b:1000:d19e(c), 
                                                                                          FUN_1000_d48a:1000:d4dd(c), 
                                                                                          FUN_1000_e2db:1000:e2dc(c)  
       1000:cf70 53              PUSH       BX
       1000:cf71 4e              DEC        SI
       1000:cf72 f7 c6 00 08     TEST       SI,0x800
       1000:cf76 74 1d           JZ         LAB_1000_cf95
       1000:cf78 e8 94 00        CALL       FUN_1000_d00f                                    undefined FUN_1000_d00f()
       1000:cf7b c4 1e b0 47     LES        BX,[0x47b0]
       1000:cf7f 81 e6 ff 07     AND        SI,0x7ff
       1000:cf83 d1 e6           SHL        SI,0x1
       1000:cf85 26 8b 30        MOV        SI,word ptr ES:[BX + SI]
       1000:cf88 26 8b 1f        MOV        BX,word ptr ES:[BX]
       1000:cf8b 26 8b 5f fe     MOV        BX,word ptr ES:[BX + -0x2]
       1000:cf8f 89 1e b4 47     MOV        word ptr [0x47b4],BX
       1000:cf93 5b              POP        BX
       1000:cf94 c3              RET
                             LAB_1000_cf95                                   XREF[1]:     1000:cf76(j)  
       1000:cf95 d1 e6           SHL        SI,0x1
       1000:cf97 c4 1e ac 47     LES        BX,[0x47ac]
       1000:cf9b 26 8b 30        MOV        SI,word ptr ES:[BX + SI]
       1000:cf9e 5b              POP        BX
       1000:cf9f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cfa0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cfa0                                   XREF[1]:     FUN_1000_0083:1000:0083(c)  
       1000:cfa0 e8 8c de        CALL       FUN_1000_ae2f                                    undefined FUN_1000_ae2f()
       1000:cfa3 74 13           JZ         LAB_1000_cfb8
       1000:cfa5 a0 eb ce        MOV        AL,[0xceeb]
       1000:cfa8 0a c0           OR         AL,AL
       1000:cfaa 74 04           JZ         LAB_1000_cfb0
       1000:cfac 3c 03           CMP        AL,0x3
       1000:cfae 75 08           JNZ        LAB_1000_cfb8
                             LAB_1000_cfb0                                   XREF[1]:     1000:cfaa(j)  
       1000:cfb0 b0 02           MOV        AL,0x2
       1000:cfb2 a2 e7 28        MOV        [0x28e7],AL
       1000:cfb5 a2 e8 28        MOV        [0x28e8],AL
                             LAB_1000_cfb8                                   XREF[2]:     1000:cfa3(j), 1000:cfae(j)  
       1000:cfb8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_cfb9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_cfb9                                   XREF[1]:     FUN_1000_00d1:1000:0159(c)  
       1000:cfb9 33 db           XOR        BX,BX
       1000:cfbb bf f4 d7        MOV        DI,0xd7f4
       1000:cfbe 1e              PUSH       DS
       1000:cfbf 07              POP        ES
                             LAB_1000_cfc0                                   XREF[2]:     1000:cfcc(j), 1000:cfe2(j)  
       1000:cfc0 8b b7 76 aa     MOV        SI,word ptr [BX + 0xaa76]
       1000:cfc4 83 3c ff        CMP        word ptr [SI],-0x1
       1000:cfc7 75 05           JNZ        LAB_1000_cfce
       1000:cfc9 83 c3 02        ADD        BX,0x2
       1000:cfcc eb f2           JMP        LAB_1000_cfc0
                             LAB_1000_cfce                                   XREF[1]:     1000:cfc7(j)  
       1000:cfce 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:cfd1 86 c4           XCHG       AH,AL
       1000:cfd3 25 ff 03        AND        AX,0x3ff
       1000:cfd6 48              DEC        AX
       1000:cfd7 ab              STOSW      ES:DI
       1000:cfd8 83 e3 f0        AND        BX,0xfff0
       1000:cfdb 83 c3 10        ADD        BX,0x10
       1000:cfde 81 fb 10 01     CMP        BX,0x110
       1000:cfe2 72 dc           JC         LAB_1000_cfc0
       1000:cfe4 a0 eb ce        MOV        AL,[0xceeb]
       1000:cfe7 be bb 00        MOV        SI,0xbb
       1000:cfea 3c 06           CMP        AL,0x6
       1000:cfec 75 03           JNZ        LAB_1000_cff1
       1000:cfee be c7 00        MOV        SI,0xc7
                             LAB_1000_cff1                                   XREF[1]:     1000:cfec(j)  
       1000:cff1 bf ec ce        MOV        DI,0xceec
       1000:cff4 1e              PUSH       DS
       1000:cff5 07              POP        ES
       1000:cff6 e8 c0 20        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:cff9 b0 c0           MOV        AL,0xc0
       1000:cffb 02 06 eb ce     ADD        AL,byte ptr [0xceeb]
       1000:cfff 32 e4           XOR        AH,AH
       1000:d001 8b f0           MOV        SI,AX
       1000:d003 c4 3e ac 47     LES        DI,[0x47ac]
       1000:d007 e8 af 20        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:d00a e8 8b 30        CALL       FUN_1000_0098                                    undefined FUN_1000_0098()
       1000:d00d eb 0b           JMP        LAB_1000_d01a
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d00f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d00f                                   XREF[1]:     FUN_1000_cf70:1000:cf78(c)  
       1000:d00f a1 7c 47        MOV        AX,[0x477c]
       1000:d012 3b 06 d6 aa     CMP        AX,word ptr [0xaad6]
       1000:d016 b0 93           MOV        AL,0x93
       1000:d018 72 02           JC         LAB_1000_d01c
                             LAB_1000_d01a                                   XREF[1]:     FUN_1000_cfb9:1000:d00d(j)  
       1000:d01a b0 9a           MOV        AL,0x9a
                             LAB_1000_d01c                                   XREF[1]:     1000:d018(j)  
       1000:d01c 02 06 eb ce     ADD        AL,byte ptr [0xceeb]
       1000:d020 3a 06 7e 47     CMP        AL,byte ptr [0x477e]
       1000:d024 74 15           JZ         LAB_1000_d03b
       1000:d026 56              PUSH       SI
       1000:d027 a2 7e 47        MOV        [0x477e],AL
       1000:d02a 32 e4           XOR        AH,AH
       1000:d02c 8b f0           MOV        SI,AX
       1000:d02e c4 3e b0 47     LES        DI,[0x47b0]
       1000:d032 e8 84 20        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:d035 51              PUSH       CX
       1000:d036 e8 5f 30        CALL       FUN_1000_0098                                    undefined FUN_1000_0098()
       1000:d039 59              POP        CX
       1000:d03a 5e              POP        SI
                             LAB_1000_d03b                                   XREF[1]:     1000:d024(j)  
       1000:d03b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d03c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d03c                                   XREF[6]:     FUN_1000_32c7:1000:32fe(c), 
                                                                                          FUN_1000_5bb0:1000:5bc6(c), 
                                                                                          FUN_1000_bf61:1000:bf63(c), 
                                                                                          FUN_1000_bf73:1000:bf75(c), 
                                                                                          1000:d042(j), 
                                                                                          FUN_1000_e2db:1000:e2df(c)  
       1000:d03c 26 ac           LODSB      ES:SI
       1000:d03e 2c 30           SUB        AL,0x30
       1000:d040 3c 09           CMP        AL,0x9
       1000:d042 77 f8           JA         FUN_1000_d03c
                             LAB_1000_d044                                   XREF[1]:     1000:d04a(j)  
       1000:d044 26 ac           LODSB      ES:SI
       1000:d046 2c 30           SUB        AL,0x30
       1000:d048 3c 09           CMP        AL,0x9
       1000:d04a 76 f8           JBE        LAB_1000_d044
       1000:d04c 4e              DEC        SI
       1000:d04d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d04e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d04e                                   XREF[9]:     FUN_1000_7e3d:1000:7e5e(c), 
                                                                                          FUN_1000_8865:1000:886e(c), 
                                                                                          FUN_1000_8b11:1000:8b29(c), 
                                                                                          FUN_1000_8b11:1000:8b61(c), 
                                                                                          FUN_1000_8b11:1000:8b88(c), 
                                                                                          FUN_1000_8b11:1000:8c60(c), 
                                                                                          FUN_1000_d194:1000:d198(c), 
                                                                                          FUN_1000_d48a:1000:d4b1(c), 
                                                                                          FUN_1000_e290:1000:e290(c)  
       1000:d04e 89 16 2c d8     MOV        word ptr [0xd82c],DX
       1000:d052 89 1e 2e d8     MOV        word ptr [0xd82e],BX
       1000:d056 89 16 30 d8     MOV        word ptr [0xd830],DX
       1000:d05a 89 1e 32 d8     MOV        word ptr [0xd832],BX
       1000:d05e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d05f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d05f                                   XREF[1]:     FUN_1000_d48a:1000:d4e9(c)  
       1000:d05f 8b 16 2c d8     MOV        DX,word ptr [0xd82c]
       1000:d063 8b 1e 2e d8     MOV        BX,word ptr [0xd82e]
       1000:d067 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d068()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d068                                   XREF[8]:     FUN_1000_5bb0:1000:5bbd(c), 
                                                                                          FUN_1000_600e:1000:601a(c), 
                                                                                          FUN_1000_60ac:1000:60af(c), 
                                                                                          FUN_1000_8b11:1000:8c14(c), 
                                                                                          FUN_1000_9ab4:1000:9afe(c), 
                                                                                          FUN_1000_9f82:1000:9f88(c), 
                                                                                          FUN_1000_bdfa:1000:be14(c), 
                                                                                          FUN_1000_de7b:1000:debe(c)  
       1000:d068 c7 06 18        MOV        word ptr [0x2518],0xd096
                 25 96 d0
       1000:d06e c7 06 a0        MOV        word ptr [0x47a0],0xceec
                 47 ec ce
       1000:d074 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d075()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d075                                   XREF[9]:     FUN_1000_1a34:1000:1a5f(c), 
                                                                                          FUN_1000_5605:1000:5635(c), 
                                                                                          FUN_1000_605c:1000:605c(c), 
                                                                                          FUN_1000_78e9:1000:7902(c), 
                                                                                          FUN_1000_8b11:1000:8c0f(c), 
                                                                                          FUN_1000_9ab4:1000:9ae4(c), 
                                                                                          FUN_1000_bdbb:1000:bdd7(c), 
                                                                                          FUN_1000_d48a:1000:d49b(c), 
                                                                                          FUN_1000_de7b:1000:dec4(c)  
       1000:d075 c7 06 18        MOV        word ptr [0x2518],0xd12f
                 25 2f d1
       1000:d07b c7 06 a0        MOV        word ptr [0x47a0],0xcf6c
                 47 6c cf
       1000:d081 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d082()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d082                                   XREF[1]:     FUN_1000_8ccd:1000:8d3d(c)  
       1000:d082 c7 06 18        MOV        word ptr [0x2518],0xd0ff
                 25 ff d0
       1000:d088 c7 06 a0        MOV        word ptr [0x47a0],0xceec
                 47 ec ce
       1000:d08e c3              RET
                             DAT_1000_d0da                                   XREF[1]:     FUN_1000_d0e3:1000:d0f4(R)  
       1000:d0da 21              undefined1 21h
                             DAT_1000_d0db                                   XREF[1]:     FUN_1000_d0e3:1000:d0f4(R)  
       1000:d0db 1e              undefined1 1Eh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d0e3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d0e3                                   XREF[1]:     FUN_1000_8ed3:1000:8efb(c)  
       1000:d0e3 51              PUSH       CX
       1000:d0e4 57              PUSH       DI
       1000:d0e5 06              PUSH       ES
       1000:d0e6 0e              PUSH       CS
       1000:d0e7 07              POP        ES
       1000:d0e8 bf d1 d0        MOV        DI,0xd0d1
       1000:d0eb b9 09 00        MOV        CX,0x9
       1000:d0ee f2 ae           SCASB.RE   ES:DI
       1000:d0f0 07              POP        ES
       1000:d0f1 f9              STC
       1000:d0f2 75 08           JNZ        LAB_1000_d0fc
       1000:d0f4 2e 8a 45 08     MOV        AL,byte ptr CS:[DI + 0x8]=>DAT_1000_d0da         = 21h
                                                                                             = 1Eh
       1000:d0f8 b4 0d           MOV        AH,0xd
       1000:d0fa 2a e1           SUB        AH,CL
                             LAB_1000_d0fc                                   XREF[1]:     1000:d0f2(j)  
       1000:d0fc 5f              POP        DI
       1000:d0fd 59              POP        CX
       1000:d0fe c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d194()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d194                                   XREF[15]:    FUN_1000_35ad:1000:3653(c), 
                                                                                          FUN_1000_563e:1000:5656(c), 
                                                                                          FUN_1000_563e:1000:568f(c), 
                                                                                          FUN_1000_5bb0:1000:5be5(c), 
                                                                                          FUN_1000_605c:1000:606e(c), 
                                                                                          FUN_1000_605c:1000:60a9(c), 
                                                                                          FUN_1000_60ac:1000:60c6(c), 
                                                                                          FUN_1000_60ac:1000:60d9(c), 
                                                                                          FUN_1000_629d:1000:62a3(c), 
                                                                                          FUN_1000_62a6:1000:62ad(c), 
                                                                                          FUN_1000_78e9:1000:796b(c), 
                                                                                          FUN_1000_78e9:1000:79c4(c), 
                                                                                          FUN_1000_d1a6:1000:d1b5(c), 
                                                                                          FUN_1000_de7b:1000:dec1(c), 
                                                                                          FUN_1000_de7b:1000:ded3(c)  
       1000:d194 89 0e e4 db     MOV        word ptr [0xdbe4],CX
       1000:d198 e8 b3 fe        CALL       FUN_1000_d04e                                    undefined FUN_1000_d04e()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d19b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d19b                                   XREF[2]:     FUN_1000_62a6:1000:62c6(c), 
                                                                                          FUN_1000_7e3d:1000:7e64(c)  
       1000:d19b 56              PUSH       SI
       1000:d19c 8b f0           MOV        SI,AX
       1000:d19e e8 cf fd        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:d1a1 e8 17 00        CALL       FUN_1000_d1bb                                    undefined FUN_1000_d1bb()
       1000:d1a4 5e              POP        SI
                             LAB_1000_d1a5                                   XREF[2]:     FUN_1000_d1a6:1000:d1aa(j), 
                                                                                          FUN_1000_d1bb:1000:d1bf(j)  
       1000:d1a5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d1a6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d1a6                                   XREF[3]:     FUN_1000_bdbb:1000:bddd(c), 
                                                                                          FUN_1000_bdfa:1000:be1a(c), 
                                                                                          1000:d1b9(j)  
       1000:d1a6 ad              LODSW      SI
       1000:d1a7 8b c8           MOV        CX,AX
       1000:d1a9 40              INC        AX
       1000:d1aa 74 f9           JZ         LAB_1000_d1a5
       1000:d1ac ad              LODSW      SI
       1000:d1ad 8b d0           MOV        DX,AX
       1000:d1af ad              LODSW      SI
       1000:d1b0 8b d8           MOV        BX,AX
       1000:d1b2 ad              LODSW      SI
       1000:d1b3 91              XCHG       AX,CX
       1000:d1b4 56              PUSH       SI
       1000:d1b5 e8 dc ff        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:d1b8 5e              POP        SI
       1000:d1b9 eb eb           JMP        FUN_1000_d1a6
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d1bb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d1bb                                   XREF[5]:     FUN_1000_8865:1000:8881(c), 
                                                                                          FUN_1000_d19b:1000:d1a1(c), 
                                                                                          1000:d1cf(j), 1000:d1ed(j), 
                                                                                          FUN_1000_d48a:1000:d4e6(c)  
       1000:d1bb 26 ac           LODSB      ES:SI
       1000:d1bd 3c ff           CMP        AL,0xff
       1000:d1bf 74 e4           JZ         LAB_1000_d1a5
       1000:d1c1 3c 0d           CMP        AL,0xd
       1000:d1c3 74 0c           JZ         LAB_1000_d1d1
       1000:d1c5 0a c0           OR         AL,AL
       1000:d1c7 79 02           JNS        LAB_1000_d1cb
       1000:d1c9 b0 40           MOV        AL,0x40
                             LAB_1000_d1cb                                   XREF[1]:     1000:d1c7(j)  
       1000:d1cb ff 16 18 25     CALL       word ptr [0x2518]
       1000:d1cf eb ea           JMP        FUN_1000_d1bb
                             LAB_1000_d1d1                                   XREF[1]:     1000:d1c3(j)  
       1000:d1d1 a1 30 d8        MOV        AX,[0xd830]
       1000:d1d4 a3 2c d8        MOV        [0xd82c],AX
       1000:d1d7 b8 0a 00        MOV        AX,0xa
       1000:d1da 81 3e 18        CMP        word ptr [0x2518],0xd12f
                 25 2f d1
       1000:d1e0 75 03           JNZ        LAB_1000_d1e5
       1000:d1e2 b8 07 00        MOV        AX,0x7
                             LAB_1000_d1e5                                   XREF[1]:     1000:d1e0(j)  
       1000:d1e5 01 06 32 d8     ADD        word ptr [0xd832],AX
       1000:d1e9 01 06 2e d8     ADD        word ptr [0xd82e],AX
       1000:d1ed eb cc           JMP        FUN_1000_d1bb
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d1f2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d1f2                                   XREF[7]:     FUN_1000_d23d:1000:d262(c), 
                                                                                          FUN_1000_d23d:1000:d279(c), 
                                                                                          FUN_1000_d65a:1000:d66e(c), 
                                                                                          FUN_1000_d72b:1000:d73e(c), 
                                                                                          FUN_1000_d763:1000:d772(c), 
                                                                                          FUN_1000_d763:1000:d78f(c), 
                                                                                          FUN_1000_df07:1000:df11(c)  
       1000:d1f2 e8 42 ef        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
                             LAB_1000_d1f5                                   XREF[1]:     1000:d1fd(j)  
       1000:d1f5 51              PUSH       CX
       1000:d1f6 e8 07 00        CALL       FUN_1000_d200                                    undefined FUN_1000_d200()
       1000:d1f9 59              POP        CX
       1000:d1fa 83 c6 0e        ADD        SI,0xe
       1000:d1fd e2 f6           LOOP       LAB_1000_d1f5
       1000:d1ff c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d200()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d200                                   XREF[2]:     FUN_1000_1a0f:1000:1a23(c), 
                                                                                          FUN_1000_d1f2:1000:d1f6(c)  
       1000:d200 ff 36 da db     PUSH       word ptr [0xdbda]
       1000:d204 e8 87 ee        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:d207 56              PUSH       SI
       1000:d208 f6 44 08 40     TEST       byte ptr [SI + 0x8],0x40
       1000:d20c 74 0a           JZ         LAB_1000_d218
       1000:d20e 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:d212 56              PUSH       SI
       1000:d213 ff 1e d9 38     CALLF      [0x38d9]
       1000:d217 5e              POP        SI
                             LAB_1000_d218                                   XREF[1]:     1000:d20c(j)  
       1000:d218 f6 44 08 20     TEST       byte ptr [SI + 0x8],0x20
       1000:d21c 75 15           JNZ        LAB_1000_d233
       1000:d21e ad              LODSW      SI
       1000:d21f 8b d0           MOV        DX,AX
       1000:d221 ad              LODSW      SI
       1000:d222 8b d8           MOV        BX,AX
       1000:d224 ad              LODSW      SI
       1000:d225 8b f8           MOV        DI,AX
       1000:d227 ad              LODSW      SI
       1000:d228 8b c8           MOV        CX,AX
       1000:d22a ad              LODSW      SI
       1000:d22b ad              LODSW      SI
       1000:d22c 40              INC        AX
       1000:d22d 74 04           JZ         LAB_1000_d233
       1000:d22f 48              DEC        AX
       1000:d230 e8 fc ef        CALL       FUN_1000_c22f                                    undefined FUN_1000_c22f()
                             LAB_1000_d233                                   XREF[2]:     1000:d21c(j), 1000:d22d(j)  
       1000:d233 5e              POP        SI
       1000:d234 8f 06 da db     POP        word ptr [0xdbda]
       1000:d238 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d239()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d239                                   XREF[1]:     FUN_1000_d280:1000:d28f(c)  
       1000:d239 b5 02           MOV        CH,0x2
       1000:d23b eb 02           JMP        LAB_1000_d23f
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d23d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d23d                                   XREF[1]:     FUN_1000_d280:1000:d2b6(c)  
       1000:d23d 33 c9           XOR        CX,CX
                             LAB_1000_d23f                                   XREF[1]:     FUN_1000_d239:1000:d23b(j)  
       1000:d23f be f4 1a        MOV        SI,0x1af4
       1000:d242 8b 44 0a        MOV        AX,word ptr [SI + 0xa]
       1000:d245 2d 00 00        SUB        AX,0x0
       1000:d248 b1 03           MOV        CL,0x3
       1000:d24a f6 f1           DIV        CL
       1000:d24c 3a ec           CMP        CH,AH
       1000:d24e 74 2f           JZ         LAB_1000_d27f
       1000:d250 b8 01 00        MOV        AX,0x1
       1000:d253 73 02           JNC        LAB_1000_d257
       1000:d255 f7 d8           NEG        AX
                             LAB_1000_d257                                   XREF[1]:     1000:d253(j)  
       1000:d257 50              PUSH       AX
       1000:d258 56              PUSH       SI
       1000:d259 01 44 0a        ADD        word ptr [SI + 0xa],AX
       1000:d25c 01 44 18        ADD        word ptr [SI + 0x18],AX
       1000:d25f b9 02 00        MOV        CX,0x2
       1000:d262 e8 8d ff        CALL       FUN_1000_d1f2                                    undefined FUN_1000_d1f2()
       1000:d265 e8 cc 47        CALL       FUN_1000_1a34                                    undefined FUN_1000_1a34()
       1000:d268 b8 0a 00        MOV        AX,0xa
       1000:d26b e8 19 11        CALL       FUN_1000_e387                                    undefined FUN_1000_e387()
       1000:d26e 5e              POP        SI
       1000:d26f 58              POP        AX
       1000:d270 01 44 0a        ADD        word ptr [SI + 0xa],AX
       1000:d273 01 44 18        ADD        word ptr [SI + 0x18],AX
       1000:d276 b9 02 00        MOV        CX,0x2
       1000:d279 e8 76 ff        CALL       FUN_1000_d1f2                                    undefined FUN_1000_d1f2()
       1000:d27c e8 b5 47        CALL       FUN_1000_1a34                                    undefined FUN_1000_1a34()
                             LAB_1000_d27f                                   XREF[1]:     1000:d24e(j)  
       1000:d27f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d280()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d280                                   XREF[5]:     FUN_1000_3551:1000:35a9(c), 
                                                                                          FUN_1000_42e9:1000:4374(c), 
                                                                                          FUN_1000_9472:1000:94da(c), 
                                                                                          FUN_1000_d2e2:1000:d2e8(c), 
                                                                                          FUN_1000_d323:1000:d329(c)  
       1000:d280 80 3e e6        CMP        byte ptr [0xdce6],0x0
                 dc 00
       1000:d285 7e 35           JLE        LAB_1000_d2bc
       1000:d287 e8 e6 0f        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:d28a c6 06 e6        MOV        byte ptr [0xdce6],0x0
                 dc 00
       1000:d28f e8 a7 ff        CALL       FUN_1000_d239                                    undefined FUN_1000_d239()
       1000:d292 b9 11 00        MOV        CX,0x11
                             LAB_1000_d295                                   XREF[1]:     1000:d2b4(j)  
       1000:d295 51              PUSH       CX
       1000:d296 ff 36 7a ce     PUSH       word ptr [0xce7a]
       1000:d29a 8b 36 de db     MOV        SI,word ptr [0xdbde]
       1000:d29e b0 18           MOV        AL,0x18
       1000:d2a0 e8 32 ee        CALL       FUN_1000_c0d5                                    undefined FUN_1000_c0d5()
       1000:d2a3 5b              POP        BX
                             LAB_1000_d2a4                                   XREF[1]:     1000:d2b1(j)  
       1000:d2a4 53              PUSH       BX
       1000:d2a5 e8 1a d5        CALL       FUN_1000_a7c2                                    undefined FUN_1000_a7c2()
       1000:d2a8 5b              POP        BX
       1000:d2a9 a1 7a ce        MOV        AX,[0xce7a]
       1000:d2ac 2b c3           SUB        AX,BX
       1000:d2ae 3d 06 00        CMP        AX,0x6
       1000:d2b1 72 f1           JC         LAB_1000_d2a4
       1000:d2b3 59              POP        CX
       1000:d2b4 e2 df           LOOP       LAB_1000_d295
       1000:d2b6 e8 84 ff        CALL       FUN_1000_d23d                                    undefined FUN_1000_d23d()
       1000:d2b9 e8 c7 0f        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
                             LAB_1000_d2bc                                   XREF[1]:     1000:d285(j)  
       1000:d2bc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d2bd()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d2bd                                   XREF[6]:     FUN_1000_0d8e:1000:0db0(c), 
                                                                                          FUN_1000_1860:1000:1877(c), 
                                                                                          FUN_1000_18ba:1000:18d5(c), 
                                                                                          FUN_1000_1b23:1000:1be3(c), 
                                                                                          FUN_1000_3f15:1000:3f28(c), 
                                                                                          FUN_1000_9215:1000:925d(c)  
       1000:d2bd a0 e6 dc        MOV        AL,[0xdce6]
       1000:d2c0 50              PUSH       AX
                             LAB_1000_d2c1                                   XREF[1]:     1000:d2d8(j)  
       1000:d2c1 c6 06 e6        MOV        byte ptr [0xdce6],0x80
                 dc 80
       1000:d2c6 8b 36 da 21     MOV        SI,word ptr [0x21da]
       1000:d2ca 8b 34           MOV        SI,word ptr [SI]
       1000:d2cc ac              LODSB      SI
       1000:d2cd 3c ff           CMP        AL,0xff
       1000:d2cf 74 09           JZ         LAB_1000_d2da
       1000:d2d1 24 0f           AND        AL,0xf
       1000:d2d3 74 05           JZ         LAB_1000_d2da
       1000:d2d5 e8 12 00        CALL       FUN_1000_d2ea                                    undefined FUN_1000_d2ea()
       1000:d2d8 eb e7           JMP        LAB_1000_d2c1
                             LAB_1000_d2da                                   XREF[2]:     1000:d2cf(j), 1000:d2d3(j)  
       1000:d2da 58              POP        AX
       1000:d2db a2 e6 dc        MOV        [0xdce6],AL
       1000:d2de c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d2e2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d2e2                                   XREF[2]:     FUN_1000_5f79:1000:5f8d(c), 
                                                                                          FUN_1000_9472:1000:94c0(c)  
       1000:d2e2 e8 31 00        CALL       FUN_1000_d316                                    undefined FUN_1000_d316()
       1000:d2e5 e8 02 00        CALL       FUN_1000_d2ea                                    undefined FUN_1000_d2ea()
       1000:d2e8 eb 96           JMP        FUN_1000_d280                                    undefined FUN_1000_d280()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d2ea()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d2ea                                   XREF[2]:     FUN_1000_d2bd:1000:d2d5(c), 
                                                                                          FUN_1000_d2e2:1000:d2e5(c)  
       1000:d2ea 8b 36 da 21     MOV        SI,word ptr [0x21da]
       1000:d2ee 8b 3c           MOV        DI,word ptr [SI]
       1000:d2f0 8a 05           MOV        AL,byte ptr [DI]
       1000:d2f2 24 0f           AND        AL,0xf
       1000:d2f4 3c 0f           CMP        AL,0xf
       1000:d2f6 74 1d           JZ         LAB_1000_d315
       1000:d2f8 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:d2fb ff d0           CALL       AX
       1000:d2fd 8b 36 da 21     MOV        SI,word ptr [0x21da]
       1000:d301 81 fe be 21     CMP        SI,0x21be
       1000:d305 74 0e           JZ         LAB_1000_d315
       1000:d307 83 ee 04        SUB        SI,0x4
       1000:d30a 89 36 da 21     MOV        word ptr [0x21da],SI
       1000:d30e 8b 2c           MOV        BP,word ptr [SI]
       1000:d310 b1 ff           MOV        CL,0xff
       1000:d312 e8 58 00        CALL       FUN_1000_d36d                                    undefined FUN_1000_d36d()
                             LAB_1000_d315                                   XREF[2]:     1000:d2f6(j), 1000:d305(j)  
       1000:d315 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d316()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d316                                   XREF[3]:     FUN_1000_90bd:1000:911a(c), 
                                                                                          FUN_1000_d2e2:1000:d2e2(c), 
                                                                                          FUN_1000_d323:1000:d323(c)  
       1000:d316 83 3e a6        CMP        word ptr [0x35a6],0x0
                 35 00
       1000:d31b 75 05           JNZ        LAB_1000_d322
       1000:d31d 80 0e e6        OR         byte ptr [0xdce6],0x1
                 dc 01
                             LAB_1000_d322                                   XREF[1]:     1000:d31b(j)  
       1000:d322 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d323()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d323                                   XREF[6]:     FUN_1000_0d8e:1000:0e38(c), 
                                                                                          FUN_1000_3551:1000:3562(c), 
                                                                                          FUN_1000_3551:1000:3583(c), 
                                                                                          FUN_1000_35ad:1000:3669(c), 
                                                                                          FUN_1000_42e9:1000:430e(c), 
                                                                                          FUN_1000_780a:1000:7841(c)  
       1000:d323 e8 f0 ff        CALL       FUN_1000_d316                                    undefined FUN_1000_d316()
       1000:d326 e8 0f 00        CALL       FUN_1000_d338                                    undefined FUN_1000_d338()
       1000:d329 e8 54 ff        CALL       FUN_1000_d280                                    undefined FUN_1000_d280()
       1000:d32c e9 e1 00        JMP        LAB_1000_d410
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d338()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d338                                   XREF[4]:     FUN_1000_2ebf:1000:2ec6(c), 
                                                                                          FUN_1000_878c:1000:8819(c), 
                                                                                          FUN_1000_90bd:1000:9120(c), 
                                                                                          FUN_1000_d323:1000:d326(c)  
       1000:d338 b1 ff           MOV        CL,0xff
                             LAB_1000_d33a                                   XREF[1]:     1000:d359(j)  
       1000:d33a 8b 36 da 21     MOV        SI,word ptr [0x21da]
       1000:d33e 8b 3c           MOV        DI,word ptr [SI]
       1000:d340 8a 46 00        MOV        AL,byte ptr [BP + 0x0]
       1000:d343 3a 05           CMP        AL,byte ptr [DI]
       1000:d345 74 21           JZ         LAB_1000_d368
       1000:d347 72 12           JC         LAB_1000_d35b
       1000:d349 55              PUSH       BP
       1000:d34a 53              PUSH       BX
       1000:d34b 51              PUSH       CX
       1000:d34c 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:d34f ff d0           CALL       AX
       1000:d351 83 2e da        SUB        word ptr [0x21da],0x4
                 21 04
       1000:d356 59              POP        CX
       1000:d357 5b              POP        BX
       1000:d358 5d              POP        BP
       1000:d359 eb df           JMP        LAB_1000_d33a
                             LAB_1000_d35b                                   XREF[1]:     1000:d347(j)  
       1000:d35b 81 fe d6 21     CMP        SI,0x21d6
       1000:d35f 74 07           JZ         LAB_1000_d368
       1000:d361 83 c6 04        ADD        SI,0x4
       1000:d364 89 36 da 21     MOV        word ptr [0x21da],SI
                             LAB_1000_d368                                   XREF[2]:     1000:d345(j), 1000:d35f(j)  
       1000:d368 89 2c           MOV        word ptr [SI],BP
       1000:d36a 89 5c 02        MOV        word ptr [SI + 0x2],BX
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d36d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d36d                                   XREF[1]:     FUN_1000_d2ea:1000:d312(c)  
       1000:d36d 8b 36 da 21     MOV        SI,word ptr [0x21da]
       1000:d371 89 2c           MOV        word ptr [SI],BP
       1000:d373 8b f5           MOV        SI,BP
       1000:d375 83 c5 02        ADD        BP,0x2
                             LAB_1000_d378                                   XREF[1]:     1000:d386(j)  
       1000:d378 83 7e 00 00     CMP        word ptr [BP + 0x0],0x0
       1000:d37c 74 0a           JZ         LAB_1000_d388
       1000:d37e 81 66 00        AND        word ptr [BP + 0x0],0x7fff
                 ff 7f
       1000:d383 83 c5 04        ADD        BP,0x4
       1000:d386 eb f0           JMP        LAB_1000_d378
                             LAB_1000_d388                                   XREF[1]:     1000:d37c(j)  
       1000:d388 83 f9 05        CMP        CX,0x5
       1000:d38b 73 0a           JNC        FUN_1000_d397
       1000:d38d d1 e1           SHL        CX,0x1
       1000:d38f d1 e1           SHL        CX,0x1
       1000:d391 8b d9           MOV        BX,CX
       1000:d393 80 48 03 80     OR         byte ptr [BX + SI + 0x3],0x80
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d397()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d397                                   XREF[4]:     FUN_1000_2b2a:1000:2c5a(c), 
                                                                                          FUN_1000_40f9:1000:4177(c), 
                                                                                          FUN_1000_d36d:1000:d38b(j), 
                                                                                          FUN_1000_df07:1000:df18(c)  
       1000:d397 c6 06 e7        MOV        byte ptr [0xdce7],0xff
                 dc ff
       1000:d39c 8b 36 da 21     MOV        SI,word ptr [0x21da]
       1000:d3a0 8b 34           MOV        SI,word ptr [SI]
       1000:d3a2 46              INC        SI
       1000:d3a3 ac              LODSB      SI
       1000:d3a4 a2 e4 dc        MOV        [0xdce4],AL
       1000:d3a7 98              CBW
       1000:d3a8 03 f0           ADD        SI,AX
       1000:d3aa 33 c9           XOR        CX,CX
       1000:d3ac 88 0e e8 dc     MOV        byte ptr [0xdce8],CL
       1000:d3b0 c6 06 e5        MOV        byte ptr [0xdce5],0xff
                 dc ff
                             LAB_1000_d3b5                                   XREF[1]:     1000:d3eb(j)  
       1000:d3b5 8b 04           MOV        AX,word ptr [SI]
       1000:d3b7 0b c0           OR         AX,AX
       1000:d3b9 74 34           JZ         LAB_1000_d3ef
       1000:d3bb 80 f9 04        CMP        CL,0x4
       1000:d3be 72 19           JC         LAB_1000_d3d9
       1000:d3c0 80 3e e4        CMP        byte ptr [0xdce4],0x0
                 dc 00
       1000:d3c5 75 06           JNZ        LAB_1000_d3cd
       1000:d3c7 83 7c 04 00     CMP        word ptr [SI + 0x4],0x0
       1000:d3cb 74 0c           JZ         LAB_1000_d3d9
                             LAB_1000_d3cd                                   XREF[1]:     1000:d3c5(j)  
       1000:d3cd 80 0e e4        OR         byte ptr [0xdce4],0x80
                 dc 80
       1000:d3d2 b8 a0 00        MOV        AX,0xa0
       1000:d3d5 88 0e e5 dc     MOV        byte ptr [0xdce5],CL
                             LAB_1000_d3d9                                   XREF[2]:     1000:d3be(j), 1000:d3cb(j)  
       1000:d3d9 83 c6 04        ADD        SI,0x4
       1000:d3dc 51              PUSH       CX
       1000:d3dd 56              PUSH       SI
       1000:d3de fe 06 e8 dc     INC        byte ptr [0xdce8]
       1000:d3e2 e8 a5 00        CALL       FUN_1000_d48a                                    undefined FUN_1000_d48a()
       1000:d3e5 5e              POP        SI
       1000:d3e6 59              POP        CX
       1000:d3e7 41              INC        CX
       1000:d3e8 80 f9 05        CMP        CL,0x5
       1000:d3eb 72 c8           JC         LAB_1000_d3b5
       1000:d3ed eb 21           JMP        LAB_1000_d410
                             LAB_1000_d3ef                                   XREF[1]:     1000:d3b9(j)  
       1000:d3ef 80 3e e4        CMP        byte ptr [0xdce4],0x0
                 dc 00
       1000:d3f4 74 0d           JZ         LAB_1000_d403
       1000:d3f6 b8 a0 00        MOV        AX,0xa0
       1000:d3f9 88 0e e5 dc     MOV        byte ptr [0xdce5],CL
       1000:d3fd fe 06 e8 dc     INC        byte ptr [0xdce8]
       1000:d401 eb 02           JMP        LAB_1000_d405
                             LAB_1000_d403                                   XREF[2]:     1000:d3f4(j), 1000:d40e(j)  
       1000:d403 33 c0           XOR        AX,AX
                             LAB_1000_d405                                   XREF[1]:     1000:d401(j)  
       1000:d405 51              PUSH       CX
       1000:d406 e8 81 00        CALL       FUN_1000_d48a                                    undefined FUN_1000_d48a()
       1000:d409 59              POP        CX
       1000:d40a 41              INC        CX
       1000:d40b 80 f9 05        CMP        CL,0x5
       1000:d40e 72 f3           JC         LAB_1000_d403
                             LAB_1000_d410                                   XREF[2]:     FUN_1000_d323:1000:d32c(j), 
                                                                                          1000:d3ed(j)  
       1000:d410 8b 16 36 dc     MOV        DX,word ptr [0xdc36]
       1000:d414 8b 1e 38 dc     MOV        BX,word ptr [0xdc38]
       1000:d418 e9 f4 00        JMP        FUN_1000_d50f                                    undefined FUN_1000_d50f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d41b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d41b                                   XREF[8]:     FUN_1000_2b2a:1000:2b37(c), 
                                                                                          FUN_1000_5f79:1000:5f83(c), 
                                                                                          FUN_1000_83bc:1000:83df(c), 
                                                                                          FUN_1000_9215:1000:9215(c), 
                                                                                          FUN_1000_945b:1000:9468(c), 
                                                                                          FUN_1000_d50f:1000:d523(c), 
                                                                                          FUN_1000_d61d:1000:d624(c), 
                                                                                          FUN_1000_e068:1000:e069(c)  
       1000:d41b 8b 2e da 21     MOV        BP,word ptr [0x21da]
       1000:d41f 8b 6e 00        MOV        BP,word ptr [BP + 0x0]
       1000:d422 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d454()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d454                                   XREF[4]:     FUN_1000_d50f:1000:d565(c), 
                                                                                          FUN_1000_d50f:1000:d5f5(c), 
                                                                                          FUN_1000_d50f:1000:d604(c), 
                                                                                          FUN_1000_d61d:1000:d63b(c)  
       1000:d454 8b 36 da 21     MOV        SI,word ptr [0x21da]
       1000:d458 8b 34           MOV        SI,word ptr [SI]
       1000:d45a 46              INC        SI
       1000:d45b 32 ed           XOR        CH,CH
       1000:d45d 3a 0e e5 dc     CMP        CL,byte ptr [0xdce5]
       1000:d461 74 12           JZ         LAB_1000_d475
       1000:d463 ac              LODSB      SI
       1000:d464 98              CBW
       1000:d465 03 f0           ADD        SI,AX
       1000:d467 8b c1           MOV        AX,CX
       1000:d469 d1 e0           SHL        AX,0x1
       1000:d46b d1 e0           SHL        AX,0x1
       1000:d46d 03 f0           ADD        SI,AX
       1000:d46f 8b 04           MOV        AX,word ptr [SI]
       1000:d471 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       1000:d474 c3              RET
                             LAB_1000_d475                                   XREF[1]:     1000:d461(j)  
       1000:d475 b8 a0 00        MOV        AX,0xa0
       1000:d478 bb 23 d4        MOV        BX,0xd423
       1000:d47b 80 3e e4        CMP        byte ptr [0xdce4],0x0
                 dc 00
       1000:d480 78 07           JS         LAB_1000_d489
       1000:d482 bb 29 d4        MOV        BX,0xd429
       1000:d485 7f 02           JG         LAB_1000_d489
       1000:d487 33 db           XOR        BX,BX
                             LAB_1000_d489                                   XREF[2]:     1000:d480(j), 1000:d485(j)  
       1000:d489 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d48a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d48a                                   XREF[5]:     FUN_1000_d397:1000:d3e2(c), 
                                                                                          FUN_1000_d397:1000:d406(c), 
                                                                                          FUN_1000_d50f:1000:d5f8(c), 
                                                                                          FUN_1000_d50f:1000:d60a(c), 
                                                                                          FUN_1000_d61d:1000:d63e(c)  
       1000:d48a ff 36 da db     PUSH       word ptr [0xdbda]
       1000:d48e e8 fd eb        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:d491 80 3e e6        CMP        byte ptr [0xdce6],0x0
                 dc 00
       1000:d496 7e 03           JLE        LAB_1000_d49b
       1000:d498 e8 e1 eb        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
                             LAB_1000_d49b                                   XREF[1]:     1000:d496(j)  
       1000:d49b e8 d7 fb        CALL       FUN_1000_d075                                    undefined FUN_1000_d075()
       1000:d49e 8b f0           MOV        SI,AX
       1000:d4a0 b0 0e           MOV        AL,0xe
       1000:d4a2 f6 e1           MUL        CL
       1000:d4a4 8b f8           MOV        DI,AX
       1000:d4a6 81 c7 48 1b     ADD        DI,0x1b48
       1000:d4aa 8b 5d 02        MOV        BX,word ptr [DI + 0x2]
       1000:d4ad 43              INC        BX
       1000:d4ae ba 5d 00        MOV        DX,0x5d
       1000:d4b1 e8 9a fb        CALL       FUN_1000_d04e                                    undefined FUN_1000_d04e()
       1000:d4b4 c6 06 e5        MOV        byte ptr [0xdbe5],0xf3
                 db f3
       1000:d4b9 80 65 08 7f     AND        byte ptr [DI + 0x8],0x7f
       1000:d4bd 8b c6           MOV        AX,SI
       1000:d4bf 81 e6 ff 3f     AND        SI,0x3fff
       1000:d4c3 74 24           JZ         LAB_1000_d4e9
       1000:d4c5 b0 f5           MOV        AL,0xf5
       1000:d4c7 f6 c4 40        TEST       AH,0x40
       1000:d4ca 75 0e           JNZ        LAB_1000_d4da
       1000:d4cc 80 4d 08 80     OR         byte ptr [DI + 0x8],0x80
       1000:d4d0 b0 fa           MOV        AL,0xfa
       1000:d4d2 0a e4           OR         AH,AH
       1000:d4d4 79 04           JNS        LAB_1000_d4da
       1000:d4d6 86 06 e5 db     XCHG       byte ptr [0xdbe5],AL
                             LAB_1000_d4da                                   XREF[2]:     1000:d4ca(j), 1000:d4d4(j)  
       1000:d4da a2 e4 db        MOV        [0xdbe4],AL
       1000:d4dd e8 90 fa        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:d4e0 b0 20           MOV        AL,0x20
       1000:d4e2 ff 16 18 25     CALL       word ptr [0x2518]
       1000:d4e6 e8 d2 fc        CALL       FUN_1000_d1bb                                    undefined FUN_1000_d1bb()
                             LAB_1000_d4e9                                   XREF[1]:     1000:d4c3(j)  
       1000:d4e9 e8 73 fb        CALL       FUN_1000_d05f                                    undefined FUN_1000_d05f()
       1000:d4ec be e9 dc        MOV        SI,0xdce9
       1000:d4ef 89 14           MOV        word ptr [SI],DX
       1000:d4f1 89 5c 02        MOV        word ptr [SI + 0x2],BX
       1000:d4f4 c7 44 04        MOV        word ptr [SI + 0x4],0xe3
                 e3 00
       1000:d4f9 83 c3 07        ADD        BX,0x7
       1000:d4fc 89 5c 06        MOV        word ptr [SI + 0x6],BX
       1000:d4ff a0 e5 db        MOV        AL,[0xdbe5]
       1000:d502 8e 06 da db     MOV        ES,word ptr [0xdbda]
       1000:d506 ff 1e dd 38     CALLF      [0x38dd]
       1000:d50a 8f 06 da db     POP        word ptr [0xdbda]
       1000:d50e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d50f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d50f                                   XREF[3]:     FUN_1000_d397:1000:d418(c), 
                                                                                          FUN_1000_d64e:1000:d654(c), 
                                                                                          FUN_1000_d815:1000:d886(c)  
       1000:d50f 53              PUSH       BX
       1000:d510 51              PUSH       CX
       1000:d511 52              PUSH       DX
       1000:d512 56              PUSH       SI
       1000:d513 57              PUSH       DI
       1000:d514 55              PUSH       BP
       1000:d515 80 3e 74        CMP        byte ptr [0x4774],0x0
                 47 00
       1000:d51a 74 07           JZ         LAB_1000_d523
       1000:d51c 8a 0e 75 47     MOV        CL,byte ptr [0x4775]
       1000:d520 e9 ba 00        JMP        LAB_1000_d5dd
                             LAB_1000_d523                                   XREF[1]:     1000:d51a(j)  
       1000:d523 e8 f5 fe        CALL       FUN_1000_d41b                                    undefined FUN_1000_d41b()
       1000:d526 81 fd 0e 1f     CMP        BP,0x1f0e
       1000:d52a 75 49           JNZ        LAB_1000_d575
       1000:d52c 80 3e c9        CMP        byte ptr [0x11c9],0x0
                 11 00
       1000:d531 75 42           JNZ        LAB_1000_d575
       1000:d533 bf f0 1b        MOV        DI,0x1bf0
       1000:d536 80 7d 08 00     CMP        byte ptr [DI + 0x8],0x0
       1000:d53a 79 09           JNS        LAB_1000_d545
       1000:d53c e8 bf 01        CALL       FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
       1000:d53f 8b 0e c4 47     MOV        CX,word ptr [0x47c4]
       1000:d543 72 18           JC         LAB_1000_d55d
                             LAB_1000_d545                                   XREF[1]:     1000:d53a(j)  
       1000:d545 55              PUSH       BP
       1000:d546 e8 3c bd        CALL       FUN_1000_9285                                    undefined FUN_1000_9285()
       1000:d549 5d              POP        BP
       1000:d54a 73 29           JNC        LAB_1000_d575
       1000:d54c 8a c1           MOV        AL,CL
       1000:d54e 2c 0f           SUB        AL,0xf
       1000:d550 72 0b           JC         LAB_1000_d55d
       1000:d552 fe c0           INC        AL
       1000:d554 3a 06 6b 47     CMP        AL,byte ptr [0x476b]
       1000:d558 75 03           JNZ        LAB_1000_d55d
       1000:d55a b9 17 00        MOV        CX,0x17
                             LAB_1000_d55d                                   XREF[3]:     1000:d543(j), 1000:d550(j), 
                                                                                          1000:d558(j)  
       1000:d55d 8b e9           MOV        BP,CX
       1000:d55f 81 c5 78 00     ADD        BP,0x78
       1000:d563 33 c9           XOR        CX,CX
                             LAB_1000_d565                                   XREF[1]:     1000:d571(j)  
       1000:d565 e8 ec fe        CALL       FUN_1000_d454                                    undefined FUN_1000_d454()
       1000:d568 3b c5           CMP        AX,BP
       1000:d56a 74 71           JZ         LAB_1000_d5dd
       1000:d56c 41              INC        CX
       1000:d56d 3a 0e e8 dc     CMP        CL,byte ptr [0xdce8]
       1000:d571 72 f2           JC         LAB_1000_d565
       1000:d573 eb 66           JMP        LAB_1000_d5db
                             LAB_1000_d575                                   XREF[3]:     1000:d52a(j), 1000:d531(j), 
                                                                                          1000:d54a(j)  
       1000:d575 81 fd 7e 1f     CMP        BP,0x1f7e
       1000:d579 75 36           JNZ        LAB_1000_d5b1
       1000:d57b bf e2 1b        MOV        DI,0x1be2
       1000:d57e 80 7d 08 00     CMP        byte ptr [DI + 0x8],0x0
       1000:d582 79 0f           JNS        LAB_1000_d593
       1000:d584 33 c9           XOR        CX,CX
       1000:d586 e8 75 01        CALL       FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
       1000:d589 72 52           JC         LAB_1000_d5dd
       1000:d58b bf f0 1b        MOV        DI,0x1bf0
       1000:d58e e8 6d 01        CALL       FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
       1000:d591 72 4a           JC         LAB_1000_d5dd
                             LAB_1000_d593                                   XREF[1]:     1000:d582(j)  
       1000:d593 80 3e f8        CMP        byte ptr [0x1bf8],0x0
                 1b 00
       1000:d598 79 17           JNS        LAB_1000_d5b1
       1000:d59a bf fe 1b        MOV        DI,0x1bfe
       1000:d59d e8 5e 01        CALL       FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
       1000:d5a0 b1 03           MOV        CL,0x3
       1000:d5a2 72 39           JC         LAB_1000_d5dd
       1000:d5a4 e8 22 bd        CALL       FUN_1000_92c9                                    undefined FUN_1000_92c9()
       1000:d5a7 73 08           JNC        LAB_1000_d5b1
       1000:d5a9 3b 0e c4 47     CMP        CX,word ptr [0x47c4]
       1000:d5ad b1 02           MOV        CL,0x2
       1000:d5af 74 2c           JZ         LAB_1000_d5dd
                             LAB_1000_d5b1                                   XREF[3]:     1000:d579(j), 1000:d598(j), 
                                                                                          1000:d5a7(j)  
       1000:d5b1 81 fb 98 00     CMP        BX,0x98
       1000:d5b5 72 24           JC         LAB_1000_d5db
       1000:d5b7 b1 ff           MOV        CL,0xff
       1000:d5b9 bf 48 1b        MOV        DI,0x1b48
       1000:d5bc 3b 15           CMP        DX,word ptr [DI]
       1000:d5be 72 1d           JC         LAB_1000_d5dd
       1000:d5c0 3b 55 04        CMP        DX,word ptr [DI + 0x4]
       1000:d5c3 73 18           JNC        LAB_1000_d5dd
       1000:d5c5 33 c9           XOR        CX,CX
                             LAB_1000_d5c7                                   XREF[1]:     1000:d5d9(j)  
       1000:d5c7 3b 5d 02        CMP        BX,word ptr [DI + 0x2]
       1000:d5ca 76 0f           JBE        LAB_1000_d5db
       1000:d5cc 3b 5d 06        CMP        BX,word ptr [DI + 0x6]
       1000:d5cf 76 0c           JBE        LAB_1000_d5dd
       1000:d5d1 83 c7 0e        ADD        DI,0xe
       1000:d5d4 41              INC        CX
       1000:d5d5 3a 0e e8 dc     CMP        CL,byte ptr [0xdce8]
       1000:d5d9 72 ec           JC         LAB_1000_d5c7
                             LAB_1000_d5db                                   XREF[3]:     1000:d573(j), 1000:d5b5(j), 
                                                                                          1000:d5ca(j)  
       1000:d5db b1 ff           MOV        CL,0xff
                             LAB_1000_d5dd                                   XREF[9]:     1000:d520(j), 1000:d56a(j), 
                                                                                          1000:d589(j), 1000:d591(j), 
                                                                                          1000:d5a2(j), 1000:d5af(j), 
                                                                                          1000:d5be(j), 1000:d5c3(j), 
                                                                                          1000:d5cf(j)  
       1000:d5dd 8a c1           MOV        AL,CL
       1000:d5df 86 0e e7 dc     XCHG       byte ptr [0xdce7],CL
       1000:d5e3 3a c1           CMP        AL,CL
       1000:d5e5 74 29           JZ         LAB_1000_d610
       1000:d5e7 e8 c8 05        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:d5ea 0a c9           OR         CL,CL
       1000:d5ec 78 0e           JS         LAB_1000_d5fc
       1000:d5ee 3a 0e e8 dc     CMP        CL,byte ptr [0xdce8]
       1000:d5f2 73 08           JNC        LAB_1000_d5fc
       1000:d5f4 50              PUSH       AX
       1000:d5f5 e8 5c fe        CALL       FUN_1000_d454                                    undefined FUN_1000_d454()
       1000:d5f8 e8 8f fe        CALL       FUN_1000_d48a                                    undefined FUN_1000_d48a()
       1000:d5fb 58              POP        AX
                             LAB_1000_d5fc                                   XREF[2]:     1000:d5ec(j), 1000:d5f2(j)  
       1000:d5fc 3a 06 e8 dc     CMP        AL,byte ptr [0xdce8]
       1000:d600 73 0b           JNC        LAB_1000_d60d
       1000:d602 8b c8           MOV        CX,AX
       1000:d604 e8 4d fe        CALL       FUN_1000_d454                                    undefined FUN_1000_d454()
       1000:d607 80 cc 80        OR         AH,0x80
       1000:d60a e8 7d fe        CALL       FUN_1000_d48a                                    undefined FUN_1000_d48a()
                             LAB_1000_d60d                                   XREF[1]:     1000:d600(j)  
       1000:d60d e8 dc 05        CALL       FUN_1000_dbec                                    undefined FUN_1000_dbec()
                             LAB_1000_d610                                   XREF[1]:     1000:d5e5(j)  
       1000:d610 5d              POP        BP
       1000:d611 5f              POP        DI
       1000:d612 5e              POP        SI
       1000:d613 5a              POP        DX
       1000:d614 59              POP        CX
       1000:d615 5b              POP        BX
       1000:d616 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d617()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d617                                   XREF[1]:     FUN_1000_a6cc:1000:a757(c)  
       1000:d617 50              PUSH       AX
       1000:d618 b8 90 00        MOV        AX,0x90
       1000:d61b eb 04           JMP        LAB_1000_d621
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d61d()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d61d                                   XREF[1]:     FUN_1000_a7a5:1000:a7b1(c)  
       1000:d61d 50              PUSH       AX
       1000:d61e b8 9f 00        MOV        AX,0x9f
                             LAB_1000_d621                                   XREF[1]:     FUN_1000_d617:1000:d61b(j)  
       1000:d621 e8 4c 0c        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:d624 e8 f4 fd        CALL       FUN_1000_d41b                                    undefined FUN_1000_d41b()
       1000:d627 be 7e 1f        MOV        SI,0x1f7e
       1000:d62a 39 44 02        CMP        word ptr [SI + 0x2],AX
       1000:d62d 89 44 02        MOV        word ptr [SI + 0x2],AX
       1000:d630 74 17           JZ         LAB_1000_d649
       1000:d632 3b ee           CMP        BP,SI
       1000:d634 75 13           JNZ        LAB_1000_d649
       1000:d636 e8 79 05        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:d639 33 c9           XOR        CX,CX
       1000:d63b e8 16 fe        CALL       FUN_1000_d454                                    undefined FUN_1000_d454()
       1000:d63e e8 49 fe        CALL       FUN_1000_d48a                                    undefined FUN_1000_d48a()
       1000:d641 c6 06 e7        MOV        byte ptr [0xdce7],0xff
                 dc ff
       1000:d646 e8 a3 05        CALL       FUN_1000_dbec                                    undefined FUN_1000_dbec()
                             LAB_1000_d649                                   XREF[2]:     1000:d630(j), 1000:d634(j)  
       1000:d649 e8 37 0c        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:d64c 58              POP        AX
       1000:d64d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d64e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d64e                                   XREF[1]:     FUN_1000_ddb0:1000:ddc0(c)  
       1000:d64e 53              PUSH       BX
       1000:d64f 52              PUSH       DX
       1000:d650 33 db           XOR        BX,BX
       1000:d652 33 d2           XOR        DX,DX
       1000:d654 e8 b8 fe        CALL       FUN_1000_d50f                                    undefined FUN_1000_d50f()
       1000:d657 5a              POP        DX
       1000:d658 5b              POP        BX
       1000:d659 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d65a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d65a                                   XREF[1]:     FUN_1000_d815:1000:d91c(c)  
       1000:d65a f6 45 09 20     TEST       byte ptr [DI + 0x9],0x20
       1000:d65e 74 16           JZ         LAB_1000_d676
       1000:d660 89 3e 60 dc     MOV        word ptr [0xdc60],DI
       1000:d664 ff 45 0a        INC        word ptr [DI + 0xa]
       1000:d667 56              PUSH       SI
       1000:d668 57              PUSH       DI
       1000:d669 8b f7           MOV        SI,DI
       1000:d66b b9 01 00        MOV        CX,0x1
       1000:d66e e8 81 fb        CALL       FUN_1000_d1f2                                    undefined FUN_1000_d1f2()
       1000:d671 5f              POP        DI
       1000:d672 5e              POP        SI
       1000:d673 ff 4d 0a        DEC        word ptr [DI + 0xa]
                             LAB_1000_d676                                   XREF[1]:     1000:d65e(j)  
       1000:d676 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d694()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d694                                   XREF[1]:     FUN_1000_d6b7:1000:d6b7(c)  
       1000:d694 a1 82 25        MOV        AX,[0x2582]
       1000:d697 bf 9c 1b        MOV        DI,0x1b9c
       1000:d69a 3d 0c 26        CMP        AX,0x260c
       1000:d69d 74 16           JZ         LAB_1000_d6b5
       1000:d69f 83 c7 0e        ADD        DI,0xe
       1000:d6a2 3d 50 26        CMP        AX,0x2650
       1000:d6a5 74 0e           JZ         LAB_1000_d6b5
       1000:d6a7 83 c7 0e        ADD        DI,0xe
       1000:d6aa 3d 94 26        CMP        AX,0x2694
       1000:d6ad 74 06           JZ         LAB_1000_d6b5
       1000:d6af 83 c7 0e        ADD        DI,0xe
       1000:d6b2 3d d8 26        CMP        AX,0x26d8
                             LAB_1000_d6b5                                   XREF[3]:     1000:d69d(j), 1000:d6a5(j), 
                                                                                          1000:d6ad(j)  
       1000:d6b5 f9              STC
       1000:d6b6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d6b7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d6b7                                   XREF[2]:     FUN_1000_d815:1000:d8e6(c), 
                                                                                          FUN_1000_d815:1000:d904(c)  
       1000:d6b7 e8 da ff        CALL       FUN_1000_d694                                    undefined FUN_1000_d694()
       1000:d6ba 74 41           JZ         LAB_1000_d6fd
       1000:d6bc bf e4 1a        MOV        DI,0x1ae4
       1000:d6bf 8b 0d           MOV        CX,word ptr [DI]
       1000:d6c1 83 c7 02        ADD        DI,0x2
       1000:d6c4 81 3e 70        CMP        word ptr [0x2570],0x1ad6
                 25 d6 1a
       1000:d6ca 75 03           JNZ        LAB_1000_d6cf
       1000:d6cc 83 e9 05        SUB        CX,0x5
                             LAB_1000_d6cf                                   XREF[1]:     1000:d6ca(j)  
       1000:d6cf 80 3e d9        CMP        byte ptr [0x46d9],0x0
                 46 00
       1000:d6d4 74 06           JZ         LAB_1000_d6dc
       1000:d6d6 b9 05 00        MOV        CX,0x5
       1000:d6d9 bf 48 1b        MOV        DI,0x1b48
                             LAB_1000_d6dc                                   XREF[2]:     1000:d6d4(j), 1000:d6fa(j)  
       1000:d6dc 80 7d 08 00     CMP        byte ptr [DI + 0x8],0x0
       1000:d6e0 79 15           JNS        LAB_1000_d6f7
       1000:d6e2 3b 15           CMP        DX,word ptr [DI]
       1000:d6e4 76 11           JBE        LAB_1000_d6f7
       1000:d6e6 3b 55 04        CMP        DX,word ptr [DI + 0x4]
       1000:d6e9 73 0c           JNC        LAB_1000_d6f7
       1000:d6eb 3b 5d 02        CMP        BX,word ptr [DI + 0x2]
       1000:d6ee 76 07           JBE        LAB_1000_d6f7
       1000:d6f0 4b              DEC        BX
       1000:d6f1 3b 5d 06        CMP        BX,word ptr [DI + 0x6]
       1000:d6f4 43              INC        BX
       1000:d6f5 72 06           JC         LAB_1000_d6fd
                             LAB_1000_d6f7                                   XREF[4]:     1000:d6e0(j), 1000:d6e4(j), 
                                                                                          1000:d6e9(j), 1000:d6ee(j)  
       1000:d6f7 83 c7 0e        ADD        DI,0xe
       1000:d6fa e2 e0           LOOP       LAB_1000_d6dc
       1000:d6fc f8              CLC
                             LAB_1000_d6fd                                   XREF[2]:     1000:d6ba(j), 1000:d6f5(j)  
       1000:d6fd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d6fe()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d6fe                                   XREF[10]:    FUN_1000_1707:1000:1712(c), 
                                                                                          FUN_1000_92c9:1000:92d7(c), 
                                                                                          FUN_1000_92c9:1000:92e8(c), 
                                                                                          FUN_1000_d50f:1000:d53c(c), 
                                                                                          FUN_1000_d50f:1000:d586(c), 
                                                                                          FUN_1000_d50f:1000:d58e(c), 
                                                                                          FUN_1000_d50f:1000:d59d(c), 
                                                                                          FUN_1000_dc6a:1000:dc8c(c), 
                                                                                          FUN_1000_df1e:1000:e010(c), 
                                                                                          FUN_1000_e0a2:1000:e0b9(c)  
       1000:d6fe 3b 15           CMP        DX,word ptr [DI]
       1000:d700 76 0e           JBE        LAB_1000_d710
       1000:d702 3b 55 04        CMP        DX,word ptr [DI + 0x4]
       1000:d705 73 09           JNC        LAB_1000_d710
       1000:d707 3b 5d 02        CMP        BX,word ptr [DI + 0x2]
       1000:d70a 76 04           JBE        LAB_1000_d710
       1000:d70c 3b 5d 06        CMP        BX,word ptr [DI + 0x6]
       1000:d70f c3              RET
                             LAB_1000_d710                                   XREF[3]:     1000:d700(j), 1000:d705(j), 
                                                                                          1000:d70a(j)  
       1000:d710 f8              CLC
       1000:d711 c3              RET
                             LAB_1000_d712                                   XREF[1]:     1000:d71c(j)  
       1000:d712 be ca 1c        MOV        SI,0x1cca
       1000:d715 eb 14           JMP        FUN_1000_d72b                                    undefined FUN_1000_d72b()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d717()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d717                                   XREF[1]:     FUN_1000_4f0c:1000:4fe5(c)  
       1000:d717 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:d71c 75 f4           JNZ        LAB_1000_d712
       1000:d71e be 76 1c        MOV        SI,0x1c76
       1000:d721 f6 06 c9        TEST       byte ptr [0x11c9],0x3
                 11 03
       1000:d726 74 03           JZ         FUN_1000_d72b
       1000:d728 be 72 1d        MOV        SI,0x1d72
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d72b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d72b                                   XREF[4]:     FUN_1000_2ffb:1000:301d(c), 
                                                                                          FUN_1000_42e9:1000:432b(c), 
                                                                                          FUN_1000_d717:1000:d715(c), 
                                                                                          FUN_1000_d717:1000:d726(j)  
       1000:d72b 1e              PUSH       DS
       1000:d72c 07              POP        ES
       1000:d72d bf 8e 1b        MOV        DI,0x1b8e
       1000:d730 b9 2a 00        MOV        CX,0x2a
       1000:d733 f3 a5           MOVSW.REP  ES:DI,SI
                             LAB_1000_d735                                   XREF[2]:     FUN_1000_2ffb:1000:3070(j), 
                                                                                          FUN_1000_2ffb:1000:308d(j)  
       1000:d735 e8 09 00        CALL       FUN_1000_d741                                    undefined FUN_1000_d741()
       1000:d738 be 8e 1b        MOV        SI,0x1b8e
       1000:d73b b9 06 00        MOV        CX,0x6
       1000:d73e e9 b1 fa        JMP        FUN_1000_d1f2                                    undefined FUN_1000_d1f2()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d741()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d741                                   XREF[2]:     FUN_1000_0d8e:1000:0e2a(c), 
                                                                                          FUN_1000_d72b:1000:d735(c)  
       1000:d741 a1 0c 1b        MOV        AX,[0x1b0c]
       1000:d744 2d 03 00        SUB        AX,0x3
       1000:d747 3d 03 00        CMP        AX,0x3
       1000:d74a 73 0d           JNC        LAB_1000_d759
       1000:d74c be 58 24        MOV        SI,0x2458
       1000:d74f 8e 06 d8 db     MOV        ES,word ptr [0xdbd8]
       1000:d753 b0 f0           MOV        AL,0xf0
       1000:d755 ff 1e dd 38     CALLF      [0x38dd]
                             LAB_1000_d759                                   XREF[1]:     1000:d74a(j)  
       1000:d759 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d763()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d763                                   XREF[3]:     FUN_1000_0fa7:1000:0faf(c), 
                                                                                          FUN_1000_9655:1000:9670(c), 
                                                                                          FUN_1000_d7b7:1000:d806(c)  
       1000:d763 be 0c 1c        MOV        SI,0x1c0c
       1000:d766 b8 40 00        MOV        AX,0x40
       1000:d769 89 44 0a        MOV        word ptr [SI + 0xa],AX
       1000:d76c 89 44 18        MOV        word ptr [SI + 0x18],AX
       1000:d76f b9 02 00        MOV        CX,0x2
       1000:d772 e8 7d fa        CALL       FUN_1000_d1f2                                    undefined FUN_1000_d1f2()
       1000:d775 be 0c 1c        MOV        SI,0x1c0c
       1000:d778 a0 52 11        MOV        AL,[0x1152]
       1000:d77b 98              CBW
       1000:d77c 05 41 00        ADD        AX,0x41
       1000:d77f 89 44 0a        MOV        word ptr [SI + 0xa],AX
       1000:d782 a0 53 11        MOV        AL,[0x1153]
       1000:d785 98              CBW
       1000:d786 05 41 00        ADD        AX,0x41
       1000:d789 89 44 18        MOV        word ptr [SI + 0x18],AX
       1000:d78c b9 02 00        MOV        CX,0x2
       1000:d78f e9 60 fa        JMP        FUN_1000_d1f2                                    undefined FUN_1000_d1f2()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d7b7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d7b7                                   XREF[1]:     FUN_1000_d815:1000:d838(c)  
       1000:d7b7 a1 7a ce        MOV        AX,[0xce7a]
       1000:d7ba d1 e0           SHL        AX,0x1
       1000:d7bc d1 e0           SHL        AX,0x1
       1000:d7be 3a 26 f1 dc     CMP        AH,byte ptr [0xdcf1]
       1000:d7c2 74 50           JZ         LAB_1000_d814
       1000:d7c4 88 26 f1 dc     MOV        byte ptr [0xdcf1],AH
       1000:d7c8 a1 22 22        MOV        AX,[0x2222]
       1000:d7cb 0b c0           OR         AX,AX
       1000:d7cd 74 45           JZ         LAB_1000_d814
       1000:d7cf 8b 1e 52 11     MOV        BX,word ptr [0x1152]
       1000:d7d3 53              PUSH       BX
       1000:d7d4 0a c0           OR         AL,AL
       1000:d7d6 74 08           JZ         LAB_1000_d7e0
       1000:d7d8 fe c8           DEC        AL
       1000:d7da a8 01           TEST       AL,0x1
       1000:d7dc 74 02           JZ         LAB_1000_d7e0
       1000:d7de b3 ff           MOV        BL,0xff
                             LAB_1000_d7e0                                   XREF[2]:     1000:d7d6(j), 1000:d7dc(j)  
       1000:d7e0 0a e4           OR         AH,AH
       1000:d7e2 74 09           JZ         LAB_1000_d7ed
       1000:d7e4 fe cc           DEC        AH
       1000:d7e6 f6 c4 01        TEST       AH,0x1
       1000:d7e9 74 02           JZ         LAB_1000_d7ed
       1000:d7eb b7 ff           MOV        BH,0xff
                             LAB_1000_d7ed                                   XREF[2]:     1000:d7e2(j), 1000:d7e9(j)  
       1000:d7ed a3 22 22        MOV        [0x2222],AX
       1000:d7f0 89 1e 52 11     MOV        word ptr [0x1152],BX
       1000:d7f4 81 3e fe        CMP        word ptr [0x1afe],0x0
                 1a 00 00
       1000:d7fa 75 14           JNZ        LAB_1000_d810
       1000:d7fc ff 36 84 27     PUSH       word ptr [0x2784]
       1000:d800 e8 34 e9        CALL       FUN_1000_c137                                    undefined FUN_1000_c137()
       1000:d803 e8 ac 03        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:d806 e8 5a ff        CALL       FUN_1000_d763                                    undefined FUN_1000_d763()
       1000:d809 e8 e0 03        CALL       FUN_1000_dbec                                    undefined FUN_1000_dbec()
       1000:d80c 58              POP        AX
       1000:d80d e8 2e e9        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
                             LAB_1000_d810                                   XREF[1]:     1000:d7fa(j)  
       1000:d810 8f 06 52 11     POP        word ptr [0x1152]
                             LAB_1000_d814                                   XREF[2]:     1000:d7c2(j), 1000:d7cd(j)  
       1000:d814 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d815()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d815                                   XREF[1]:     entry:1000:0037(c)  
       1000:d815 a1 7a ce        MOV        AX,[0xce7a]
       1000:d818 a3 68 dc        MOV        [0xdc68],AX
       1000:d81b c6 06 4b        MOV        byte ptr [0xdc4b],0x0
                 dc 00
                             LAB_1000_d820                                   XREF[6]:     1000:d891(j), 1000:d8ae(j), 
                                                                                          1000:d8d7(j), 1000:d914(j), 
                                                                                          1000:d941(j), 1000:d958(j)  
       1000:d820 80 3e e8        CMP        byte ptr [0xcee8],0x2f
                 ce 2f
       1000:d825 75 0a           JNZ        LAB_1000_d831
       1000:d827 80 3e 9e        CMP        byte ptr [0xce9e],0xff
                 ce ff
       1000:d82c 75 03           JNZ        LAB_1000_d831
       1000:d82e e8 3f da        CALL       FUN_1000_b270                                    undefined FUN_1000_b270()
                             LAB_1000_d831                                   XREF[2]:     1000:d825(j), 1000:d82c(j)  
       1000:d831 80 3e d9        CMP        byte ptr [0x46d9],0x0
                 46 00
       1000:d836 75 06           JNZ        LAB_1000_d83e
       1000:d838 e8 7c ff        CALL       FUN_1000_d7b7                                    undefined FUN_1000_d7b7()
       1000:d83b e8 cf 42        CALL       FUN_1000_1b0d                                    undefined FUN_1000_1b0d()
                             LAB_1000_d83e                                   XREF[1]:     1000:d836(j)  
       1000:d83e e8 91 01        CALL       FUN_1000_d9d2                                    undefined FUN_1000_d9d2()
       1000:d841 80 3e d9        CMP        byte ptr [0x46d9],0x0
                 46 00
       1000:d846 74 03           JZ         LAB_1000_d84b
       1000:d848 e8 43 35        CALL       FUN_1000_0d8e                                    undefined FUN_1000_0d8e()
                             LAB_1000_d84b                                   XREF[1]:     1000:d846(j)  
       1000:d84b e8 7e 0b        CALL       FUN_1000_e3cc                                    undefined FUN_1000_e3cc()
       1000:d84e a3 00 00        MOV        [0x0],AX
       1000:d851 e8 b8 76        CALL       FUN_1000_4f0c                                    undefined FUN_1000_4f0c()
       1000:d854 80 3e 4b        CMP        byte ptr [0xdc4b],0x0
                 dc 00
       1000:d859 74 05           JZ         LAB_1000_d860
       1000:d85b e8 04 01        CALL       FUN_1000_d962                                    undefined FUN_1000_d962()
       1000:d85e eb 06           JMP        LAB_1000_d866
                             LAB_1000_d860                                   XREF[1]:     1000:d859(j)  
       1000:d860 e8 bb 06        CALL       FUN_1000_df1e                                    undefined FUN_1000_df1e()
       1000:d863 e8 e6 02        CALL       FUN_1000_db4c                                    undefined FUN_1000_db4c()
                             LAB_1000_d866                                   XREF[1]:     1000:d85e(j)  
       1000:d866 e8 b7 03        CALL       FUN_1000_dc20                                    undefined FUN_1000_dc20()
       1000:d869 8b fa           MOV        DI,DX
       1000:d86b 87 3e 62 dc     XCHG       word ptr [0xdc62],DI
       1000:d86f 8b cb           MOV        CX,BX
       1000:d871 87 0e 64 dc     XCHG       word ptr [0xdc64],CX
       1000:d875 2b fa           SUB        DI,DX
       1000:d877 2b cb           SUB        CX,BX
       1000:d879 f7 df           NEG        DI
       1000:d87b f7 d9           NEG        CX
       1000:d87d 8b 36 70 25     MOV        SI,word ptr [0x2570]
       1000:d881 25 0f 00        AND        AX,0xf
       1000:d884 75 0d           JNZ        LAB_1000_d893
       1000:d886 e8 86 fc        CALL       FUN_1000_d50f                                    undefined FUN_1000_d50f()
       1000:d889 8b c1           MOV        AX,CX
       1000:d88b 0b c7           OR         AX,DI
       1000:d88d 74 00           JZ         LAB_1000_d88f
                             LAB_1000_d88f                                   XREF[1]:     1000:d88d(j)  
       1000:d88f ff 14           CALL       word ptr [SI]
       1000:d891 eb 8d           JMP        LAB_1000_d820
                             LAB_1000_d893                                   XREF[1]:     1000:d884(j)  
       1000:d893 8b 2e 7a ce     MOV        BP,word ptr [0xce7a]
       1000:d897 89 2e 5a dc     MOV        word ptr [0xdc5a],BP
       1000:d89b 80 3e 74        CMP        byte ptr [0x4774],0x0
                 47 00
       1000:d8a0 74 0f           JZ         LAB_1000_d8b1
       1000:d8a2 24 05           AND        AL,0x5
       1000:d8a4 3c 05           CMP        AL,0x5
       1000:d8a6 75 2f           JNZ        LAB_1000_d8d7
       1000:d8a8 e8 07 03        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:d8ab e8 59 3e        CALL       FUN_1000_1707                                    undefined FUN_1000_1707()
       1000:d8ae e9 6f ff        JMP        LAB_1000_d820
                             LAB_1000_d8b1                                   XREF[1]:     1000:d8a0(j)  
       1000:d8b1 a8 05           TEST       AL,0x5
       1000:d8b3 75 05           JNZ        LAB_1000_d8ba
       1000:d8b5 83 c6 02        ADD        SI,0x2
       1000:d8b8 d1 e8           SHR        AX,0x1
                             LAB_1000_d8ba                                   XREF[1]:     1000:d8b3(j)  
       1000:d8ba 24 05           AND        AL,0x5
       1000:d8bc fe c8           DEC        AL
       1000:d8be 75 34           JNZ        LAB_1000_d8f4
       1000:d8c0 8b 2e 5c dc     MOV        BP,word ptr [0xdc5c]
       1000:d8c4 0b ed           OR         BP,BP
       1000:d8c6 75 12           JNZ        LAB_1000_d8da
       1000:d8c8 8b c1           MOV        AX,CX
       1000:d8ca 0b c7           OR         AX,DI
       1000:d8cc 74 09           JZ         LAB_1000_d8d7
       1000:d8ce e8 e1 02        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:d8d1 a0 35 dc        MOV        AL,[0xdc35]
       1000:d8d4 ff 54 0a        CALL       word ptr [SI + 0xa]
                             LAB_1000_d8d7                                   XREF[5]:     1000:d8a6(j), 1000:d8cc(j), 
                                                                                          1000:d8e4(j), 1000:d8e9(j), 
                                                                                          1000:d8ed(j)  
       1000:d8d7 e9 46 ff        JMP        LAB_1000_d820
                             LAB_1000_d8da                                   XREF[1]:     1000:d8c6(j)  
       1000:d8da a1 7a ce        MOV        AX,[0xce7a]
       1000:d8dd 2b 06 5e dc     SUB        AX,word ptr [0xdc5e]
       1000:d8e1 3d 32 00        CMP        AX,0x32
       1000:d8e4 72 f1           JC         LAB_1000_d8d7
       1000:d8e6 e8 ce fd        CALL       FUN_1000_d6b7                                    undefined FUN_1000_d6b7()
       1000:d8e9 73 ec           JNC        LAB_1000_d8d7
       1000:d8eb 3b fd           CMP        DI,BP
       1000:d8ed 75 e8           JNZ        LAB_1000_d8d7
       1000:d8ef e8 c0 02        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:d8f2 eb 37           JMP        LAB_1000_d92b
                             LAB_1000_d8f4                                   XREF[1]:     1000:d8be(j)  
       1000:d8f4 e8 bb 02        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:d8f7 e8 75 09        CALL       FUN_1000_e26f                                    undefined FUN_1000_e26f()
       1000:d8fa 2c 03           SUB        AL,0x3
       1000:d8fc 74 46           JZ         LAB_1000_d944
       1000:d8fe 3b 36 70 25     CMP        SI,word ptr [0x2570]
       1000:d902 75 0a           JNZ        LAB_1000_d90e
       1000:d904 e8 b0 fd        CALL       FUN_1000_d6b7                                    undefined FUN_1000_d6b7()
       1000:d907 72 0f           JC         LAB_1000_d918
       1000:d909 56              PUSH       SI
       1000:d90a e8 08 b9        CALL       FUN_1000_9215                                    undefined FUN_1000_9215()
       1000:d90d 5e              POP        SI
                             LAB_1000_d90e                                   XREF[1]:     1000:d902(j)  
       1000:d90e a0 35 dc        MOV        AL,[0xdc35]
       1000:d911 ff 54 02        CALL       word ptr [SI + 0x2]
       1000:d914 e9 09 ff        JMP        LAB_1000_d820
                             LAB_1000_d918                                   XREF[1]:     1000:d907(j)  
       1000:d918 89 3e 60 dc     MOV        word ptr [0xdc60],DI
       1000:d91c e8 3b fd        CALL       FUN_1000_d65a                                    undefined FUN_1000_d65a()
       1000:d91f f6 45 09 40     TEST       byte ptr [DI + 0x9],0x40
       1000:d923 74 06           JZ         LAB_1000_d92b
       1000:d925 89 3e 5c dc     MOV        word ptr [0xdc5c],DI
       1000:d929 eb 0a           JMP        LAB_1000_d935
                             LAB_1000_d92b                                   XREF[3]:     1000:d8f2(j), 1000:d923(j), 
                                                                                          1000:d950(j)  
       1000:d92b c6 06 9d        MOV        byte ptr [0xce9d],0x0
                 ce 00
       1000:d930 c6 06 ba        MOV        byte ptr [0xceba],0x0
                 ce 00
                             LAB_1000_d935                                   XREF[1]:     1000:d929(j)  
       1000:d935 a1 7a ce        MOV        AX,[0xce7a]
       1000:d938 a3 5e dc        MOV        [0xdc5e],AX
       1000:d93b a0 35 dc        MOV        AL,[0xdc35]
       1000:d93e ff 55 0c        CALL       word ptr [DI + 0xc]
       1000:d941 e9 dc fe        JMP        LAB_1000_d820
                             LAB_1000_d944                                   XREF[1]:     1000:d8fc(j)  
       1000:d944 8b 3e 5c dc     MOV        DI,word ptr [0xdc5c]
       1000:d948 c7 06 5c        MOV        word ptr [0xdc5c],0x0
                 dc 00 00
       1000:d94e 0b ff           OR         DI,DI
       1000:d950 75 d9           JNZ        LAB_1000_d92b
       1000:d952 a0 35 dc        MOV        AL,[0xdc35]
       1000:d955 ff 54 06        CALL       word ptr [SI + 0x6]
       1000:d958 e9 c5 fe        JMP        LAB_1000_d820
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d95b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d95b                                   XREF[1]:     FUN_1000_2db1:1000:2db7(c)  
       1000:d95b b8 72 25        MOV        AX,0x2572
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d95e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d95e                                   XREF[1]:     FUN_1000_42e9:1000:4314(c)  
       1000:d95e a3 70 25        MOV        [0x2570],AX
       1000:d961 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_d962()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d962                                   XREF[1]:     FUN_1000_d815:1000:d85b(c)  
       1000:d962 a1 7a ce        MOV        AX,[0xce7a]
       1000:d965 2a 06 4a dc     SUB        AL,byte ptr [0xdc4a]
       1000:d969 3c 06           CMP        AL,0x6
       1000:d96b 72 62           JC         LAB_1000_d9cf
       1000:d96d b9 02 00        MOV        CX,0x2
       1000:d970 3c 0c           CMP        AL,0xc
       1000:d972 72 06           JC         LAB_1000_d97a
       1000:d974 49              DEC        CX
       1000:d975 3c 18           CMP        AL,0x18
       1000:d977 72 01           JC         LAB_1000_d97a
       1000:d979 49              DEC        CX
                             LAB_1000_d97a                                   XREF[2]:     1000:d972(j), 1000:d977(j)  
       1000:d97a a1 7a ce        MOV        AX,[0xce7a]
       1000:d97d a2 4a dc        MOV        [0xdc4a],AL
       1000:d980 fe 0e 4b dc     DEC        byte ptr [0xdc4b]
       1000:d984 8b 16 4c dc     MOV        DX,word ptr [0xdc4c]
       1000:d988 8b 1e 4e dc     MOV        BX,word ptr [0xdc4e]
       1000:d98c 2b 16 36 dc     SUB        DX,word ptr [0xdc36]
       1000:d990 74 11           JZ         LAB_1000_d9a3
       1000:d992 e3 07           JCXZ       LAB_1000_d99b
       1000:d994 d3 fa           SAR        DX,CL
       1000:d996 80 ca 01        OR         DL,0x1
       1000:d999 eb 08           JMP        LAB_1000_d9a3
                             LAB_1000_d99b                                   XREF[1]:     1000:d992(j)  
       1000:d99b 8b c2           MOV        AX,DX
       1000:d99d d1 f8           SAR        AX,0x1
       1000:d99f d1 f8           SAR        AX,0x1
       1000:d9a1 2b d0           SUB        DX,AX
                             LAB_1000_d9a3                                   XREF[2]:     1000:d990(j), 1000:d999(j)  
       1000:d9a3 2b 1e 38 dc     SUB        BX,word ptr [0xdc38]
       1000:d9a7 74 11           JZ         LAB_1000_d9ba
       1000:d9a9 e3 07           JCXZ       LAB_1000_d9b2
       1000:d9ab d3 fb           SAR        BX,CL
       1000:d9ad 80 cb 01        OR         BL,0x1
       1000:d9b0 eb 08           JMP        LAB_1000_d9ba
                             LAB_1000_d9b2                                   XREF[1]:     1000:d9a9(j)  
       1000:d9b2 8b c3           MOV        AX,BX
       1000:d9b4 d1 f8           SAR        AX,0x1
       1000:d9b6 d1 f8           SAR        AX,0x1
       1000:d9b8 2b d8           SUB        BX,AX
                             LAB_1000_d9ba                                   XREF[2]:     1000:d9a7(j), 1000:d9b0(j)  
       1000:d9ba 8b c3           MOV        AX,BX
       1000:d9bc 0b c2           OR         AX,DX
       1000:d9be 75 07           JNZ        LAB_1000_d9c7
       1000:d9c0 c6 06 4b        MOV        byte ptr [0xdc4b],0x0
                 dc 00
       1000:d9c5 eb 08           JMP        LAB_1000_d9cf
                             LAB_1000_d9c7                                   XREF[1]:     1000:d9be(j)  
       1000:d9c7 e8 e5 00        CALL       FUN_1000_daaf                                    undefined FUN_1000_daaf()
       1000:d9ca c6 06 34        MOV        byte ptr [0xdc34],0x0
                 dc 00
                             LAB_1000_d9cf                                   XREF[2]:     1000:d96b(j), 1000:d9c5(j)  
       1000:d9cf e9 7a 01        JMP        FUN_1000_db4c                                    undefined FUN_1000_db4c()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_d9d2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_d9d2                                   XREF[3]:     FUN_1000_d815:1000:d83e(c), 
                                                                                          FUN_1000_dd63:1000:dda6(c), 
                                                                                          FUN_1000_e3a0:1000:e3ae(c)  
       1000:d9d2 e8 11 d3        CALL       FUN_1000_ace6                                    undefined FUN_1000_ace6()
       1000:d9d5 a1 7a ce        MOV        AX,[0xce7a]
       1000:d9d8 8b c8           MOV        CX,AX
       1000:d9da 8b d8           MOV        BX,AX
       1000:d9dc be 68 dc        MOV        SI,0xdc68
       1000:d9df 87 0c           XCHG       word ptr [SI],CX
       1000:d9e1 2b d9           SUB        BX,CX
       1000:d9e3 8b 4c 02        MOV        CX,word ptr [SI + 0x2]
       1000:d9e6 e3 1b           JCXZ       LAB_1000_da03
       1000:d9e8 83 c6 04        ADD        SI,0x4
                             LAB_1000_d9eb                                   XREF[2]:     1000:d9fb(j), 1000:da21(j)  
       1000:d9eb ad              LODSW      SI
       1000:d9ec 8b e8           MOV        BP,AX
       1000:d9ee 8b c3           MOV        AX,BX
       1000:d9f0 03 04           ADD        AX,word ptr [SI]
       1000:d9f2 3b c5           CMP        AX,BP
       1000:d9f4 73 0e           JNC        LAB_1000_da04
       1000:d9f6 89 04           MOV        word ptr [SI],AX
       1000:d9f8 83 c6 04        ADD        SI,0x4
       1000:d9fb e2 ee           LOOP       LAB_1000_d9eb
                             LAB_1000_d9fd                                   XREF[1]:     1000:da23(j)  
       1000:d9fd c7 06 66        MOV        word ptr [0xdc66],0x0
                 dc 00 00
                             LAB_1000_da03                                   XREF[1]:     1000:d9e6(j)  
       1000:da03 c3              RET
                             LAB_1000_da04                                   XREF[1]:     1000:d9f4(j)  
       1000:da04 0b ed           OR         BP,BP
       1000:da06 74 06           JZ         LAB_1000_da0e
       1000:da08 33 d2           XOR        DX,DX
       1000:da0a f7 f5           DIV        BP
       1000:da0c 89 14           MOV        word ptr [SI],DX
                             LAB_1000_da0e                                   XREF[1]:     1000:da06(j)  
       1000:da0e 83 ee 02        SUB        SI,0x2
       1000:da11 53              PUSH       BX
       1000:da12 51              PUSH       CX
       1000:da13 56              PUSH       SI
       1000:da14 89 26 66 dc     MOV        word ptr [0xdc66],SP
       1000:da18 ff 54 04        CALL       word ptr [SI + 0x4]
       1000:da1b 5e              POP        SI
       1000:da1c 59              POP        CX
       1000:da1d 5b              POP        BX
       1000:da1e 83 c6 06        ADD        SI,0x6
       1000:da21 e2 c8           LOOP       LAB_1000_d9eb
       1000:da23 eb d8           JMP        LAB_1000_d9fd
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_da25()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_da25                                   XREF[10]:    FUN_1000_0acd:1000:0b16(c), 
                                                                                          FUN_1000_1771:1000:1794(c), 
                                                                                          FUN_1000_38f1:1000:3907(c), 
                                                                                          FUN_1000_3a7c:1000:3a91(c), 
                                                                                          FUN_1000_445d:1000:44a3(c), 
                                                                                          FUN_1000_4658:1000:4694(c), 
                                                                                          FUN_1000_4d06:1000:4d53(c), 
                                                                                          FUN_1000_9945:1000:994b(c), 
                                                                                          FUN_1000_a75c:1000:a765(c), 
                                                                                          FUN_1000_ab4f:1000:ab83(c)  
       1000:da25 1e              PUSH       DS
       1000:da26 07              POP        ES
       1000:da27 bf 6a dc        MOV        DI,0xdc6a
       1000:da2a 8b 05           MOV        AX,word ptr [DI]
       1000:da2c 40              INC        AX
       1000:da2d 3d 14 00        CMP        AX,0x14
       1000:da30 77 20           JA         LAB_1000_da52
       1000:da32 ab              STOSW      ES:DI
       1000:da33 48              DEC        AX
       1000:da34 03 c0           ADD        AX,AX
       1000:da36 8b d8           MOV        BX,AX
       1000:da38 03 c0           ADD        AX,AX
       1000:da3a 03 c3           ADD        AX,BX
       1000:da3c 03 f8           ADD        DI,AX
       1000:da3e 8b c5           MOV        AX,BP
       1000:da40 ab              STOSW      ES:DI
       1000:da41 33 c0           XOR        AX,AX
       1000:da43 ab              STOSW      ES:DI
       1000:da44 8b c6           MOV        AX,SI
       1000:da46 ab              STOSW      ES:DI
       1000:da47 8b 2e 66 dc     MOV        BP,word ptr [0xdc66]
       1000:da4b 0b ed           OR         BP,BP
       1000:da4d 74 03           JZ         LAB_1000_da52
       1000:da4f ff 46 02        INC        word ptr [BP + 0x2]
                             LAB_1000_da52                                   XREF[2]:     1000:da30(j), 1000:da4d(j)  
       1000:da52 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_da53()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_da53                                   XREF[2]:     FUN_1000_00b0:1000:00b6(c), 
                                                                                          FUN_1000_0d8e:1000:0dee(c)  
       1000:da53 c7 06 6a        MOV        word ptr [0xdc6a],0x0
                 dc 00 00
       1000:da59 c6 06 d7        MOV        byte ptr [0x46d7],0x0
                 46 00
       1000:da5e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_da5f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_da5f                                   XREF[19]:    FUN_1000_0911:1000:092d(c), 
                                                                                          FUN_1000_0911:1000:0933(c), 
                                                                                          FUN_1000_0911:1000:093c(c), 
                                                                                          FUN_1000_0a3e:1000:0a41(c), 
                                                                                          FUN_1000_0acd:1000:0b0d(c), 
                                                                                          FUN_1000_0b21:1000:0b2d(c), 
                                                                                          FUN_1000_1707:1000:1739(c), 
                                                                                          FUN_1000_2b2a:1000:2c6c(c), 
                                                                                          FUN_1000_3950:1000:3958(c), 
                                                                                          FUN_1000_39e6:1000:39e9(c), 
                                                                                          FUN_1000_445d:1000:4460(c), 
                                                                                          FUN_1000_4d00:1000:4d03(c), 
                                                                                          FUN_1000_5adf:1000:5b02(c), 
                                                                                          FUN_1000_9b8b:1000:9ba8(c), 
                                                                                          FUN_1000_a7a5:1000:a7a8(c), 
                                                                                          FUN_1000_ab92:1000:aba0(c), 
                                                                                          FUN_1000_ac14:1000:ac1e(c), 
                                                                                          FUN_1000_b930:1000:b938(c), 
                                                                                          FUN_1000_b930:1000:b93e(c)  
       1000:da5f bf 6a dc        MOV        DI,0xdc6a
       1000:da62 8b 0d           MOV        CX,word ptr [DI]
       1000:da64 e3 0c           JCXZ       LAB_1000_da72
       1000:da66 83 c7 06        ADD        DI,0x6
                             LAB_1000_da69                                   XREF[1]:     1000:da70(j)  
       1000:da69 39 35           CMP        word ptr [DI],SI
       1000:da6b 74 06           JZ         LAB_1000_da73
       1000:da6d 83 c7 06        ADD        DI,0x6
       1000:da70 e2 f7           LOOP       LAB_1000_da69
                             LAB_1000_da72                                   XREF[2]:     1000:da64(j), 1000:da91(j)  
       1000:da72 c3              RET
                             LAB_1000_da73                                   XREF[1]:     1000:da6b(j)  
       1000:da73 83 ef 04        SUB        DI,0x4
       1000:da76 ff 0e 6a dc     DEC        word ptr [0xdc6a]
       1000:da7a 8b 2e 66 dc     MOV        BP,word ptr [0xdc66]
       1000:da7e 0b ed           OR         BP,BP
       1000:da80 74 0e           JZ         LAB_1000_da90
       1000:da82 3b 7e 00        CMP        DI,word ptr [BP + 0x0]
       1000:da85 77 06           JA         LAB_1000_da8d
       1000:da87 83 6e 00 06     SUB        word ptr [BP + 0x0],0x6
       1000:da8b eb 03           JMP        LAB_1000_da90
                             LAB_1000_da8d                                   XREF[1]:     1000:da85(j)  
       1000:da8d ff 4e 02        DEC        word ptr [BP + 0x2]
                             LAB_1000_da90                                   XREF[2]:     1000:da80(j), 1000:da8b(j)  
       1000:da90 49              DEC        CX
       1000:da91 74 df           JZ         LAB_1000_da72
       1000:da93 8b c1           MOV        AX,CX
       1000:da95 03 c9           ADD        CX,CX
       1000:da97 03 c8           ADD        CX,AX
       1000:da99 8b f7           MOV        SI,DI
       1000:da9b 83 c6 06        ADD        SI,0x6
       1000:da9e 1e              PUSH       DS
       1000:da9f 07              POP        ES
       1000:daa0 f3 a5           MOVSW.REP  ES:DI,SI
       1000:daa2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_daa3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_daa3                                   XREF[1]:     FUN_1000_1860:1000:186b(c)  
       1000:daa3 c7 06 58        MOV        word ptr [0xdc58],0x0
                 dc 00 00
       1000:daa9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_daaa()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_daaa                                   XREF[2]:     FUN_1000_42e9:1000:4334(c), 
                                                                                          FUN_1000_542f:1000:5578(c)  
       1000:daaa 89 36 58 dc     MOV        word ptr [0xdc58],SI
       1000:daae c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_daaf()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_daaf                                   XREF[2]:     FUN_1000_d962:1000:d9c7(c), 
                                                                                          FUN_1000_e1d1:1000:e240(c)  
       1000:daaf be 3a dc        MOV        SI,0xdc3a
       1000:dab2 a1 36 dc        MOV        AX,[0xdc36]
       1000:dab5 03 c2           ADD        AX,DX
       1000:dab7 3b 04           CMP        AX,word ptr [SI]
       1000:dab9 7d 02           JGE        LAB_1000_dabd
       1000:dabb 8b 04           MOV        AX,word ptr [SI]
                             LAB_1000_dabd                                   XREF[1]:     1000:dab9(j)  
       1000:dabd 83 c6 02        ADD        SI,0x2
       1000:dac0 3b 04           CMP        AX,word ptr [SI]
       1000:dac2 7e 02           JLE        LAB_1000_dac6
       1000:dac4 8b 04           MOV        AX,word ptr [SI]
                             LAB_1000_dac6                                   XREF[1]:     1000:dac2(j)  
       1000:dac6 a3 36 dc        MOV        [0xdc36],AX
       1000:dac9 83 c6 02        ADD        SI,0x2
       1000:dacc a1 38 dc        MOV        AX,[0xdc38]
       1000:dacf 03 c3           ADD        AX,BX
       1000:dad1 3b 04           CMP        AX,word ptr [SI]
       1000:dad3 7d 02           JGE        LAB_1000_dad7
       1000:dad5 8b 04           MOV        AX,word ptr [SI]
                             LAB_1000_dad7                                   XREF[1]:     1000:dad3(j)  
       1000:dad7 83 c6 02        ADD        SI,0x2
       1000:dada 3b 04           CMP        AX,word ptr [SI]
       1000:dadc 7e 02           JLE        LAB_1000_dae0
       1000:dade 8b 04           MOV        AX,word ptr [SI]
                             LAB_1000_dae0                                   XREF[1]:     1000:dadc(j)  
       1000:dae0 a3 38 dc        MOV        [0xdc38],AX
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dae3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dae3                                   XREF[1]:     FUN_1000_db03:1000:db0e(c)  
       1000:dae3 f6 06 42        TEST       byte ptr [0x2942],0x40
                 29 40
       1000:dae8 75 18           JNZ        LAB_1000_db02
       1000:daea a1 36 dc        MOV        AX,[0xdc36]
       1000:daed 8b 16 38 dc     MOV        DX,word ptr [0xdc38]
       1000:daf1 8b 0e 80 25     MOV        CX,word ptr [0x2580]
       1000:daf5 d3 e0           SHL        AX,CL
       1000:daf7 8a cd           MOV        CL,CH
       1000:daf9 d3 e2           SHL        DX,CL
       1000:dafb 8b c8           MOV        CX,AX
       1000:dafd b8 04 00        MOV        AX,0x4
       1000:db00 cd 33           INT        0x33
                             LAB_1000_db02                                   XREF[1]:     1000:dae8(j)  
       1000:db02 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_db03()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_db03                                   XREF[1]:     FUN_1000_e594:1000:e662(c)  
       1000:db03 e8 ac 00        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:db06 89 16 36 dc     MOV        word ptr [0xdc36],DX
       1000:db0a 89 1e 38 dc     MOV        word ptr [0xdc38],BX
       1000:db0e e8 d2 ff        CALL       FUN_1000_dae3                                    undefined FUN_1000_dae3()
       1000:db11 e9 d8 00        JMP        FUN_1000_dbec                                    undefined FUN_1000_dbec()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_db14()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_db14                                   XREF[1]:     FUN_1000_e594:1000:e659(c)  
       1000:db14 bf 3a dc        MOV        DI,0xdc3a
       1000:db17 89 0d           MOV        word ptr [DI],CX
       1000:db19 89 55 02        MOV        word ptr [DI + 0x2],DX
       1000:db1c 89 45 04        MOV        word ptr [DI + 0x4],AX
       1000:db1f 89 5d 06        MOV        word ptr [DI + 0x6],BX
       1000:db22 f6 06 42        TEST       byte ptr [0x2942],0x40
                 29 40
       1000:db27 75 1a           JNZ        LAB_1000_db43
       1000:db29 50              PUSH       AX
       1000:db2a 53              PUSH       BX
       1000:db2b a0 80 25        MOV        AL,[0x2580]
       1000:db2e e8 13 00        CALL       FUN_1000_db44                                    undefined FUN_1000_db44()
       1000:db31 b8 07 00        MOV        AX,0x7
       1000:db34 cd 33           INT        0x33
       1000:db36 5a              POP        DX
       1000:db37 59              POP        CX
       1000:db38 a0 81 25        MOV        AL,[0x2581]
       1000:db3b e8 06 00        CALL       FUN_1000_db44                                    undefined FUN_1000_db44()
       1000:db3e b8 08 00        MOV        AX,0x8
       1000:db41 cd 33           INT        0x33
                             LAB_1000_db43                                   XREF[1]:     1000:db27(j)  
       1000:db43 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_db44()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_db44                                   XREF[2]:     FUN_1000_db14:1000:db2e(c), 
                                                                                          FUN_1000_db14:1000:db3b(c)  
       1000:db44 91              XCHG       AX,CX
       1000:db45 d3 e0           SHL        AX,CL
       1000:db47 d3 e2           SHL        DX,CL
       1000:db49 8b c8           MOV        CX,AX
       1000:db4b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_db4c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_db4c                                   XREF[2]:     FUN_1000_d815:1000:d863(c), 
                                                                                          FUN_1000_d962:1000:d9cf(c)  
       1000:db4c a1 34 dc        MOV        AX,[0xdc34]
       1000:db4f 24 03           AND        AL,0x3
       1000:db51 a2 35 dc        MOV        [0xdc35],AL
       1000:db54 32 e0           XOR        AH,AL
       1000:db56 02 e4           ADD        AH,AH
       1000:db58 02 e4           ADD        AH,AH
       1000:db5a 0a c4           OR         AL,AH
       1000:db5c 32 e4           XOR        AH,AH
       1000:db5e 8b 16 36 dc     MOV        DX,word ptr [0xdc36]
       1000:db62 8b 1e 38 dc     MOV        BX,word ptr [0xdc38]
       1000:db66 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_db67()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_db67                                   XREF[6]:     FUN_1000_445d:1000:450b(c), 
                                                                                          FUN_1000_99da:1000:9a19(c), 
                                                                                          FUN_1000_9de3:1000:9e54(c), 
                                                                                          FUN_1000_9de3:1000:9e71(c), 
                                                                                          FUN_1000_9de3:1000:9ec6(c), 
                                                                                          FUN_1000_9de3:1000:9ed2(c)  
       1000:db67 80 3e 47        CMP        byte ptr [0xdc47],0x0
                 dc 00
       1000:db6c 79 3d           JNS        LAB_1000_dbab
       1000:db6e fe 06 47 dc     INC        byte ptr [0xdc47]
       1000:db72 eb 78           JMP        FUN_1000_dbec                                    undefined FUN_1000_dbec()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_db74()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_db74                                   XREF[6]:     FUN_1000_445d:1000:44bf(c), 
                                                                                          FUN_1000_4a1a:1000:4a24(c), 
                                                                                          FUN_1000_99da:1000:9a13(c), 
                                                                                          FUN_1000_9de3:1000:9e4e(c), 
                                                                                          FUN_1000_9de3:1000:9e5a(c), 
                                                                                          FUN_1000_9de3:1000:9e96(c)  
       1000:db74 80 3e 46        CMP        byte ptr [0xdc46],0x0
                 dc 00
       1000:db79 78 30           JS         LAB_1000_dbab
       1000:db7b 53              PUSH       BX
       1000:db7c 52              PUSH       DX
       1000:db7d 8b 1e 82 25     MOV        BX,word ptr [0x2582]
       1000:db81 8b 16 42 dc     MOV        DX,word ptr [0xdc42]
       1000:db85 2b 17           SUB        DX,word ptr [BX]
       1000:db87 8b 5f 02        MOV        BX,word ptr [BX + 0x2]
       1000:db8a f7 db           NEG        BX
       1000:db8c 03 1e 44 dc     ADD        BX,word ptr [0xdc44]
       1000:db90 3b 54 04        CMP        DX,word ptr [SI + 0x4]
       1000:db93 7d 14           JGE        LAB_1000_dba9
       1000:db95 3b 5c 06        CMP        BX,word ptr [SI + 0x6]
       1000:db98 7d 0f           JGE        LAB_1000_dba9
       1000:db9a 83 c2 10        ADD        DX,0x10
       1000:db9d 3b 14           CMP        DX,word ptr [SI]
       1000:db9f 7e 08           JLE        LAB_1000_dba9
       1000:dba1 83 c3 10        ADD        BX,0x10
       1000:dba4 3b 5c 02        CMP        BX,word ptr [SI + 0x2]
       1000:dba7 7f 03           JG         LAB_1000_dbac
                             LAB_1000_dba9                                   XREF[3]:     1000:db93(j), 1000:db98(j), 
                                                                                          1000:db9f(j)  
       1000:dba9 5a              POP        DX
       1000:dbaa 5b              POP        BX
                             LAB_1000_dbab                                   XREF[2]:     FUN_1000_db67:1000:db6c(j), 
                                                                                          1000:db79(j)  
       1000:dbab c3              RET
                             LAB_1000_dbac                                   XREF[1]:     1000:dba7(j)  
       1000:dbac 5a              POP        DX
       1000:dbad 5b              POP        BX
       1000:dbae fe 0e 47 dc     DEC        byte ptr [0xdc47]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dbb2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dbb2                                   XREF[30]:    FUN_1000_0d8e:1000:0daa(c), 
                                                                                          FUN_1000_0d8e:1000:0db6(c), 
                                                                                          FUN_1000_0fa7:1000:0fa7(c), 
                                                                                          FUN_1000_1a0f:1000:1a16(c), 
                                                                                          FUN_1000_1b23:1000:1bc6(c), 
                                                                                          FUN_1000_2b2a:1000:2b91(c), 
                                                                                          FUN_1000_35ad:1000:3615(c), 
                                                                                          FUN_1000_35ad:1000:3641(c), 
                                                                                          FUN_1000_3723:1000:3731(c), 
                                                                                          FUN_1000_5d6d:1000:5d7b(c), 
                                                                                          FUN_1000_5d6d:1000:5d85(c), 
                                                                                          FUN_1000_9ab4:1000:9b01(c), 
                                                                                          FUN_1000_c4dd:1000:c4e5(c), 
                                                                                          FUN_1000_c6ad:1000:c6e0(c), 
                                                                                          FUN_1000_d50f:1000:d5e7(c), 
                                                                                          FUN_1000_d61d:1000:d636(c), 
                                                                                          FUN_1000_d815:1000:d8a8(c), 
                                                                                          FUN_1000_d815:1000:d8ce(c), 
                                                                                          FUN_1000_d815:1000:d8ef(c), 
                                                                                          FUN_1000_d815:1000:d8f4(c), [more]
       1000:dbb2 50              PUSH       AX
       1000:dbb3 a0 46 dc        MOV        AL,[0xdc46]
       1000:dbb6 fe 0e 46 dc     DEC        byte ptr [0xdc46]
       1000:dbba 78 04           JS         LAB_1000_dbc0
       1000:dbbc fe 06 46 dc     INC        byte ptr [0xdc46]
                             LAB_1000_dbc0                                   XREF[1]:     1000:dbba(j)  
       1000:dbc0 0a c0           OR         AL,AL
       1000:dbc2 78 04           JS         LAB_1000_dbc8
       1000:dbc4 ff 1e c5 38     CALLF      [0x38c5]
                             LAB_1000_dbc8                                   XREF[1]:     1000:dbc2(j)  
       1000:dbc8 58              POP        AX
       1000:dbc9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dbca()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dbca                                   XREF[1]:     FUN_1000_4b2b:1000:4b38(c)  
       1000:dbca a1 44 dc        MOV        AX,[0xdc44]
       1000:dbcd 3d 98 00        CMP        AX,0x98
       1000:dbd0 73 10           JNC        LAB_1000_dbe2
       1000:dbd2 3d 88 00        CMP        AX,0x88
       1000:dbd5 73 db           JNC        FUN_1000_dbb2
       1000:dbd7 fe 0e 46 dc     DEC        byte ptr [0xdc46]
       1000:dbdb 78 05           JS         LAB_1000_dbe2
       1000:dbdd c6 06 46        MOV        byte ptr [0xdc46],0x80
                 dc 80
                             LAB_1000_dbe2                                   XREF[2]:     1000:dbd0(j), 1000:dbdb(j)  
       1000:dbe2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dbe3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dbe3                                   XREF[1]:     FUN_1000_4afd:1000:4b13(c)  
       1000:dbe3 a1 44 dc        MOV        AX,[0xdc44]
       1000:dbe6 3d 98 00        CMP        AX,0x98
       1000:dbe9 72 01           JC         FUN_1000_dbec
       1000:dbeb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dbec()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dbec                                   XREF[11]:    FUN_1000_0a23:1000:0a3b(c), 
                                                                                          FUN_1000_0d8e:1000:0e3b(c), 
                                                                                          FUN_1000_2b2a:1000:2b9e(c), 
                                                                                          FUN_1000_bdbb:1000:bdf6(c), 
                                                                                          FUN_1000_d50f:1000:d60d(c), 
                                                                                          FUN_1000_d61d:1000:d646(c), 
                                                                                          FUN_1000_d7b7:1000:d809(c), 
                                                                                          FUN_1000_db03:1000:db11(c), 
                                                                                          FUN_1000_db67:1000:db72(c), 
                                                                                          FUN_1000_dbe3:1000:dbe9(j), 
                                                                                          FUN_1000_df07:1000:df1b(c)  
       1000:dbec fe 06 46 dc     INC        byte ptr [0xdc46]
       1000:dbf0 78 28           JS         LAB_1000_dc1a
       1000:dbf2 75 27           JNZ        LAB_1000_dc1b
       1000:dbf4 50              PUSH       AX
       1000:dbf5 53              PUSH       BX
       1000:dbf6 51              PUSH       CX
       1000:dbf7 52              PUSH       DX
       1000:dbf8 56              PUSH       SI
       1000:dbf9 57              PUSH       DI
       1000:dbfa 55              PUSH       BP
       1000:dbfb 8b 16 36 dc     MOV        DX,word ptr [0xdc36]
       1000:dbff 8b 1e 38 dc     MOV        BX,word ptr [0xdc38]
       1000:dc03 89 16 42 dc     MOV        word ptr [0xdc42],DX
       1000:dc07 89 1e 44 dc     MOV        word ptr [0xdc44],BX
       1000:dc0b 8b 36 82 25     MOV        SI,word ptr [0x2582]
       1000:dc0f ff 1e c1 38     CALLF      [0x38c1]
       1000:dc13 5d              POP        BP
       1000:dc14 5f              POP        DI
       1000:dc15 5e              POP        SI
       1000:dc16 5a              POP        DX
       1000:dc17 59              POP        CX
       1000:dc18 5b              POP        BX
       1000:dc19 58              POP        AX
                             LAB_1000_dc1a                                   XREF[1]:     1000:dbf0(j)  
       1000:dc1a c3              RET
                             LAB_1000_dc1b                                   XREF[1]:     1000:dbf2(j)  
       1000:dc1b fe 0e 46 dc     DEC        byte ptr [0xdc46]
       1000:dc1f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dc20()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dc20                                   XREF[1]:     FUN_1000_d815:1000:d866(c)  
       1000:dc20 50              PUSH       AX
       1000:dc21 53              PUSH       BX
       1000:dc22 51              PUSH       CX
       1000:dc23 52              PUSH       DX
       1000:dc24 56              PUSH       SI
       1000:dc25 57              PUSH       DI
       1000:dc26 55              PUSH       BP
       1000:dc27 8b 16 36 dc     MOV        DX,word ptr [0xdc36]
       1000:dc2b 8b 1e 38 dc     MOV        BX,word ptr [0xdc38]
       1000:dc2f e8 38 00        CALL       FUN_1000_dc6a                                    undefined FUN_1000_dc6a()
       1000:dc32 8b f5           MOV        SI,BP
       1000:dc34 87 2e 82 25     XCHG       word ptr [0x2582],BP
       1000:dc38 32 c0           XOR        AL,AL
       1000:dc3a 86 06 46 dc     XCHG       byte ptr [0xdc46],AL
       1000:dc3e 0a c0           OR         AL,AL
       1000:dc40 78 14           JS         LAB_1000_dc56
       1000:dc42 3b 16 42 dc     CMP        DX,word ptr [0xdc42]
       1000:dc46 75 0a           JNZ        LAB_1000_dc52
       1000:dc48 3b 1e 44 dc     CMP        BX,word ptr [0xdc44]
       1000:dc4c 75 04           JNZ        LAB_1000_dc52
       1000:dc4e 3b f5           CMP        SI,BP
       1000:dc50 74 10           JZ         LAB_1000_dc62
                             LAB_1000_dc52                                   XREF[2]:     1000:dc46(j), 1000:dc4c(j)  
       1000:dc52 ff 1e c5 38     CALLF      [0x38c5]
                             LAB_1000_dc56                                   XREF[1]:     1000:dc40(j)  
       1000:dc56 89 16 42 dc     MOV        word ptr [0xdc42],DX
       1000:dc5a 89 1e 44 dc     MOV        word ptr [0xdc44],BX
       1000:dc5e ff 1e c1 38     CALLF      [0x38c1]
                             LAB_1000_dc62                                   XREF[1]:     1000:dc50(j)  
       1000:dc62 5d              POP        BP
       1000:dc63 5f              POP        DI
       1000:dc64 5e              POP        SI
       1000:dc65 5a              POP        DX
       1000:dc66 59              POP        CX
       1000:dc67 5b              POP        BX
       1000:dc68 58              POP        AX
       1000:dc69 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dc6a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dc6a                                   XREF[1]:     FUN_1000_dc20:1000:dc2f(c)  
       1000:dc6a 80 3e be        CMP        byte ptr [0x28be],0x0
                 28 00
       1000:dc6f bd c8 25        MOV        BP,0x25c8
       1000:dc72 75 6b           JNZ        LAB_1000_dcdf
       1000:dc74 bd 84 25        MOV        BP,0x2584
       1000:dc77 80 3e 23        CMP        byte ptr [0x4723],0x0
                 47 00
       1000:dc7c 75 61           JNZ        LAB_1000_dcdf
       1000:dc7e 8b 3e 58 dc     MOV        DI,word ptr [0xdc58]
       1000:dc82 0b ff           OR         DI,DI
       1000:dc84 74 59           JZ         LAB_1000_dcdf
       1000:dc86 81 fb 9b 00     CMP        BX,0x9b
       1000:dc8a 7d 53           JGE        LAB_1000_dcdf
       1000:dc8c e8 6f fa        CALL       FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
       1000:dc8f bd c8 25        MOV        BP,0x25c8
       1000:dc92 72 4b           JC         LAB_1000_dcdf
       1000:dc94 3b 5d 02        CMP        BX,word ptr [DI + 0x2]
       1000:dc97 7c 20           JL         LAB_1000_dcb9
       1000:dc99 3b 5d 06        CMP        BX,word ptr [DI + 0x6]
       1000:dc9c 7d 1b           JGE        LAB_1000_dcb9
       1000:dc9e bd d8 26        MOV        BP,0x26d8
       1000:dca1 8b 05           MOV        AX,word ptr [DI]
       1000:dca3 2b c2           SUB        AX,DX
       1000:dca5 3d 32 00        CMP        AX,0x32
       1000:dca8 72 35           JC         LAB_1000_dcdf
       1000:dcaa bd 50 26        MOV        BP,0x2650
       1000:dcad 8b c2           MOV        AX,DX
       1000:dcaf 2b 45 04        SUB        AX,word ptr [DI + 0x4]
       1000:dcb2 3d 32 00        CMP        AX,0x32
       1000:dcb5 72 28           JC         LAB_1000_dcdf
       1000:dcb7 eb 23           JMP        LAB_1000_dcdc
                             LAB_1000_dcb9                                   XREF[2]:     1000:dc97(j), 1000:dc9c(j)  
       1000:dcb9 3b 15           CMP        DX,word ptr [DI]
       1000:dcbb 7c 1f           JL         LAB_1000_dcdc
       1000:dcbd 3b 55 04        CMP        DX,word ptr [DI + 0x4]
       1000:dcc0 7d 1a           JGE        LAB_1000_dcdc
       1000:dcc2 bd 0c 26        MOV        BP,0x260c
       1000:dcc5 8b 45 02        MOV        AX,word ptr [DI + 0x2]
       1000:dcc8 2b c3           SUB        AX,BX
       1000:dcca 3d 19 00        CMP        AX,0x19
       1000:dccd 72 10           JC         LAB_1000_dcdf
       1000:dccf bd 94 26        MOV        BP,0x2694
       1000:dcd2 8b c3           MOV        AX,BX
       1000:dcd4 2b 45 06        SUB        AX,word ptr [DI + 0x6]
       1000:dcd7 3d 19 00        CMP        AX,0x19
       1000:dcda 72 03           JC         LAB_1000_dcdf
                             LAB_1000_dcdc                                   XREF[3]:     1000:dcb7(j), 1000:dcbb(j), 
                                                                                          1000:dcc0(j)  
       1000:dcdc bd 84 25        MOV        BP,0x2584
                             LAB_1000_dcdf                                   XREF[9]:     1000:dc72(j), 1000:dc7c(j), 
                                                                                          1000:dc84(j), 1000:dc8a(j), 
                                                                                          1000:dc92(j), 1000:dca8(j), 
                                                                                          1000:dcb5(j), 1000:dccd(j), 
                                                                                          1000:dcda(j)  
       1000:dcdf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dce0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dce0                                   XREF[3]:     FUN_1000_dd10:1000:dd10(c), 
                                                                                          FUN_1000_dd63:1000:dd91(c), 
                                                                                          FUN_1000_ea32:1000:ea43(c)  
       1000:dce0 ba 01 02        MOV        DX,0x201
       1000:dce3 9c              PUSHF
       1000:dce4 fa              CLI
       1000:dce5 ee              OUT        DX,AL
       1000:dce6 33 db           XOR        BX,BX
       1000:dce8 8b cb           MOV        CX,BX
       1000:dcea bf 00 08        MOV        DI,0x800
                             LAB_1000_dced                                   XREF[1]:     1000:dd02(j)  
       1000:dced ec              IN         AL,DX
       1000:dcee 8a e0           MOV        AH,AL
       1000:dcf0 d0 ec           SHR        AH,0x1
       1000:dcf2 25 01 01        AND        AX,0x101
       1000:dcf5 74 12           JZ         LAB_1000_dd09
       1000:dcf7 02 c8           ADD        CL,AL
       1000:dcf9 80 d5 00        ADC        CH,0x0
       1000:dcfc 02 dc           ADD        BL,AH
       1000:dcfe 80 d7 00        ADC        BH,0x0
       1000:dd01 4f              DEC        DI
       1000:dd02 75 e9           JNZ        LAB_1000_dced
       1000:dd04 80 26 42        AND        byte ptr [0x2942],0x7f
                 29 7f
                             LAB_1000_dd09                                   XREF[1]:     1000:dcf5(j)  
       1000:dd09 ec              IN         AL,DX
       1000:dd0a 9d              POPF
       1000:dd0b 8b d1           MOV        DX,CX
       1000:dd0d f6 d0           NOT        AL
       1000:dd0f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dd10()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dd10                                   XREF[1]:     FUN_1000_df1e:1000:df53(c)  
       1000:dd10 e8 cd ff        CALL       FUN_1000_dce0                                    undefined FUN_1000_dce0()
       1000:dd13 8a e0           MOV        AH,AL
       1000:dd15 32 c0           XOR        AL,AL
       1000:dd17 f6 c4 30        TEST       AH,0x30
       1000:dd1a 74 02           JZ         LAB_1000_dd1e
       1000:dd1c f6 d0           NOT        AL
                             LAB_1000_dd1e                                   XREF[1]:     1000:dd1a(j)  
       1000:dd1e a2 e6 ce        MOV        [0xcee6],AL
       1000:dd21 b8 ff 00        MOV        AX,0xff
       1000:dd24 3b 16 ab 39     CMP        DX,word ptr [0x39ab]
       1000:dd28 77 04           JA         LAB_1000_dd2e
       1000:dd2a 86 e0           XCHG       AL,AH
       1000:dd2c eb 08           JMP        LAB_1000_dd36
                             LAB_1000_dd2e                                   XREF[1]:     1000:dd28(j)  
       1000:dd2e 3b 16 ad 39     CMP        DX,word ptr [0x39ad]
       1000:dd32 73 02           JNC        LAB_1000_dd36
       1000:dd34 33 c0           XOR        AX,AX
                             LAB_1000_dd36                                   XREF[2]:     1000:dd2c(j), 1000:dd32(j)  
       1000:dd36 a2 e1 ce        MOV        [0xcee1],AL
       1000:dd39 88 26 df ce     MOV        byte ptr [0xcedf],AH
       1000:dd3d b8 ff 00        MOV        AX,0xff
       1000:dd40 3b 1e af 39     CMP        BX,word ptr [0x39af]
       1000:dd44 77 04           JA         LAB_1000_dd4a
       1000:dd46 86 c4           XCHG       AH,AL
       1000:dd48 eb 08           JMP        LAB_1000_dd52
                             LAB_1000_dd4a                                   XREF[1]:     1000:dd44(j)  
       1000:dd4a 3b 1e b1 39     CMP        BX,word ptr [0x39b1]
       1000:dd4e 73 02           JNC        LAB_1000_dd52
       1000:dd50 33 c0           XOR        AX,AX
                             LAB_1000_dd52                                   XREF[2]:     1000:dd48(j), 1000:dd4e(j)  
       1000:dd52 a2 e4 ce        MOV        [0xcee4],AL
       1000:dd55 88 26 dc ce     MOV        byte ptr [0xcedc],AH
       1000:dd59 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dd5a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dd5a                                   XREF[2]:     FUN_1000_de68:1000:de68(c), 
                                                                                          FUN_1000_de7b:1000:dee0(c)  
       1000:dd5a 32 c0           XOR        AL,AL
       1000:dd5c 86 06 e8 ce     XCHG       byte ptr [0xcee8],AL
       1000:dd60 0a c0           OR         AL,AL
       1000:dd62 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_dd63()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_dd63                                   XREF[6]:     FUN_1000_0309:1000:032c(c), 
                                                                                          FUN_1000_0580:1000:05e4(c), 
                                                                                          FUN_1000_ddb0:1000:ddcf(c), 
                                                                                          FUN_1000_ddf0:1000:de01(c), 
                                                                                          FUN_1000_de0c:1000:de42(c), 
                                                                                          FUN_1000_e353:1000:e36a(c)  
       1000:dd63 e8 15 01        CALL       FUN_1000_de7b                                    undefined FUN_1000_de7b()
       1000:dd66 e8 eb 00        CALL       FUN_1000_de54                                    undefined FUN_1000_de54()
       1000:dd69 74 43           JZ         LAB_1000_ddae
       1000:dd6b 80 3e e8        CMP        byte ptr [0xcee8],0x0
                 ce 00
       1000:dd70 75 3c           JNZ        LAB_1000_ddae
       1000:dd72 f6 06 42        TEST       byte ptr [0x2942],0x40
                 29 40
       1000:dd77 75 10           JNZ        LAB_1000_dd89
       1000:dd79 b8 03 00        MOV        AX,0x3
       1000:dd7c cd 33           INT        0x33
       1000:dd7e 87 de           XCHG       SI,BX
       1000:dd80 33 de           XOR        BX,SI
       1000:dd82 23 de           AND        BX,SI
       1000:dd84 80 e3 07        AND        BL,0x7
       1000:dd87 75 25           JNZ        LAB_1000_ddae
                             LAB_1000_dd89                                   XREF[1]:     1000:dd77(j)  
       1000:dd89 f6 06 42        TEST       byte ptr [0x2942],0x80
                 29 80
       1000:dd8e 74 0e           JZ         LAB_1000_dd9e
       1000:dd90 57              PUSH       DI
       1000:dd91 e8 4c ff        CALL       FUN_1000_dce0                                    undefined FUN_1000_dce0()
       1000:dd94 5f              POP        DI
       1000:dd95 97              XCHG       AX,DI
       1000:dd96 33 c7           XOR        AX,DI
       1000:dd98 23 c7           AND        AX,DI
       1000:dd9a 24 30           AND        AL,0x30
       1000:dd9c 75 10           JNZ        LAB_1000_ddae
                             LAB_1000_dd9e                                   XREF[1]:     1000:dd8e(j)  
       1000:dd9e 56              PUSH       SI
       1000:dd9f 57              PUSH       DI
       1000:dda0 e8 29 06        CALL       FUN_1000_e3cc                                    undefined FUN_1000_e3cc()
       1000:dda3 a3 00 00        MOV        [0x0],AX
       1000:dda6 e8 29 fc        CALL       FUN_1000_d9d2                                    undefined FUN_1000_d9d2()
       1000:dda9 5f              POP        DI
       1000:ddaa 5e              POP        SI
       1000:ddab 0c 01           OR         AL,0x1
       1000:ddad c3              RET
                             LAB_1000_ddae                                   XREF[4]:     1000:dd69(j), 1000:dd70(j), 
                                                                                          1000:dd87(j), 1000:dd9c(j)  
       1000:ddae f9              STC
       1000:ddaf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ddb0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ddb0                                   XREF[7]:     FUN_1000_021c:1000:024d(c), 
                                                                                          FUN_1000_021c:1000:026f(c), 
                                                                                          FUN_1000_021c:1000:027f(c), 
                                                                                          FUN_1000_2566:1000:25fa(c), 
                                                                                          FUN_1000_2566:1000:2630(c), 
                                                                                          FUN_1000_2b2a:1000:2c63(c), 
                                                                                          FUN_1000_ddf0:1000:ddfa(j)  
       1000:ddb0 e8 bd 04        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:ddb3 50              PUSH       AX
       1000:ddb4 c6 06 e8        MOV        byte ptr [0xcee8],0x0
                 ce 00
       1000:ddb9 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:ddbe 75 03           JNZ        LAB_1000_ddc3
       1000:ddc0 e8 8b f8        CALL       FUN_1000_d64e                                    undefined FUN_1000_d64e()
                             LAB_1000_ddc3                                   XREF[1]:     1000:ddbe(j)  
       1000:ddc3 be ff ff        MOV        SI,0xffff
       1000:ddc6 8b fe           MOV        DI,SI
       1000:ddc8 59              POP        CX
       1000:ddc9 fb              STI
                             LAB_1000_ddca                                   XREF[1]:     1000:dde3(j)  
       1000:ddca ff 36 7a ce     PUSH       word ptr [0xce7a]
       1000:ddce 51              PUSH       CX
       1000:ddcf e8 91 ff        CALL       FUN_1000_dd63                                    undefined FUN_1000_dd63()
       1000:ddd2 59              POP        CX
       1000:ddd3 58              POP        AX
       1000:ddd4 72 11           JC         LAB_1000_dde7
       1000:ddd6 8b d8           MOV        BX,AX
                             LAB_1000_ddd8                                   XREF[1]:     1000:dddf(j)  
       1000:ddd8 8b c3           MOV        AX,BX
       1000:ddda 36 2b 06        SUB        AX,word ptr SS:[0xce7a]
                 7a ce
       1000:dddf 74 f7           JZ         LAB_1000_ddd8
       1000:dde1 03 c8           ADD        CX,AX
       1000:dde3 72 e5           JC         LAB_1000_ddca
       1000:dde5 0c 01           OR         AL,0x1
                             LAB_1000_dde7                                   XREF[3]:     1000:ddd4(j), 
                                                                                          FUN_1000_de0c:1000:de46(j), 
                                                                                          FUN_1000_de0c:1000:de4c(j)  
       1000:dde7 9c              PUSHF
       1000:dde8 e8 63 00        CALL       FUN_1000_de4e                                    undefined FUN_1000_de4e()
       1000:ddeb 9d              POPF
       1000:ddec e8 94 04        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:ddef c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ddf0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ddf0                                   XREF[1]:     FUN_1000_0580:1000:05f8(c)  
       1000:ddf0 80 3e cd        CMP        byte ptr [0xdbcd],0x0
                 db 00
       1000:ddf5 78 10           JS         LAB_1000_de07
       1000:ddf7 e8 a9 cd        CALL       FUN_1000_aba3                                    undefined FUN_1000_aba3()
       1000:ddfa 74 b4           JZ         FUN_1000_ddb0
                             LAB_1000_ddfc                                   XREF[1]:     1000:de04(j)  
       1000:ddfc e8 a4 cd        CALL       FUN_1000_aba3                                    undefined FUN_1000_aba3()
       1000:ddff 74 06           JZ         LAB_1000_de07
       1000:de01 e8 5f ff        CALL       FUN_1000_dd63                                    undefined FUN_1000_dd63()
       1000:de04 73 f6           JNC        LAB_1000_ddfc
       1000:de06 c3              RET
                             LAB_1000_de07                                   XREF[3]:     1000:ddf5(j), 1000:ddff(j), 
                                                                                          FUN_1000_de0c:1000:de11(j)  
       1000:de07 50              PUSH       AX
       1000:de08 0c 01           OR         AL,0x1
       1000:de0a 58              POP        AX
       1000:de0b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_de0c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_de0c                                   XREF[2]:     FUN_1000_0580:1000:05a3(c), 
                                                                                          FUN_1000_0580:1000:05c4(c)  
       1000:de0c 80 3e cd        CMP        byte ptr [0xdbcd],0x0
                 db 00
       1000:de11 79 f4           JNS        LAB_1000_de07
       1000:de13 e8 5a 04        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:de16 c6 06 e8        MOV        byte ptr [0xcee8],0x0
                 ce 00
       1000:de1b be ff ff        MOV        SI,0xffff
       1000:de1e 8b fe           MOV        DI,SI
                             LAB_1000_de20                                   XREF[1]:     1000:de48(j)  
       1000:de20 b8 60 00        MOV        AX,0x60
       1000:de23 2b 06 d0 db     SUB        AX,word ptr [0xdbd0]
       1000:de27 32 e4           XOR        AH,AH
       1000:de29 b2 06           MOV        DL,0x6
       1000:de2b f6 f2           DIV        DL
       1000:de2d 24 0f           AND        AL,0xf
       1000:de2f 8b 16 ce db     MOV        DX,word ptr [0xdbce]
       1000:de33 d1 e2           SHL        DX,0x1
       1000:de35 d1 e2           SHL        DX,0x1
       1000:de37 d1 e2           SHL        DX,0x1
       1000:de39 d1 e2           SHL        DX,0x1
       1000:de3b 0a d0           OR         DL,AL
       1000:de3d 3b da           CMP        BX,DX
       1000:de3f 76 09           JBE        LAB_1000_de4a
       1000:de41 53              PUSH       BX
       1000:de42 e8 1e ff        CALL       FUN_1000_dd63                                    undefined FUN_1000_dd63()
       1000:de45 5b              POP        BX
       1000:de46 72 9f           JC         LAB_1000_dde7
       1000:de48 eb d6           JMP        LAB_1000_de20
                             LAB_1000_de4a                                   XREF[1]:     1000:de3f(j)  
       1000:de4a 0c 01           OR         AL,0x1
       1000:de4c eb 99           JMP        LAB_1000_dde7
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_de4e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_de4e                                   XREF[4]:     FUN_1000_0309:1000:030b(c), 
                                                                                          FUN_1000_ddb0:1000:dde8(c), 
                                                                                          FUN_1000_de54:1000:de65(c), 
                                                                                          FUN_1000_df1e:1000:dff2(c)  
       1000:de4e c6 06 e8        MOV        byte ptr [0xcee8],0x0
                 ce 00
       1000:de53 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_de54()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_de54                                   XREF[3]:     FUN_1000_021c:1000:0241(c), 
                                                                                          FUN_1000_0580:1000:0580(c), 
                                                                                          FUN_1000_dd63:1000:dd66(c)  
       1000:de54 c6 06 e9        MOV        byte ptr [0xcee9],0x0
                 ce 00
       1000:de59 80 3e e8        CMP        byte ptr [0xcee8],0x1
                 ce 01
       1000:de5e 75 07           JNZ        LAB_1000_de67
       1000:de60 c6 06 e9        MOV        byte ptr [0xcee9],0x1
                 ce 01
       1000:de65 eb e7           JMP        FUN_1000_de4e                                    undefined FUN_1000_de4e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_de67                                   XREF[1]:     1000:de5e(j)  
       1000:de67 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_de68()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_de68                                   XREF[3]:     1000:de6b(j), 
                                                                                          FUN_1000_de7b:1000:dedd(c), 
                                                                                          FUN_1000_de7b:1000:dee6(c)  
       1000:de68 e8 ef fe        CALL       FUN_1000_dd5a                                    undefined FUN_1000_dd5a()
       1000:de6b 75 fb           JNZ        FUN_1000_de68
       1000:de6d e9 1e 12        JMP        FUN_1000_f08e                                    undefined FUN_1000_f08e()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_de7a                                   XREF[2]:     1000:de80(j), 1000:de87(j)  
       1000:de7a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_de7b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_de7b                                   XREF[3]:     FUN_1000_dd63:1000:dd63(c), 
                                                                                          FUN_1000_df1e:1000:df1e(c), 
                                                                                          FUN_1000_e353:1000:e378(c)  
       1000:de7b 80 3e 9a        CMP        byte ptr [0xce9a],0x0
                 ce 00
       1000:de80 74 f8           JZ         LAB_1000_de7a
       1000:de82 80 3e 80        CMP        byte ptr [0xce80],0x0
                 ce 00
       1000:de87 74 f1           JZ         LAB_1000_de7a
       1000:de89 e8 e4 03        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:de8c b0 01           MOV        AL,0x1
       1000:de8e 86 06 88 27     XCHG       byte ptr [0x2788],AL
       1000:de92 50              PUSH       AX
       1000:de93 ff 36 7a ce     PUSH       word ptr [0xce7a]
       1000:de97 e8 18 fd        CALL       FUN_1000_dbb2                                    undefined FUN_1000_dbb2()
       1000:de9a ff 36 da db     PUSH       word ptr [0xdbda]
       1000:de9e e8 ed e1        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:dea1 ff 36 d6 db     PUSH       word ptr [0xdbd6]
       1000:dea5 ff 1e b9 38     CALLF      [0x38b9]
       1000:dea9 a3 d6 db        MOV        [0xdbd6],AX
       1000:deac be 45 29        MOV        SI,0x2945
       1000:deaf e8 69 9c        CALL       FUN_1000_7b1b                                    undefined FUN_1000_7b1b()
       1000:deb2 b9 fe f1        MOV        CX,0xf1fe
       1000:deb5 ba 82 00        MOV        DX,0x82
       1000:deb8 bb a9 00        MOV        BX,0xa9
       1000:debb b8 15 01        MOV        AX,0x115
       1000:debe e8 a7 f1        CALL       FUN_1000_d068                                    undefined FUN_1000_d068()
       1000:dec1 e8 d0 f2        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
       1000:dec4 e8 ae f1        CALL       FUN_1000_d075                                    undefined FUN_1000_d075()
       1000:dec7 ba 60 00        MOV        DX,0x60
       1000:deca bb b8 00        MOV        BX,0xb8
       1000:decd b8 16 01        MOV        AX,0x116
       1000:ded0 b9 f7 f1        MOV        CX,0xf1f7
       1000:ded3 e8 be f2        CALL       FUN_1000_d194                                    undefined FUN_1000_d194()
                             LAB_1000_ded6                                   XREF[1]:     1000:dedb(j)  
       1000:ded6 80 3e 9a        CMP        byte ptr [0xce9a],0x0
                 ce 00
       1000:dedb 75 f9           JNZ        LAB_1000_ded6
       1000:dedd e8 88 ff        CALL       FUN_1000_de68                                    undefined FUN_1000_de68()
                             LAB_1000_dee0                                   XREF[2]:     1000:dee3(j), 1000:deef(j)  
       1000:dee0 e8 77 fe        CALL       FUN_1000_dd5a                                    undefined FUN_1000_dd5a()
       1000:dee3 74 fb           JZ         LAB_1000_dee0
       1000:dee5 50              PUSH       AX
       1000:dee6 e8 7f ff        CALL       FUN_1000_de68                                    undefined FUN_1000_de68()
       1000:dee9 e8 1b 00        CALL       FUN_1000_df07                                    undefined FUN_1000_df07()
       1000:deec 58              POP        AX
       1000:deed fe c8           DEC        AL
       1000:deef 74 ef           JZ         LAB_1000_dee0
       1000:def1 8f 06 d6 db     POP        word ptr [0xdbd6]
       1000:def5 8f 06 da db     POP        word ptr [0xdbda]
       1000:def9 8f 06 7a ce     POP        word ptr [0xce7a]
       1000:defd 58              POP        AX
       1000:defe a2 88 27        MOV        [0x2788],AL
       1000:df01 e8 7f 03        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:df04 33 c0           XOR        AX,AX
       1000:df06 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_df07()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_df07                                   XREF[1]:     FUN_1000_de7b:1000:dee9(c)  
       1000:df07 ff 36 84 27     PUSH       word ptr [0x2784]
       1000:df0b be 48 1b        MOV        SI,0x1b48
       1000:df0e b9 05 00        MOV        CX,0x5
       1000:df11 e8 de f2        CALL       FUN_1000_d1f2                                    undefined FUN_1000_d1f2()
       1000:df14 58              POP        AX
       1000:df15 e8 26 e2        CALL       FUN_1000_c13e                                    undefined FUN_1000_c13e()
       1000:df18 e8 7c f4        CALL       FUN_1000_d397                                    undefined FUN_1000_d397()
       1000:df1b e9 ce fc        JMP        FUN_1000_dbec                                    undefined FUN_1000_dbec()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_df1e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_df1e                                   XREF[1]:     FUN_1000_d815:1000:d860(c)  
       1000:df1e e8 5a ff        CALL       FUN_1000_de7b                                    undefined FUN_1000_de7b()
       1000:df21 32 c0           XOR        AL,AL
       1000:df23 f6 06 42        TEST       byte ptr [0x2942],0x40
                 29 40
       1000:df28 75 1f           JNZ        LAB_1000_df49
       1000:df2a b8 03 00        MOV        AX,0x3
       1000:df2d cd 33           INT        0x33
       1000:df2f 8b c1           MOV        AX,CX
       1000:df31 8b 0e 80 25     MOV        CX,word ptr [0x2580]
       1000:df35 d3 e8           SHR        AX,CL
       1000:df37 8a cd           MOV        CL,CH
       1000:df39 d3 ea           SHR        DX,CL
       1000:df3b 8b c8           MOV        CX,AX
       1000:df3d 8a c3           MOV        AL,BL
       1000:df3f 24 03           AND        AL,0x3
       1000:df41 89 0e 36 dc     MOV        word ptr [0xdc36],CX
       1000:df45 89 16 38 dc     MOV        word ptr [0xdc38],DX
                             LAB_1000_df49                                   XREF[1]:     1000:df28(j)  
       1000:df49 a2 34 dc        MOV        [0xdc34],AL
       1000:df4c f6 06 42        TEST       byte ptr [0x2942],0x80
                 29 80
       1000:df51 74 03           JZ         LAB_1000_df56
       1000:df53 e8 ba fd        CALL       FUN_1000_dd10                                    undefined FUN_1000_dd10()
                             LAB_1000_df56                                   XREF[1]:     1000:df51(j)  
       1000:df56 be c8 ce        MOV        SI,0xcec8
       1000:df59 8b 3e 48 dc     MOV        DI,word ptr [0xdc48]
       1000:df5d 33 d2           XOR        DX,DX
       1000:df5f 8b da           MOV        BX,DX
       1000:df61 8b c2           MOV        AX,DX
       1000:df63 b9 0d 00        MOV        CX,0xd
                             LAB_1000_df66                                   XREF[1]:     1000:df77(j)  
       1000:df66 ac              LODSB      SI
       1000:df67 0a 44 12        OR         AL,byte ptr [SI + 0x12]
       1000:df6a 74 08           JZ         LAB_1000_df74
       1000:df6c 0a 25           OR         AH,byte ptr [DI]
       1000:df6e 03 55 02        ADD        DX,word ptr [DI + 0x2]
       1000:df71 03 5d 04        ADD        BX,word ptr [DI + 0x4]
                             LAB_1000_df74                                   XREF[1]:     1000:df6a(j)  
       1000:df74 83 c7 06        ADD        DI,0x6
       1000:df77 e2 ed           LOOP       LAB_1000_df66
       1000:df79 a0 ba ce        MOV        AL,[0xceba]
       1000:df7c 0a 06 9d ce     OR         AL,byte ptr [0xce9d]
       1000:df80 0a 06 e6 ce     OR         AL,byte ptr [0xcee6]
       1000:df84 24 01           AND        AL,0x1
       1000:df86 8a e0           MOV        AH,AL
       1000:df88 86 06 57 dc     XCHG       byte ptr [0xdc57],AL
       1000:df8c f6 d0           NOT        AL
       1000:df8e 22 06 34 dc     AND        AL,byte ptr [0xdc34]
       1000:df92 0a c4           OR         AL,AH
       1000:df94 a2 34 dc        MOV        [0xdc34],AL
       1000:df97 8b c2           MOV        AX,DX
       1000:df99 0b c3           OR         AX,BX
       1000:df9b 75 1a           JNZ        LAB_1000_dfb7
       1000:df9d a3 51 dc        MOV        [0xdc51],AX
       1000:dfa0 a3 53 dc        MOV        [0xdc53],AX
       1000:dfa3 a3 55 dc        MOV        [0xdc55],AX
                             LAB_1000_dfa6                                   XREF[1]:     1000:dfe0(j)  
       1000:dfa6 c3              RET
                             DAT_1000_dfad                                   XREF[1]:     FUN_1000_df1e:1000:dfe7(R)  
       1000:dfad b9 e1           undefined2 E1B9h
                             DAT_1000_dfaf                                   XREF[1]:     FUN_1000_df1e:1000:dfe7(R)  
       1000:dfaf 8c e1           undefined2 E18Ch
                             DAT_1000_dfb1                                   XREF[1]:     FUN_1000_df1e:1000:dfe7(R)  
       1000:dfb1 c3 e1           undefined2 E1C3h
                             DAT_1000_dfb3                                   XREF[1]:     FUN_1000_df1e:1000:dfe7(R)  
       1000:dfb3 92 e1           undefined2 E192h
                             DAT_1000_dfb5                                   XREF[1]:     FUN_1000_df1e:1000:dfe7(R)  
       1000:dfb5 9b e1           undefined2 E19Bh
                             LAB_1000_dfb7                                   XREF[1]:     1000:df9b(j)  
       1000:dfb7 80 3e 9e        CMP        byte ptr [0xce9e],0xff
                 ce ff
       1000:dfbc 75 03           JNZ        LAB_1000_dfc1
       1000:dfbe e9 10 02        JMP        FUN_1000_e1d1                                    undefined FUN_1000_e1d1()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_dfc1                                   XREF[1]:     1000:dfbc(j)  
       1000:dfc1 bf a9 df        MOV        DI,0xdfa9
       1000:dfc4 0a d2           OR         DL,DL
       1000:dfc6 74 13           JZ         LAB_1000_dfdb
       1000:dfc8 79 03           JNS        LAB_1000_dfcd
       1000:dfca 83 c7 06        ADD        DI,0x6
                             LAB_1000_dfcd                                   XREF[1]:     1000:dfc8(j)  
       1000:dfcd 0a db           OR         BL,BL
       1000:dfcf 74 16           JZ         LAB_1000_dfe7
       1000:dfd1 8d 7d fe        LEA        DI,[DI + -0x2]
       1000:dfd4 78 11           JS         LAB_1000_dfe7
       1000:dfd6 83 c7 04        ADD        DI,0x4
       1000:dfd9 eb 0c           JMP        LAB_1000_dfe7
                             LAB_1000_dfdb                                   XREF[1]:     1000:dfc6(j)  
       1000:dfdb bf b3 df        MOV        DI,0xdfb3
       1000:dfde 0a db           OR         BL,BL
       1000:dfe0 74 c4           JZ         LAB_1000_dfa6
       1000:dfe2 78 03           JS         LAB_1000_dfe7
       1000:dfe4 83 c7 02        ADD        DI,0x2
                             LAB_1000_dfe7                                   XREF[4]:     1000:dfcf(j), 1000:dfd4(j), 
                                                                                          1000:dfd9(j), 1000:dfe2(j)  
       1000:dfe7 2e 8b 1d        MOV        BX,word ptr CS:[DI]=>DAT_1000_dfb1               = E1B9h
                                                                                             = E18Ch
                                                                                             = E1C3h
                                                                                             = E192h
                                                                                             = E19Bh
       1000:dfea 83 ec 0a        SUB        SP,0xa
       1000:dfed 8b ec           MOV        BP,SP
       1000:dfef 89 5e 00        MOV        word ptr [BP + 0x0],BX
       1000:dff2 e8 59 fe        CALL       FUN_1000_de4e                                    undefined FUN_1000_de4e()
       1000:dff5 8b 16 36 dc     MOV        DX,word ptr [0xdc36]
       1000:dff9 8b 1e 38 dc     MOV        BX,word ptr [0xdc38]
       1000:dffd bf e4 1a        MOV        DI,0x1ae4
       1000:e000 8b 0d           MOV        CX,word ptr [DI]
       1000:e002 c7 46 02        MOV        word ptr [BP + 0x2],0x8000
                 00 80
       1000:e007 83 c7 02        ADD        DI,0x2
                             LAB_1000_e00a                                   XREF[1]:     1000:e02f(j)  
       1000:e00a f6 45 08 80     TEST       byte ptr [DI + 0x8],0x80
       1000:e00e 74 1c           JZ         LAB_1000_e02c
       1000:e010 e8 eb f6        CALL       FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
       1000:e013 72 17           JC         LAB_1000_e02c
       1000:e015 e8 41 01        CALL       FUN_1000_e159                                    undefined FUN_1000_e159()
       1000:e018 ff 56 00        CALL       word ptr [BP + 0x0]
       1000:e01b 3b 46 02        CMP        AX,word ptr [BP + 0x2]
       1000:e01e 73 0c           JNC        LAB_1000_e02c
       1000:e020 89 46 02        MOV        word ptr [BP + 0x2],AX
       1000:e023 e8 33 01        CALL       FUN_1000_e159                                    undefined FUN_1000_e159()
       1000:e026 89 46 04        MOV        word ptr [BP + 0x4],AX
       1000:e029 89 76 06        MOV        word ptr [BP + 0x6],SI
                             LAB_1000_e02c                                   XREF[3]:     1000:e00e(j), 1000:e013(j), 
                                                                                          1000:e01e(j)  
       1000:e02c 83 c7 0e        ADD        DI,0xe
       1000:e02f e2 d9           LOOP       LAB_1000_e00a
       1000:e031 e8 34 00        CALL       FUN_1000_e068                                    undefined FUN_1000_e068()
       1000:e034 e8 6b 00        CALL       FUN_1000_e0a2                                    undefined FUN_1000_e0a2()
       1000:e037 e8 a1 00        CALL       FUN_1000_e0db                                    undefined FUN_1000_e0db()
       1000:e03a e8 df 00        CALL       FUN_1000_e11c                                    undefined FUN_1000_e11c()
       1000:e03d 83 7e 02 00     CMP        word ptr [BP + 0x2],0x0
       1000:e041 78 21           JS         LAB_1000_e064
       1000:e043 c6 06 ba        MOV        byte ptr [0xceba],0x0
                 ce 00
       1000:e048 80 0e 9d        OR         byte ptr [0xce9d],0x0
                 ce 00
       1000:e04d 8b 46 04        MOV        AX,word ptr [BP + 0x4]
       1000:e050 a3 4c dc        MOV        [0xdc4c],AX
       1000:e053 8b 46 06        MOV        AX,word ptr [BP + 0x6]
       1000:e056 a3 4e dc        MOV        [0xdc4e],AX
       1000:e059 c6 06 4b        MOV        byte ptr [0xdc4b],0x64
                 dc 64
       1000:e05e a1 7a ce        MOV        AX,[0xce7a]
       1000:e061 a2 4a dc        MOV        [0xdc4a],AL
                             LAB_1000_e064                                   XREF[1]:     1000:e041(j)  
       1000:e064 83 c4 0a        ADD        SP,0xa
       1000:e067 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e068()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e068                                   XREF[1]:     FUN_1000_df1e:1000:e031(c)  
       1000:e068 55              PUSH       BP
       1000:e069 e8 af f3        CALL       FUN_1000_d41b                                    undefined FUN_1000_d41b()
       1000:e06c 81 fd 1a 20     CMP        BP,0x201a
       1000:e070 5d              POP        BP
       1000:e071 75 2e           JNZ        LAB_1000_e0a1
       1000:e073 bf e9 28        MOV        DI,0x28e9
                             LAB_1000_e076                                   XREF[1]:     1000:e09f(j)  
       1000:e076 8b 75 02        MOV        SI,word ptr [DI + 0x2]
       1000:e079 8b 05           MOV        AX,word ptr [DI]
       1000:e07b 3b c2           CMP        AX,DX
       1000:e07d 75 04           JNZ        LAB_1000_e083
       1000:e07f 3b f3           CMP        SI,BX
       1000:e081 74 16           JZ         LAB_1000_e099
                             LAB_1000_e083                                   XREF[1]:     1000:e07d(j)  
       1000:e083 ff 56 00        CALL       word ptr [BP + 0x0]
       1000:e086 3b 46 02        CMP        AX,word ptr [BP + 0x2]
       1000:e089 73 0e           JNC        LAB_1000_e099
       1000:e08b 89 46 02        MOV        word ptr [BP + 0x2],AX
       1000:e08e 8b 05           MOV        AX,word ptr [DI]
       1000:e090 89 46 04        MOV        word ptr [BP + 0x4],AX
       1000:e093 8b 75 02        MOV        SI,word ptr [DI + 0x2]
       1000:e096 89 76 06        MOV        word ptr [BP + 0x6],SI
                             LAB_1000_e099                                   XREF[2]:     1000:e081(j), 1000:e089(j)  
       1000:e099 83 c7 04        ADD        DI,0x4
       1000:e09c 83 3d ff        CMP        word ptr [DI],-0x1
       1000:e09f 75 d5           JNZ        LAB_1000_e076
                             LAB_1000_e0a1                                   XREF[1]:     1000:e071(j)  
       1000:e0a1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e0a2()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e0a2                                   XREF[1]:     FUN_1000_df1e:1000:e034(c)  
       1000:e0a2 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:e0a7 79 31           JNS        LAB_1000_e0da
       1000:e0a9 bf be 3c        MOV        DI,0x3cbe
       1000:e0ac 8b 0d           MOV        CX,word ptr [DI]
       1000:e0ae e3 2a           JCXZ       LAB_1000_e0da
       1000:e0b0 83 c7 02        ADD        DI,0x2
                             LAB_1000_e0b3                                   XREF[1]:     1000:e0d8(j)  
       1000:e0b3 f6 45 0c c0     TEST       byte ptr [DI + 0xc],0xc0
       1000:e0b7 75 1c           JNZ        LAB_1000_e0d5
       1000:e0b9 e8 42 f6        CALL       FUN_1000_d6fe                                    undefined FUN_1000_d6fe()
       1000:e0bc 72 17           JC         LAB_1000_e0d5
       1000:e0be e8 98 00        CALL       FUN_1000_e159                                    undefined FUN_1000_e159()
       1000:e0c1 ff 56 00        CALL       word ptr [BP + 0x0]
       1000:e0c4 3b 46 02        CMP        AX,word ptr [BP + 0x2]
       1000:e0c7 73 0c           JNC        LAB_1000_e0d5
       1000:e0c9 89 46 02        MOV        word ptr [BP + 0x2],AX
       1000:e0cc e8 8a 00        CALL       FUN_1000_e159                                    undefined FUN_1000_e159()
       1000:e0cf 89 46 04        MOV        word ptr [BP + 0x4],AX
       1000:e0d2 89 76 06        MOV        word ptr [BP + 0x6],SI
                             LAB_1000_e0d5                                   XREF[3]:     1000:e0b7(j), 1000:e0bc(j), 
                                                                                          1000:e0c7(j)  
       1000:e0d5 83 c7 11        ADD        DI,0x11
       1000:e0d8 e2 d9           LOOP       LAB_1000_e0b3
                             LAB_1000_e0da                                   XREF[6]:     1000:e0a7(j), 1000:e0ae(j), 
                                                                                          FUN_1000_e0db:1000:e0e0(j), 
                                                                                          FUN_1000_e0db:1000:e0e8(j), 
                                                                                          FUN_1000_e11c:1000:e121(j), 
                                                                                          FUN_1000_e11c:1000:e128(j)  
       1000:e0da c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e0db()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e0db                                   XREF[1]:     FUN_1000_df1e:1000:e037(c)  
       1000:e0db 80 3e eb        CMP        byte ptr [0x46eb],0x0
                 46 00
       1000:e0e0 74 f8           JZ         LAB_1000_e0da
       1000:e0e2 bf c0 a5        MOV        DI,0xa5c0
                             LAB_1000_e0e5                                   XREF[1]:     1000:e11a(j)  
       1000:e0e5 83 3d 00        CMP        word ptr [DI],0x0
       1000:e0e8 74 f0           JZ         LAB_1000_e0da
       1000:e0ea 8b 75 04        MOV        SI,word ptr [DI + 0x4]
       1000:e0ed 81 e6 ff 00     AND        SI,0xff
       1000:e0f1 8b 45 02        MOV        AX,word ptr [DI + 0x2]
       1000:e0f4 3b c2           CMP        AX,DX
       1000:e0f6 75 04           JNZ        LAB_1000_e0fc
       1000:e0f8 3b f3           CMP        SI,BX
       1000:e0fa 74 1b           JZ         LAB_1000_e117
                             LAB_1000_e0fc                                   XREF[1]:     1000:e0f6(j)  
       1000:e0fc ff 56 00        CALL       word ptr [BP + 0x0]
       1000:e0ff 3b 46 02        CMP        AX,word ptr [BP + 0x2]
       1000:e102 73 13           JNC        LAB_1000_e117
       1000:e104 89 46 02        MOV        word ptr [BP + 0x2],AX
       1000:e107 8b 45 02        MOV        AX,word ptr [DI + 0x2]
       1000:e10a 89 46 04        MOV        word ptr [BP + 0x4],AX
       1000:e10d 8b 75 04        MOV        SI,word ptr [DI + 0x4]
       1000:e110 81 e6 ff 00     AND        SI,0xff
       1000:e114 89 76 06        MOV        word ptr [BP + 0x6],SI
                             LAB_1000_e117                                   XREF[2]:     1000:e0fa(j), 1000:e102(j)  
       1000:e117 83 c7 06        ADD        DI,0x6
       1000:e11a eb c9           JMP        LAB_1000_e0e5
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e11c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e11c                                   XREF[1]:     FUN_1000_df1e:1000:e03a(c)  
       1000:e11c f6 06 eb        TEST       byte ptr [0x46eb],0x1
                 46 01
       1000:e121 74 b7           JZ         LAB_1000_e0da
       1000:e123 83 3e 49        CMP        word ptr [0x4749],0x0
                 47 00
       1000:e128 74 b0           JZ         LAB_1000_e0da
       1000:e12a bf 62 24        MOV        DI,0x2462
       1000:e12d b9 08 00        MOV        CX,0x8
                             LAB_1000_e130                                   XREF[1]:     1000:e156(j)  
       1000:e130 8b 05           MOV        AX,word ptr [DI]
       1000:e132 8b 75 02        MOV        SI,word ptr [DI + 0x2]
       1000:e135 3b c2           CMP        AX,DX
       1000:e137 75 04           JNZ        LAB_1000_e13d
       1000:e139 3b f3           CMP        SI,BX
       1000:e13b 74 16           JZ         LAB_1000_e153
                             LAB_1000_e13d                                   XREF[1]:     1000:e137(j)  
       1000:e13d ff 56 00        CALL       word ptr [BP + 0x0]
       1000:e140 3b 46 02        CMP        AX,word ptr [BP + 0x2]
       1000:e143 73 0e           JNC        LAB_1000_e153
       1000:e145 89 46 02        MOV        word ptr [BP + 0x2],AX
       1000:e148 8b 05           MOV        AX,word ptr [DI]
       1000:e14a 8b 75 02        MOV        SI,word ptr [DI + 0x2]
       1000:e14d 89 46 04        MOV        word ptr [BP + 0x4],AX
       1000:e150 89 76 06        MOV        word ptr [BP + 0x6],SI
                             LAB_1000_e153                                   XREF[2]:     1000:e13b(j), 1000:e143(j)  
       1000:e153 83 c7 04        ADD        DI,0x4
       1000:e156 e2 d8           LOOP       LAB_1000_e130
       1000:e158 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e159()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e159                                   XREF[4]:     FUN_1000_df1e:1000:e015(c), 
                                                                                          FUN_1000_df1e:1000:e023(c), 
                                                                                          FUN_1000_e0a2:1000:e0be(c), 
                                                                                          FUN_1000_e0a2:1000:e0cc(c)  
       1000:e159 8b 75 06        MOV        SI,word ptr [DI + 0x6]
       1000:e15c 8b c6           MOV        AX,SI
       1000:e15e 2b 45 02        SUB        AX,word ptr [DI + 0x2]
       1000:e161 d1 e8           SHR        AX,0x1
       1000:e163 d1 e8           SHR        AX,0x1
       1000:e165 2b f0           SUB        SI,AX
       1000:e167 8b 05           MOV        AX,word ptr [DI]
       1000:e169 03 45 04        ADD        AX,word ptr [DI + 0x4]
       1000:e16c d1 e8           SHR        AX,0x1
       1000:e16e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_e1d1()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e1d1                                   XREF[1]:     FUN_1000_df1e:1000:dfbe(c)  
       1000:e1d1 0a d2           OR         DL,DL
       1000:e1d3 74 1e           JZ         LAB_1000_e1f3
       1000:e1d5 a1 51 dc        MOV        AX,[0xdc51]
       1000:e1d8 0b c0           OR         AX,AX
       1000:e1da 79 02           JNS        LAB_1000_e1de
       1000:e1dc f7 d8           NEG        AX
                             LAB_1000_e1de                                   XREF[1]:     1000:e1da(j)  
       1000:e1de 3d 04 00        CMP        AX,0x4
       1000:e1e1 72 10           JC         LAB_1000_e1f3
       1000:e1e3 02 d2           ADD        DL,DL
       1000:e1e5 3d 0c 00        CMP        AX,0xc
       1000:e1e8 72 09           JC         LAB_1000_e1f3
       1000:e1ea 02 d2           ADD        DL,DL
       1000:e1ec 3d 24 00        CMP        AX,0x24
       1000:e1ef 72 02           JC         LAB_1000_e1f3
       1000:e1f1 02 d2           ADD        DL,DL
                             LAB_1000_e1f3                                   XREF[4]:     1000:e1d3(j), 1000:e1e1(j), 
                                                                                          1000:e1e8(j), 1000:e1ef(j)  
       1000:e1f3 0a db           OR         BL,BL
       1000:e1f5 74 1c           JZ         LAB_1000_e213
       1000:e1f7 a1 53 dc        MOV        AX,[0xdc53]
       1000:e1fa 79 02           JNS        LAB_1000_e1fe
       1000:e1fc f7 d8           NEG        AX
                             LAB_1000_e1fe                                   XREF[1]:     1000:e1fa(j)  
       1000:e1fe 3d 03 00        CMP        AX,0x3
       1000:e201 72 10           JC         LAB_1000_e213
       1000:e203 02 db           ADD        BL,BL
       1000:e205 3d 0a 00        CMP        AX,0xa
       1000:e208 72 09           JC         LAB_1000_e213
       1000:e20a 02 db           ADD        BL,BL
       1000:e20c 3d 1c 00        CMP        AX,0x1c
       1000:e20f 72 02           JC         LAB_1000_e213
       1000:e211 02 db           ADD        BL,BL
                             LAB_1000_e213                                   XREF[4]:     1000:e1f5(j), 1000:e201(j), 
                                                                                          1000:e208(j), 1000:e20f(j)  
       1000:e213 a0 7a ce        MOV        AL,[0xce7a]
       1000:e216 8a e0           MOV        AH,AL
       1000:e218 86 26 50 dc     XCHG       byte ptr [0xdc50],AH
       1000:e21c 2a c4           SUB        AL,AH
       1000:e21e 3c 08           CMP        AL,0x8
       1000:e220 72 02           JC         LAB_1000_e224
       1000:e222 b0 08           MOV        AL,0x8
                             LAB_1000_e224                                   XREF[1]:     1000:e220(j)  
       1000:e224 8a c8           MOV        CL,AL
       1000:e226 be 55 dc        MOV        SI,0xdc55
       1000:e229 8a c2           MOV        AL,DL
       1000:e22b e8 15 00        CALL       FUN_1000_e243                                    undefined FUN_1000_e243()
       1000:e22e 8b d0           MOV        DX,AX
       1000:e230 01 06 51 dc     ADD        word ptr [0xdc51],AX
       1000:e234 46              INC        SI
       1000:e235 8a c3           MOV        AL,BL
       1000:e237 e8 09 00        CALL       FUN_1000_e243                                    undefined FUN_1000_e243()
       1000:e23a 8b d8           MOV        BX,AX
       1000:e23c 01 06 53 dc     ADD        word ptr [0xdc53],AX
       1000:e240 e9 6c f8        JMP        FUN_1000_daaf                                    undefined FUN_1000_daaf()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e243()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e243                                   XREF[2]:     FUN_1000_e1d1:1000:e22b(c), 
                                                                                          FUN_1000_e1d1:1000:e237(c)  
       1000:e243 f6 e9           IMUL       CL
       1000:e245 0b c0           OR         AX,AX
       1000:e247 78 11           JS         LAB_1000_e25a
       1000:e249 02 04           ADD        AL,byte ptr [SI]
       1000:e24b 8a e8           MOV        CH,AL
       1000:e24d 80 e5 07        AND        CH,0x7
       1000:e250 88 2c           MOV        byte ptr [SI],CH
       1000:e252 98              CBW
       1000:e253 d1 e8           SHR        AX,0x1
       1000:e255 d1 e8           SHR        AX,0x1
       1000:e257 d1 e8           SHR        AX,0x1
       1000:e259 c3              RET
                             LAB_1000_e25a                                   XREF[1]:     1000:e247(j)  
       1000:e25a f7 d8           NEG        AX
       1000:e25c 02 04           ADD        AL,byte ptr [SI]
       1000:e25e 8a e8           MOV        CH,AL
       1000:e260 80 e5 07        AND        CH,0x7
       1000:e263 88 2c           MOV        byte ptr [SI],CH
       1000:e265 98              CBW
       1000:e266 d1 e8           SHR        AX,0x1
       1000:e268 d1 e8           SHR        AX,0x1
       1000:e26a d1 e8           SHR        AX,0x1
       1000:e26c f7 d8           NEG        AX
       1000:e26e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e26f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e26f                                   XREF[1]:     FUN_1000_d815:1000:d8f7(c)  
       1000:e26f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e270()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e270                                   XREF[30]:    FUN_1000_2170:1000:2170(c), 
                                                                                          FUN_1000_26da:1000:26da(c), 
                                                                                          FUN_1000_31f6:1000:31f6(c), 
                                                                                          FUN_1000_368b:1000:368b(c), 
                                                                                          FUN_1000_425b:1000:4279(c), 
                                                                                          FUN_1000_5584:1000:558e(c), 
                                                                                          FUN_1000_57e5:1000:57e5(c), 
                                                                                          FUN_1000_5ee4:1000:5f01(c), 
                                                                                          FUN_1000_6144:1000:6144(c), 
                                                                                          FUN_1000_627e:1000:627e(c), 
                                                                                          FUN_1000_765e:1000:765e(c), 
                                                                                          FUN_1000_85cc:1000:85f6(c), 
                                                                                          FUN_1000_8770:1000:8777(c), 
                                                                                          FUN_1000_8865:1000:8865(c), 
                                                                                          FUN_1000_8ccd:1000:8ce6(c), 
                                                                                          FUN_1000_a03f:1000:a0d0(c), 
                                                                                          FUN_1000_ab15:1000:ab20(c), 
                                                                                          FUN_1000_ab4f:1000:ab6a(c), 
                                                                                          FUN_1000_ae04:1000:ae1e(c), 
                                                                                          FUN_1000_d280:1000:d287(c), [more]
       1000:e270 53              PUSH       BX
       1000:e271 51              PUSH       CX
       1000:e272 52              PUSH       DX
       1000:e273 56              PUSH       SI
       1000:e274 57              PUSH       DI
       1000:e275 55              PUSH       BP
       1000:e276 8b ec           MOV        BP,SP
       1000:e278 87 46 0c        XCHG       word ptr [BP + 0xc],AX
       1000:e27b 50              PUSH       AX
       1000:e27c 8b 46 0c        MOV        AX,word ptr [BP + 0xc]
       1000:e27f 8b 6e 00        MOV        BP,word ptr [BP + 0x0]
       1000:e282 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e283()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e283                                   XREF[31]:    FUN_1000_2170:1000:21f6(c), 
                                                                                          FUN_1000_26da:1000:272b(c), 
                                                                                          FUN_1000_31f6:1000:3299(c), 
                                                                                          FUN_1000_368b:1000:36c7(c), 
                                                                                          FUN_1000_425b:1000:4281(c), 
                                                                                          FUN_1000_5584:1000:55bc(c), 
                                                                                          FUN_1000_57e5:1000:583b(c), 
                                                                                          FUN_1000_57e5:1000:586a(c), 
                                                                                          FUN_1000_5ee4:1000:5f0f(c), 
                                                                                          FUN_1000_6144:1000:6151(c), 
                                                                                          FUN_1000_627e:1000:6293(c), 
                                                                                          FUN_1000_627e:1000:6298(c), 
                                                                                          FUN_1000_8770:1000:8788(c), 
                                                                                          FUN_1000_8865:1000:8884(c), 
                                                                                          FUN_1000_8ccd:1000:8cf2(c), 
                                                                                          FUN_1000_a03f:1000:a0df(c), 
                                                                                          FUN_1000_ab15:1000:ab40(c), 
                                                                                          FUN_1000_ab4f:1000:ab8d(c), 
                                                                                          FUN_1000_ae04:1000:ae24(c), 
                                                                                          FUN_1000_d280:1000:d2b9(c), [more]
       1000:e283 58              POP        AX
       1000:e284 8b ec           MOV        BP,SP
       1000:e286 87 46 0c        XCHG       word ptr [BP + 0xc],AX
       1000:e289 5d              POP        BP
       1000:e28a 5f              POP        DI
       1000:e28b 5e              POP        SI
       1000:e28c 5a              POP        DX
       1000:e28d 59              POP        CX
       1000:e28e 5b              POP        BX
       1000:e28f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e290()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e290                                   XREF[1]:     FUN_1000_1a34:1000:1a8d(c)  
       1000:e290 e8 bb ed        CALL       FUN_1000_d04e                                    undefined FUN_1000_d04e()
       1000:e293 eb 02           JMP        LAB_1000_e297
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e295()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e295                                   XREF[1]:     FUN_1000_605c:1000:6083(c)  
       1000:e295 32 e4           XOR        AH,AH
                             LAB_1000_e297                                   XREF[1]:     FUN_1000_e290:1000:e293(j)  
       1000:e297 51              PUSH       CX
       1000:e298 b9 64 00        MOV        CX,0x64
       1000:e29b f6 f1           DIV        CL
       1000:e29d 04 30           ADD        AL,0x30
       1000:e29f 3c 30           CMP        AL,0x30
       1000:e2a1 75 04           JNZ        LAB_1000_e2a7
       1000:e2a3 b0 20           MOV        AL,0x20
       1000:e2a5 fe cd           DEC        CH
                             LAB_1000_e2a7                                   XREF[1]:     1000:e2a1(j)  
       1000:e2a7 ff 16 18 25     CALL       word ptr [0x2518]
       1000:e2ab 8a c4           MOV        AL,AH
       1000:e2ad d4 0a           AAM        0xa
       1000:e2af 86 c4           XCHG       AH,AL
       1000:e2b1 05 30 30        ADD        AX,0x3030
       1000:e2b4 0a ed           OR         CH,CH
       1000:e2b6 74 06           JZ         LAB_1000_e2be
       1000:e2b8 3c 30           CMP        AL,0x30
       1000:e2ba 75 02           JNZ        LAB_1000_e2be
       1000:e2bc b0 20           MOV        AL,0x20
                             LAB_1000_e2be                                   XREF[2]:     1000:e2b6(j), 1000:e2ba(j)  
       1000:e2be ff 16 18 25     CALL       word ptr [0x2518]
       1000:e2c2 8a c4           MOV        AL,AH
       1000:e2c4 ff 16 18 25     CALL       word ptr [0x2518]
       1000:e2c8 59              POP        CX
       1000:e2c9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_e2db()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e2db                                   XREF[2]:     FUN_1000_bdfa:1000:be01(c), 
                                                                                          FUN_1000_bdfa:1000:be11(c)  
       1000:e2db 50              PUSH       AX
       1000:e2dc e8 91 ec        CALL       FUN_1000_cf70                                    undefined FUN_1000_cf70()
       1000:e2df e8 5a ed        CALL       FUN_1000_d03c                                    undefined FUN_1000_d03c()
       1000:e2e2 58              POP        AX
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e2e3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e2e3                                   XREF[3]:     FUN_1000_32c7:1000:3307(c), 
                                                                                          FUN_1000_5bb0:1000:5bce(c), 
                                                                                          FUN_1000_bf73:1000:bf7a(c)  
       1000:e2e3 53              PUSH       BX
       1000:e2e4 51              PUSH       CX
       1000:e2e5 b9 64 00        MOV        CX,0x64
       1000:e2e8 8b d9           MOV        BX,CX
       1000:e2ea 3d e8 03        CMP        AX,0x3e8
       1000:e2ed 72 03           JC         LAB_1000_e2f2
       1000:e2ef b8 e7 03        MOV        AX,0x3e7
                             LAB_1000_e2f2                                   XREF[1]:     1000:e2ed(j)  
       1000:e2f2 f6 f1           DIV        CL
       1000:e2f4 04 30           ADD        AL,0x30
                             LAB_1000_e2f6                                   XREF[1]:     FUN_1000_e31c:1000:e351(j)  
       1000:e2f6 3c 30           CMP        AL,0x30
       1000:e2f8 75 04           JNZ        LAB_1000_e2fe
       1000:e2fa b0 20           MOV        AL,0x20
       1000:e2fc 33 db           XOR        BX,BX
                             LAB_1000_e2fe                                   XREF[2]:     1000:e2f8(j), 
                                                                                          FUN_1000_e31c:1000:e34e(j)  
       1000:e2fe 26 88 44 fd     MOV        byte ptr ES:[SI + -0x3],AL
       1000:e302 8a c4           MOV        AL,AH
       1000:e304 d4 0a           AAM        0xa
       1000:e306 86 c4           XCHG       AH,AL
       1000:e308 05 30 30        ADD        AX,0x3030
       1000:e30b 0b db           OR         BX,BX
       1000:e30d 75 06           JNZ        LAB_1000_e315
       1000:e30f 3c 30           CMP        AL,0x30
       1000:e311 75 02           JNZ        LAB_1000_e315
       1000:e313 b0 20           MOV        AL,0x20
                             LAB_1000_e315                                   XREF[2]:     1000:e30d(j), 1000:e311(j)  
       1000:e315 26 89 44 fe     MOV        word ptr ES:[SI + -0x2],AX
       1000:e319 59              POP        CX
       1000:e31a 5b              POP        BX
       1000:e31b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e31c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e31c                                   XREF[1]:     FUN_1000_bf61:1000:bf6d(c)  
       1000:e31c 53              PUSH       BX
       1000:e31d 51              PUSH       CX
       1000:e31e b9 e8 03        MOV        CX,0x3e8
       1000:e321 8b d9           MOV        BX,CX
       1000:e323 33 d2           XOR        DX,DX
       1000:e325 f7 f1           DIV        CX
       1000:e327 d4 0a           AAM        0xa
       1000:e329 86 c4           XCHG       AH,AL
       1000:e32b 05 30 30        ADD        AX,0x3030
       1000:e32e 3c 30           CMP        AL,0x30
       1000:e330 75 0b           JNZ        LAB_1000_e33d
       1000:e332 b0 20           MOV        AL,0x20
       1000:e334 80 fc 30        CMP        AH,0x30
       1000:e337 75 04           JNZ        LAB_1000_e33d
       1000:e339 8a e0           MOV        AH,AL
       1000:e33b 33 db           XOR        BX,BX
                             LAB_1000_e33d                                   XREF[2]:     1000:e330(j), 1000:e337(j)  
       1000:e33d 26 89 44 fb     MOV        word ptr ES:[SI + -0x5],AX
       1000:e341 8b c2           MOV        AX,DX
       1000:e343 33 d2           XOR        DX,DX
       1000:e345 b9 64 00        MOV        CX,0x64
       1000:e348 f6 f1           DIV        CL
       1000:e34a 04 30           ADD        AL,0x30
       1000:e34c 0b db           OR         BX,BX
       1000:e34e 75 ae           JNZ        LAB_1000_e2fe
       1000:e350 43              INC        BX
       1000:e351 eb a3           JMP        LAB_1000_e2f6
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e353()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e353                                   XREF[9]:     FUN_1000_0d45:1000:0d6c(c), 
                                                                                          FUN_1000_0d45:1000:0d7f(c), 
                                                                                          FUN_1000_2566:1000:2613(c), 
                                                                                          FUN_1000_2566:1000:2649(c), 
                                                                                          FUN_1000_2566:1000:266e(c), 
                                                                                          FUN_1000_2773:1000:278a(c), 
                                                                                          FUN_1000_2795:1000:27a7(c), 
                                                                                          FUN_1000_47fb:1000:4801(c), 
                                                                                          FUN_1000_9b49:1000:9b75(c)  
       1000:e353 50              PUSH       AX
       1000:e354 ff 36 7a ce     PUSH       word ptr [0xce7a]
       1000:e358 ff d5           CALL       BP
       1000:e35a 5b              POP        BX
       1000:e35b 5d              POP        BP
                             LAB_1000_e35c                                   XREF[1]:     1000:e382(j)  
       1000:e35c 80 3e 7d        CMP        byte ptr [0x227d],0x0
                 22 00
       1000:e361 74 15           JZ         LAB_1000_e378
       1000:e363 53              PUSH       BX
       1000:e364 51              PUSH       CX
       1000:e365 52              PUSH       DX
       1000:e366 56              PUSH       SI
       1000:e367 57              PUSH       DI
       1000:e368 55              PUSH       BP
       1000:e369 06              PUSH       ES
       1000:e36a e8 f6 f9        CALL       FUN_1000_dd63                                    undefined FUN_1000_dd63()
       1000:e36d 07              POP        ES
       1000:e36e 5d              POP        BP
       1000:e36f 5f              POP        DI
       1000:e370 5e              POP        SI
       1000:e371 5a              POP        DX
       1000:e372 59              POP        CX
       1000:e373 5b              POP        BX
       1000:e374 72 10           JC         LAB_1000_e386
       1000:e376 eb 03           JMP        LAB_1000_e37b
                             LAB_1000_e378                                   XREF[1]:     1000:e361(j)  
       1000:e378 e8 00 fb        CALL       FUN_1000_de7b                                    undefined FUN_1000_de7b()
                             LAB_1000_e37b                                   XREF[1]:     1000:e376(j)  
       1000:e37b a1 7a ce        MOV        AX,[0xce7a]
       1000:e37e 2b c3           SUB        AX,BX
       1000:e380 3b c5           CMP        AX,BP
       1000:e382 72 d8           JC         LAB_1000_e35c
       1000:e384 0c 01           OR         AL,0x1
                             LAB_1000_e386                                   XREF[1]:     1000:e374(j)  
       1000:e386 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e387()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e387                                   XREF[6]:     FUN_1000_17e6:1000:17fe(c), 
                                                                                          FUN_1000_181e:1000:182f(c), 
                                                                                          FUN_1000_1843:1000:1855(c), 
                                                                                          FUN_1000_35ad:1000:361f(c), 
                                                                                          FUN_1000_3723:1000:374d(c), 
                                                                                          FUN_1000_d23d:1000:d26b(c)  
       1000:e387 50              PUSH       AX
       1000:e388 51              PUSH       CX
       1000:e389 8b c8           MOV        CX,AX
       1000:e38b e3 10           JCXZ       LAB_1000_e39d
       1000:e38d 9c              PUSHF
       1000:e38e fb              STI
                             LAB_1000_e38f                                   XREF[1]:     1000:e39a(j)  
       1000:e38f 36 a1 7a ce     MOV        AX,SS:[0xce7a]
                             LAB_1000_e393                                   XREF[1]:     1000:e398(j)  
       1000:e393 36 3b 06        CMP        AX,word ptr SS:[0xce7a]
                 7a ce
       1000:e398 74 f9           JZ         LAB_1000_e393
       1000:e39a e2 f3           LOOP       LAB_1000_e38f
       1000:e39c 9d              POPF
                             LAB_1000_e39d                                   XREF[1]:     1000:e38b(j)  
       1000:e39d 59              POP        CX
       1000:e39e 58              POP        AX
       1000:e39f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e3a0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e3a0                                   XREF[1]:     FUN_1000_281c:1000:282f(c)  
       1000:e3a0 8b c8           MOV        CX,AX
                             LAB_1000_e3a2                                   XREF[1]:     1000:e3b4(j)  
       1000:e3a2 a1 7a ce        MOV        AX,[0xce7a]
                             LAB_1000_e3a5                                   XREF[1]:     1000:e3a9(j)  
       1000:e3a5 3b 06 7a ce     CMP        AX,word ptr [0xce7a]
       1000:e3a9 74 fa           JZ         LAB_1000_e3a5
       1000:e3ab e8 c2 fe        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:e3ae e8 21 f6        CALL       FUN_1000_d9d2                                    undefined FUN_1000_d9d2()
       1000:e3b1 e8 cf fe        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:e3b4 e2 ec           LOOP       LAB_1000_e3a2
       1000:e3b6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e3b7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e3b7                                   XREF[7]:     FUN_1000_2090:1000:20ec(c), 
                                                                                          FUN_1000_2566:1000:25c8(c), 
                                                                                          FUN_1000_27c9:1000:27d3(c), 
                                                                                          FUN_1000_8944:1000:89dd(c), 
                                                                                          FUN_1000_8ccd:1000:8dd3(c), 
                                                                                          FUN_1000_994f:1000:9959(c), 
                                                                                          FUN_1000_9a7b:1000:9ab1(c)  
       1000:e3b7 52              PUSH       DX
       1000:e3b8 a1 24 d8        MOV        AX,[0xd824]
       1000:e3bb ba 6d e5        MOV        DX,0xe56d
       1000:e3be f7 e2           MUL        DX
       1000:e3c0 40              INC        AX
       1000:e3c1 a3 24 d8        MOV        [0xd824],AX
       1000:e3c4 8a c4           MOV        AL,AH
       1000:e3c6 8a e2           MOV        AH,DL
       1000:e3c8 23 c3           AND        AX,BX
       1000:e3ca 5a              POP        DX
       1000:e3cb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e3cc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e3cc                                   XREF[4]:     FUN_1000_1c46:1000:1ca6(c), 
                                                                                          FUN_1000_4f0c:1000:4fc3(c), 
                                                                                          FUN_1000_d815:1000:d84b(c), 
                                                                                          FUN_1000_dd63:1000:dda0(c)  
       1000:e3cc 52              PUSH       DX
       1000:e3cd a1 26 d8        MOV        AX,[0xd826]
       1000:e3d0 ba d1 cb        MOV        DX,0xcbd1
       1000:e3d3 f7 e2           MUL        DX
       1000:e3d5 40              INC        AX
       1000:e3d6 a3 26 d8        MOV        [0xd826],AX
       1000:e3d9 8a c4           MOV        AL,AH
       1000:e3db 8a e2           MOV        AH,DL
       1000:e3dd 5a              POP        DX
       1000:e3de c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e3df()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e3df                                   XREF[5]:     FUN_1000_1cda:1000:1d06(c), 
                                                                                          FUN_1000_21fa:1000:21fd(c), 
                                                                                          FUN_1000_acbf:1000:acc8(c), 
                                                                                          FUN_1000_acbf:1000:acd6(c), 
                                                                                          FUN_1000_c5cf:1000:c5f7(c)  
       1000:e3df 51              PUSH       CX
       1000:e3e0 52              PUSH       DX
       1000:e3e1 8b c3           MOV        AX,BX
       1000:e3e3 0b c0           OR         AX,AX
       1000:e3e5 74 21           JZ         LAB_1000_e408
       1000:e3e7 b9 ff ff        MOV        CX,0xffff
                             LAB_1000_e3ea                                   XREF[1]:     1000:e3ee(j)  
       1000:e3ea d1 e1           SHL        CX,0x1
       1000:e3ec d1 e8           SHR        AX,0x1
       1000:e3ee 75 fa           JNZ        LAB_1000_e3ea
       1000:e3f0 f7 d1           NOT        CX
                             LAB_1000_e3f2                                   XREF[1]:     1000:e406(j)  
       1000:e3f2 a1 28 d8        MOV        AX,[0xd828]
       1000:e3f5 ba d1 cb        MOV        DX,0xcbd1
       1000:e3f8 f7 e2           MUL        DX
       1000:e3fa 40              INC        AX
       1000:e3fb a3 28 d8        MOV        [0xd828],AX
       1000:e3fe 8a c4           MOV        AL,AH
       1000:e400 8a e2           MOV        AH,DL
       1000:e402 23 c1           AND        AX,CX
       1000:e404 3b c3           CMP        AX,BX
       1000:e406 77 ea           JA         LAB_1000_e3f2
                             LAB_1000_e408                                   XREF[1]:     1000:e3e5(j)  
       1000:e408 5a              POP        DX
       1000:e409 59              POP        CX
       1000:e40a c3              RET
                             DAT_1000_e40c                                   XREF[1]:     FUN_1000_4a5a:1000:4a68(R)  
       1000:e40c 33 38           undefined2 3833h
                             DAT_1000_e40e                                   XREF[1]:     FUN_1000_4a5a:1000:4a6c(R)  
       1000:e40e 36 00           undefined2 0036h
                             DAT_1000_e416                                   XREF[1]:     FUN_1000_e4ad:1000:e4eb(R)  
       1000:e416 00              undefined1 00h
                             DAT_1000_e417                                   XREF[1]:     FUN_1000_e4ad:1000:e4f5(R)  
       1000:e417 02              undefined1 02h
                             DAT_1000_e418                                   XREF[1]:     FUN_1000_e4ad:1000:e4fc(R)  
       1000:e418 00 00           undefined2 0000h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e4ad()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e4ad                                   XREF[1]:     entry:1000:0003(c)  
       1000:e4ad be 80 00        MOV        SI,0x80
       1000:e4b0 ac              LODSB      SI
       1000:e4b1 32 e4           XOR        AH,AH
       1000:e4b3 8b e8           MOV        BP,AX
       1000:e4b5 03 ee           ADD        BP,SI
                             LAB_1000_e4b7                                   XREF[1]:     1000:e54a(j)  
       1000:e4b7 0e              PUSH       CS
       1000:e4b8 07              POP        ES
                             LAB_1000_e4b9                                   XREF[1]:     1000:e4be(j)  
       1000:e4b9 e8 af 00        CALL       FUN_1000_e56b                                    undefined FUN_1000_e56b()
       1000:e4bc 72 27           JC         LAB_1000_e4e5
       1000:e4be 74 f9           JZ         LAB_1000_e4b9
       1000:e4c0 8a d0           MOV        DL,AL
       1000:e4c2 e8 a6 00        CALL       FUN_1000_e56b                                    undefined FUN_1000_e56b()
       1000:e4c5 76 7b           JBE        LAB_1000_e542
       1000:e4c7 8a e0           MOV        AH,AL
       1000:e4c9 e8 9f 00        CALL       FUN_1000_e56b                                    undefined FUN_1000_e56b()
       1000:e4cc 76 74           JBE        LAB_1000_e542
       1000:e4ce 86 c2           XCHG       DL,AL
       1000:e4d0 bf 0c e4        MOV        DI,0xe40c
       1000:e4d3 b9 17 00        MOV        CX,0x17
                             LAB_1000_e4d6                                   XREF[1]:     1000:e4e1(j)  
       1000:e4d6 af              SCASW      ES:DI
       1000:e4d7 75 05           JNZ        LAB_1000_e4de
       1000:e4d9 26 3a 15        CMP        DL,byte ptr ES:[DI]
       1000:e4dc 74 08           JZ         LAB_1000_e4e6
                             LAB_1000_e4de                                   XREF[1]:     1000:e4d7(j)  
       1000:e4de 83 c7 05        ADD        DI,0x5
       1000:e4e1 e2 f3           LOOP       LAB_1000_e4d6
       1000:e4e3 eb 5d           JMP        LAB_1000_e542
                             LAB_1000_e4e5                                   XREF[3]:     1000:e4bc(j), 1000:e507(j), 
                                                                                          1000:e546(j)  
       1000:e4e5 c3              RET
                             LAB_1000_e4e6                                   XREF[1]:     1000:e4dc(j)  
       1000:e4e6 b8 4b 1f        MOV        AX,0x1f4b
       1000:e4e9 8e c0           MOV        ES,AX
       1000:e4eb 2e 8a 5d 01     MOV        BL,byte ptr CS:[DI + 0x1]=>DAT_1000_e416
       1000:e4ef 32 ff           XOR        BH,BH
       1000:e4f1 81 c3 42 29     ADD        BX,0x2942
       1000:e4f5 2e 8a 45 02     MOV        AL,byte ptr CS:[DI + 0x2]=>DAT_1000_e417         = 02h
       1000:e4f9 26 08 07        OR         byte ptr ES:[BX],AL
       1000:e4fc 2e 8b 5d 03     MOV        BX,word ptr CS:[DI + 0x3]=>DAT_1000_e418
       1000:e500 0b db           OR         BX,BX
       1000:e502 74 3e           JZ         LAB_1000_e542
       1000:e504 e8 64 00        CALL       FUN_1000_e56b                                    undefined FUN_1000_e56b()
       1000:e507 72 dc           JC         LAB_1000_e4e5
       1000:e509 74 37           JZ         LAB_1000_e542
       1000:e50b 4e              DEC        SI
       1000:e50c 81 fb 26 38     CMP        BX,0x3826
       1000:e510 74 3b           JZ         LAB_1000_e54d
                             LAB_1000_e512                                   XREF[1]:     1000:e540(j)  
       1000:e512 33 d2           XOR        DX,DX
                             LAB_1000_e514                                   XREF[1]:     1000:e535(j)  
       1000:e514 e8 54 00        CALL       FUN_1000_e56b                                    undefined FUN_1000_e56b()
       1000:e517 8a e0           MOV        AH,AL
       1000:e519 76 1c           JBE        LAB_1000_e537
       1000:e51b 2c 30           SUB        AL,0x30
       1000:e51d 72 18           JC         LAB_1000_e537
       1000:e51f 3c 09           CMP        AL,0x9
       1000:e521 76 08           JBE        LAB_1000_e52b
       1000:e523 2c 07           SUB        AL,0x7
       1000:e525 72 10           JC         LAB_1000_e537
       1000:e527 3c 0f           CMP        AL,0xf
       1000:e529 77 0c           JA         LAB_1000_e537
                             LAB_1000_e52b                                   XREF[1]:     1000:e521(j)  
       1000:e52b d1 e2           SHL        DX,0x1
       1000:e52d d1 e2           SHL        DX,0x1
       1000:e52f d1 e2           SHL        DX,0x1
       1000:e531 d1 e2           SHL        DX,0x1
       1000:e533 0a d0           OR         DL,AL
       1000:e535 eb dd           JMP        LAB_1000_e514
                             LAB_1000_e537                                   XREF[4]:     1000:e519(j), 1000:e51d(j), 
                                                                                          1000:e525(j), 1000:e529(j)  
       1000:e537 26 89 17        MOV        word ptr ES:[BX],DX
       1000:e53a 83 c3 02        ADD        BX,0x2
       1000:e53d 80 fc 20        CMP        AH,0x20
       1000:e540 77 d0           JA         LAB_1000_e512
                             LAB_1000_e542                                   XREF[6]:     1000:e4c5(j), 1000:e4cc(j), 
                                                                                          1000:e4e3(j), 1000:e502(j), 
                                                                                          1000:e509(j), 1000:e569(j)  
       1000:e542 4e              DEC        SI
                             LAB_1000_e543                                   XREF[1]:     1000:e548(j)  
       1000:e543 e8 25 00        CALL       FUN_1000_e56b                                    undefined FUN_1000_e56b()
       1000:e546 72 9d           JC         LAB_1000_e4e5
       1000:e548 75 f9           JNZ        LAB_1000_e543
       1000:e54a e9 6a ff        JMP        LAB_1000_e4b7
                             LAB_1000_e54d                                   XREF[1]:     1000:e510(j)  
       1000:e54d 8b fb           MOV        DI,BX
                             LAB_1000_e54f                                   XREF[1]:     1000:e559(j)  
       1000:e54f e8 19 00        CALL       FUN_1000_e56b                                    undefined FUN_1000_e56b()
       1000:e552 76 07           JBE        LAB_1000_e55b
       1000:e554 aa              STOSB      ES:DI
       1000:e555 81 ff 98 38     CMP        DI,0x3898
       1000:e559 72 f4           JC         LAB_1000_e54f
                             LAB_1000_e55b                                   XREF[1]:     1000:e552(j)  
       1000:e55b b0 5c           MOV        AL,0x5c
       1000:e55d 26 38 45 ff     CMP        byte ptr ES:[DI + -0x1],AL
       1000:e561 74 01           JZ         LAB_1000_e564
       1000:e563 aa              STOSB      ES:DI
                             LAB_1000_e564                                   XREF[1]:     1000:e561(j)  
       1000:e564 26 89 3e        MOV        word ptr ES:[s_&8dune37s0.sav_1f4b_38a6],DI      = "&8dune37s0.sav"
                 a6 38
       1000:e569 eb d7           JMP        LAB_1000_e542
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e56b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e56b                                   XREF[7]:     FUN_1000_e4ad:1000:e4b9(c), 
                                                                                          FUN_1000_e4ad:1000:e4c2(c), 
                                                                                          FUN_1000_e4ad:1000:e4c9(c), 
                                                                                          FUN_1000_e4ad:1000:e504(c), 
                                                                                          FUN_1000_e4ad:1000:e514(c), 
                                                                                          FUN_1000_e4ad:1000:e543(c), 
                                                                                          FUN_1000_e4ad:1000:e54f(c)  
       1000:e56b b0 0d           MOV        AL,0xd
       1000:e56d 3b f5           CMP        SI,BP
       1000:e56f 73 07           JNC        LAB_1000_e578
       1000:e571 ac              LODSB      SI
       1000:e572 3c 61           CMP        AL,0x61
       1000:e574 72 02           JC         LAB_1000_e578
       1000:e576 24 df           AND        AL,0xdf
                             LAB_1000_e578                                   XREF[2]:     1000:e56f(j), 1000:e574(j)  
       1000:e578 3c 20           CMP        AL,0x20
       1000:e57a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e57b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e57b                                   XREF[3]:     FUN_1000_e594:1000:e5eb(c), 
                                                                                          FUN_1000_e76a:1000:e77b(c), 
                                                                                          FUN_1000_e76a:1000:e7d4(c)  
       1000:e57b 51              PUSH       CX
       1000:e57c 56              PUSH       SI
       1000:e57d 05 c8 00        ADD        AX,0xc8
       1000:e580 8b f0           MOV        SI,AX
       1000:e582 e8 34 0b        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:e585 5e              POP        SI
       1000:e586 59              POP        CX
       1000:e587 8c c0           MOV        AX,ES
       1000:e589 2d 10 00        SUB        AX,0x10
                             LAB_1000_e58c                                   XREF[1]:     1000:e591(j)  
       1000:e58c 89 04           MOV        word ptr [SI],AX
       1000:e58e 83 c6 04        ADD        SI,0x4
       1000:e591 e2 f9           LOOP       LAB_1000_e58c
       1000:e593 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_e594()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e594                                   XREF[1]:     entry:1000:0006(c)  
       1000:e594 b8 4b 1f        MOV        AX,0x1f4b
       1000:e597 8e c0           MOV        ES,AX
       1000:e599 b9 1d dd        MOV        CX,0xdd1d
       1000:e59c bf bc 3c        MOV        DI,0x3cbc
       1000:e59f 2b cf           SUB        CX,DI
       1000:e5a1 fc              CLD
       1000:e5a2 33 c0           XOR        AX,AX
       1000:e5a4 f3 aa           STOSB.REP  ES:DI=>DAT_1f4b_3cbc                             = ??
       1000:e5a6 a1 02 00        MOV        AX,[0x2]
       1000:e5a9 06              PUSH       ES
       1000:e5aa 1f              POP        DS
       1000:e5ab a3 68 ce        MOV        [0xce68],AX
       1000:e5ae b9 1d dd        MOV        CX,0xdd1d
       1000:e5b1 e8 4b 0b        CALL       FUN_1000_f0ff                                    undefined FUN_1000_f0ff()
       1000:e5b4 b8 6f 4c        MOV        AX,0x4c6f
       1000:e5b7 b1 04           MOV        CL,0x4
       1000:e5b9 d3 e8           SHR        AX,CL
       1000:e5bb 8c d9           MOV        CX,DS
       1000:e5bd 03 c1           ADD        AX,CX
       1000:e5bf a3 32 dc        MOV        [0xdc32],AX
       1000:e5c2 b4 19           MOV        AH,0x19
       1000:e5c4 cd 21           INT        0x21
       1000:e5c6 a2 76 ce        MOV        [0xce76],AL
       1000:e5c9 a2 77 ce        MOV        [0xce77],AL
       1000:e5cc b8 01 33        MOV        AX,0x3301
       1000:e5cf cd 21           INT        0x21
       1000:e5d1 88 16 41 29     MOV        byte ptr [0x2941],DL
       1000:e5d5 b8 01 33        MOV        AX,0x3301
       1000:e5d8 33 d2           XOR        DX,DX
       1000:e5da cd 21           INT        0x21
       1000:e5dc e8 96 00        CALL       FUN_1000_e675                                    undefined FUN_1000_e675()
       1000:e5df a0 42 29        MOV        AL,[0x2942]
       1000:e5e2 25 01 00        AND        AX,0x1
       1000:e5e5 be b7 38        MOV        SI,0x38b7
       1000:e5e8 b9 2e 00        MOV        CX,0x2e
       1000:e5eb e8 8d ff        CALL       FUN_1000_e57b                                    undefined FUN_1000_e57b()
       1000:e5ee ff 1e b9 38     CALLF      [0x38b9]
       1000:e5f2 a3 d8 db        MOV        [0xdbd8],AX
       1000:e5f5 e8 96 da        CALL       FUN_1000_c08e                                    undefined FUN_1000_c08e()
       1000:e5f8 89 0e 74 ce     MOV        word ptr [0xce74],CX
       1000:e5fc bf dc db        MOV        DI,0xdbdc
       1000:e5ff e8 f4 0a        CALL       FUN_1000_f0f6                                    undefined FUN_1000_f0f6()
       1000:e602 89 2e d6 db     MOV        word ptr [0xdbd6],BP
       1000:e606 0b ed           OR         BP,BP
       1000:e608 75 06           JNZ        LAB_1000_e610
       1000:e60a bf d4 db        MOV        DI,0xdbd4
       1000:e60d e8 e6 0a        CALL       FUN_1000_f0f6                                    undefined FUN_1000_f0f6()
                             LAB_1000_e610                                   XREF[1]:     1000:e608(j)  
       1000:e610 ff 1e b5 38     CALLF      [0x38b5]
       1000:e614 a0 42 29        MOV        AL,[0x2942]
       1000:e617 50              PUSH       AX
       1000:e618 d0 e8           SHR        AL,0x1
       1000:e61a d0 e8           SHR        AL,0x1
       1000:e61c 24 07           AND        AL,0x7
       1000:e61e a2 eb ce        MOV        [0xceeb],AL
       1000:e621 58              POP        AX
       1000:e622 0a c0           OR         AL,AL
       1000:e624 79 05           JNS        LAB_1000_e62b
       1000:e626 50              PUSH       AX
       1000:e627 e8 08 04        CALL       FUN_1000_ea32                                    undefined FUN_1000_ea32()
       1000:e62a 58              POP        AX
                             LAB_1000_e62b                                   XREF[1]:     1000:e624(j)  
       1000:e62b a8 40           TEST       AL,0x40
       1000:e62d 75 03           JNZ        LAB_1000_e632
       1000:e62f e8 48 03        CALL       FUN_1000_e97a                                    undefined FUN_1000_e97a()
                             LAB_1000_e632                                   XREF[1]:     1000:e62d(j)  
       1000:e632 e8 27 02        CALL       FUN_1000_e85c                                    undefined FUN_1000_e85c()
       1000:e635 e8 43 04        CALL       FUN_1000_ea7b                                    undefined FUN_1000_ea7b()
       1000:e638 a0 42 29        MOV        AL,[0x2942]
       1000:e63b 24 02           AND        AL,0x2
       1000:e63d bd 7a ce        MOV        BP,0xce7a
       1000:e640 ff 1e 25 39     CALLF      [0x3925]
       1000:e644 c7 06 48        MOV        word ptr [0xdc48],0x271c
                 dc 1c 27
       1000:e64a c6 06 46        MOV        byte ptr [0xdc46],0xff
                 dc ff
       1000:e64f 33 c0           XOR        AX,AX
       1000:e651 bb c7 00        MOV        BX,0xc7
       1000:e654 33 c9           XOR        CX,CX
       1000:e656 ba 3f 01        MOV        DX,0x13f
       1000:e659 e8 b8 f4        CALL       FUN_1000_db14                                    undefined FUN_1000_db14()
       1000:e65c bb ab 00        MOV        BX,0xab
       1000:e65f ba ed 00        MOV        DX,0xed
       1000:e662 e8 9e f4        CALL       FUN_1000_db03                                    undefined FUN_1000_db03()
       1000:e665 e8 02 01        CALL       FUN_1000_e76a                                    undefined FUN_1000_e76a()
       1000:e668 e8 01 e8        CALL       FUN_1000_ce6c                                    undefined FUN_1000_ce6c()
       1000:e66b e8 0e da        CALL       FUN_1000_c07c                                    undefined FUN_1000_c07c()
       1000:e66e e8 3c da        CALL       FUN_1000_c0ad                                    undefined FUN_1000_c0ad()
       1000:e671 e9 9e dd        JMP        FUN_1000_c412                                    undefined FUN_1000_c412()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_1000_e674                                   XREF[1]:     1000:e6a4(j)  
       1000:e674 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e675()
                             ; Archive opening and directory loading function
                             ; Opens dune.dat archive file and processes its directory entries
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e675                                   XREF[2]:     FUN_1000_e594:1000:e5dc(c), 
                                                                                          1000:e69a(j)  
       1000:e675 ba f2 37        MOV        DX,0x37f2
       1000:e678 e8 80 0b        CALL       FUN_1000_f1fb                                    undefined FUN_1000_f1fb()
       1000:e67b 72 15           JC         LAB_1000_e692
       1000:e67d c4 3e b7 39     LES        DI,[0x39b7]
       1000:e681 e8 dc 0b        CALL       FUN_1000_f260                                    undefined FUN_1000_f260()
       1000:e684 26 81 3d        CMP        word ptr ES:[DI],0xc089
                 89 c0
       1000:e689 75 07           JNZ        LAB_1000_e692
       1000:e68b ba ff 31        MOV        DX,0x31ff
       1000:e68e ff 1e b7 39     CALLF      [0x39b7]
                             LAB_1000_e692                                   XREF[2]:     1000:e67b(j), 1000:e689(j)  
       1000:e692 be f7 37        MOV        SI,0x37f7
       1000:e695 fe 04           INC        byte ptr [SI]
       1000:e697 80 3c 39        CMP        byte ptr [SI],0x39
       1000:e69a 76 d9           JBE        FUN_1000_e675
       1000:e69c ba e9 37        MOV        DX,0x37e9                    ; Load address of "dune.dat" string
       1000:e69f b8 00 3d        MOV        AX,0x3d00                    ; DOS function 3Dh: Open file (AL=00h: read-only mode)
       1000:e6a2 cd 21           INT        0x21                         ; Open dune.dat archive file
       1000:e6a4 72 ce           JC         LAB_1000_e674                ; Jump if open failed (carry flag set)
       1000:e6a6 a3 ba db        MOV        [0xdbba],AX                  ; Store file handle for archive
       1000:e6a9 e8 95 00        CALL       FUN_1000_e741                ; Read archive directory/header from start of file
       1000:e6ac 8b f7           MOV        SI,DI                        ; SI points to loaded archive directory data
       1000:e6ae 8c c5           MOV        BP,ES                        ; Save segment of directory data
       1000:e6b0 c4 3e b7 39     LES        DI,[0x39b7]                  ; Load destination for processed directory
       1000:e6b4 89 3e bc db     MOV        word ptr [0xdbbc],DI         ; Store directory base offset
       1000:e6b8 8c 06 be db     MOV        word ptr [0xdbbe],ES         ; Store directory base segment
       1000:e6bc b8 45 01        MOV        AX,0x145                     ; Initialize directory with 0x145
       1000:e6bf ab              STOSW      ES:DI
       1000:e6c0 b9 4d 01        MOV        CX,0x14d                     ; Fill 333 bytes with 0xFF
       1000:e6c3 b0 ff           MOV        AL,0xff
       1000:e6c5 f3 aa           STOSB.REP  ES:DI
       1000:e6c7 89 3e 20 d8     MOV        word ptr [0xd820],DI         ; Store current directory position
       1000:e6cb 1e              PUSH       DS
       1000:e6cc 8e dd           MOV        DS,BP                        ; Set DS to archive directory segment
       1000:e6ce ad              LODSW      SI                           ; Read first word from archive directory (purpose unclear - see dune-dat-format.md)
                             LAB_1000_e6cf                                   XREF[1]:     1000:e708(j)  
                             ; Archive entry processing loop - processes each 25-byte entry
       1000:e6cf 56              PUSH       SI                           ; Save SI (points to current entry)
       1000:e6d0 e8 41 0c        CALL       FUN_1000_f314                ; Parse and decode filename from entry
       1000:e6d3 5e              POP        SI                           ; Restore SI
       1000:e6d4 72 2c           JC         LAB_1000_e702                ; Skip if filename parsing failed
       1000:e6d6 e8 ce 0c        CALL       FUN_1000_f3a7                ; Search for entry in directory structure
       1000:e6d9 74 1e           JZ         LAB_1000_e6f9                ; Jump if entry not found (new entry)
       1000:e6db 50              PUSH       AX
       1000:e6dc 52              PUSH       DX
       1000:e6dd 56              PUSH       SI
       1000:e6de 57              PUSH       DI
       1000:e6df 36 8b 0e        MOV        CX,word ptr SS:[0xd820]
                 20 d8
       1000:e6e4 8b f1           MOV        SI,CX
       1000:e6e6 2b cf           SUB        CX,DI
       1000:e6e8 83 ee 02        SUB        SI,0x2
       1000:e6eb 8d 7c 0a        LEA        DI,[SI + 0xa]
       1000:e6ee d1 e9           SHR        CX,0x1
       1000:e6f0 fd              STD
       1000:e6f1 f3 26 a5        MOVSW.REP  ES:DI,ES:SI
       1000:e6f4 fc              CLD
       1000:e6f5 5f              POP        DI
       1000:e6f6 5e              POP        SI
       1000:e6f7 5a              POP        DX
       1000:e6f8 58              POP        AX
                             LAB_1000_e6f9                                   XREF[1]:     1000:e6d9(j)  
       1000:e6f9 e8 5f 00        CALL       FUN_1000_e75b                ; Store 10-byte directory entry
       1000:e6fc 36 83 06        ADD        word ptr SS:[0xd820],0xa     ; Advance directory position by 10 bytes (entry size)
                 20 d8 0a
                             LAB_1000_e702                                   XREF[1]:     1000:e6d4(j)  
       1000:e702 83 c6 19        ADD        SI,0x19                      ; Advance to next entry (25 bytes per entry)
       1000:e705 80 3c 00        CMP        byte ptr [SI],0x0            ; Check if we reached end marker (0 byte)
       1000:e708 75 c5           JNZ        LAB_1000_e6cf                ; Continue loop if not at end
       1000:e70a 1f              POP        DS
       1000:e70b be 45 01        MOV        SI,0x145
       1000:e70e a1 20 d8        MOV        AX,[0xd820]
       1000:e711 2b c6           SUB        AX,SI
       1000:e713 33 d2           XOR        DX,DX
       1000:e715 b9 80 02        MOV        CX,0x280
       1000:e718 f7 f1           DIV        CX
       1000:e71a ba 0a 00        MOV        DX,0xa
       1000:e71d f7 e2           MUL        DX
       1000:e71f 8b d0           MOV        DX,AX
       1000:e721 36 c4 3e        LES        DI,SS:[0xdbbc]
                 bc db
       1000:e726 83 c7 02        ADD        DI,0x2
                             LAB_1000_e729                                   XREF[1]:     1000:e738(j)  
       1000:e729 03 f2           ADD        SI,DX
       1000:e72b 56              PUSH       SI
       1000:e72c 26 a5           MOVSW      ES:DI,ES:SI
       1000:e72e 26 a4           MOVSB      ES:DI,ES:SI
       1000:e730 5e              POP        SI
       1000:e731 8b c6           MOV        AX,SI
       1000:e733 ab              STOSW      ES:DI
       1000:e734 81 ff 40 01     CMP        DI,0x140
       1000:e738 72 ef           JC         LAB_1000_e729
       1000:e73a 8b 0e 20 d8     MOV        CX,word ptr [0xd820]
       1000:e73e e9 be 09        JMP        FUN_1000_f0ff                                    undefined FUN_1000_f0ff()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e741()
                             ; Archive header reader
                             ; Seeks to start of archive and reads directory/catalog into memory
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e741                                   XREF[3]:     FUN_1000_e675:1000:e6a9(c), 
                                                                                          1000:e758(j), 
                                                                                          FUN_1000_e826:1000:e82d(c)  
       1000:e741 33 c0           XOR        AX,AX                        ; AX = 0 (low word of offset)
       1000:e743 33 d2           XOR        DX,DX                        ; DX = 0 (high word of offset)
       1000:e745 e8 8e 0b        CALL       FUN_1000_f2d6                ; Seek to offset 0 (start of archive file)
       1000:e748 a1 b9 39        MOV        AX,[0x39b9]
       1000:e74b 05 00 08        ADD        AX,0x800
       1000:e74e 8e c0           MOV        ES,AX                        ; Set ES to buffer segment
       1000:e750 33 ff           XOR        DI,DI                        ; DI = 0 (buffer offset)
       1000:e752 b9 ff ff        MOV        CX,0xffff                    ; Read 65535 bytes (entire archive directory)
       1000:e755 e8 92 0b        CALL       FUN_1000_f2ea                ; Read archive directory from file
       1000:e758 72 e7           JC         FUN_1000_e741                ; Retry if read failed
       1000:e75a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e75b()
                             ; Archive entry directory storage function
                             ; Stores a 10-byte processed entry into the game's directory structure
                             ; Entry format in archive (25 bytes):
                             ;   +0x00: 16 bytes - filename (may be encoded with \P prefix)
                             ;   +0x10: 3 bytes - metadata (file ID/type)
                             ;   +0x13: 1 byte - padding/skip
                             ;   +0x14: 4 bytes - file offset (32-bit, 2 words)
                             ; Stored format (10 bytes):
                             ;   +0x0: 2 bytes - file ID (from AX)
                             ;   +0x2: 1 byte - file type/flags (from DL)
                             ;   +0x3: 3 bytes - metadata from archive entry +0x10
                             ;   +0x6: 4 bytes - file offset from archive entry +0x14
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e75b                                   XREF[2]:     FUN_1000_e675:1000:e6f9(c), 
                                                                                          FUN_1000_e826:1000:e846(c)  
       1000:e75b 56              PUSH       SI                           ; Save SI (points to archive entry)
       1000:e75c ab              STOSW      ES:DI                        ; Store word at offset +0x0 (file ID from AX)
       1000:e75d 8a c2           MOV        AL,DL                        ; Get file type/flags from DL
       1000:e75f aa              STOSB      ES:DI                        ; Store byte at offset +0x2 (file type)
       1000:e760 83 c6 10        ADD        SI,0x10                      ; Skip 16-byte filename in archive entry
       1000:e763 a5              MOVSW      ES:DI,SI                     ; Copy word from archive +0x10 to directory +0x3
       1000:e764 a4              MOVSB      ES:DI,SI                     ; Copy byte from archive +0x12 to directory +0x5
       1000:e765 46              INC        SI                           ; Skip 1 byte padding at archive +0x13
       1000:e766 a5              MOVSW      ES:DI,SI                     ; Copy offset low word from archive +0x14 to directory +0x6
       1000:e767 a5              MOVSW      ES:DI,SI                     ; Copy offset high word from archive +0x16 to directory +0x8
       1000:e768 5e              POP        SI                           ; Restore SI
       1000:e769 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e76a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e76a                                   XREF[2]:     FUN_1000_e594:1000:e665(c), 
                                                                                          1000:e7b7(j)  
       1000:e76a a0 44 29        MOV        AL,[0x2944]
       1000:e76d b1 04           MOV        CL,0x4
       1000:e76f d2 e8           SHR        AL,CL
       1000:e771 04 07           ADD        AL,0x7
       1000:e773 32 e4           XOR        AH,AH
       1000:e775 be 8b 39        MOV        SI,0x398b
       1000:e778 b9 08 00        MOV        CX,0x8
       1000:e77b e8 fd fd        CALL       FUN_1000_e57b                                    undefined FUN_1000_e57b()
       1000:e77e a1 b5 39        MOV        AX,[0x39b5]
       1000:e781 ff 1e 89 39     CALLF      [0x3989]
       1000:e785 89 1e c8 db     MOV        word ptr [0xdbc8],BX
       1000:e789 e8 ab be        CALL       FUN_1000_a637                                    undefined FUN_1000_a637()
       1000:e78c e8 c5 c6        CALL       FUN_1000_ae54                                    undefined FUN_1000_ae54()
       1000:e78f e8 bf 00        CALL       FUN_1000_e851                                    undefined FUN_1000_e851()
       1000:e792 72 28           JC         LAB_1000_e7bc
       1000:e794 f6 06 44        TEST       byte ptr [0x2944],0xf0
                 29 f0
       1000:e799 74 1e           JZ         LAB_1000_e7b9
       1000:e79b 80 26 44        AND        byte ptr [0x2944],0xf
                 29 0f
       1000:e7a0 33 c0           XOR        AX,AX
       1000:e7a2 a3 13 38        MOV        [0x3813],AX
       1000:e7a5 a2 c8 db        MOV        [0xdbc8],AL
       1000:e7a8 a1 8b 39        MOV        AX,[0x398b]
       1000:e7ab 05 10 00        ADD        AX,0x10
       1000:e7ae a3 b9 39        MOV        [0x39b9],AX
       1000:e7b1 c7 06 bc        MOV        word ptr [0x3cbc],0x3624
                 3c 24 36
       1000:e7b7 eb b1           JMP        FUN_1000_e76a
                             LAB_1000_e7b9                                   XREF[2]:     1000:e799(j), 1000:e7f8(j)  
       1000:e7b9 e9 75 09        JMP        LAB_1000_f131
                             LAB_1000_e7bc                                   XREF[1]:     1000:e792(j)  
       1000:e7bc a1 13 38        MOV        AX,[0x3813]
       1000:e7bf a3 1b 38        MOV        [0x381b],AX
       1000:e7c2 e8 b9 c0        CALL       FUN_1000_a87e                                    undefined FUN_1000_a87e()
                             LAB_1000_e7c5                                   XREF[1]:     1000:e816(j)  
       1000:e7c5 a0 44 29        MOV        AL,[0x2944]
       1000:e7c8 25 0f 00        AND        AX,0xf
       1000:e7cb 05 02 00        ADD        AX,0x2
       1000:e7ce be 6f 39        MOV        SI,0x396f
       1000:e7d1 b9 07 00        MOV        CX,0x7
       1000:e7d4 e8 a4 fd        CALL       FUN_1000_e57b                                    undefined FUN_1000_e57b()
       1000:e7d7 bd 49 33        MOV        BP,0x3349
       1000:e7da b9 0a 00        MOV        CX,0xa
       1000:e7dd a1 b3 39        MOV        AX,[0x39b3]
       1000:e7e0 ff 1e 6d 39     CALLF      [0x396d]
       1000:e7e4 09 1e c8 db     OR         word ptr [0xdbc8],BX
       1000:e7e8 e8 65 be        CALL       FUN_1000_a650                                    undefined FUN_1000_a650()
       1000:e7eb e8 51 c6        CALL       FUN_1000_ae3f                                    undefined FUN_1000_ae3f()
       1000:e7ee e8 60 00        CALL       FUN_1000_e851                                    undefined FUN_1000_e851()
       1000:e7f1 72 25           JC         LAB_1000_e818
       1000:e7f3 f6 06 44        TEST       byte ptr [0x2944],0xf
                 29 0f
       1000:e7f8 74 bf           JZ         LAB_1000_e7b9
       1000:e7fa 80 26 44        AND        byte ptr [0x2944],0xf0
                 29 f0
       1000:e7ff 33 c0           XOR        AX,AX
       1000:e801 a3 b8 db        MOV        [0xdbb8],AX
       1000:e804 a2 c9 db        MOV        [0xdbc9],AL
       1000:e807 a1 6f 39        MOV        AX,[0x396f]
       1000:e80a 05 10 00        ADD        AX,0x10
       1000:e80d a3 b9 39        MOV        [0x39b9],AX
       1000:e810 c7 06 bc        MOV        word ptr [0x3cbc],0x364b
                 3c 4b 36
       1000:e816 eb ad           JMP        LAB_1000_e7c5
                             LAB_1000_e818                                   XREF[1]:     1000:e7f1(j)  
       1000:e818 e8 0d c6        CALL       FUN_1000_ae28                                    undefined FUN_1000_ae28()
       1000:e81b 74 08           JZ         LAB_1000_e825
       1000:e81d e8 06 00        CALL       FUN_1000_e826                                    undefined FUN_1000_e826()
       1000:e820 80 26 43        AND        byte ptr [0x2943],0xef
                 29 ef
                             LAB_1000_e825                                   XREF[1]:     1000:e81b(j)  
       1000:e825 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e826()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e826                                   XREF[1]:     FUN_1000_e76a:1000:e81d(c)  
       1000:e826 83 3e ba        CMP        word ptr [0xdbba],0x0
                 db 00
       1000:e82b 74 23           JZ         LAB_1000_e850
       1000:e82d e8 11 ff        CALL       FUN_1000_e741                                    undefined FUN_1000_e741()
       1000:e830 1e              PUSH       DS
       1000:e831 8b f7           MOV        SI,DI
       1000:e833 06              PUSH       ES
       1000:e834 1f              POP        DS
       1000:e835 ad              LODSW      SI
       1000:e836 b9 fa 00        MOV        CX,0xfa
                             LAB_1000_e839                                   XREF[1]:     1000:e84d(j)  
       1000:e839 51              PUSH       CX
       1000:e83a 56              PUSH       SI
       1000:e83b e8 d6 0a        CALL       FUN_1000_f314                                    undefined FUN_1000_f314()
       1000:e83e 5e              POP        SI
       1000:e83f 72 08           JC         LAB_1000_e849
       1000:e841 e8 63 0b        CALL       FUN_1000_f3a7                                    undefined FUN_1000_f3a7()
       1000:e844 75 03           JNZ        LAB_1000_e849
       1000:e846 e8 12 ff        CALL       FUN_1000_e75b                                    undefined FUN_1000_e75b()
                             LAB_1000_e849                                   XREF[2]:     1000:e83f(j), 1000:e844(j)  
       1000:e849 83 c6 19        ADD        SI,0x19
       1000:e84c 59              POP        CX
       1000:e84d e2 ea           LOOP       LAB_1000_e839
       1000:e84f 1f              POP        DS
                             LAB_1000_e850                                   XREF[1]:     1000:e82b(j)  
       1000:e850 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e851()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e851                                   XREF[2]:     FUN_1000_e76a:1000:e78f(c), 
                                                                                          FUN_1000_e76a:1000:e7ee(c)  
       1000:e851 a1 b9 39        MOV        AX,[0x39b9]
       1000:e854 05 13 2f        ADD        AX,0x2f13
                             LAB_1000_e857+1                                 XREF[0,2]:   FUN_1000_4a1a:1000:4a37(R), 
                             LAB_1000_e857+3                                              FUN_1000_4a1a:1000:4a3b(R)  
       1000:e857 3b 06 68 ce     CMP        AX,word ptr [0xce68]
       1000:e85b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_e85c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e85c                                   XREF[1]:     FUN_1000_e594:1000:e632(c)  
       1000:e85c fa              CLI
       1000:e85d e8 b3 00        CALL       FUN_1000_e913                                    undefined FUN_1000_e913()
       1000:e860 33 c0           XOR        AX,AX
       1000:e862 8e c0           MOV        ES,AX
       1000:e864 bf 20 00        MOV        DI,0x20
       1000:e867 26 c7 05        MOV        word ptr ES:[DI],0xe8b8
                 b8 e8
       1000:e86c 9c              PUSHF
       1000:e86d fb              STI
                             LAB_1000_e86e                                   XREF[1]:     1000:e874(j)  
       1000:e86e 2e 80 3e        CMP        byte ptr CS:[DAT_1000_e8d4],0x0
                 d4 e8 00
       1000:e874 74 f8           JZ         LAB_1000_e86e
       1000:e876 9d              POPF
       1000:e877 26 c7 05        MOV        word ptr ES:[DI],0xef6a
                 6a ef
       1000:e87c 2e a1 d2 e8     MOV        AX,CS:[DAT_1000_e8d2]
       1000:e880 0a e4           OR         AH,AH
       1000:e882 74 21           JZ         LAB_1000_e8a5
       1000:e884 0a c0           OR         AL,AL
       1000:e886 74 1d           JZ         LAB_1000_e8a5
       1000:e888 33 d2           XOR        DX,DX
       1000:e88a b9 45 17        MOV        CX,0x1745
       1000:e88d f7 f1           DIV        CX
       1000:e88f d1 e2           SHL        DX,0x1
       1000:e891 3b d1           CMP        DX,CX
       1000:e893 72 01           JC         LAB_1000_e896
       1000:e895 40              INC        AX
                             LAB_1000_e896                                   XREF[1]:     1000:e893(j)  
       1000:e896 48              DEC        AX
       1000:e897 79 01           JNS        LAB_1000_e89a
       1000:e899 40              INC        AX
                             LAB_1000_e89a                                   XREF[1]:     1000:e897(j)  
       1000:e89a 3d 0a 00        CMP        AX,0xa
       1000:e89d 72 02           JC         LAB_1000_e8a1
       1000:e89f b0 0a           MOV        AL,0xa
                             LAB_1000_e8a1                                   XREF[1]:     1000:e89d(j)  
       1000:e8a1 2e a2 d9 ef     MOV        CS:[DAT_1000_efd9],AL                            = 0Ah
                             LAB_1000_e8a5                                   XREF[2]:     1000:e882(j), 1000:e886(j)  
       1000:e8a5 b8 45 17        MOV        AX,0x1745
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e8a8()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e8a8                                   XREF[1]:     FUN_1000_e8d5:1000:e8ff(c)  
       1000:e8a8 9c              PUSHF
       1000:e8a9 50              PUSH       AX
       1000:e8aa fa              CLI
       1000:e8ab b0 36           MOV        AL,0x36
       1000:e8ad e6 43           OUT        0x43,AL
       1000:e8af 58              POP        AX
       1000:e8b0 e6 40           OUT        0x40,AL
       1000:e8b2 8a c4           MOV        AL,AH
       1000:e8b4 e6 40           OUT        0x40,AL
       1000:e8b6 9d              POPF
       1000:e8b7 c3              RET
                             DAT_1000_e8d2                                   XREF[1]:     FUN_1000_e85c:1000:e87c(R)  
       1000:e8d2 00 00           undefined2 0000h
                             DAT_1000_e8d4                                   XREF[1]:     FUN_1000_e85c:1000:e86e(R)  
       1000:e8d4 00              undefined1 00h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e8d5()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e8d5                                   XREF[1]:     entry:1000:0044(c)  
       1000:e8d5 2e 83 3e        CMP        word ptr CS:[DAT_1000_ee8a],0x0
                 8a ee 00
       1000:e8db 74 05           JZ         LAB_1000_e8e2
       1000:e8dd b4 0a           MOV        AH,0xa
       1000:e8df e8 49 06        CALL       FUN_1000_ef2b                                    undefined FUN_1000_ef2b()
                             LAB_1000_e8e2                                   XREF[1]:     1000:e8db(j)  
       1000:e8e2 2e 83 3e        CMP        word ptr CS:[DAT_1000_ed3a],0x0
                 3a ed 00
       1000:e8e8 74 05           JZ         LAB_1000_e8ef
       1000:e8ea b4 45           MOV        AH,0x45
       1000:e8ec e8 51 04        CALL       FUN_1000_ed40                                    undefined FUN_1000_ed40()
                             LAB_1000_e8ef                                   XREF[1]:     1000:e8e8(j)  
       1000:e8ef 2e 8b 16        MOV        DX,word ptr CS:[DAT_1000_ed3e]
                 3e ed
       1000:e8f4 0b d2           OR         DX,DX
       1000:e8f6 74 05           JZ         LAB_1000_e8fd
       1000:e8f8 b4 45           MOV        AH,0x45
       1000:e8fa e8 48 04        CALL       FUN_1000_ed45                                    undefined FUN_1000_ed45()
                             LAB_1000_e8fd                                   XREF[1]:     1000:e8f6(j)  
       1000:e8fd 33 c0           XOR        AX,AX
       1000:e8ff e8 a6 ff        CALL       FUN_1000_e8a8                                    undefined FUN_1000_e8a8()
       1000:e902 8a 16 41 29     MOV        DL,byte ptr [0x2941]
       1000:e906 b8 01 33        MOV        AX,0x3301
       1000:e909 cd 21           INT        0x21
       1000:e90b 80 3e 73        CMP        byte ptr [0xce73],0x0
                 ce 00
       1000:e910 75 01           JNZ        FUN_1000_e913
       1000:e912 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e913()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e913                                   XREF[2]:     FUN_1000_e85c:1000:e85d(c), 
                                                                                          FUN_1000_e8d5:1000:e910(j)  
       1000:e913 80 36 73        XOR        byte ptr [0xce73],0xff
                 ce ff
       1000:e918 be 13 29        MOV        SI,0x2913
       1000:e91b 9c              PUSHF
       1000:e91c fa              CLI
       1000:e91d ad              LODSW      SI
                             LAB_1000_e91e                                   XREF[1]:     1000:e946(j)  
       1000:e91e 8b f8           MOV        DI,AX
       1000:e920 ad              LODSW      SI
       1000:e921 97              XCHG       AX,DI
       1000:e922 56              PUSH       SI
       1000:e923 8b f0           MOV        SI,AX
       1000:e925 d1 e6           SHL        SI,0x1
       1000:e927 d1 e6           SHL        SI,0x1
       1000:e929 33 c0           XOR        AX,AX
       1000:e92b 8e c0           MOV        ES,AX
       1000:e92d 2e 8b 05        MOV        AX,word ptr CS:[DI]
       1000:e930 26 87 04        XCHG       word ptr ES:[SI],AX
       1000:e933 2e 89 05        MOV        word ptr CS:[DI],AX
       1000:e936 2e 8b 45 02     MOV        AX,word ptr CS:[DI + 0x2]
       1000:e93a 26 87 44 02     XCHG       word ptr ES:[SI + 0x2],AX
       1000:e93e 2e 89 45 02     MOV        word ptr CS:[DI + 0x2],AX
       1000:e942 5e              POP        SI
       1000:e943 ad              LODSW      SI
       1000:e944 0b c0           OR         AX,AX
       1000:e946 79 d6           JNS        LAB_1000_e91e
       1000:e948 9d              POPF
       1000:e949 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_e94a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e94a
       1000:e94a 55              PUSH       BP
       1000:e94b 8b ec           MOV        BP,SP
       1000:e94d 83 46 02 02     ADD        word ptr [BP + 0x2],0x2
       1000:e951 5d              POP        BP
       1000:e952 cf              IRET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_e97a()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_e97a                                   XREF[1]:     FUN_1000_e594:1000:e62f(c)  
       1000:e97a b8 33 35        MOV        AX,0x3533
       1000:e97d cd 21           INT        0x21
       1000:e97f 8c c0           MOV        AX,ES
       1000:e981 0b c3           OR         AX,BX
       1000:e983 74 6e           JZ         LAB_1000_e9f3
       1000:e985 b8 00 00        MOV        AX,0x0
       1000:e988 cd 33           INT        0x33
       1000:e98a 40              INC        AX
       1000:e98b 75 66           JNZ        LAB_1000_e9f3
       1000:e98d 33 c9           XOR        CX,CX
       1000:e98f 33 d2           XOR        DX,DX
       1000:e991 b8 04 00        MOV        AX,0x4
       1000:e994 cd 33           INT        0x33
                             LAB_1000_e996                                   XREF[1]:     1000:e9b1(j)  
       1000:e996 fe 06 80 25     INC        byte ptr [0x2580]
       1000:e99a 78 17           JS         LAB_1000_e9b3
       1000:e99c 8a 0e 80 25     MOV        CL,byte ptr [0x2580]
       1000:e9a0 b8 01 00        MOV        AX,0x1
       1000:e9a3 d3 e0           SHL        AX,CL
       1000:e9a5 8b c8           MOV        CX,AX
       1000:e9a7 b8 04 00        MOV        AX,0x4
       1000:e9aa cd 33           INT        0x33
       1000:e9ac b8 03 00        MOV        AX,0x3
       1000:e9af cd 33           INT        0x33
       1000:e9b1 e3 e3           JCXZ       LAB_1000_e996
                             LAB_1000_e9b3                                   XREF[2]:     1000:e99a(j), 1000:e9ce(j)  
       1000:e9b3 fe 06 81 25     INC        byte ptr [0x2581]
       1000:e9b7 78 17           JS         LAB_1000_e9d0
       1000:e9b9 8a 0e 81 25     MOV        CL,byte ptr [0x2581]
       1000:e9bd ba 01 00        MOV        DX,0x1
       1000:e9c0 d3 e2           SHL        DX,CL
       1000:e9c2 b8 04 00        MOV        AX,0x4
       1000:e9c5 cd 33           INT        0x33
       1000:e9c7 b8 03 00        MOV        AX,0x3
       1000:e9ca cd 33           INT        0x33
       1000:e9cc 0b d2           OR         DX,DX
       1000:e9ce 74 e3           JZ         LAB_1000_e9b3
                             LAB_1000_e9d0                                   XREF[1]:     1000:e9b7(j)  
       1000:e9d0 b8 10 00        MOV        AX,0x10
       1000:e9d3 8b d0           MOV        DX,AX
       1000:e9d5 81 26 80        AND        word ptr [0x2580],0x7f7f
                 25 7f 7f
       1000:e9db 8b 0e 80 25     MOV        CX,word ptr [0x2580]
       1000:e9df d3 e8           SHR        AX,CL
       1000:e9e1 8a cd           MOV        CL,CH
       1000:e9e3 d3 ea           SHR        DX,CL
       1000:e9e5 8b c8           MOV        CX,AX
       1000:e9e7 b8 0f 00        MOV        AX,0xf
       1000:e9ea 52              PUSH       DX
       1000:e9eb cd 33           INT        0x33
       1000:e9ed 5a              POP        DX
       1000:e9ee b8 13 00        MOV        AX,0x13
       1000:e9f1 cd 33           INT        0x33
                             LAB_1000_e9f3                                   XREF[4]:     1000:e983(j), 1000:e98b(j), 
                                                                                          FUN_1000_ea32:1000:ea4e(j), 
                                                                                          FUN_1000_ea32:1000:ea58(j)  
       1000:e9f3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ea32()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ea32                                   XREF[1]:     FUN_1000_e594:1000:e627(c)  
       1000:ea32 be ab 39        MOV        SI,0x39ab
       1000:ea35 33 db           XOR        BX,BX
       1000:ea37 b9 04 00        MOV        CX,0x4
                             LAB_1000_ea3a                                   XREF[1]:     1000:ea3d(j)  
       1000:ea3a ad              LODSW      SI
       1000:ea3b 0b d8           OR         BX,AX
       1000:ea3d e2 fb           LOOP       LAB_1000_ea3a
       1000:ea3f 0b db           OR         BX,BX
       1000:ea41 75 31           JNZ        LAB_1000_ea74
       1000:ea43 e8 9a f2        CALL       FUN_1000_dce0                                    undefined FUN_1000_dce0()
       1000:ea46 8b c2           MOV        AX,DX
       1000:ea48 2d 04 00        SUB        AX,0x4
       1000:ea4b 80 fc 04        CMP        AH,0x4
       1000:ea4e 73 a3           JNC        LAB_1000_e9f3
       1000:ea50 8b c3           MOV        AX,BX
       1000:ea52 2d 04 00        SUB        AX,0x4
       1000:ea55 80 fc 04        CMP        AH,0x4
       1000:ea58 73 99           JNC        LAB_1000_e9f3
       1000:ea5a 8b c2           MOV        AX,DX
       1000:ea5c d1 e8           SHR        AX,0x1
       1000:ea5e 03 d0           ADD        DX,AX
       1000:ea60 be ab 39        MOV        SI,0x39ab
       1000:ea63 89 04           MOV        word ptr [SI],AX
       1000:ea65 89 54 02        MOV        word ptr [SI + 0x2],DX
       1000:ea68 8b c3           MOV        AX,BX
       1000:ea6a d1 e8           SHR        AX,0x1
       1000:ea6c 03 d8           ADD        BX,AX
       1000:ea6e 89 44 04        MOV        word ptr [SI + 0x4],AX
       1000:ea71 89 5c 06        MOV        word ptr [SI + 0x6],BX
                             LAB_1000_ea74                                   XREF[1]:     1000:ea41(j)  
       1000:ea74 c3              RET
                             DAT_1000_ea75                                   XREF[5]:     FUN_1000_eab7:1000:eada(R), 
                                                                                          FUN_1000_eab7:1000:eae4(W), 
                                                                                          FUN_1000_eb74:1000:eb7c(R), 
                                                                                          FUN_1000_ebe3:1000:ebf9(R), 
                                                                                          FUN_1000_ebe3:1000:ec02(W)  
       1000:ea75 00 00           undefined2 0000h
                             DAT_1000_ea77                                   XREF[3]:     FUN_1000_ec59:1000:ec5e(R), 
                                                                                          FUN_1000_ed4c:1000:eda8(W), 
                                                                                          FUN_1000_eea0:1000:eed8(W)  
       1000:ea77 9c ec           undefined2 EC9Ch
                             DAT_1000_ea79                                   XREF[3]:     FUN_1000_ec46:1000:ec4b(R), 
                                                                                          FUN_1000_ed4c:1000:edad(W), 
                                                                                          FUN_1000_eea0:1000:eedd(W)  
       1000:ea79 ec ec           undefined2 ECECh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ea7b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ea7b                                   XREF[1]:     FUN_1000_e594:1000:e635(c)  
       1000:ea7b f6 06 43        TEST       byte ptr [0x2943],0x80
                 29 80
       1000:ea80 74 03           JZ         LAB_1000_ea85
       1000:ea82 e8 1b 04        CALL       FUN_1000_eea0                                    undefined FUN_1000_eea0()
                             LAB_1000_ea85                                   XREF[1]:     1000:ea80(j)  
       1000:ea85 f6 06 43        TEST       byte ptr [0x2943],0x48
                 29 48
       1000:ea8a 74 03           JZ         LAB_1000_ea8f
       1000:ea8c e8 bd 02        CALL       FUN_1000_ed4c                                    undefined FUN_1000_ed4c()
                             LAB_1000_ea8f                                   XREF[1]:     1000:ea8a(j)  
       1000:ea8f f6 06 43        TEST       byte ptr [0x2943],0xe8
                 29 e8
       1000:ea94 74 20           JZ         LAB_1000_eab6
       1000:ea96 bf 6a ce        MOV        DI,0xce6a
       1000:ea99 8b 0e a9 39     MOV        CX,word ptr [0x39a9]
       1000:ea9d b8 b9 00        MOV        AX,0xb9
       1000:eaa0 a2 70 ce        MOV        [0xce70],AL
       1000:eaa3 03 c8           ADD        CX,AX
       1000:eaa5 03 c8           ADD        CX,AX
       1000:eaa7 51              PUSH       CX
       1000:eaa8 d1 e1           SHL        CX,0x1
       1000:eaaa e8 49 06        CALL       FUN_1000_f0f6                                    undefined FUN_1000_f0f6()
       1000:eaad c4 3e 6a ce     LES        DI,[0xce6a]
       1000:eab1 59              POP        CX
       1000:eab2 33 c0           XOR        AX,AX
       1000:eab4 f3 ab           STOSW.REP  ES:DI
                             LAB_1000_eab6                                   XREF[1]:     1000:ea94(j)  
       1000:eab6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_eab7()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_eab7                                   XREF[1]:     FUN_1000_f0d6:1000:f0f0(c)  
       1000:eab7 e8 b6 f7        CALL       FUN_1000_e270                                    undefined FUN_1000_e270()
       1000:eaba 1e              PUSH       DS
       1000:eabb 06              PUSH       ES
       1000:eabc 83 ec 06        SUB        SP,0x6
       1000:eabf 8b ec           MOV        BP,SP
       1000:eac1 a3 6e ce        MOV        [0xce6e],AX
       1000:eac4 57              PUSH       DI
       1000:eac5 06              PUSH       ES
       1000:eac6 c4 3e 6a ce     LES        DI,[0xce6a]
       1000:eaca 8b f0           MOV        SI,AX
       1000:eacc a1 a9 39        MOV        AX,[0x39a9]
       1000:eacf d1 e0           SHL        AX,0x1
       1000:ead1 89 46 00        MOV        word ptr [BP + 0x0],AX
       1000:ead4 d1 e6           SHL        SI,0x1
       1000:ead6 03 f0           ADD        SI,AX
       1000:ead8 8b d6           MOV        DX,SI
       1000:eada 2e a1 75 ea     MOV        AX,CS:[DAT_1000_ea75]
       1000:eade 40              INC        AX
       1000:eadf 26 89 84        MOV        word ptr ES:[SI + 0x172],AX
                 72 01
       1000:eae4 2e a3 75 ea     MOV        CS:[DAT_1000_ea75],AX
       1000:eae8 89 4e 02        MOV        word ptr [BP + 0x2],CX
       1000:eaeb 1f              POP        DS
       1000:eaec 5e              POP        SI
                             LAB_1000_eaed                                   XREF[1]:     1000:eb55(j)  
       1000:eaed 3b 7e 00        CMP        DI,word ptr [BP + 0x0]
       1000:eaf0 72 02           JC         LAB_1000_eaf4
                             LAB_1000_eaf2                                   XREF[1]:     1000:eb04(j)  
       1000:eaf2 33 ff           XOR        DI,DI
                             LAB_1000_eaf4                                   XREF[1]:     1000:eaf0(j)  
       1000:eaf4 8b 4e 00        MOV        CX,word ptr [BP + 0x0]
       1000:eaf7 2b cf           SUB        CX,DI
       1000:eaf9 d1 e9           SHR        CX,0x1
       1000:eafb 33 c0           XOR        AX,AX
       1000:eafd f2 af           SCASW.RE   ES:DI
       1000:eaff 74 07           JZ         LAB_1000_eb08
       1000:eb01 e8 70 00        CALL       FUN_1000_eb74                                    undefined FUN_1000_eb74()
       1000:eb04 72 ec           JC         LAB_1000_eaf2
       1000:eb06 eb 58           JMP        LAB_1000_eb60
                             LAB_1000_eb08                                   XREF[1]:     1000:eaff(j)  
       1000:eb08 83 ef 02        SUB        DI,0x2
       1000:eb0b 33 c9           XOR        CX,CX
       1000:eb0d 8b df           MOV        BX,DI
       1000:eb0f d1 eb           SHR        BX,0x1
       1000:eb11 43              INC        BX
       1000:eb12 89 5e 04        MOV        word ptr [BP + 0x4],BX
       1000:eb15 eb 11           JMP        LAB_1000_eb28
                             LAB_1000_eb17                                   XREF[1]:     1000:eb35(j)  
       1000:eb17 8b fa           MOV        DI,DX
       1000:eb19 83 c7 02        ADD        DI,0x2
       1000:eb1c 3b 7e 00        CMP        DI,word ptr [BP + 0x0]
       1000:eb1f 73 1e           JNC        LAB_1000_eb3f
       1000:eb21 26 83 3d 00     CMP        word ptr ES:[DI],0x0
       1000:eb25 75 18           JNZ        LAB_1000_eb3f
       1000:eb27 43              INC        BX
                             LAB_1000_eb28                                   XREF[1]:     1000:eb15(j)  
       1000:eb28 87 fa           XCHG       DX,DI
       1000:eb2a 26 89 1d        MOV        word ptr ES:[DI],BX
       1000:eb2d b8 00 04        MOV        AX,0x400
       1000:eb30 03 c8           ADD        CX,AX
       1000:eb32 29 46 02        SUB        word ptr [BP + 0x2],AX
       1000:eb35 77 e0           JA         LAB_1000_eb17
       1000:eb37 8b fa           MOV        DI,DX
       1000:eb39 8b 46 02        MOV        AX,word ptr [BP + 0x2]
       1000:eb3c ab              STOSW      ES:DI
       1000:eb3d 03 c8           ADD        CX,AX
                             LAB_1000_eb3f                                   XREF[2]:     1000:eb1f(j), 1000:eb25(j)  
       1000:eb3f 8b 5e 04        MOV        BX,word ptr [BP + 0x4]
       1000:eb42 52              PUSH       DX
       1000:eb43 e8 13 01        CALL       FUN_1000_ec59                                    undefined FUN_1000_ec59()
       1000:eb46 5a              POP        DX
       1000:eb47 8b fa           MOV        DI,DX
       1000:eb49 26 81 0d        OR         word ptr ES:[DI],0x8000
                 00 80
       1000:eb4e 8b 46 02        MOV        AX,word ptr [BP + 0x2]
       1000:eb51 48              DEC        AX
       1000:eb52 3d 00 fc        CMP        AX,0xfc00
       1000:eb55 76 96           JBE        LAB_1000_eaed
                             LAB_1000_eb57                                   XREF[1]:     1000:eb72(j)  
       1000:eb57 83 c4 06        ADD        SP,0x6
       1000:eb5a 07              POP        ES
       1000:eb5b 1f              POP        DS
       1000:eb5c e8 24 f7        CALL       FUN_1000_e283                                    undefined FUN_1000_e283()
       1000:eb5f c3              RET
                             LAB_1000_eb60                                   XREF[1]:     1000:eb06(j)  
       1000:eb60 8b 76 00        MOV        SI,word ptr [BP + 0x0]
       1000:eb63 b8 ff ff        MOV        AX,0xffff
       1000:eb66 36 87 06        XCHG       word ptr SS:[0xce6e],AX
                 6e ce
       1000:eb6b 03 f0           ADD        SI,AX
       1000:eb6d 03 f0           ADD        SI,AX
       1000:eb6f e8 38 00        CALL       FUN_1000_ebaa                                    undefined FUN_1000_ebaa()
       1000:eb72 eb e3           JMP        LAB_1000_eb57
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_eb74()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_eb74                                   XREF[1]:     FUN_1000_eab7:1000:eb01(c)  
       1000:eb74 52              PUSH       DX
       1000:eb75 56              PUSH       SI
       1000:eb76 8b 76 00        MOV        SI,word ptr [BP + 0x0]
       1000:eb79 b9 b9 00        MOV        CX,0xb9
       1000:eb7c 2e 8b 16        MOV        DX,word ptr CS:[DAT_1000_ea75]
                 75 ea
       1000:eb81 33 db           XOR        BX,BX
                             LAB_1000_eb83                                   XREF[1]:     1000:eb9c(j)  
       1000:eb83 26 8b 04        MOV        AX,word ptr ES:[SI]
       1000:eb86 0b c0           OR         AX,AX
       1000:eb88 74 0f           JZ         LAB_1000_eb99
       1000:eb8a 8b c2           MOV        AX,DX
       1000:eb8c 26 2b 84        SUB        AX,word ptr ES:[SI + 0x172]
                 72 01
       1000:eb91 3b c3           CMP        AX,BX
       1000:eb93 72 04           JC         LAB_1000_eb99
       1000:eb95 8b fe           MOV        DI,SI
       1000:eb97 8b d8           MOV        BX,AX
                             LAB_1000_eb99                                   XREF[2]:     1000:eb88(j), 1000:eb93(j)  
       1000:eb99 83 c6 02        ADD        SI,0x2
       1000:eb9c e2 e5           LOOP       LAB_1000_eb83
       1000:eb9e 0b db           OR         BX,BX
       1000:eba0 74 05           JZ         LAB_1000_eba7
       1000:eba2 8b f7           MOV        SI,DI
       1000:eba4 e8 03 00        CALL       FUN_1000_ebaa                                    undefined FUN_1000_ebaa()
                             LAB_1000_eba7                                   XREF[1]:     1000:eba0(j)  
       1000:eba7 5e              POP        SI
       1000:eba8 5a              POP        DX
       1000:eba9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ebaa()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ebaa                                   XREF[3]:     FUN_1000_eab7:1000:eb6f(c), 
                                                                                          FUN_1000_eb74:1000:eba4(c), 
                                                                                          1000:ebb5(j)  
       1000:ebaa 33 db           XOR        BX,BX
       1000:ebac 26 87 1c        XCHG       word ptr ES:[SI],BX
       1000:ebaf d1 e3           SHL        BX,0x1
       1000:ebb1 8b f3           MOV        SI,BX
       1000:ebb3 4e              DEC        SI
       1000:ebb4 4e              DEC        SI
       1000:ebb5 73 f3           JNC        FUN_1000_ebaa
       1000:ebb7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ebe3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ebe3                                   XREF[1]:     FUN_1000_f0d6:1000:f0df(c)  
       1000:ebe3 52              PUSH       DX
       1000:ebe4 1e              PUSH       DS
       1000:ebe5 8b 36 a9 39     MOV        SI,word ptr [0x39a9]
       1000:ebe9 8e 1e 6c ce     MOV        DS,word ptr [0xce6c]
       1000:ebed 03 f0           ADD        SI,AX
       1000:ebef d1 e6           SHL        SI,0x1
       1000:ebf1 8b 04           MOV        AX,word ptr [SI]
       1000:ebf3 0b c0           OR         AX,AX
       1000:ebf5 74 4c           JZ         LAB_1000_ec43
       1000:ebf7 8b d8           MOV        BX,AX
       1000:ebf9 2e a1 75 ea     MOV        AX,CS:[DAT_1000_ea75]
       1000:ebfd 40              INC        AX
       1000:ebfe 89 84 72 01     MOV        word ptr [SI + 0x172],AX
       1000:ec02 2e a3 75 ea     MOV        CS:[DAT_1000_ea75],AX
       1000:ec06 8b c3           MOV        AX,BX
       1000:ec08 57              PUSH       DI
       1000:ec09 06              PUSH       ES
                             LAB_1000_ec0a                                   XREF[1]:     1000:ec31(j)  
       1000:ec0a 8b d8           MOV        BX,AX
       1000:ec0c 8b d0           MOV        DX,AX
       1000:ec0e 33 c9           XOR        CX,CX
                             LAB_1000_ec10                                   XREF[1]:     1000:ec22(j)  
       1000:ec10 81 c1 00 04     ADD        CX,0x400
       1000:ec14 d1 e0           SHL        AX,0x1
       1000:ec16 72 1b           JC         LAB_1000_ec33
       1000:ec18 8b f0           MOV        SI,AX
       1000:ec1a 83 ee 02        SUB        SI,0x2
       1000:ec1d 42              INC        DX
       1000:ec1e 8b 04           MOV        AX,word ptr [SI]
       1000:ec20 3b c2           CMP        AX,DX
       1000:ec22 74 ec           JZ         LAB_1000_ec10
       1000:ec24 d1 e0           SHL        AX,0x1
       1000:ec26 72 0b           JC         LAB_1000_ec33
       1000:ec28 d1 e8           SHR        AX,0x1
       1000:ec2a 50              PUSH       AX
       1000:ec2b e8 18 00        CALL       FUN_1000_ec46                                    undefined FUN_1000_ec46()
       1000:ec2e 58              POP        AX
       1000:ec2f 72 09           JC         LAB_1000_ec3a
       1000:ec31 eb d7           JMP        LAB_1000_ec0a
                             LAB_1000_ec33                                   XREF[2]:     1000:ec16(j), 1000:ec26(j)  
       1000:ec33 d1 f8           SAR        AX,0x1
       1000:ec35 03 c8           ADD        CX,AX
       1000:ec37 e8 0c 00        CALL       FUN_1000_ec46                                    undefined FUN_1000_ec46()
                             LAB_1000_ec3a                                   XREF[1]:     1000:ec2f(j)  
       1000:ec3a 8b cf           MOV        CX,DI
       1000:ec3c 07              POP        ES
       1000:ec3d 5f              POP        DI
       1000:ec3e 9c              PUSHF
       1000:ec3f 2b cf           SUB        CX,DI
       1000:ec41 9d              POPF
       1000:ec42 f5              CMC
                             LAB_1000_ec43                                   XREF[1]:     1000:ebf5(j)  
       1000:ec43 1f              POP        DS
       1000:ec44 5a              POP        DX
       1000:ec45 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ec46()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ec46                                   XREF[2]:     FUN_1000_ebe3:1000:ec2b(c), 
                                                                                          FUN_1000_ebe3:1000:ec37(c)  
       1000:ec46 51              PUSH       CX
       1000:ec47 57              PUSH       DI
       1000:ec48 1e              PUSH       DS
       1000:ec49 06              PUSH       ES
       1000:ec4a 4b              DEC        BX
       1000:ec4b 2e ff 16        CALL       word ptr CS:[DAT_1000_ea79]                      = ECECh
                 79 ea                                                                       undefined FUN_1000_ecec()
       1000:ec50 07              POP        ES
       1000:ec51 1f              POP        DS
       1000:ec52 5f              POP        DI
       1000:ec53 59              POP        CX
       1000:ec54 9c              PUSHF
       1000:ec55 03 f9           ADD        DI,CX
       1000:ec57 9d              POPF
       1000:ec58 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ec59()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ec59                                   XREF[1]:     FUN_1000_eab7:1000:eb43(c)  
       1000:ec59 56              PUSH       SI
       1000:ec5a 1e              PUSH       DS
       1000:ec5b 06              PUSH       ES
       1000:ec5c 51              PUSH       CX
       1000:ec5d 4b              DEC        BX
       1000:ec5e 2e ff 16        CALL       word ptr CS:[DAT_1000_ea77]                      = EC9Ch
                 77 ea                                                                       undefined FUN_1000_ec9c()
       1000:ec63 58              POP        AX
       1000:ec64 07              POP        ES
       1000:ec65 1f              POP        DS
       1000:ec66 5e              POP        SI
       1000:ec67 9c              PUSHF
       1000:ec68 03 f0           ADD        SI,AX
       1000:ec6a 9d              POPF
       1000:ec6b c3              RET
                             DAT_1000_ec7c                                   XREF[2]:     FUN_1000_ec9c:1000:eca5(W), 
                                                                                          FUN_1000_ecec:1000:ecf5(W)  
       1000:ec7c ff ff           undefined2 FFFFh
                             DAT_1000_ec7e                                   XREF[2]:     FUN_1000_ec9c:1000:ecbf(W), 
                                                                                          FUN_1000_ecec:1000:ed2a(W)  
       1000:ec7e 00 00           undefined2 0000h
                             DAT_1000_ec80                                   XREF[2]:     FUN_1000_ec9c:1000:ecc5(W), 
                                                                                          FUN_1000_ecec:1000:ed2e(W)  
       1000:ec80 00 92           undefined2 9200h
                             DAT_1000_ec84                                   XREF[2]:     FUN_1000_ec9c:1000:eca9(W), 
                                                                                          FUN_1000_ecec:1000:ecf9(W)  
       1000:ec84 ff ff           undefined2 FFFFh
                             DAT_1000_ec86                                   XREF[2]:     FUN_1000_ec9c:1000:ecda(W), 
                                                                                          FUN_1000_ecec:1000:ed0f(W)  
       1000:ec86 00 00           undefined2 0000h
                             DAT_1000_ec88                                   XREF[2]:     FUN_1000_ec9c:1000:ecde(W), 
                                                                                          FUN_1000_ecec:1000:ed15(W)  
       1000:ec88 00 92           undefined2 9200h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ec9c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ec9c                                   XREF[1]:     FUN_1000_ec59:1000:ec5e(c)  
       1000:ec9c bf 6c ec        MOV        DI,0xec6c
       1000:ec9f 41              INC        CX
       1000:eca0 d1 e9           SHR        CX,0x1
       1000:eca2 51              PUSH       CX
       1000:eca3 d1 e1           SHL        CX,0x1
       1000:eca5 2e 89 4d 10     MOV        word ptr CS:[DI + 0x10]=>DAT_1000_ec7c,CX        = FFFFh
       1000:eca9 2e 89 4d 18     MOV        word ptr CS:[DI + 0x18]=>DAT_1000_ec84,CX        = FFFFh
       1000:ecad 8c d8           MOV        AX,DS
       1000:ecaf 33 d2           XOR        DX,DX
       1000:ecb1 b9 04 00        MOV        CX,0x4
                             LAB_1000_ecb4                                   XREF[1]:     1000:ecb8(j)  
       1000:ecb4 d1 e0           SHL        AX,0x1
       1000:ecb6 d1 d2           RCL        DX,0x1
       1000:ecb8 e2 fa           LOOP       LAB_1000_ecb4
       1000:ecba 03 c6           ADD        AX,SI
       1000:ecbc 83 d2 00        ADC        DX,0x0
       1000:ecbf 2e 89 45 12     MOV        word ptr CS:[DI + 0x12]=>DAT_1000_ec7e,AX
       1000:ecc3 b6 92           MOV        DH,0x92
       1000:ecc5 2e 89 55 14     MOV        word ptr CS:[DI + 0x14]=>DAT_1000_ec80,DX        = 9200h
       1000:ecc9 32 d2           XOR        DL,DL
       1000:eccb 86 df           XCHG       BH,BL
       1000:eccd 86 da           XCHG       DL,BL
       1000:eccf d1 e3           SHL        BX,0x1
       1000:ecd1 d0 d2           RCL        DL,0x1
       1000:ecd3 d1 e3           SHL        BX,0x1
       1000:ecd5 d0 d2           RCL        DL,0x1
       1000:ecd7 80 c2 10        ADD        DL,0x10
       1000:ecda 2e 89 5d 1a     MOV        word ptr CS:[DI + 0x1a]=>DAT_1000_ec86,BX
       1000:ecde 2e 89 55 1c     MOV        word ptr CS:[DI + 0x1c]=>DAT_1000_ec88,DX        = 9200h
       1000:ece2 8b f7           MOV        SI,DI
       1000:ece4 0e              PUSH       CS
       1000:ece5 07              POP        ES
       1000:ece6 59              POP        CX
       1000:ece7 b4 87           MOV        AH,0x87
       1000:ece9 cd 15           INT        0x15
       1000:eceb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ecec()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ecec                                   XREF[1]:     FUN_1000_ec46:1000:ec4b(c)  
       1000:ecec be 6c ec        MOV        SI,0xec6c
       1000:ecef 41              INC        CX
       1000:ecf0 d1 e9           SHR        CX,0x1
       1000:ecf2 51              PUSH       CX
       1000:ecf3 d1 e1           SHL        CX,0x1
       1000:ecf5 2e 89 4c 10     MOV        word ptr CS:[SI + 0x10]=>DAT_1000_ec7c,CX        = FFFFh
       1000:ecf9 2e 89 4c 18     MOV        word ptr CS:[SI + 0x18]=>DAT_1000_ec84,CX        = FFFFh
       1000:ecfd 8c c0           MOV        AX,ES
       1000:ecff 33 d2           XOR        DX,DX
       1000:ed01 b9 04 00        MOV        CX,0x4
                             LAB_1000_ed04                                   XREF[1]:     1000:ed08(j)  
       1000:ed04 d1 e0           SHL        AX,0x1
       1000:ed06 d1 d2           RCL        DX,0x1
       1000:ed08 e2 fa           LOOP       LAB_1000_ed04
       1000:ed0a 03 c7           ADD        AX,DI
       1000:ed0c 83 d2 00        ADC        DX,0x0
       1000:ed0f 2e 89 44 1a     MOV        word ptr CS:[SI + 0x1a]=>DAT_1000_ec86,AX
       1000:ed13 b6 92           MOV        DH,0x92
       1000:ed15 2e 89 54 1c     MOV        word ptr CS:[SI + 0x1c]=>DAT_1000_ec88,DX        = 9200h
       1000:ed19 32 d2           XOR        DL,DL
       1000:ed1b 86 df           XCHG       BH,BL
       1000:ed1d 86 da           XCHG       DL,BL
       1000:ed1f d1 e3           SHL        BX,0x1
       1000:ed21 d0 d2           RCL        DL,0x1
       1000:ed23 d1 e3           SHL        BX,0x1
       1000:ed25 d0 d2           RCL        DL,0x1
       1000:ed27 80 c2 10        ADD        DL,0x10
       1000:ed2a 2e 89 5c 12     MOV        word ptr CS:[SI + 0x12]=>DAT_1000_ec7e,BX
       1000:ed2e 2e 89 54 14     MOV        word ptr CS:[SI + 0x14]=>DAT_1000_ec80,DX        = 9200h
       1000:ed32 0e              PUSH       CS
       1000:ed33 07              POP        ES
       1000:ed34 59              POP        CX
       1000:ed35 b4 87           MOV        AH,0x87
       1000:ed37 cd 15           INT        0x15
       1000:ed39 c3              RET
                             DAT_1000_ed3a                                   XREF[3]:     FUN_1000_e8d5:1000:e8e2(R), 
                                                                                          FUN_1000_ed40:1000:ed40(R), 
                                                                                          FUN_1000_ed4c:1000:ed9d(W)  
       1000:ed3a 00 00           undefined2 0000h
                             DAT_1000_ed3c                                   XREF[2]:     FUN_1000_ed4c:1000:ed53(W), 
                                                                                          FUN_1000_edb9:1000:edef(R)  
       1000:ed3c 00 00           undefined2 0000h
                             DAT_1000_ed3e                                   XREF[2]:     FUN_1000_e8d5:1000:e8ef(R), 
                                                                                          FUN_1000_edb9:1000:edca(W)  
       1000:ed3e 00 00           undefined2 0000h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ed40()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ed40                                   XREF[1]:     FUN_1000_e8d5:1000:e8ec(c)  
       1000:ed40 2e 8b 16        MOV        DX,word ptr CS:[DAT_1000_ed3a]
                 3a ed
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ed45()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ed45                                   XREF[10]:    FUN_1000_e8d5:1000:e8fa(c), 
                                                                                          FUN_1000_ed4c:1000:ed4e(c), 
                                                                                          FUN_1000_ed4c:1000:ed5c(c), 
                                                                                          FUN_1000_ed4c:1000:ed74(c), 
                                                                                          FUN_1000_ed4c:1000:ed98(c), 
                                                                                          FUN_1000_edb9:1000:edc5(c), 
                                                                                          FUN_1000_edb9:1000:edd4(c), 
                                                                                          FUN_1000_edb9:1000:eddf(c), 
                                                                                          FUN_1000_edb9:1000:edea(c), 
                                                                                          FUN_1000_edb9:1000:edff(c)  
       1000:ed45 cd 67           INT        0x67
       1000:ed47 80 fc 80        CMP        AH,0x80
       1000:ed4a f5              CMC
       1000:ed4b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ed4c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ed4c                                   XREF[1]:     FUN_1000_ea7b:1000:ea8c(c)  
       1000:ed4c b4 41           MOV        AH,0x41
       1000:ed4e e8 f4 ff        CALL       FUN_1000_ed45                                    undefined FUN_1000_ed45()
       1000:ed51 72 60           JC         LAB_1000_edb3
       1000:ed53 2e 89 1e        MOV        word ptr CS:[DAT_1000_ed3c],BX
                 3c ed
       1000:ed58 b4 42           MOV        AH,0x42
       1000:ed5a 33 db           XOR        BX,BX
       1000:ed5c e8 e6 ff        CALL       FUN_1000_ed45                                    undefined FUN_1000_ed45()
       1000:ed5f 72 52           JC         LAB_1000_edb3
       1000:ed61 83 fb 03        CMP        BX,0x3
       1000:ed64 72 4d           JC         LAB_1000_edb3
       1000:ed66 e8 50 00        CALL       FUN_1000_edb9                                    undefined FUN_1000_edb9()
       1000:ed69 f6 06 43        TEST       byte ptr [0x2943],0x8
                 29 08
       1000:ed6e 75 43           JNZ        LAB_1000_edb3
       1000:ed70 b4 42           MOV        AH,0x42
       1000:ed72 33 db           XOR        BX,BX
       1000:ed74 e8 ce ff        CALL       FUN_1000_ed45                                    undefined FUN_1000_ed45()
       1000:ed77 72 3a           JC         LAB_1000_edb3
       1000:ed79 83 fb 04        CMP        BX,0x4
       1000:ed7c 72 35           JC         LAB_1000_edb3
       1000:ed7e 81 fb 80 00     CMP        BX,0x80
       1000:ed82 72 03           JC         LAB_1000_ed87
       1000:ed84 bb 80 00        MOV        BX,0x80
                             LAB_1000_ed87                                   XREF[1]:     1000:ed82(j)  
       1000:ed87 8b c3           MOV        AX,BX
       1000:ed89 d1 e0           SHL        AX,0x1
       1000:ed8b 74 26           JZ         LAB_1000_edb3
       1000:ed8d d1 e0           SHL        AX,0x1
       1000:ed8f d1 e0           SHL        AX,0x1
       1000:ed91 d1 e0           SHL        AX,0x1
       1000:ed93 a3 a9 39        MOV        [0x39a9],AX
       1000:ed96 b4 43           MOV        AH,0x43
       1000:ed98 e8 aa ff        CALL       FUN_1000_ed45                                    undefined FUN_1000_ed45()
       1000:ed9b 72 16           JC         LAB_1000_edb3
       1000:ed9d 2e 89 16        MOV        word ptr CS:[DAT_1000_ed3a],DX
                 3a ed
       1000:eda2 be 46 ee        MOV        SI,0xee46
       1000:eda5 bf 02 ee        MOV        DI,0xee02
       1000:eda8 2e 89 3e        MOV        word ptr CS:[DAT_1000_ea77],DI                   = EC9Ch
                 77 ea
       1000:edad 2e 89 36        MOV        word ptr CS:[DAT_1000_ea79],SI                   = ECECh
                 79 ea
       1000:edb2 c3              RET
                             LAB_1000_edb3                                   XREF[8]:     1000:ed51(j), 1000:ed5f(j), 
                                                                                          1000:ed64(j), 1000:ed6e(j), 
                                                                                          1000:ed77(j), 1000:ed7c(j), 
                                                                                          1000:ed8b(j), 1000:ed9b(j)  
       1000:edb3 80 26 43        AND        byte ptr [0x2943],0xb7
                 29 b7
       1000:edb8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_edb9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_edb9                                   XREF[1]:     FUN_1000_ed4c:1000:ed66(c)  
       1000:edb9 f6 06 44        TEST       byte ptr [0x2944],0xf
                 29 0f
       1000:edbe 74 3c           JZ         LAB_1000_edfc
       1000:edc0 bb 03 00        MOV        BX,0x3
       1000:edc3 b4 43           MOV        AH,0x43
       1000:edc5 e8 7d ff        CALL       FUN_1000_ed45                                    undefined FUN_1000_ed45()
       1000:edc8 72 32           JC         LAB_1000_edfc
       1000:edca 2e 89 16        MOV        word ptr CS:[DAT_1000_ed3e],DX
                 3e ed
       1000:edcf b8 01 44        MOV        AX,0x4401
       1000:edd2 33 db           XOR        BX,BX
       1000:edd4 e8 6e ff        CALL       FUN_1000_ed45                                    undefined FUN_1000_ed45()
       1000:edd7 72 24           JC         LAB_1000_edfd
       1000:edd9 b8 02 44        MOV        AX,0x4402
       1000:eddc bb 01 00        MOV        BX,0x1
       1000:eddf e8 63 ff        CALL       FUN_1000_ed45                                    undefined FUN_1000_ed45()
       1000:ede2 72 19           JC         LAB_1000_edfd
       1000:ede4 b8 03 44        MOV        AX,0x4403
       1000:ede7 bb 02 00        MOV        BX,0x2
       1000:edea e8 58 ff        CALL       FUN_1000_ed45                                    undefined FUN_1000_ed45()
       1000:eded 72 0e           JC         LAB_1000_edfd
       1000:edef 2e a1 3c ed     MOV        AX,CS:[DAT_1000_ed3c]
       1000:edf3 a3 b8 db        MOV        [0xdbb8],AX
       1000:edf6 c7 06 b6        MOV        word ptr [0xdbb6],0x4000
                 db 00 40
                             LAB_1000_edfc                                   XREF[2]:     1000:edbe(j), 1000:edc8(j)  
       1000:edfc c3              RET
                             LAB_1000_edfd                                   XREF[3]:     1000:edd7(j), 1000:ede2(j), 
                                                                                          1000:eded(j)  
       1000:edfd b4 45           MOV        AH,0x45
       1000:edff e9 43 ff        JMP        FUN_1000_ed45                                    undefined FUN_1000_ed45()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             DAT_1000_ee8a                                   XREF[3]:     FUN_1000_e8d5:1000:e8d5(R), 
                                                                                          FUN_1000_eea0:1000:eecd(W), 
                                                                                          FUN_1000_ef2b:1000:ef2b(R)  
       1000:ee8a 00 00           undefined2 0000h
                             DAT_1000_ee8c                                   XREF[1]:     FUN_1000_eea0:1000:eea5(W)  
       1000:ee8c 00 00           undefined2 0000h
                             DAT_1000_ee8e                                   XREF[1]:     FUN_1000_eea0:1000:eeaa(W)  
       1000:ee8e 00 00           undefined2 0000h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_eea0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_eea0                                   XREF[1]:     FUN_1000_ea7b:1000:ea82(c)  
       1000:eea0 b8 10 43        MOV        AX,0x4310
       1000:eea3 cd 2f           INT        0x2f
       1000:eea5 2e 89 1e        MOV        word ptr CS:[DAT_1000_ee8c],BX
                 8c ee
       1000:eeaa 2e 8c 06        MOV        word ptr CS:[DAT_1000_ee8e],ES
                 8e ee
       1000:eeaf b4 08           MOV        AH,0x8
       1000:eeb1 e8 6e 00        CALL       FUN_1000_ef22                                    undefined FUN_1000_ef22()
       1000:eeb4 3d 3f 00        CMP        AX,0x3f
       1000:eeb7 72 2a           JC         LAB_1000_eee3
       1000:eeb9 3d 00 08        CMP        AX,0x800
       1000:eebc 72 03           JC         LAB_1000_eec1
       1000:eebe b8 00 08        MOV        AX,0x800
                             LAB_1000_eec1                                   XREF[1]:     1000:eebc(j)  
       1000:eec1 a3 a9 39        MOV        [0x39a9],AX
       1000:eec4 8b d0           MOV        DX,AX
       1000:eec6 b4 09           MOV        AH,0x9
       1000:eec8 e8 57 00        CALL       FUN_1000_ef22                                    undefined FUN_1000_ef22()
       1000:eecb 72 16           JC         LAB_1000_eee3
       1000:eecd 2e 89 16        MOV        word ptr CS:[DAT_1000_ee8a],DX
                 8a ee
       1000:eed2 be 32 ef        MOV        SI,0xef32
       1000:eed5 bf e9 ee        MOV        DI,0xeee9
       1000:eed8 2e 89 3e        MOV        word ptr CS:[DAT_1000_ea77],DI                   = EC9Ch
                 77 ea
       1000:eedd 2e 89 36        MOV        word ptr CS:[DAT_1000_ea79],SI                   = ECECh
                 79 ea
       1000:eee2 c3              RET
                             LAB_1000_eee3                                   XREF[2]:     1000:eeb7(j), 1000:eecb(j)  
       1000:eee3 80 26 43        AND        byte ptr [0x2943],0x7f
                 29 7f
       1000:eee8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_ef22()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ef22                                   XREF[3]:     FUN_1000_eea0:1000:eeb1(c), 
                                                                                          FUN_1000_eea0:1000:eec8(c), 
                                                                                          FUN_1000_ef2b:1000:ef30(c)  
       1000:ef22 2e ff 1e        CALLF      [0xee8c]
                 8c ee
       1000:ef27 3d 01 00        CMP        AX,0x1
       1000:ef2a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_ef2b()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_ef2b                                   XREF[1]:     FUN_1000_e8d5:1000:e8df(c)  
       1000:ef2b 2e 8b 16        MOV        DX,word ptr CS:[DAT_1000_ee8a]
                 8a ee
       1000:ef30 eb f0           JMP        FUN_1000_ef22                                    undefined FUN_1000_ef22()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             DAT_1000_efd9                                   XREF[1]:     FUN_1000_e85c:1000:e8a1(W)  
       1000:efd9 0a              undefined1 0Ah
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f08e()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f08e                                   XREF[1]:     FUN_1000_de68:1000:de6d(c)  
       1000:f08e 06              PUSH       ES
       1000:f08f 1e              PUSH       DS
       1000:f090 07              POP        ES
       1000:f091 33 c0           XOR        AX,AX
       1000:f093 a2 e8 ce        MOV        [0xcee8],AL
       1000:f096 bf 81 ce        MOV        DI,0xce81
       1000:f099 b9 67 00        MOV        CX,0x67
       1000:f09c f3 aa           STOSB.REP  ES:DI
       1000:f09e 07              POP        ES
       1000:f09f c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_f0a0()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f0a0                                   XREF[1]:     FUN_1000_00d1:1000:0120(c)  
       1000:f0a0 57              PUSH       DI
       1000:f0a1 06              PUSH       ES
       1000:f0a2 fe 06 71 ce     INC        byte ptr [0xce71]
       1000:f0a6 1e              PUSH       DS
       1000:f0a7 07              POP        ES
       1000:f0a8 bf 60 4c        MOV        DI,0x4c60
       1000:f0ab e8 0b 00        CALL       FUN_1000_f0b9                                    undefined FUN_1000_f0b9()
       1000:f0ae fe 0e 71 ce     DEC        byte ptr [0xce71]
       1000:f0b2 8b f7           MOV        SI,DI
       1000:f0b4 07              POP        ES
       1000:f0b5 5f              POP        DI
       1000:f0b6 e9 4a 03        JMP        FUN_1000_f403                                    undefined FUN_1000_f403()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_f0b9()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f0b9                                   XREF[13]:    FUN_1000_00d1:1000:00d9(c), 
                                                                                          FUN_1000_00d1:1000:0109(c), 
                                                                                          FUN_1000_00d1:1000:0129(c), 
                                                                                          FUN_1000_2d74:1000:2daa(c), 
                                                                                          FUN_1000_abe9:1000:ac03(c), 
                                                                                          FUN_1000_ae62:1000:ae80(c), 
                                                                                          FUN_1000_ae62:1000:ae95(c), 
                                                                                          FUN_1000_c13e:1000:c17d(c), 
                                                                                          FUN_1000_cfb9:1000:cff6(c), 
                                                                                          FUN_1000_cfb9:1000:d007(c), 
                                                                                          FUN_1000_d00f:1000:d032(c), 
                                                                                          FUN_1000_e57b:1000:e582(c), 
                                                                                          FUN_1000_f0a0:1000:f0ab(c)  
       1000:f0b9 89 36 78 ce     MOV        word ptr [0xce78],SI
       1000:f0bd d1 e6           SHL        SI,0x1
       1000:f0bf 8b b4 ff 31     MOV        SI,word ptr [SI + 0x31ff]
       1000:f0c3 ad              LODSW      SI
       1000:f0c4 8b d6           MOV        DX,SI
       1000:f0c6 0b c0           OR         AX,AX
       1000:f0c8 74 0c           JZ         FUN_1000_f0d6
       1000:f0ca 8b c8           MOV        CX,AX
       1000:f0cc 52              PUSH       DX
       1000:f0cd e8 4c 00        CALL       FUN_1000_f11c                                    undefined FUN_1000_f11c()
       1000:f0d0 5a              POP        DX
       1000:f0d1 e8 02 00        CALL       FUN_1000_f0d6                                    undefined FUN_1000_f0d6()
       1000:f0d4 eb 29           JMP        FUN_1000_f0ff                                    undefined FUN_1000_f0ff()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_f0d6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f0d6                                   XREF[2]:     FUN_1000_f0b9:1000:f0c8(j), 
                                                                                          FUN_1000_f0b9:1000:f0d1(c)  
       1000:f0d6 a1 78 ce        MOV        AX,[0xce78]
       1000:f0d9 3a 06 70 ce     CMP        AL,byte ptr [0xce70]
       1000:f0dd 73 05           JNC        LAB_1000_f0e4
       1000:f0df e8 01 fb        CALL       FUN_1000_ebe3                                    undefined FUN_1000_ebe3()
       1000:f0e2 72 0f           JC         LAB_1000_f0f3
                             LAB_1000_f0e4                                   XREF[1]:     1000:f0dd(j)  
       1000:f0e4 e8 5d 01        CALL       FUN_1000_f244                                    undefined FUN_1000_f244()
       1000:f0e7 a1 78 ce        MOV        AX,[0xce78]
       1000:f0ea 3a 06 70 ce     CMP        AL,byte ptr [0xce70]
       1000:f0ee 73 03           JNC        LAB_1000_f0f3
       1000:f0f0 e8 c4 f9        CALL       FUN_1000_eab7                                    undefined FUN_1000_eab7()
                             LAB_1000_f0f3                                   XREF[2]:     1000:f0e2(j), 1000:f0ee(j)  
       1000:f0f3 e9 dd 02        JMP        FUN_1000_f3d3                                    undefined FUN_1000_f3d3()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_1000_f0f6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f0f6                                   XREF[5]:     FUN_1000_ae3f:1000:ae51(c), 
                                                                                          FUN_1000_ae54:1000:ae5f(c), 
                                                                                          FUN_1000_e594:1000:e5ff(c), 
                                                                                          FUN_1000_e594:1000:e60d(c), 
                                                                                          FUN_1000_ea7b:1000:eaaa(c)  
       1000:f0f6 c4 36 b7 39     LES        SI,[0x39b7]
       1000:f0fa 89 35           MOV        word ptr [DI],SI
       1000:f0fc 8c 45 02        MOV        word ptr [DI + 0x2],ES
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f0ff()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f0ff                                   XREF[5]:     FUN_1000_00d1:1000:0145(c), 
                                                                                          FUN_1000_00d1:1000:0156(c), 
                                                                                          FUN_1000_e594:1000:e5b1(c), 
                                                                                          FUN_1000_e675:1000:e73e(c), 
                                                                                          FUN_1000_f0b9:1000:f0d4(c)  
       1000:f0ff 8b c1           MOV        AX,CX
       1000:f101 05 0f 00        ADD        AX,0xf
       1000:f104 d1 d8           RCR        AX,0x1
       1000:f106 d1 e8           SHR        AX,0x1
       1000:f108 d1 e8           SHR        AX,0x1
       1000:f10a d1 e8           SHR        AX,0x1
       1000:f10c 01 06 b9 39     ADD        word ptr [0x39b9],AX
       1000:f110 50              PUSH       AX
       1000:f111 a1 b9 39        MOV        AX,[0x39b9]
       1000:f114 3b 06 68 ce     CMP        AX,word ptr [0xce68]
       1000:f118 58              POP        AX
       1000:f119 77 16           JA         LAB_1000_f131
       1000:f11b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f11c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f11c                                   XREF[4]:     FUN_1000_ae62:1000:ae8d(c), 
                                                                                          FUN_1000_b427:1000:b42a(c), 
                                                                                          FUN_1000_f0b9:1000:f0cd(c), 
                                                                                          1000:f12e(j)  
       1000:f11c c4 3e b7 39     LES        DI,[0x39b7]
       1000:f120 8c c0           MOV        AX,ES
       1000:f122 03 c1           ADD        AX,CX
       1000:f124 3b 06 68 ce     CMP        AX,word ptr [0xce68]
       1000:f128 73 01           JNC        LAB_1000_f12b
       1000:f12a c3              RET
                             LAB_1000_f12b                                   XREF[1]:     1000:f128(j)  
       1000:f12b e8 11 00        CALL       FUN_1000_f13f                                    undefined FUN_1000_f13f()
       1000:f12e eb ec           JMP        FUN_1000_f11c
                             LAB_1000_f130                                   XREF[1]:     1000:f16e(j)  
       1000:f130 59              POP        CX
                             LAB_1000_f131                                   XREF[2]:     FUN_1000_e76a:1000:e7b9(j), 
                                                                                          1000:f119(j)  
       1000:f131 b8 4b 1f        MOV        AX,0x1f4b
       1000:f134 8e d8           MOV        DS,AX
       1000:f136 c7 06 bc        MOV        word ptr [DAT_1f4b_3cbc],0x368d                  = ??
                 3c 8d 36
       1000:f13c e9 fb 0e        JMP        LAB_1000_003a
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f13f()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f13f                                   XREF[1]:     FUN_1000_f11c:1000:f12b(c)  
       1000:f13f 51              PUSH       CX
       1000:f140 8b 2e 02 00     MOV        BP,word ptr [0x2]
       1000:f144 be 44 d8        MOV        SI,0xd844
       1000:f147 bf 8c da        MOV        DI,0xda8c
       1000:f14a b9 91 00        MOV        CX,0x91
       1000:f14d 33 d2           XOR        DX,DX
       1000:f14f 8b da           MOV        BX,DX
                             LAB_1000_f151                                   XREF[1]:     1000:f16a(j)  
       1000:f151 83 c7 02        ADD        DI,0x2
       1000:f154 83 c6 04        ADD        SI,0x4
       1000:f157 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       1000:f15a 0b c0           OR         AX,AX
       1000:f15c 74 0c           JZ         LAB_1000_f16a
       1000:f15e 8b c5           MOV        AX,BP
       1000:f160 2b 05           SUB        AX,word ptr [DI]
       1000:f162 3b c2           CMP        AX,DX
       1000:f164 72 04           JC         LAB_1000_f16a
       1000:f166 8b d0           MOV        DX,AX
       1000:f168 8b de           MOV        BX,SI
                             LAB_1000_f16a                                   XREF[2]:     1000:f15c(j), 1000:f164(j)  
       1000:f16a e2 e5           LOOP       LAB_1000_f151
       1000:f16c 0b db           OR         BX,BX
       1000:f16e 74 c0           JZ         LAB_1000_f130
       1000:f170 8b c3           MOV        AX,BX
       1000:f172 2d 44 d8        SUB        AX,0xd844
       1000:f175 d1 e8           SHR        AX,0x1
       1000:f177 d1 e8           SHR        AX,0x1
       1000:f179 3b 06 84 27     CMP        AX,word ptr [0x2784]
       1000:f17d 75 06           JNZ        LAB_1000_f185
       1000:f17f c7 06 84        MOV        word ptr [0x2784],0xffff
                 27 ff ff
                             LAB_1000_f185                                   XREF[1]:     1000:f17d(j)  
       1000:f185 33 d2           XOR        DX,DX
       1000:f187 87 57 02        XCHG       word ptr [BX + 0x2],DX
       1000:f18a be 4a d8        MOV        SI,0xd84a
       1000:f18d b9 91 00        MOV        CX,0x91
       1000:f190 bb 00 80        MOV        BX,0x8000
                             LAB_1000_f193                                   XREF[1]:     1000:f1a1(j)  
       1000:f193 ad              LODSW      SI
       1000:f194 83 c6 02        ADD        SI,0x2
       1000:f197 2b c2           SUB        AX,DX
       1000:f199 72 06           JC         LAB_1000_f1a1
       1000:f19b 3b c3           CMP        AX,BX
       1000:f19d 73 02           JNC        LAB_1000_f1a1
       1000:f19f 8b d8           MOV        BX,AX
                             LAB_1000_f1a1                                   XREF[2]:     1000:f199(j), 1000:f19d(j)  
       1000:f1a1 e2 f0           LOOP       LAB_1000_f193
       1000:f1a3 0b db           OR         BX,BX
       1000:f1a5 78 4e           JS         LAB_1000_f1f5
       1000:f1a7 be 46 d8        MOV        SI,0xd846
       1000:f1aa b9 91 00        MOV        CX,0x91
                             LAB_1000_f1ad                                   XREF[1]:     1000:f1b6(j)  
       1000:f1ad 83 c6 04        ADD        SI,0x4
       1000:f1b0 39 14           CMP        word ptr [SI],DX
       1000:f1b2 72 02           JC         LAB_1000_f1b6
       1000:f1b4 29 1c           SUB        word ptr [SI],BX
                             LAB_1000_f1b6                                   XREF[1]:     1000:f1b2(j)  
       1000:f1b6 e2 f5           LOOP       LAB_1000_f1ad
       1000:f1b8 be b2 db        MOV        SI,0xdbb2
       1000:f1bb 39 14           CMP        word ptr [SI],DX
       1000:f1bd 72 02           JC         LAB_1000_f1c1
       1000:f1bf 29 1c           SUB        word ptr [SI],BX
                             LAB_1000_f1c1                                   XREF[2]:     1000:f1bd(j), 1000:f1e1(j)  
       1000:f1c1 8e c2           MOV        ES,DX
       1000:f1c3 03 d3           ADD        DX,BX
       1000:f1c5 8e da           MOV        DS,DX
       1000:f1c7 33 f6           XOR        SI,SI
       1000:f1c9 8b fe           MOV        DI,SI
       1000:f1cb 36 a1 b9 39     MOV        AX,SS:[0x39b9]
       1000:f1cf 2b c2           SUB        AX,DX
       1000:f1d1 3d 00 10        CMP        AX,0x1000
       1000:f1d4 76 0d           JBE        LAB_1000_f1e3
       1000:f1d6 b9 00 80        MOV        CX,0x8000
       1000:f1d9 f3 a5           MOVSW.REP  ES:DI,SI
       1000:f1db 8c c2           MOV        DX,ES
       1000:f1dd 81 c2 00 10     ADD        DX,0x1000
       1000:f1e1 eb de           JMP        LAB_1000_f1c1
                             LAB_1000_f1e3                                   XREF[1]:     1000:f1d4(j)  
       1000:f1e3 8b c8           MOV        CX,AX
       1000:f1e5 d1 e1           SHL        CX,0x1
       1000:f1e7 d1 e1           SHL        CX,0x1
       1000:f1e9 d1 e1           SHL        CX,0x1
       1000:f1eb f3 a5           MOVSW.REP  ES:DI,SI
       1000:f1ed 16              PUSH       SS
       1000:f1ee 1f              POP        DS
       1000:f1ef 29 1e b9 39     SUB        word ptr [0x39b9],BX
       1000:f1f3 59              POP        CX
       1000:f1f4 c3              RET
                             LAB_1000_f1f5                                   XREF[1]:     1000:f1a5(j)  
       1000:f1f5 89 16 b9 39     MOV        word ptr [0x39b9],DX
       1000:f1f9 59              POP        CX
       1000:f1fa c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f1fb()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f1fb                                   XREF[3]:     FUN_1000_a90b:1000:a91c(c), 
                                                                                          FUN_1000_e675:1000:e678(c), 
                                                                                          FUN_1000_f229:1000:f229(c)  
       1000:f1fb 52              PUSH       DX
       1000:f1fc e8 a8 00        CALL       FUN_1000_f2a7                                    undefined FUN_1000_f2a7()
       1000:f1ff 5e              POP        SI
       1000:f200 73 26           JNC        LAB_1000_f228
       1000:f202 8b d6           MOV        DX,SI
       1000:f204 52              PUSH       DX
       1000:f205 e8 f4 00        CALL       FUN_1000_f2fc                                    undefined FUN_1000_f2fc()
       1000:f208 b8 00 3d        MOV        AX,0x3d00
       1000:f20b cd 21           INT        0x21
       1000:f20d 5a              POP        DX
       1000:f20e 72 18           JC         LAB_1000_f228
       1000:f210 8b d8           MOV        BX,AX
       1000:f212 33 c9           XOR        CX,CX
       1000:f214 8b d1           MOV        DX,CX
       1000:f216 b8 02 42        MOV        AX,0x4202
       1000:f219 cd 21           INT        0x21
       1000:f21b 50              PUSH       AX
       1000:f21c 52              PUSH       DX
       1000:f21d 33 c9           XOR        CX,CX
       1000:f21f 8b d1           MOV        DX,CX
       1000:f221 b8 00 42        MOV        AX,0x4200
       1000:f224 cd 21           INT        0x21
       1000:f226 5d              POP        BP
       1000:f227 59              POP        CX
                             LAB_1000_f228                                   XREF[2]:     1000:f200(j), 1000:f20e(j)  
       1000:f228 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f229()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f229                                   XREF[2]:     FUN_1000_c93c:1000:c94d(c), 
                                                                                          FUN_1000_f244:1000:f245(c)  
       1000:f229 e8 cf ff        CALL       FUN_1000_f1fb                                    undefined FUN_1000_f1fb()
       1000:f22c 72 01           JC         LAB_1000_f22f
       1000:f22e c3              RET
                             LAB_1000_f22f                                   XREF[1]:     1000:f22c(j)  
       1000:f22f 8b f2           MOV        SI,DX
       1000:f231 bf c4 36        MOV        DI,0x36c4
       1000:f234 b9 0c 00        MOV        CX,0xc
       1000:f237 1e              PUSH       DS
       1000:f238 07              POP        ES
       1000:f239 f3 a4           MOVSB.REP  ES:DI,SI
       1000:f23b c7 06 bc        MOV        word ptr [0x3cbc],0x36b4
                 3c b4 36
       1000:f241 e9 f6 0d        JMP        LAB_1000_003a
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f244()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f244                                   XREF[2]:     FUN_1000_f0d6:1000:f0e4(c), 
                                                                                          1000:f252(j)  
       1000:f244 52              PUSH       DX
       1000:f245 e8 e1 ff        CALL       FUN_1000_f229                                    undefined FUN_1000_f229()
       1000:f248 5a              POP        DX
       1000:f249 3b 1e ba db     CMP        BX,word ptr [0xdbba]
       1000:f24d 75 11           JNZ        FUN_1000_f260
       1000:f24f e8 98 00        CALL       FUN_1000_f2ea                                    undefined FUN_1000_f2ea()
       1000:f252 72 f0           JC         FUN_1000_f244
       1000:f254 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f260()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f260                                   XREF[2]:     FUN_1000_e675:1000:e681(c), 
                                                                                          FUN_1000_f244:1000:f24d(j)  
       1000:f260 52              PUSH       DX                           ; Save DX register (file handle)
       1000:f261 57              PUSH       DI                           ; Save DI register (buffer offset)
       1000:f262 06              PUSH       ES                           ; Save ES register (buffer segment)
       1000:f263 1e              PUSH       DS                           ; Save DS register
       1000:f264 06              PUSH       ES                           ; Push ES to prepare for DS update
       1000:f265 1f              POP        DS                           ; Set DS = ES (point DS to buffer segment)
       1000:f266 b9 ff ff        MOV        CX,0xffff                    ; Set CX = 65535 (maximum bytes to read)
       1000:f269 8b d7           MOV        DX,DI                        ; Set DX = DI (buffer offset for read operation)
       1000:f26b b4 3f           MOV        AH,0x3f                      ; DOS function 3Fh: Read from file or device
       1000:f26d cd 21           INT        0x21                         ; Call DOS interrupt (read from file handle in BX into DS:DX buffer, CX bytes max)
       1000:f26f 1f              POP        DS                           ; Restore original DS register
       1000:f270 8b c8           MOV        CX,AX                        ; Save number of bytes read (from AX) to CX
       1000:f272 9c              PUSHF                                   ; Save flags (preserve carry flag and read status)
       1000:f273 b4 3e           MOV        AH,0x3e                      ; DOS function 3Eh: Close file handle
       1000:f275 cd 21           INT        0x21                         ; Call DOS interrupt (close file handle in BX)
       1000:f277 9d              POPF                                    ; Restore flags from read operation
       1000:f278 07              POP        ES                           ; Restore ES register
       1000:f279 5f              POP        DI                           ; Restore DI register
       1000:f27a 5a              POP        DX                           ; Restore DX register
       1000:f27b c3              RET                                     ; Return to caller (AX contains bytes read, flags indicate success/error)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f27c()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f27c                                   XREF[1]:     FUN_1000_b389:1000:b3ad(c)  
       1000:f27c 51              PUSH       CX
       1000:f27d b4 3c           MOV        AH,0x3c
       1000:f27f 33 c9           XOR        CX,CX
       1000:f281 cd 21           INT        0x21
       1000:f283 59              POP        CX
       1000:f284 72 14           JC         LAB_1000_f29a
       1000:f286 8b d8           MOV        BX,AX
       1000:f288 1e              PUSH       DS
       1000:f289 06              PUSH       ES
       1000:f28a 1f              POP        DS
       1000:f28b 8b d7           MOV        DX,DI
       1000:f28d b4 40           MOV        AH,0x40
       1000:f28f cd 21           INT        0x21
       1000:f291 1f              POP        DS
       1000:f292 2b c1           SUB        AX,CX
       1000:f294 9c              PUSHF
       1000:f295 b4 3e           MOV        AH,0x3e
       1000:f297 cd 21           INT        0x21
       1000:f299 9d              POPF
                             LAB_1000_f29a                                   XREF[1]:     1000:f284(j)  
       1000:f29a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f2a7()
                             ; Archive entry file seek function
                             ; Seeks to the position in the archive file where the actual file data is stored
                             ; Uses the stored directory entry to find the file offset within dune.dat
                             ; Input: DX = filename string pointer (for lookup)
                             ; Output: Positions file pointer to start of file data in archive
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f2a7                                   XREF[1]:     FUN_1000_f1fb:1000:f1fc(c)  
       1000:f2a7 57              PUSH       DI
       1000:f2a8 06              PUSH       ES
       1000:f2a9 83 3e ba        CMP        word ptr [0xdbba],0x1        ; Check if archive file is open
                 db 01
       1000:f2ae 72 23           JC         LAB_1000_f2d3                ; Exit if not open
       1000:f2b0 8b f2           MOV        SI,DX                        ; Load filename pointer
       1000:f2b2 e8 5f 00        CALL       FUN_1000_f314                ; Parse filename to get file ID
       1000:f2b5 72 1c           JC         LAB_1000_f2d3                ; Exit if parsing failed
       1000:f2b7 e8 ed 00        CALL       FUN_1000_f3a7                ; Search for entry in directory
       1000:f2ba 72 17           JC         LAB_1000_f2d3                ; Exit if not found
       1000:f2bc 33 c9           XOR        CX,CX                        ; Clear CX
       1000:f2be 26 8a 4d 05     MOV        CL,byte ptr ES:[DI + 0x5]    ; Load byte from directory entry +5
       1000:f2c2 8b e9           MOV        BP,CX                        ; Save to BP
       1000:f2c4 26 8b 4d 03     MOV        CX,word ptr ES:[DI + 0x3]    ; Load word from directory entry +3
       1000:f2c8 26 8b 45 06     MOV        AX,word ptr ES:[DI + 0x6]    ; Load file offset low word from entry +6
       1000:f2cc 26 8b 55 08     MOV        DX,word ptr ES:[DI + 0x8]    ; Load file offset high word from entry +8
       1000:f2d0 e8 03 00        CALL       FUN_1000_f2d6                ; Seek to file offset in archive (DX:AX = 32-bit offset)
                             LAB_1000_f2d3                                   XREF[3]:     1000:f2ae(j), 1000:f2b5(j), 
                                                                                          1000:f2ba(j)  
       1000:f2d3 07              POP        ES
       1000:f2d4 5f              POP        DI
       1000:f2d5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f2d6()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f2d6                                   XREF[2]:     FUN_1000_e741:1000:e745(c), 
                                                                                          FUN_1000_f2a7:1000:f2d0(c)  
       1000:f2d6 51              PUSH       CX                           ; Save CX register (will be used for high word of offset)
       1000:f2d7 36 8b 1e        MOV        BX,word ptr SS:[0xdbba]      ; Load file handle from SS:[0xdbba] into BX
                 ba db
       1000:f2dc 8b ca           MOV        CX,DX                        ; Move DX (high word of offset) to CX
       1000:f2de 8b d0           MOV        DX,AX                        ; Move AX (low word of offset) to DX (now CX:DX = 32-bit offset)
       1000:f2e0 b8 00 42        MOV        AX,0x4200                    ; DOS function 42h: LSEEK (Move File Pointer), AL=00h (seek from beginning of file)
       1000:f2e3 cd 21           INT        0x21                         ; Call DOS interrupt (seek file pointer to offset CX:DX from start, file handle in BX)
       1000:f2e5 59              POP        CX                           ; Restore CX register
       1000:f2e6 c3              RET                                     ; Return (DX:AX contains new file position)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f2ea()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f2ea                                   XREF[2]:     FUN_1000_e741:1000:e755(c), 
                                                                                          FUN_1000_f244:1000:f24f(c)  
       1000:f2ea 1e              PUSH       DS
       1000:f2eb 06              PUSH       ES
       1000:f2ec 1f              POP        DS
       1000:f2ed 36 8b 1e        MOV        BX,word ptr SS:[0xdbba]
                 ba db
       1000:f2f2 8b d7           MOV        DX,DI
       1000:f2f4 b4 3f           MOV        AH,0x3f
       1000:f2f6 cd 21           INT        0x21
       1000:f2f8 3b c1           CMP        AX,CX
       1000:f2fa 1f              POP        DS
       1000:f2fb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f2fc()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f2fc                                   XREF[2]:     FUN_1000_b389:1000:b3a5(c), 
                                                                                          FUN_1000_f1fb:1000:f205(c)  
       1000:f2fc 56              PUSH       SI
       1000:f2fd 57              PUSH       DI
       1000:f2fe 8b f2           MOV        SI,DX
       1000:f300 8b 3e a6 38     MOV        DI,word ptr [0x38a6]
                             LAB_1000_f304                                   XREF[1]:     1000:f30c(j)  
       1000:f304 8a 04           MOV        AL,byte ptr [SI]
       1000:f306 46              INC        SI
       1000:f307 88 05           MOV        byte ptr [DI],AL
       1000:f309 47              INC        DI
       1000:f30a 0a c0           OR         AL,AL
       1000:f30c 75 f6           JNZ        LAB_1000_f304
       1000:f30e 5f              POP        DI
       1000:f30f 5e              POP        SI
       1000:f310 ba 26 38        MOV        DX,0x3826
       1000:f313 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f314()
                             ; Filename parser and decoder
                             ; Parses archive entry filename and converts it to a numeric ID
                             ; Handles two formats:
                             ; 1. Normal null-terminated filenames (compared against directory)
                             ; 2. Encoded filenames starting with "\P" (special compressed format)
                             ; Encoded format: \P + 2 bytes + 1 type byte + 3 hex digits + flag + optional upper nibble
                             ; Returns: AX = file ID, DL = file type, Carry flag = error
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f314                                   XREF[3]:     FUN_1000_e675:1000:e6d0(c), 
                                                                                          FUN_1000_e826:1000:e83b(c), 
                                                                                          FUN_1000_f2a7:1000:f2b2(c)  
       1000:f314 16              PUSH       SS
       1000:f315 07              POP        ES
       1000:f316 81 7c 02        CMP        word ptr [SI + 0x2],0x505c   ; Check if filename starts with "\P" (0x505c = "P\" little-endian)
                 5c 50
       1000:f31b 74 4f           JZ         LAB_1000_f36c                ; Jump to encoded filename handler
       1000:f31d 56              PUSH       SI
       1000:f31e b9 10 00        MOV        CX,0x10
       1000:f321 8b d1           MOV        DX,CX
                             LAB_1000_f323                                   XREF[1]:     1000:f326(j)  
       1000:f323 ac              LODSB      SI
       1000:f324 0a c0           OR         AL,AL
       1000:f326 e0 fb           LOOPNZ     LAB_1000_f323
       1000:f328 75 01           JNZ        LAB_1000_f32b
       1000:f32a 41              INC        CX
                             LAB_1000_f32b                                   XREF[1]:     1000:f328(j)  
       1000:f32b 83 e9 10        SUB        CX,0x10
       1000:f32e f7 d9           NEG        CX
       1000:f330 5e              POP        SI
       1000:f331 33 d2           XOR        DX,DX
       1000:f333 a1 78 ce        MOV        AX,[0xce78]
       1000:f336 8b f8           MOV        DI,AX
       1000:f338 d1 e7           SHL        DI,0x1
       1000:f33a 8b bd ff 31     MOV        DI,word ptr [DI + 0x31ff]
       1000:f33e 83 c7 02        ADD        DI,0x2
       1000:f341 51              PUSH       CX
       1000:f342 56              PUSH       SI
       1000:f343 f3 a6           CMPSB.REPE ES:DI,SI
       1000:f345 5e              POP        SI
       1000:f346 59              POP        CX
       1000:f347 74 5c           JZ         LAB_1000_f3a5
       1000:f349 bb ff 31        MOV        BX,0x31ff
       1000:f34c bd f7 00        MOV        BP,0xf7
                             LAB_1000_f34f                                   XREF[1]:     1000:f368(j)  
       1000:f34f 26 8b 3f        MOV        DI,word ptr ES:[BX]
       1000:f352 8b c3           MOV        AX,BX
       1000:f354 2d ff 31        SUB        AX,0x31ff
       1000:f357 d1 e8           SHR        AX,0x1
       1000:f359 83 c3 02        ADD        BX,0x2
       1000:f35c 83 c7 02        ADD        DI,0x2
       1000:f35f 51              PUSH       CX
       1000:f360 56              PUSH       SI
       1000:f361 f3 a6           CMPSB.REPE ES:DI,SI
       1000:f363 5e              POP        SI
       1000:f364 59              POP        CX
       1000:f365 74 3e           JZ         LAB_1000_f3a5
       1000:f367 4d              DEC        BP
       1000:f368 75 e5           JNZ        LAB_1000_f34f
       1000:f36a f9              STC
       1000:f36b c3              RET
                             LAB_1000_f36c                                   XREF[1]:     1000:f31b(j)  
                             ; Encoded filename parser for "\P" format
                             ; Format: \P + XX + T + HHH + F + N
                             ; Where: T = type byte, HHH = 3 hex digits, F = 'O' flag, N = optional A-Z for upper nibble
       1000:f36c 83 c6 04        ADD        SI,0x4                       ; Skip "\P" prefix (2 bytes) + 2 unknown bytes
       1000:f36f ac              LODSB      SI                           ; Read type byte
       1000:f370 2c 40           SUB        AL,0x40                      ; Convert type byte (subtract 0x40 = '@')
       1000:f372 8a d0           MOV        DL,AL                        ; Store type in DL
       1000:f374 33 db           XOR        BX,BX                        ; Clear BX for building file ID
       1000:f376 b9 03 00        MOV        CX,0x3                       ; Process 3 hex digits
                             LAB_1000_f379                                   XREF[1]:     1000:f38c(j)  
       1000:f379 ac              LODSB      SI                           ; Read hex digit
       1000:f37a 3c 41           CMP        AL,0x41                      ; Check if >= 'A' (letter)
       1000:f37c 72 02           JC         LAB_1000_f380                ; Jump if numeric (0-9)
       1000:f37e 2c 07           SUB        AL,0x7                       ; Convert A-F: subtract 7 more to get 10-15
                             LAB_1000_f380                                   XREF[1]:     1000:f37c(j)  
       1000:f380 24 0f           AND        AL,0xf                       ; Mask to get 4-bit value
       1000:f382 d1 e3           SHL        BX,0x1                       ; Shift BX left 4 bits
       1000:f384 d1 e3           SHL        BX,0x1                       ; (4 shifts = multiply by 16)
       1000:f386 d1 e3           SHL        BX,0x1
       1000:f388 d1 e3           SHL        BX,0x1
       1000:f38a 0a d8           OR         BL,AL                        ; Add digit to lower nibble
       1000:f38c e2 eb           LOOP       LAB_1000_f379                ; Process next digit
       1000:f38e ac              LODSB      SI                           ; Read flag byte
       1000:f38f 3c 4f           CMP        AL,0x4f                      ; Check if 'O'
       1000:f391 f5              CMC                                     ; Complement carry (set if not 'O')
       1000:f392 d0 d2           RCL        DL,0x1                       ; Rotate flag bit into DL type
       1000:f394 ac              LODSB      SI                           ; Read optional upper nibble byte
       1000:f395 2c 41           SUB        AL,0x41                      ; Convert from 'A' base
       1000:f397 72 0a           JC         LAB_1000_f3a3                ; Skip if not a letter
       1000:f399 d0 e0           SHL        AL,0x1                       ; Shift to upper nibble position
       1000:f39b d0 e0           SHL        AL,0x1                       ; (4 shifts = multiply by 16)
       1000:f39d d0 e0           SHL        AL,0x1
       1000:f39f d0 e0           SHL        AL,0x1
       1000:f3a1 0a f8           OR         BH,AL                        ; Set upper nibble of BH
                             LAB_1000_f3a3                                   XREF[1]:     1000:f397(j)  
       1000:f3a3 8b c3           MOV        AX,BX                        ; Return file ID in AX
                             LAB_1000_f3a5                                   XREF[2]:     1000:f347(j), 1000:f365(j)  
       1000:f3a5 f8              CLC                                     ; Clear carry (success)
       1000:f3a6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f3a7()
                             ; Archive directory entry search
                             ; Searches for a file entry in the processed directory structure
                             ; Input: AX = file ID, DL = file type
                             ; Output: ES:DI = pointer to found entry (or insertion point)
                             ; Returns: Zero flag set if not found (new entry)
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f3a7                                   XREF[3]:     FUN_1000_e675:1000:e6d6(c), 
                                                                                          FUN_1000_e826:1000:e841(c), 
                                                                                          FUN_1000_f2a7:1000:f2b7(c)  
       1000:f3a7 36 c4 3e        LES        DI,SS:[0xdbbc]               ; Load directory base pointer
                 bc db
       1000:f3ac 83 ef 05        SUB        DI,0x5                       ; Back up before start
                             LAB_1000_f3af                                   XREF[1]:     1000:f3bc(j)  
       1000:f3af 83 c7 05        ADD        DI,0x5                       ; Move to next 5-byte group
       1000:f3b2 26 3a 55 04     CMP        DL,byte ptr ES:[DI + 0x4]    ; Compare file type at offset +4
       1000:f3b6 75 04           JNZ        LAB_1000_f3bc                ; Continue if not matching
       1000:f3b8 26 3b 45 02     CMP        AX,word ptr ES:[DI + 0x2]    ; Compare file ID at offset +2
                             LAB_1000_f3bc                                   XREF[1]:     1000:f3b6(j)  
       1000:f3bc 77 f1           JA         LAB_1000_f3af                ; Continue if our ID is greater
       1000:f3be 26 8b 3d        MOV        DI,word ptr ES:[DI]          ; Load pointer to next level
       1000:f3c1 83 ef 0a        SUB        DI,0xa                       ; Back up before start
                             LAB_1000_f3c4                                   XREF[1]:     1000:f3d0(j)  
       1000:f3c4 83 c7 0a        ADD        DI,0xa                       ; Move to next 10-byte entry
       1000:f3c7 26 3a 55 02     CMP        DL,byte ptr ES:[DI + 0x2]    ; Compare file type at offset +2
       1000:f3cb 75 03           JNZ        LAB_1000_f3d0                ; Continue if not matching
       1000:f3cd 26 3b 05        CMP        AX,word ptr ES:[DI]          ; Compare file ID at offset +0
                             LAB_1000_f3d0                                   XREF[1]:     1000:f3cb(j)  
       1000:f3d0 77 f2           JA         LAB_1000_f3c4                ; Continue if our ID is greater
       1000:f3d2 c3              RET                                     ; Return with DI pointing to entry
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f3d3()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f3d3                                   XREF[1]:     FUN_1000_f0d6:1000:f0f3(c)  
       1000:f3d3 80 3e 71        CMP        byte ptr [0xce71],0x0
                 ce 00
       1000:f3d8 75 28           JNZ        LAB_1000_f402
       1000:f3da 51              PUSH       CX
       1000:f3db 57              PUSH       DI
       1000:f3dc 1e              PUSH       DS
       1000:f3dd 06              PUSH       ES
       1000:f3de 1f              POP        DS
       1000:f3df 8b d7           MOV        DX,DI
       1000:f3e1 03 d1           ADD        DX,CX
       1000:f3e3 b9 06 00        MOV        CX,0x6
       1000:f3e6 8b f7           MOV        SI,DI
       1000:f3e8 33 c0           XOR        AX,AX
                             LAB_1000_f3ea                                   XREF[1]:     1000:f3ed(j)  
       1000:f3ea ac              LODSB      SI
       1000:f3eb 02 e0           ADD        AH,AL
       1000:f3ed e2 fb           LOOP       LAB_1000_f3ea
       1000:f3ef 80 fc ab        CMP        AH,0xab
       1000:f3f2 75 0a           JNZ        LAB_1000_f3fe
       1000:f3f4 8b f7           MOV        SI,DI
       1000:f3f6 ad              LODSW      SI
       1000:f3f7 8b f8           MOV        DI,AX
       1000:f3f9 ac              LODSB      SI
       1000:f3fa 0a c0           OR         AL,AL
       1000:f3fc 74 0f           JZ         LAB_1000_f40d
                             LAB_1000_f3fe                                   XREF[1]:     1000:f3f2(j)  
       1000:f3fe f9              STC
       1000:f3ff 1f              POP        DS
       1000:f400 5f              POP        DI
       1000:f401 59              POP        CX
                             LAB_1000_f402                                   XREF[1]:     1000:f3d8(j)  
       1000:f402 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_1000_f403()
                               assume CS = 0x1000
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_1000_f403                                   XREF[3]:     FUN_1000_ae62:1000:aea5(c), 
                                                                                          FUN_1000_ccf4:1000:cd7c(c), 
                                                                                          FUN_1000_f0a0:1000:f0b6(c)  
       1000:f403 51              PUSH       CX
       1000:f404 57              PUSH       DI
       1000:f405 1e              PUSH       DS
       1000:f406 83 c6 06        ADD        SI,0x6
       1000:f409 33 ed           XOR        BP,BP
       1000:f40b eb 28           JMP        LAB_1000_f435
                             LAB_1000_f40d                                   XREF[1]:     1000:f3fc(j)  
       1000:f40d ad              LODSW      SI
       1000:f40e 8b c8           MOV        CX,AX
       1000:f410 83 ee 05        SUB        SI,0x5
       1000:f413 8b ee           MOV        BP,SI
       1000:f415 03 fe           ADD        DI,SI
       1000:f417 83 c7 40        ADD        DI,0x40
       1000:f41a 03 f1           ADD        SI,CX
       1000:f41c 4e              DEC        SI
       1000:f41d 4f              DEC        DI
       1000:f41e 83 e9 06        SUB        CX,0x6
       1000:f421 fd              STD
       1000:f422 d1 e9           SHR        CX,0x1
       1000:f424 73 01           JNC        LAB_1000_f427
       1000:f426 a4              MOVSB      ES:DI,SI
                             LAB_1000_f427                                   XREF[1]:     1000:f424(j)  
       1000:f427 4e              DEC        SI
       1000:f428 4f              DEC        DI
       1000:f429 f3 a5           MOVSW.REP  ES:DI,SI
       1000:f42b fc              CLD
       1000:f42c 8b f7           MOV        SI,DI
       1000:f42e 83 c6 02        ADD        SI,0x2
       1000:f431 8b fd           MOV        DI,BP
       1000:f433 33 ed           XOR        BP,BP
                             LAB_1000_f435                                   XREF[3]:     1000:f40b(j), 1000:f43c(j), 
                                                                                          1000:f480(j)  
       1000:f435 d1 ed           SHR        BP,0x1
       1000:f437 74 05           JZ         LAB_1000_f43e
       1000:f439 73 0b           JNC        LAB_1000_f446
                             LAB_1000_f43b                                   XREF[1]:     1000:f444(j)  
       1000:f43b a4              MOVSB      ES:DI,SI
       1000:f43c eb f7           JMP        LAB_1000_f435
                             LAB_1000_f43e                                   XREF[1]:     1000:f437(j)  
       1000:f43e ad              LODSW      SI
       1000:f43f 8b e8           MOV        BP,AX
       1000:f441 f9              STC
       1000:f442 d1 dd           RCR        BP,0x1
       1000:f444 72 f5           JC         LAB_1000_f43b
                             LAB_1000_f446                                   XREF[1]:     1000:f439(j)  
       1000:f446 33 c9           XOR        CX,CX
       1000:f448 d1 ed           SHR        BP,0x1
       1000:f44a 75 06           JNZ        LAB_1000_f452
       1000:f44c ad              LODSW      SI
       1000:f44d 8b e8           MOV        BP,AX
       1000:f44f f9              STC
       1000:f450 d1 dd           RCR        BP,0x1
                             LAB_1000_f452                                   XREF[1]:     1000:f44a(j)  
       1000:f452 72 2e           JC         LAB_1000_f482
       1000:f454 d1 ed           SHR        BP,0x1
       1000:f456 75 06           JNZ        LAB_1000_f45e
       1000:f458 ad              LODSW      SI
       1000:f459 8b e8           MOV        BP,AX
       1000:f45b f9              STC
       1000:f45c d1 dd           RCR        BP,0x1
                             LAB_1000_f45e                                   XREF[1]:     1000:f456(j)  
       1000:f45e d1 d1           RCL        CX,0x1
       1000:f460 d1 ed           SHR        BP,0x1
       1000:f462 75 06           JNZ        LAB_1000_f46a
       1000:f464 ad              LODSW      SI
       1000:f465 8b e8           MOV        BP,AX
       1000:f467 f9              STC
       1000:f468 d1 dd           RCR        BP,0x1
                             LAB_1000_f46a                                   XREF[1]:     1000:f462(j)  
       1000:f46a d1 d1           RCL        CX,0x1
       1000:f46c ac              LODSB      SI
       1000:f46d b4 ff           MOV        AH,0xff
                             LAB_1000_f46f                                   XREF[2]:     1000:f491(j), 1000:f49c(j)  
       1000:f46f 03 c7           ADD        AX,DI
       1000:f471 96              XCHG       AX,SI
       1000:f472 8c db           MOV        BX,DS
       1000:f474 8c c2           MOV        DX,ES
       1000:f476 8e da           MOV        DS,DX
       1000:f478 41              INC        CX
       1000:f479 41              INC        CX
       1000:f47a f3 a4           MOVSB.REP  ES:DI,SI
       1000:f47c 8e db           MOV        DS,BX
       1000:f47e 8b f0           MOV        SI,AX
       1000:f480 eb b3           JMP        LAB_1000_f435
                             LAB_1000_f482                                   XREF[1]:     1000:f452(j)  
       1000:f482 ad              LODSW      SI
       1000:f483 8a c8           MOV        CL,AL
       1000:f485 d1 e8           SHR        AX,0x1
       1000:f487 d1 e8           SHR        AX,0x1
       1000:f489 d1 e8           SHR        AX,0x1
       1000:f48b 80 cc e0        OR         AH,0xe0
       1000:f48e 80 e1 07        AND        CL,0x7
       1000:f491 75 dc           JNZ        LAB_1000_f46f
       1000:f493 8b d8           MOV        BX,AX
       1000:f495 ac              LODSB      SI
       1000:f496 8a c8           MOV        CL,AL
       1000:f498 8b c3           MOV        AX,BX
       1000:f49a 0a c9           OR         CL,CL
       1000:f49c 75 d1           JNZ        LAB_1000_f46f
       1000:f49e f9              STC
       1000:f49f 8b cf           MOV        CX,DI
       1000:f4a1 1f              POP        DS
       1000:f4a2 5f              POP        DI
       1000:f4a3 83 c4 02        ADD        SP,0x2
       1000:f4a6 2b cf           SUB        CX,DI
       1000:f4a8 c3              RET
                             //
                             // CODE_1 
                             // ram:1f4b:0000-ram:1f4b:3cbb
                             //
             assume CS = 0x1f4b
       1f4b:2951 54 41 42        ds         "TABLAT.BIN"
                 4c 41 54 
                 2e 42 49 
       1f4b:295e 44 4e 43        ds         "DNCHAR.BIN"
                 48 41 52 
                 2e 42 49 
       1f4b:296b 44 4e 43        ds         "DNCHAR2.BIN"
                 48 41 52 
                 32 2e 42 
       1f4b:2979 44 49 41        ds         "DIALOGUE.HSQ"
                 4c 4f 47 
                 55 45 2e 
       1f4b:2988 56 45 52        ds         "VER.BIN"
                 2e 42 49 
                 4e 00
       1f4b:2992 53 49 45        ds         "SIET.SAL"
                 54 2e 53 
                 41 4c 00 00
       1f4b:299d 50 41 4c        ds         "PALACE.SAL"
                 41 43 45 
                 2e 53 41 
       1f4b:29aa 56 49 4c        ds         "VILG.SAL"
                 47 2e 53 
                 41 4c 00 00
       1f4b:29b5 48 41 52        ds         "HARK.SAL"
                 4b 2e 53 
                 41 4c 00 
       1f4b:29c0 47 4c 4f        ds         "GLOBDATA.HSQ"
                 42 44 41 
                 54 41 2e 
       1f4b:29cf 50 48 52        ds         "PHRASE11.HSQ"
                 41 53 45 
                 31 31 2e 
       1f4b:2a56 50 48 52        ds         "PHRASE32.HSQ"
                 41 53 45 
                 33 32 2e 
       1f4b:2aa1 43 4f 4d        ds         "COMMAND1.HSQ"
                 4d 41 4e 
                 44 31 2e 
       1f4b:2ab0 43 4f 4d        ds         "COMMAND2.HSQ"
                 4d 41 4e 
                 44 32 2e 
       1f4b:2abf 43 4f 4d        ds         "COMMAND3.HSQ"
                 4d 41 4e 
                 44 33 2e 
       1f4b:2ace 43 4f 4d        ds         "COMMAND4.HSQ"
                 4d 41 4e 
                 44 34 2e 
       1f4b:2add 43 4f 4d        ds         "COMMAND5.HSQ"
                 4d 41 4e 
                 44 35 2e 
       1f4b:2aec 43 4f 4d        ds         "COMMAND6.HSQ"
                 4d 41 4e 
                 44 36 2e 
       1f4b:2afb 43 4f 4d        ds         "COMMAND7.HSQ"
                 4d 41 4e 
                 44 37 2e 
       1f4b:2b83 43 4f 4e        ds         "CONDIT.HSQ"
                 44 49 54 
                 2e 48 53 
       1f4b:2b9a 49 43 4f        ds         "ICONES.HSQ"
                 4e 45 53 
                 2e 48 53 
       1f4b:2c6e 47 45 4e        ds         "GENERIC.HSQ"
                 45 52 49 
                 43 2e 48 
       1f4b:2c7c 50 52 4f        ds         "PROUGE.HSQ"
                 55 47 45 
                 2e 48 53 
       1f4b:2c9f 42 41 4c        ds         "BALCON.HSQ"
                 43 4f 4e 
                 2e 48 53 
       1f4b:2cda 0a 6c 69        ds         "\nlibre"
                 62 72 65 00
       1f4b:2cee 46 49 4e        ds         "FINAL.HSQ"
                 41 4c 2e 
                 48 53 51 00
       1f4b:2cfa 53 45 52        ds         "SERRE.HSQ"
                 52 45 2e 
                 48 53 51 00
       1f4b:2d11 50 41 4c        ds         "PALPLAN.HSQ"
                 50 4c 41 
                 4e 2e 48 
       1f4b:2d58 43 48 41        ds         "CHANKISS.HSQ"
                 4e 4b 49 
                 53 53 2e 
       1f4b:2d97 53 54 41        ds         "STARS.HSQ"
                 52 53 2e 
                 48 53 51 00
       1f4b:2e24 6c 69 62        ds         "libre"
                 72 65 00
       1f4b:2e41 4d 49 52        ds         "MIRROR.HSQ"
                 52 4f 52 
                 2e 48 53 
       1f4b:2e80 6c 69 62        ds         "libre"
                 72 65 00
       1f4b:2ff4 50 41 4c        ds         "PALAIS.HSQ"
                 41 49 53 
                 2e 48 53 
       1f4b:302d 53 49 45        ds         "SIET.LOP"
                 54 2e 4c 
                 4f 50 00
       1f4b:3038 50 41 4c        ds         "PALACE.LOP"
                 41 43 45 
                 2e 4c 4f 
       1f4b:3464 50 41 4c        ds         "PALACE.HNM"
                 41 43 45 
                 2e 48 4e 
       1f4b:349d 50 4c 41        ds         "PLANT.HNM"
                 4e 54 2e 
                 48 4e 4d 00
       1f4b:34a9 43 52 45        ds         "CREDITS.HNM"
                 44 49 54 
                 53 2e 48 
       1f4b:34db 50 52 45        ds         "PRESENT.HNM"
                 53 45 4e 
                 54 2e 48 
       1f4b:3624 4e 6f 74        ds         "Not enough standard memory for sounds"
                 20 65 6e 
                 6f 75 67 
       1f4b:364b 4e 6f 74        ds         "Not enough standard memory for music. Try wit
                 20 65 6e 
                 6f 75 67 
       1f4b:368d 4e 6f 74        ds         "Not enough standard memory to run Dune"
                 20 65 6e 
                 6f 75 67 
       1f4b:36b4 46 69 6c        ds         "File not found:             "
                 65 20 6e 
                 6f 74 20 
       1f4b:36d3 53 45 4b        ds         "SEKENCE.HSQ"
                 45 4e 43 
                 45 2e 48 
       1f4b:36e1 57 41 54        ds         "WATER.HSQ"
                 45 52 2e 
                 48 53 51 
       1f4b:36ed 57 4f 52        ds         "WORMSUIT.HSQ"
                 4d 53 55 
                 49 54 2e 
       1f4b:36fc 57 4f 52        ds         "WORMINTR.HSQ"
                 4d 49 4e 
                 54 52 2e 
       1f4b:370b 57 41 52        ds         "WARSONG.HSQ"
                 53 4f 4e 
                 47 2e 48 
       1f4b:3719 4d 4f 52        ds         "MORNING.HSQ"
                 4e 49 4e 
                 47 2e 48 
       1f4b:3742 41 52 52        ds         "ARRAKIS.HSQ"
                 41 4b 49 
                 53 2e 48 
       1f4b:3750 43 52 59        ds         "CRYOMUS.HSQ"
                 4f 4d 55 
                 53 2e 48 
       1f4b:37e9 64 75 6e        ds         "dune.dat"
                 65 2e 64 
                 61 74 00
                             s_&8dune37s0.sav_1f4b_38a6                      XREF[1]:     FUN_1000_e4ad:1000:e564(W)  
       1f4b:38a6 26 38 64        ds         "&8dune37s0.sav"
                 75 6e 65 
                 33 37 73 
                             DAT_1f4b_3975                                   XREF[1]:     entry:1000:004e(R)  
       1f4b:3975 06 01           undefined2 0106h
                             DAT_1f4b_3977                                   XREF[2]:     entry:1000:0047(R), 
                                                                                          entry:1000:004e(R)  
       1f4b:3977 00 00           undefined2 0000h
                             DAT_1f4b_398d                                   XREF[1]:     entry:1000:0052(R)  
       1f4b:398d 03 01           undefined2 0103h
                             DAT_1f4b_398f                                   XREF[1]:     entry:1000:0052(R)  
       1f4b:398f 00 00           undefined2 0000h
                             DAT_1f4b_3cba                                   XREF[6]:     entry:1000:0003(W), 
                                                                                          entry:1000:0006(W), 
                                                                                          entry:1000:0009(W), 
                                                                                          entry:1000:000d(W), 
                                                                                          entry:1000:0010(W), 
                                                                                          entry:1000:0013(W)  
       1f4b:3cba 00 00           undefined2 0000h
                             //
                             // DATA 
                             // ram:1f4b:3cbc-ram:1f4b:dd2b
                             //
                             DAT_1f4b_3cbc                                   XREF[3]:     entry:1000:005b(R), 
                                                                                          FUN_1000_e594:1000:e5a4(W), 
                                                                                          FUN_1000_f0ff:1000:f136(W)  
       1f4b:3cbc                 undefined1 ??
                             DAT_1f4b_3cbd                                   XREF[1]:     FUN_1000_e594:1000:e5a4(W)  
       1f4b:3cbd                 undefined1 ??
