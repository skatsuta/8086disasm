00000000  31ED              xor bp,bp
00000002  89E3              mov bx,sp
00000004  8B07              mov ax,[bx]
00000006  8D5702            lea dx,[bx+0x2]
00000009  8D4F04            lea cx,[bx+0x4]
0000000C  01C1              add cx,ax
0000000E  01C1              add cx,ax
00000010  BBE20D            mov bx,0xde2
00000013  81FBD20E          cmp bx,0xed2
00000017  730F              jnc 0x28
00000019  F6C301            test bl,0x1
0000001C  750A              jnz 0x28
0000001E  813F5353          cmp word [bx],0x5353
00000022  7504              jnz 0x28
00000024  891E0200          mov [0x2],bx
00000028  8B1E0200          mov bx,[0x2]
0000002C  890F              mov [bx],cx
0000002E  51                push cx
0000002F  52                push dx
00000030  50                push ax
00000031  E82001            call word 0x154
00000034  50                push ax
00000035  E8A711            call word 0x11df
00000038  F4                hlt
00000039  55                push bp
0000003A  89E5              mov bp,sp
0000003C  56                push si
0000003D  57                push di
0000003E  31F6              xor si,si
00000040  3936F013          cmp [0x13f0],si
00000044  7E64              jng 0xaa
00000046  89F3              mov bx,si
00000048  D1E3              shl bx,1
0000004A  FF7604            push word [bp+0x4]
0000004D  B8F00B            mov ax,0xbf0
00000050  50                push ax
00000051  FFB7F213          push word [bx+0x13f2]
00000055  B8DA0E            mov ax,0xeda
00000058  50                push ax
00000059  E80705            call word 0x563
0000005C  83C408            add sp,byte +0x8
0000005F  B8EC0B            mov ax,0xbec
00000062  50                push ax
00000063  B8DA0E            mov ax,0xeda
00000066  50                push ax
00000067  E8A616            call word 0x1710
0000006A  5B                pop bx
0000006B  5B                pop bx
0000006C  31C0              xor ax,ax
0000006E  50                push ax
0000006F  B8DA0E            mov ax,0xeda
00000072  50                push ax
00000073  E83716            call word 0x16ad
00000076  5B                pop bx
00000077  5B                pop bx
00000078  09C0              or ax,ax
0000007A  7426              jz 0xa2
0000007C  B86100            mov ax,0x61
0000007F  50                push ax
00000080  B8DA0E            mov ax,0xeda
00000083  50                push ax
00000084  50                push ax
00000085  E8A616            call word 0x172e
00000088  5B                pop bx
00000089  2D0100            sub ax,0x1
0000008C  5B                pop bx
0000008D  01C3              add bx,ax
0000008F  5A                pop dx
00000090  8817              mov [bx],dl
00000092  31C0              xor ax,ax
00000094  50                push ax
00000095  B8DA0E            mov ax,0xeda
00000098  50                push ax
00000099  E81116            call word 0x16ad
0000009C  5B                pop bx
0000009D  5B                pop bx
0000009E  09C0              or ax,ax
000000A0  7505              jnz 0xa7
000000A2  B8DA0E            mov ax,0xeda
000000A5  EB5F              jmp short 0x106
000000A7  46                inc si
000000A8  EB96              jmp short 0x40
000000AA  FF7604            push word [bp+0x4]
000000AD  B8DC0B            mov ax,0xbdc
000000B0  50                push ax
000000B1  B8E20B            mov ax,0xbe2
000000B4  50                push ax
000000B5  B8DA0E            mov ax,0xeda
000000B8  50                push ax
000000B9  E8A704            call word 0x563
000000BC  83C408            add sp,byte +0x8
000000BF  B8D80B            mov ax,0xbd8
000000C2  50                push ax
000000C3  B8DA0E            mov ax,0xeda
000000C6  50                push ax
000000C7  E84616            call word 0x1710
000000CA  5B                pop bx
000000CB  5B                pop bx
000000CC  31C0              xor ax,ax
000000CE  50                push ax
000000CF  B8DA0E            mov ax,0xeda
000000D2  50                push ax
000000D3  E8D715            call word 0x16ad
000000D6  5B                pop bx
000000D7  5B                pop bx
000000D8  09C0              or ax,ax
000000DA  7427              jz 0x103
000000DC  B8DA0E            mov ax,0xeda
000000DF  50                push ax
000000E0  E84B16            call word 0x172e
000000E3  5B                pop bx
000000E4  2D0100            sub ax,0x1
000000E7  89C7              mov di,ax
000000E9  C685DA0E61        mov byte [di+0xeda],0x61
000000EE  31C0              xor ax,ax
000000F0  50                push ax
000000F1  B8DA0E            mov ax,0xeda
000000F4  50                push ax
000000F5  E8B515            call word 0x16ad
000000F8  5B                pop bx
000000F9  5B                pop bx
000000FA  09C0              or ax,ax
000000FC  7405              jz 0x103
000000FE  C685DA0E41        mov byte [di+0xeda],0x41
00000103  B8DA0E            mov ax,0xeda
00000106  E9291C            jmp word 0x1d32
00000109  55                push bp
0000010A  89E5              mov bp,sp
0000010C  B80100            mov ax,0x1
0000010F  50                push ax
00000110  FF7604            push word [bp+0x4]
00000113  E88813            call word 0x149e
00000116  5B                pop bx
00000117  5B                pop bx
00000118  833EB60BFF        cmp word [0xbb6],byte -0x1
0000011D  740C              jz 0x12b
0000011F  FF7604            push word [bp+0x4]
00000122  FF36B60B          push word [0xbb6]
00000126  E89C15            call word 0x16c5
00000129  5B                pop bx
0000012A  5B                pop bx
0000012B  BA8212            mov dx,0x1282
0000012E  09D2              or dx,dx
00000130  7408              jz 0x13a
00000132  B88212            mov ax,0x1282
00000135  50                push ax
00000136  E83703            call word 0x470
00000139  5B                pop bx
0000013A  BA4212            mov dx,0x1242
0000013D  09D2              or dx,dx
0000013F  7408              jz 0x149
00000141  B84212            mov ax,0x1242
00000144  50                push ax
00000145  E82803            call word 0x470
00000148  5B                pop bx
00000149  B80100            mov ax,0x1
0000014C  50                push ax
0000014D  E88F10            call word 0x11df
00000150  5B                pop bx
00000151  E9E01B            jmp word 0x1d34
00000154  55                push bp
00000155  89E5              mov bp,sp
00000157  83EC0C            sub sp,byte +0xc
0000015A  56                push si
0000015B  57                push di
0000015C  B85A0C            mov ax,0xc5a
0000015F  50                push ax
00000160  E8CB15            call word 0x172e
00000163  5B                pop bx
00000164  A3F018            mov [0x18f0],ax
00000167  8B5E06            mov bx,[bp+0x6]
0000016A  83460602          add word [bp+0x6],byte +0x2
0000016E  8B17              mov dx,[bx]
00000170  8916C00B          mov [0xbc0],dx
00000174  E82008            call word 0x997
00000177  B80100            mov ax,0x1
0000017A  50                push ax
0000017B  50                push ax
0000017C  E81F13            call word 0x149e
0000017F  5B                pop bx
00000180  5B                pop bx
00000181  3D0100            cmp ax,0x1
00000184  740D              jz 0x193
00000186  B80901            mov ax,0x109
00000189  50                push ax
0000018A  B80100            mov ax,0x1
0000018D  50                push ax
0000018E  E80D13            call word 0x149e
00000191  5B                pop bx
00000192  5B                pop bx
00000193  B80100            mov ax,0x1
00000196  50                push ax
00000197  B80200            mov ax,0x2
0000019A  50                push ax
0000019B  E80013            call word 0x149e
0000019E  5B                pop bx
0000019F  5B                pop bx
000001A0  3D0100            cmp ax,0x1
000001A3  740D              jz 0x1b2
000001A5  B80901            mov ax,0x109
000001A8  50                push ax
000001A9  B80200            mov ax,0x2
000001AC  50                push ax
000001AD  E8EE12            call word 0x149e
000001B0  5B                pop bx
000001B1  5B                pop bx
000001B2  B80100            mov ax,0x1
000001B5  50                push ax
000001B6  B80300            mov ax,0x3
000001B9  50                push ax
000001BA  E8E112            call word 0x149e
000001BD  5B                pop bx
000001BE  5B                pop bx
000001BF  3D0100            cmp ax,0x1
000001C2  740D              jz 0x1d1
000001C4  B80901            mov ax,0x109
000001C7  50                push ax
000001C8  B80300            mov ax,0x3
000001CB  50                push ax
000001CC  E8CF12            call word 0x149e
000001CF  5B                pop bx
000001D0  5B                pop bx
000001D1  FF4E04            dec word [bp+0x4]
000001D4  7F03              jg 0x1d9
000001D6  E97701            jmp word 0x350
000001D9  8B5E06            mov bx,[bp+0x6]
000001DC  83460602          add word [bp+0x6],byte +0x2
000001E0  8B17              mov dx,[bx]
000001E2  89D7              mov di,dx
000001E4  89D3              mov bx,dx
000001E6  803F2D            cmp byte [bx],0x2d
000001E9  7506              jnz 0x1f1
000001EB  807D0100          cmp byte [di+0x1],0x0
000001EF  750C              jnz 0x1fd
000001F1  57                push di
000001F2  B8C212            mov ax,0x12c2
000001F5  50                push ax
000001F6  E8CE02            call word 0x4c7
000001F9  5B                pop bx
000001FA  5B                pop bx
000001FB  EBD4              jmp short 0x1d1
000001FD  B8540C            mov ax,0xc54
00000200  50                push ax
00000201  57                push di
00000202  E81115            call word 0x1716
00000205  5B                pop bx
00000206  5B                pop bx
00000207  09C0              or ax,ax
00000209  7508              jnz 0x213
0000020B  C706CE0B0000      mov word [0xbce],0x0
00000211  EBBE              jmp short 0x1d1
00000213  B84E0C            mov ax,0xc4e
00000216  50                push ax
00000217  57                push di
00000218  E8FB14            call word 0x1716
0000021B  5B                pop bx
0000021C  5B                pop bx
0000021D  09C0              or ax,ax
0000021F  7403              jz 0x224
00000221  E92201            jmp word 0x346
00000224  C706CE0B0100      mov word [0xbce],0x1
0000022A  EBA5              jmp short 0x1d1
0000022C  C70640124C0C      mov word [0x1240],0xc4c
00000232  807D022E          cmp byte [di+0x2],0x2e
00000236  7599              jnz 0x1d1
00000238  8D5D03            lea bx,[di+0x3]
0000023B  891E4012          mov [0x1240],bx
0000023F  EB90              jmp short 0x1d1
00000241  B8460C            mov ax,0xc46
00000244  50                push ax
00000245  8D4502            lea ax,[di+0x2]
00000248  50                push ax
00000249  E8CA14            call word 0x1716
0000024C  5B                pop bx
0000024D  5B                pop bx
0000024E  31DB              xor bx,bx
00000250  09C0              or ax,ax
00000252  7401              jz 0x255
00000254  43                inc bx
00000255  891ECA0B          mov [0xbca],bx
00000259  E975FF            jmp word 0x1d1
0000025C  8D4502            lea ax,[di+0x2]
0000025F  50                push ax
00000260  B8F013            mov ax,0x13f0
00000263  50                push ax
00000264  E86002            call word 0x4c7
00000267  5B                pop bx
00000268  5B                pop bx
00000269  8D4502            lea ax,[di+0x2]
0000026C  50                push ax
0000026D  E8BE14            call word 0x172e
00000270  5B                pop bx
00000271  8946FA            mov [bp-0x6],ax
00000274  3906F018          cmp [0x18f0],ax
00000278  7C03              jl 0x27d
0000027A  E954FF            jmp word 0x1d1
0000027D  A3F018            mov [0x18f0],ax
00000280  E94EFF            jmp word 0x1d1
00000283  8D4502            lea ax,[di+0x2]
00000286  50                push ax
00000287  E8AFFD            call word 0x39
0000028A  5B                pop bx
0000028B  50                push ax
0000028C  B8C212            mov ax,0x12c2
0000028F  50                push ax
00000290  E83402            call word 0x4c7
00000293  5B                pop bx
00000294  5B                pop bx
00000295  E939FF            jmp word 0x1d1
00000298  807D0200          cmp byte [di+0x2],0x0
0000029C  7403              jz 0x2a1
0000029E  E930FF            jmp word 0x1d1
000002A1  57                push di
000002A2  B87A17            mov ax,0x177a
000002A5  50                push ax
000002A6  E81E02            call word 0x4c7
000002A9  5B                pop bx
000002AA  5B                pop bx
000002AB  E923FF            jmp word 0x1d1
000002AE  8B5604            mov dx,[bp+0x4]
000002B1  89D1              mov cx,dx
000002B3  49                dec cx
000002B4  894E04            mov [bp+0x4],cx
000002B7  09D2              or dx,dx
000002B9  7D03              jnl 0x2be
000002BB  E913FF            jmp word 0x1d1
000002BE  8B5E06            mov bx,[bp+0x6]
000002C1  83460602          add word [bp+0x6],byte +0x2
000002C5  8B17              mov dx,[bx]
000002C7  8916B80B          mov [0xbb8],dx
000002CB  E903FF            jmp word 0x1d1
000002CE  C7064012440C      mov word [0x1240],0xc44
000002D4  E9FAFE            jmp word 0x1d1
000002D7  C706CC0B0100      mov word [0xbcc],0x1
000002DD  C7064012420C      mov word [0x1240],0xc42
000002E3  E9EBFE            jmp word 0x1d1
000002E6  C7064012400C      mov word [0x1240],0xc40
000002EC  57                push di
000002ED  B87A17            mov ax,0x177a
000002F0  50                push ax
000002F1  E8D301            call word 0x4c7
000002F4  5B                pop bx
000002F5  5B                pop bx
000002F6  E9D8FE            jmp word 0x1d1
000002F9  FF06C40B          inc word [0xbc4]
000002FD  807D026E          cmp byte [di+0x2],0x6e
00000301  7403              jz 0x306
00000303  E9CBFE            jmp word 0x1d1
00000306  C706C80B0100      mov word [0xbc8],0x1
0000030C  E9C2FE            jmp word 0x1d1
0000030F  FF06C60B          inc word [0xbc6]
00000313  E9BBFE            jmp word 0x1d1
00000316  807D026F          cmp byte [di+0x2],0x6f
0000031A  7403              jz 0x31f
0000031C  E9B2FE            jmp word 0x1d1
0000031F  8B1EEA18          mov bx,[0x18ea]
00000323  C747020000        mov word [bx+0x2],0x0
00000328  E9A6FE            jmp word 0x1d1
0000032B  FF06CE0B          inc word [0xbce]
0000032F  E99FFE            jmp word 0x1d1
00000332  8D5D02            lea bx,[di+0x2]
00000335  891ED00B          mov [0xbd0],bx
00000339  57                push di
0000033A  B87A17            mov ax,0x177a
0000033D  50                push ax
0000033E  E88601            call word 0x4c7
00000341  5B                pop bx
00000342  5B                pop bx
00000343  E98BFE            jmp word 0x1d1
00000346  8A4501            mov al,[di+0x1]
00000349  98                cbw
0000034A  BBF60B            mov bx,0xbf6
0000034D  E9B919            jmp word 0x1d09
00000350  833ECE0B00        cmp word [0xbce],byte +0x0
00000355  740D              jz 0x364
00000357  B83C0C            mov ax,0xc3c
0000035A  50                push ax
0000035B  B87A17            mov ax,0x177a
0000035E  50                push ax
0000035F  E86501            call word 0x4c7
00000362  5B                pop bx
00000363  5B                pop bx
00000364  B8A818            mov ax,0x18a8
00000367  50                push ax
00000368  E8D005            call word 0x93b
0000036B  5B                pop bx
0000036C  8B16C212          mov dx,[0x12c2]
00000370  8956FA            mov [bp-0x6],dx
00000373  C746FCC412        mov word [bp-0x4],0x12c4
00000378  8B56FA            mov dx,[bp-0x6]
0000037B  89D1              mov cx,dx
0000037D  49                dec cx
0000037E  894EFA            mov [bp-0x6],cx
00000381  09D2              or dx,dx
00000383  7E38              jng 0x3bd
00000385  8B5EFC            mov bx,[bp-0x4]
00000388  8B17              mov dx,[bx]
0000038A  8956F8            mov [bp-0x8],dx
0000038D  8346FC02          add word [bp-0x4],byte +0x2
00000391  8916EE18          mov [0x18ee],dx
00000395  B80100            mov ax,0x1
00000398  50                push ax
00000399  FF76F8            push word [bp-0x8]
0000039C  E81609            call word 0xcb5
0000039F  5B                pop bx
000003A0  5B                pop bx
000003A1  8946F8            mov [bp-0x8],ax
000003A4  09C0              or ax,ax
000003A6  74D0              jz 0x378
000003A8  833E401200        cmp word [0x1240],byte +0x0
000003AD  75C9              jnz 0x378
000003AF  FF76F8            push word [bp-0x8]
000003B2  B81E15            mov ax,0x151e
000003B5  50                push ax
000003B6  E80E01            call word 0x4c7
000003B9  5B                pop bx
000003BA  5B                pop bx
000003BB  EBBB              jmp short 0x378
000003BD  B8C212            mov ax,0x12c2
000003C0  50                push ax
000003C1  E89B0C            call word 0x105f
000003C4  5B                pop bx
000003C5  833EC20B00        cmp word [0xbc2],byte +0x0
000003CA  7403              jz 0x3cf
000003CC  E99600            jmp word 0x465
000003CF  833E1E1500        cmp word [0x151e],byte +0x0
000003D4  7F03              jg 0x3d9
000003D6  E98C00            jmp word 0x465
000003D9  BE0400            mov si,0x4
000003DC  F6440A04          test byte [si+0xa],0x4
000003E0  7505              jnz 0x3e7
000003E2  83C60C            add si,byte +0xc
000003E5  EBF5              jmp short 0x3dc
000003E7  B83A0C            mov ax,0xc3a
000003EA  50                push ax
000003EB  FF7406            push word [si+0x6]
000003EE  B8A818            mov ax,0x18a8
000003F1  50                push ax
000003F2  B88212            mov ax,0x1282
000003F5  50                push ax
000003F6  E86A01            call word 0x563
000003F9  83C408            add sp,byte +0x8
000003FC  56                push si
000003FD  FF36EA18          push word [0x18ea]
00000401  837C0C00          cmp word [si+0xc],byte +0x0
00000405  7505              jnz 0x40c
00000407  A1B80B            mov ax,[0xbb8]
0000040A  EB03              jmp short 0x40f
0000040C  B88212            mov ax,0x1282
0000040F  50                push ax
00000410  B81E15            mov ax,0x151e
00000413  50                push ax
00000414  E8DE0A            call word 0xef5
00000417  83C408            add sp,byte +0x8
0000041A  833EC20B00        cmp word [0xbc2],byte +0x0
0000041F  7544              jnz 0x465
00000421  8B164C16          mov dx,[0x164c]
00000425  8956F4            mov [bp-0xc],dx
00000428  8B56F4            mov dx,[bp-0xc]
0000042B  89D1              mov cx,dx
0000042D  49                dec cx
0000042E  894EF4            mov [bp-0xc],cx
00000431  09D2              or dx,dx
00000433  7E1C              jng 0x451
00000435  8B5EF4            mov bx,[bp-0xc]
00000438  D1E3              shl bx,1
0000043A  FFB74E16          push word [bx+0x164e]
0000043E  E82F00            call word 0x470
00000441  5B                pop bx
00000442  8B5EF4            mov bx,[bp-0xc]
00000445  D1E3              shl bx,1
00000447  FFB74E16          push word [bx+0x164e]
0000044B  E8DA0F            call word 0x1428
0000044E  5B                pop bx
0000044F  EBD7              jmp short 0x428
00000451  83C60C            add si,byte +0xc
00000454  833C00            cmp word [si],byte +0x0
00000457  740C              jz 0x465
00000459  31C0              xor ax,ax
0000045B  50                push ax
0000045C  B88212            mov ax,0x1282
0000045F  50                push ax
00000460  E85208            call word 0xcb5
00000463  5B                pop bx
00000464  5B                pop bx
00000465  FF36C20B          push word [0xbc2]
00000469  E8730D            call word 0x11df
0000046C  5B                pop bx
0000046D  E9C218            jmp word 0x1d32
00000470  55                push bp
00000471  89E5              mov bp,sp
00000473  833EC60B00        cmp word [0xbc6],byte +0x0
00000478  752C              jnz 0x4a6
0000047A  833EC40B00        cmp word [0xbc4],byte +0x0
0000047F  7417              jz 0x498
00000481  B8660C            mov ax,0xc66
00000484  50                push ax
00000485  E8A703            call word 0x82f
00000488  5B                pop bx
00000489  FF7604            push word [bp+0x4]
0000048C  E8A003            call word 0x82f
0000048F  5B                pop bx
00000490  B8640C            mov ax,0xc64
00000493  50                push ax
00000494  E89803            call word 0x82f
00000497  5B                pop bx
00000498  833EC80B00        cmp word [0xbc8],byte +0x0
0000049D  7507              jnz 0x4a6
0000049F  FF7604            push word [bp+0x4]
000004A2  E82C12            call word 0x16d1
000004A5  5B                pop bx
000004A6  E98B18            jmp word 0x1d34
000004A9  55                push bp
000004AA  89E5              mov bp,sp
000004AC  56                push si
000004AD  FF7604            push word [bp+0x4]
000004B0  E8A60D            call word 0x1259
000004B3  5B                pop bx
000004B4  89C6              mov si,ax
000004B6  09F6              or si,si
000004B8  7508              jnz 0x4c2
000004BA  B86A0C            mov ax,0xc6a
000004BD  50                push ax
000004BE  E89203            call word 0x853
000004C1  5B                pop bx
000004C2  89F0              mov ax,si
000004C4  E96C18            jmp word 0x1d33
000004C7  55                push bp
000004C8  89E5              mov bp,sp
000004CA  56                push si
000004CB  57                push di
000004CC  8B7E04            mov di,[bp+0x4]
000004CF  FF7606            push word [bp+0x6]
000004D2  E85912            call word 0x172e
000004D5  5B                pop bx
000004D6  40                inc ax
000004D7  50                push ax
000004D8  E8CEFF            call word 0x4a9
000004DB  5B                pop bx
000004DC  89C6              mov si,ax
000004DE  FF7606            push word [bp+0x6]
000004E1  56                push si
000004E2  E83712            call word 0x171c
000004E5  5B                pop bx
000004E6  5B                pop bx
000004E7  813D9600          cmp word [di],0x96
000004EB  7C08              jl 0x4f5
000004ED  B8740C            mov ax,0xc74
000004F0  50                push ax
000004F1  E85F03            call word 0x853
000004F4  5B                pop bx
000004F5  8B05              mov ax,[di]
000004F7  FF05              inc word [di]
000004F9  8D5D02            lea bx,[di+0x2]
000004FC  D1E0              shl ax,1
000004FE  01C3              add bx,ax
00000500  8937              mov [bx],si
00000502  E92D18            jmp word 0x1d32
00000505  55                push bp
00000506  89E5              mov bp,sp
00000508  50                push ax
00000509  56                push si
0000050A  57                push di
0000050B  8B5E06            mov bx,[bp+0x6]
0000050E  8B17              mov dx,[bx]
00000510  8956FE            mov [bp-0x2],dx
00000513  8B5E04            mov bx,[bp+0x4]
00000516  83C302            add bx,byte +0x2
00000519  53                push bx
0000051A  8B5E04            mov bx,[bp+0x4]
0000051D  8B1F              mov bx,[bx]
0000051F  5A                pop dx
00000520  D1E3              shl bx,1
00000522  01D3              add bx,dx
00000524  89DF              mov di,bx
00000526  8B7606            mov si,[bp+0x6]
00000529  83C602            add si,byte +0x2
0000052C  8B5E04            mov bx,[bp+0x4]
0000052F  8B17              mov dx,[bx]
00000531  0356FE            add dx,[bp-0x2]
00000534  8B5E04            mov bx,[bp+0x4]
00000537  8917              mov [bx],dx
00000539  81FA9600          cmp dx,0x96
0000053D  7C08              jl 0x547
0000053F  B88C0C            mov ax,0xc8c
00000542  50                push ax
00000543  E80D03            call word 0x853
00000546  5B                pop bx
00000547  8B56FE            mov dx,[bp-0x2]
0000054A  89D1              mov cx,dx
0000054C  49                dec cx
0000054D  894EFE            mov [bp-0x2],cx
00000550  09D2              or dx,dx
00000552  7E0C              jng 0x560
00000554  8B04              mov ax,[si]
00000556  83C602            add si,byte +0x2
00000559  8905              mov [di],ax
0000055B  83C702            add di,byte +0x2
0000055E  EBE7              jmp short 0x547
00000560  E9CF17            jmp word 0x1d32
00000563  55                push bp
00000564  89E5              mov bp,sp
00000566  56                push si
00000567  57                push di
00000568  8B7604            mov si,[bp+0x4]
0000056B  8B7E06            mov di,[bp+0x6]
0000056E  8A05              mov al,[di]
00000570  47                inc di
00000571  8804              mov [si],al
00000573  46                inc si
00000574  30E4              xor ah,ah
00000576  08C0              or al,al
00000578  75F4              jnz 0x56e
0000057A  4E                dec si
0000057B  8B7E08            mov di,[bp+0x8]
0000057E  8A05              mov al,[di]
00000580  47                inc di
00000581  8804              mov [si],al
00000583  46                inc si
00000584  30E4              xor ah,ah
00000586  08C0              or al,al
00000588  75F4              jnz 0x57e
0000058A  4E                dec si
0000058B  8B7E0A            mov di,[bp+0xa]
0000058E  8A05              mov al,[di]
00000590  47                inc di
00000591  8804              mov [si],al
00000593  46                inc si
00000594  30E4              xor ah,ah
00000596  08C0              or al,al
00000598  75F4              jnz 0x58e
0000059A  4E                dec si
0000059B  8B4604            mov ax,[bp+0x4]
0000059E  E99117            jmp word 0x1d32
000005A1  55                push bp
000005A2  89E5              mov bp,sp
000005A4  56                push si
000005A5  57                push di
000005A6  8B7604            mov si,[bp+0x4]
000005A9  89F7              mov di,si
000005AB  803C00            cmp byte [si],0x0
000005AE  740B              jz 0x5bb
000005B0  8A04              mov al,[si]
000005B2  46                inc si
000005B3  3C2F              cmp al,0x2f
000005B5  75F4              jnz 0x5ab
000005B7  89F7              mov di,si
000005B9  EBF0              jmp short 0x5ab
000005BB  4E                dec si
000005BC  803C2E            cmp byte [si],0x2e
000005BF  7407              jz 0x5c8
000005C1  39FE              cmp si,di
000005C3  7603              jna 0x5c8
000005C5  4E                dec si
000005C6  EBF4              jmp short 0x5bc
000005C8  803C2E            cmp byte [si],0x2e
000005CB  7519              jnz 0x5e6
000005CD  C60400            mov byte [si],0x0
000005D0  8A05              mov al,[di]
000005D2  47                inc di
000005D3  8B5E06            mov bx,[bp+0x6]
000005D6  8807              mov [bx],al
000005D8  FF4606            inc word [bp+0x6]
000005DB  30E4              xor ah,ah
000005DD  08C0              or al,al
000005DF  75EF              jnz 0x5d0
000005E1  C6042E            mov byte [si],0x2e
000005E4  EB11              jmp short 0x5f7
000005E6  8A05              mov al,[di]
000005E8  47                inc di
000005E9  8B5E06            mov bx,[bp+0x6]
000005EC  8807              mov [bx],al
000005EE  FF4606            inc word [bp+0x6]
000005F1  30E4              xor ah,ah
000005F3  08C0              or al,al
000005F5  75EF              jnz 0x5e6
000005F7  E93817            jmp word 0x1d32
000005FA  55                push bp
000005FB  89E5              mov bp,sp
000005FD  56                push si
000005FE  8B7604            mov si,[bp+0x4]
00000601  803C00            cmp byte [si],0x0
00000604  7403              jz 0x609
00000606  46                inc si
00000607  EBF8              jmp short 0x601
00000609  397604            cmp [bp+0x4],si
0000060C  7308              jnc 0x616
0000060E  803C2E            cmp byte [si],0x2e
00000611  7403              jz 0x616
00000613  4E                dec si
00000614  EBF3              jmp short 0x609
00000616  397604            cmp [bp+0x4],si
00000619  7405              jz 0x620
0000061B  8D4401            lea ax,[si+0x1]
0000061E  EB02              jmp short 0x622
00000620  31C0              xor ax,ax
00000622  E90E17            jmp word 0x1d33
00000625  55                push bp
00000626  89E5              mov bp,sp
00000628  83EC06            sub sp,byte +0x6
0000062B  56                push si
0000062C  57                push di
0000062D  8B7E04            mov di,[bp+0x4]
00000630  C746FA0000        mov word [bp-0x6],0x0
00000635  B80500            mov ax,0x5
00000638  50                push ax
00000639  B8260D            mov ax,0xd26
0000063C  50                push ax
0000063D  FF7504            push word [di+0x4]
00000640  E8F110            call word 0x1734
00000643  83C406            add sp,byte +0x6
00000646  09C0              or ax,ax
00000648  7525              jnz 0x66f
0000064A  8B5D04            mov bx,[di+0x4]
0000064D  B80100            mov ax,0x1
00000650  50                push ax
00000651  83C304            add bx,byte +0x4
00000654  53                push bx
00000655  E85510            call word 0x16ad
00000658  5B                pop bx
00000659  5B                pop bx
0000065A  09C0              or ax,ax
0000065C  7511              jnz 0x66f
0000065E  8D5D04            lea bx,[di+0x4]
00000661  89DE              mov si,bx
00000663  8B1F              mov bx,[bx]
00000665  83C304            add bx,byte +0x4
00000668  891C              mov [si],bx
0000066A  C746FA0100        mov word [bp-0x6],0x1
0000066F  833EC40B00        cmp word [0xbc4],byte +0x0
00000674  7444              jz 0x6ba
00000676  57                push di
00000677  E8EE01            call word 0x868
0000067A  5B                pop bx
0000067B  8B5E06            mov bx,[bp+0x6]
0000067E  F6470A08          test byte [bx+0xa],0x8
00000682  740F              jz 0x693
00000684  B8220D            mov ax,0xd22
00000687  50                push ax
00000688  E8A401            call word 0x82f
0000068B  5B                pop bx
0000068C  FF7608            push word [bp+0x8]
0000068F  E89D01            call word 0x82f
00000692  5B                pop bx
00000693  8B5E06            mov bx,[bp+0x6]
00000696  F6470A10          test byte [bx+0xa],0x10
0000069A  7416              jz 0x6b2
0000069C  833ECC0B00        cmp word [0xbcc],byte +0x0
000006A1  750F              jnz 0x6b2
000006A3  B81E0D            mov ax,0xd1e
000006A6  50                push ax
000006A7  E88501            call word 0x82f
000006AA  5B                pop bx
000006AB  FF760A            push word [bp+0xa]
000006AE  E87E01            call word 0x82f
000006B1  5B                pop bx
000006B2  B81C0D            mov ax,0xd1c
000006B5  50                push ax
000006B6  E87601            call word 0x82f
000006B9  5B                pop bx
000006BA  833EC80B00        cmp word [0xbc8],byte +0x0
000006BF  741D              jz 0x6de
000006C1  837EFA00          cmp word [bp-0x6],byte +0x0
000006C5  740C              jz 0x6d3
000006C7  8D5D04            lea bx,[di+0x4]
000006CA  89DE              mov si,bx
000006CC  8B1F              mov bx,[bx]
000006CE  83C3FC            add bx,byte -0x4
000006D1  891C              mov [si],bx
000006D3  57                push di
000006D4  E88809            call word 0x105f
000006D7  5B                pop bx
000006D8  B80100            mov ax,0x1
000006DB  E91001            jmp word 0x7ee
000006DE  E8DC0F            call word 0x16bd
000006E1  8946FE            mov [bp-0x2],ax
000006E4  09C0              or ax,ax
000006E6  756D              jnz 0x755
000006E8  8B5E06            mov bx,[bp+0x6]
000006EB  F6470A08          test byte [bx+0xa],0x8
000006EF  742E              jz 0x71f
000006F1  B81A0D            mov ax,0xd1a
000006F4  50                push ax
000006F5  FF7608            push word [bp+0x8]
000006F8  E81B10            call word 0x1716
000006FB  5B                pop bx
000006FC  5B                pop bx
000006FD  09C0              or ax,ax
000006FF  741E              jz 0x71f
00000701  31C0              xor ax,ax
00000703  50                push ax
00000704  E8AA0F            call word 0x16b1
00000707  5B                pop bx
00000708  31C0              xor ax,ax
0000070A  50                push ax
0000070B  FF7608            push word [bp+0x8]
0000070E  E8B80F            call word 0x16c9
00000711  5B                pop bx
00000712  5B                pop bx
00000713  09C0              or ax,ax
00000715  7408              jz 0x71f
00000717  B8020D            mov ax,0xd02
0000071A  50                push ax
0000071B  E83501            call word 0x853
0000071E  5B                pop bx
0000071F  8B5E06            mov bx,[bp+0x6]
00000722  F6470A10          test byte [bx+0xa],0x10
00000726  7428              jz 0x750
00000728  833ECC0B00        cmp word [0xbcc],byte +0x0
0000072D  7521              jnz 0x750
0000072F  B80100            mov ax,0x1
00000732  50                push ax
00000733  E87B0F            call word 0x16b1
00000736  5B                pop bx
00000737  B8B601            mov ax,0x1b6
0000073A  50                push ax
0000073B  FF760A            push word [bp+0xa]
0000073E  E8740F            call word 0x16b5
00000741  5B                pop bx
00000742  5B                pop bx
00000743  3D0100            cmp ax,0x1
00000746  7408              jz 0x750
00000748  B8E60C            mov ax,0xce6
0000074B  50                push ax
0000074C  E80401            call word 0x853
0000074F  5B                pop bx
00000750  57                push di
00000751  E86301            call word 0x8b7
00000754  5B                pop bx
00000755  837EFEFF          cmp word [bp-0x2],byte -0x1
00000759  7508              jnz 0x763
0000075B  B8D20C            mov ax,0xcd2
0000075E  50                push ax
0000075F  E8F100            call word 0x853
00000762  5B                pop bx
00000763  8B56FE            mov dx,[bp-0x2]
00000766  8916B60B          mov [0xbb6],dx
0000076A  8D46FC            lea ax,[bp-0x4]
0000076D  50                push ax
0000076E  E8640F            call word 0x16d5
00000771  5B                pop bx
00000772  837EFC00          cmp word [bp-0x4],byte +0x0
00000776  7446              jz 0x7be
00000778  EB36              jmp short 0x7b0
0000077A  833ECC0B00        cmp word [0xbcc],byte +0x0
0000077F  740B              jz 0x78c
00000781  BA7F00            mov dx,0x7f
00000784  2356FC            and dx,[bp-0x4]
00000787  83FA0D            cmp dx,byte +0xd
0000078A  7432              jz 0x7be
0000078C  FF7504            push word [di+0x4]
0000078F  E89D00            call word 0x82f
00000792  5B                pop bx
00000793  B8BE0C            mov ax,0xcbe
00000796  50                push ax
00000797  E89500            call word 0x82f
0000079A  5B                pop bx
0000079B  BA7F00            mov dx,0x7f
0000079E  2356FC            and dx,[bp-0x4]
000007A1  52                push dx
000007A2  E84C00            call word 0x7f1
000007A5  5B                pop bx
000007A6  B8BC0C            mov ax,0xcbc
000007A9  50                push ax
000007AA  E88200            call word 0x82f
000007AD  5B                pop bx
000007AE  EB0E              jmp short 0x7be
000007B0  BA7F00            mov dx,0x7f
000007B3  2356FC            and dx,[bp-0x4]
000007B6  BBA40C            mov bx,0xca4
000007B9  89D0              mov ax,dx
000007BB  E94B15            jmp word 0x1d09
000007BE  837EFA00          cmp word [bp-0x6],byte +0x0
000007C2  740C              jz 0x7d0
000007C4  8D5D04            lea bx,[di+0x4]
000007C7  89DE              mov si,bx
000007C9  8B1F              mov bx,[bx]
000007CB  83C3FC            add bx,byte -0x4
000007CE  891C              mov [si],bx
000007D0  57                push di
000007D1  E88B08            call word 0x105f
000007D4  5B                pop bx
000007D5  C706B60BFFFF      mov word [0xbb6],0xffff
000007DB  837EFC00          cmp word [bp-0x4],byte +0x0
000007DF  740A              jz 0x7eb
000007E1  C706C20B0100      mov word [0xbc2],0x1
000007E7  31C0              xor ax,ax
000007E9  EB03              jmp short 0x7ee
000007EB  B80100            mov ax,0x1
000007EE  E94115            jmp word 0x1d32
000007F1  55                push bp
000007F2  89E5              mov bp,sp
000007F4  56                push si
000007F5  57                push di
000007F6  8B7E04            mov di,[bp+0x4]
000007F9  BED90E            mov si,0xed9
000007FC  C60400            mov byte [si],0x0
000007FF  83FF0A            cmp di,byte +0xa
00000802  721C              jc 0x820
00000804  B90A00            mov cx,0xa
00000807  89F8              mov ax,di
00000809  31D2              xor dx,dx
0000080B  F7F1              div cx
0000080D  83C230            add dx,byte +0x30
00000810  89D0              mov ax,dx
00000812  98                cbw
00000813  4E                dec si
00000814  8804              mov [si],al
00000816  89F8              mov ax,di
00000818  31D2              xor dx,dx
0000081A  F7F1              div cx
0000081C  89C7              mov di,ax
0000081E  EBDF              jmp short 0x7ff
00000820  8D4530            lea ax,[di+0x30]
00000823  98                cbw
00000824  4E                dec si
00000825  8804              mov [si],al
00000827  56                push si
00000828  E80400            call word 0x82f
0000082B  5B                pop bx
0000082C  E90315            jmp word 0x1d32
0000082F  55                push bp
00000830  89E5              mov bp,sp
00000832  56                push si
00000833  8B7604            mov si,[bp+0x4]
00000836  09F6              or si,si
00000838  7416              jz 0x850
0000083A  803C00            cmp byte [si],0x0
0000083D  7411              jz 0x850
0000083F  56                push si
00000840  E8EB0E            call word 0x172e
00000843  5B                pop bx
00000844  50                push ax
00000845  56                push si
00000846  B80200            mov ax,0x2
00000849  50                push ax
0000084A  E88C0E            call word 0x16d9
0000084D  83C406            add sp,byte +0x6
00000850  E9E014            jmp word 0x1d33
00000853  55                push bp
00000854  89E5              mov bp,sp
00000856  FF7604            push word [bp+0x4]
00000859  E8D3FF            call word 0x82f
0000085C  5B                pop bx
0000085D  B80200            mov ax,0x2
00000860  50                push ax
00000861  E8A5F8            call word 0x109
00000864  5B                pop bx
00000865  E9CC14            jmp word 0x1d34
00000868  55                push bp
00000869  89E5              mov bp,sp
0000086B  56                push si
0000086C  57                push di
0000086D  8B7E04            mov di,[bp+0x4]
00000870  89FE              mov si,di
00000872  83C604            add si,byte +0x4
00000875  8B15              mov dx,[di]
00000877  8D5D02            lea bx,[di+0x2]
0000087A  D1E2              shl dx,1
0000087C  01D3              add bx,dx
0000087E  C7070000          mov word [bx],0x0
00000882  FF34              push word [si]
00000884  E8A8FF            call word 0x82f
00000887  5B                pop bx
00000888  83C602            add si,byte +0x2
0000088B  833C00            cmp word [si],byte +0x0
0000088E  7424              jz 0x8b4
00000890  B8340D            mov ax,0xd34
00000893  50                push ax
00000894  E898FF            call word 0x82f
00000897  5B                pop bx
00000898  FF34              push word [si]
0000089A  E8910E            call word 0x172e
0000089D  5B                pop bx
0000089E  09C0              or ax,ax
000008A0  7408              jz 0x8aa
000008A2  FF34              push word [si]
000008A4  E888FF            call word 0x82f
000008A7  5B                pop bx
000008A8  EBDE              jmp short 0x888
000008AA  B82C0D            mov ax,0xd2c
000008AD  50                push ax
000008AE  E87EFF            call word 0x82f
000008B1  5B                pop bx
000008B2  EBD4              jmp short 0x888
000008B4  E97B14            jmp word 0x1d32
000008B7  55                push bp
000008B8  89E5              mov bp,sp
000008BA  56                push si
000008BB  8B7604            mov si,[bp+0x4]
000008BE  8B14              mov dx,[si]
000008C0  8D5C02            lea bx,[si+0x2]
000008C3  D1E2              shl dx,1
000008C5  01D3              add bx,dx
000008C7  C7070000          mov word [bx],0x0
000008CB  8D4404            lea ax,[si+0x4]
000008CE  50                push ax
000008CF  FF7404            push word [si+0x4]
000008D2  E8E40D            call word 0x16b9
000008D5  5B                pop bx
000008D6  5B                pop bx
000008D7  833EE40D08        cmp word [0xde4],byte +0x8
000008DC  7512              jnz 0x8f0
000008DE  C74402AC0D        mov word [si+0x2],0xdac
000008E3  8D4402            lea ax,[si+0x2]
000008E6  50                push ax
000008E7  B8A40D            mov ax,0xda4
000008EA  50                push ax
000008EB  E8CB0D            call word 0x16b9
000008EE  5B                pop bx
000008EF  5B                pop bx
000008F0  B80100            mov ax,0x1
000008F3  50                push ax
000008F4  FF7404            push word [si+0x4]
000008F7  E8B30D            call word 0x16ad
000008FA  5B                pop bx
000008FB  5B                pop bx
000008FC  09C0              or ax,ax
000008FE  7521              jnz 0x921
00000900  B8940D            mov ax,0xd94
00000903  50                push ax
00000904  E828FF            call word 0x82f
00000907  5B                pop bx
00000908  FF7404            push word [si+0x4]
0000090B  E821FF            call word 0x82f
0000090E  5B                pop bx
0000090F  B87E0D            mov ax,0xd7e
00000912  50                push ax
00000913  E819FF            call word 0x82f
00000916  5B                pop bx
00000917  B84A0D            mov ax,0xd4a
0000091A  50                push ax
0000091B  E811FF            call word 0x82f
0000091E  5B                pop bx
0000091F  EB0F              jmp short 0x930
00000921  FF7404            push word [si+0x4]
00000924  E808FF            call word 0x82f
00000927  5B                pop bx
00000928  B8360D            mov ax,0xd36
0000092B  50                push ax
0000092C  E800FF            call word 0x82f
0000092F  5B                pop bx
00000930  B80100            mov ax,0x1
00000933  50                push ax
00000934  E8A808            call word 0x11df
00000937  5B                pop bx
00000938  E9F813            jmp word 0x1d33
0000093B  55                push bp
0000093C  89E5              mov bp,sp
0000093E  50                push ax
0000093F  56                push si
00000940  57                push di
00000941  8B7604            mov si,[bp+0x4]
00000944  E87A0D            call word 0x16c1
00000947  89C7              mov di,ax
00000949  8B1EE818          mov bx,[0x18e8]
0000094D  FF7702            push word [bx+0x2]
00000950  B8B40D            mov ax,0xdb4
00000953  50                push ax
00000954  FF36D00B          push word [0xbd0]
00000958  56                push si
00000959  E807FC            call word 0x563
0000095C  83C408            add sp,byte +0x8
0000095F  803C00            cmp byte [si],0x0
00000962  7403              jz 0x967
00000964  46                inc si
00000965  EBF8              jmp short 0x95f
00000967  C746FE0900        mov word [bp-0x2],0x9
0000096C  837EFE03          cmp word [bp-0x2],byte +0x3
00000970  7E1A              jng 0x98c
00000972  B90A00            mov cx,0xa
00000975  89F8              mov ax,di
00000977  99                cwd
00000978  F7F9              idiv cx
0000097A  83C230            add dx,byte +0x30
0000097D  8814              mov [si],dl
0000097F  46                inc si
00000980  89F8              mov ax,di
00000982  99                cwd
00000983  F7F9              idiv cx
00000985  89C7              mov di,ax
00000987  FF4EFE            dec word [bp-0x2]
0000098A  EBE0              jmp short 0x96c
0000098C  C6042E            mov byte [si],0x2e
0000098F  46                inc si
00000990  C60400            mov byte [si],0x0
00000993  46                inc si
00000994  E99B13            jmp word 0x1d32
00000997  55                push bp
00000998  89E5              mov bp,sp
0000099A  83EC42            sub sp,byte +0x42
0000099D  56                push si
0000099E  57                push di
0000099F  BE5603            mov si,0x356
000009A2  8D46BE            lea ax,[bp-0x42]
000009A5  50                push ax
000009A6  FF36C00B          push word [0xbc0]
000009AA  E8F4FB            call word 0x5a1
000009AD  5B                pop bx
000009AE  5B                pop bx
000009AF  8D46BE            lea ax,[bp-0x42]
000009B2  50                push ax
000009B3  E8780D            call word 0x172e
000009B6  5B                pop bx
000009B7  89C7              mov di,ax
000009B9  833C00            cmp word [si],byte +0x0
000009BC  742C              jz 0x9ea
000009BE  8D43BE            lea ax,[bp+di-0x42]
000009C1  50                push ax
000009C2  FF7402            push word [si+0x2]
000009C5  E8660D            call word 0x172e
000009C8  5B                pop bx
000009C9  F7D8              neg ax
000009CB  5B                pop bx
000009CC  01C3              add bx,ax
000009CE  53                push bx
000009CF  FF7402            push word [si+0x2]
000009D2  E8410D            call word 0x1716
000009D5  5B                pop bx
000009D6  5B                pop bx
000009D7  09C0              or ax,ax
000009D9  7509              jnz 0x9e4
000009DB  8936E818          mov [0x18e8],si
000009DF  E81300            call word 0x9f5
000009E2  EB0E              jmp short 0x9f2
000009E4  81C6E600          add si,0xe6
000009E8  EBCF              jmp short 0x9b9
000009EA  B8B60D            mov ax,0xdb6
000009ED  50                push ax
000009EE  E862FE            call word 0x853
000009F1  5B                pop bx
000009F2  E93D13            jmp word 0x1d32
000009F5  55                push bp
000009F6  89E5              mov bp,sp
000009F8  56                push si
000009F9  57                push di
000009FA  BE0400            mov si,0x4
000009FD  F6440A04          test byte [si+0xa],0x4
00000A01  7505              jnz 0xa08
00000A03  83C60C            add si,byte +0xc
00000A06  EBF5              jmp short 0x9fd
00000A08  8936EC18          mov [0x18ec],si
00000A0C  8B3EE818          mov di,[0x18e8]
00000A10  83C704            add di,byte +0x4
00000A13  FF34              push word [si]
00000A15  FF35              push word [di]
00000A17  E8FC0C            call word 0x1716
00000A1A  5B                pop bx
00000A1B  5B                pop bx
00000A1C  09C0              or ax,ax
00000A1E  7405              jz 0xa25
00000A20  83C720            add di,byte +0x20
00000A23  EBEE              jmp short 0xa13
00000A25  893EEA18          mov [0x18ea],di
00000A29  E90613            jmp word 0x1d32
00000A2C  55                push bp
00000A2D  89E5              mov bp,sp
00000A2F  50                push ax
00000A30  50                push ax
00000A31  56                push si
00000A32  31C0              xor ax,ax
00000A34  50                push ax
00000A35  FF7604            push word [bp+0x4]
00000A38  E88E0C            call word 0x16c9
00000A3B  5B                pop bx
00000A3C  5B                pop bx
00000A3D  89C6              mov si,ax
00000A3F  09F6              or si,si
00000A41  7D04              jnl 0xa47
00000A43  31C0              xor ax,ax
00000A45  EB2B              jmp short 0xa72
00000A47  B80100            mov ax,0x1
00000A4A  50                push ax
00000A4B  8D46FD            lea ax,[bp-0x3]
00000A4E  50                push ax
00000A4F  56                push si
00000A50  E87A0C            call word 0x16cd
00000A53  83C406            add sp,byte +0x6
00000A56  3D0100            cmp ax,0x1
00000A59  7404              jz 0xa5f
00000A5B  C646FD00          mov byte [bp-0x3],0x0
00000A5F  56                push si
00000A60  E84E0C            call word 0x16b1
00000A63  5B                pop bx
00000A64  8A46FD            mov al,[bp-0x3]
00000A67  98                cbw
00000A68  31DB              xor bx,bx
00000A6A  3D2300            cmp ax,0x23
00000A6D  7501              jnz 0xa70
00000A6F  43                inc bx
00000A70  89D8              mov ax,bx
00000A72  E9BE12            jmp word 0x1d33
00000A75  55                push bp
00000A76  89E5              mov bp,sp
00000A78  56                push si
00000A79  8B7604            mov si,[bp+0x4]
00000A7C  803C00            cmp byte [si],0x0
00000A7F  7408              jz 0xa89
00000A81  803C2E            cmp byte [si],0x2e
00000A84  7403              jz 0xa89
00000A86  46                inc si
00000A87  EBF3              jmp short 0xa7c
00000A89  803C00            cmp byte [si],0x0
00000A8C  7504              jnz 0xa92
00000A8E  31C0              xor ax,ax
00000A90  EB13              jmp short 0xaa5
00000A92  46                inc si
00000A93  803C63            cmp byte [si],0x63
00000A96  750B              jnz 0xaa3
00000A98  46                inc si
00000A99  803C00            cmp byte [si],0x0
00000A9C  7505              jnz 0xaa3
00000A9E  B80100            mov ax,0x1
00000AA1  EB02              jmp short 0xaa5
00000AA3  31C0              xor ax,ax
00000AA5  E98B12            jmp word 0x1d33
00000AA8  55                push bp
00000AA9  89E5              mov bp,sp
00000AAB  83EC06            sub sp,byte +0x6
00000AAE  56                push si
00000AAF  57                push di
00000AB0  8B7E08            mov di,[bp+0x8]
00000AB3  8B7604            mov si,[bp+0x4]
00000AB6  C746FE1211        mov word [bp-0x2],0x1112
00000ABB  8B5E06            mov bx,[bp+0x6]
00000ABE  83C304            add bx,byte +0x4
00000AC1  8B560A            mov dx,[bp+0xa]
00000AC4  B90500            mov cx,0x5
00000AC7  D3E2              shl dx,cl
00000AC9  01D3              add bx,dx
00000ACB  895EFC            mov [bp-0x4],bx
00000ACE  837E0E00          cmp word [bp+0xe],byte +0x0
00000AD2  7503              jnz 0xad7
00000AD4  E9E100            jmp word 0xbb8
00000AD7  F6440A80          test byte [si+0xa],0x80
00000ADB  7516              jnz 0xaf3
00000ADD  F7440A0001        test word [si+0xa],0x100
00000AE2  7503              jnz 0xae7
00000AE4  E9D100            jmp word 0xbb8
00000AE7  57                push di
00000AE8  E841FF            call word 0xa2c
00000AEB  5B                pop bx
00000AEC  09C0              or ax,ax
00000AEE  7503              jnz 0xaf3
00000AF0  E9C500            jmp word 0xbb8
00000AF3  B8C80D            mov ax,0xdc8
00000AF6  50                push ax
00000AF7  FF360A00          push word [0xa]
00000AFB  B8A818            mov ax,0x18a8
00000AFE  50                push ax
00000AFF  B88212            mov ax,0x1282
00000B02  50                push ax
00000B03  E85DFA            call word 0x563
00000B06  83C408            add sp,byte +0x8
00000B09  B80400            mov ax,0x4
00000B0C  50                push ax
00000B0D  F7440A0002        test word [si+0xa],0x200
00000B12  7405              jz 0xb19
00000B14  B89602            mov ax,0x296
00000B17  EB03              jmp short 0xb1c
00000B19  B80002            mov ax,0x200
00000B1C  50                push ax
00000B1D  B88212            mov ax,0x1282
00000B20  50                push ax
00000B21  57                push di
00000B22  FF76FE            push word [bp-0x2]
00000B25  E8EA02            call word 0xe12
00000B28  83C40A            add sp,byte +0xa
00000B2B  B88212            mov ax,0x1282
00000B2E  50                push ax
00000B2F  57                push di
00000B30  B80400            mov ax,0x4
00000B33  50                push ax
00000B34  FF76FE            push word [bp-0x2]
00000B37  E8EBFA            call word 0x625
00000B3A  83C408            add sp,byte +0x8
00000B3D  09C0              or ax,ax
00000B3F  7514              jnz 0xb55
00000B41  BA8212            mov dx,0x1282
00000B44  09D2              or dx,dx
00000B46  7408              jz 0xb50
00000B48  B88212            mov ax,0x1282
00000B4B  50                push ax
00000B4C  E821F9            call word 0x470
00000B4F  5B                pop bx
00000B50  31C0              xor ax,ax
00000B52  E9F600            jmp word 0xc4b
00000B55  57                push di
00000B56  E81CFF            call word 0xa75
00000B59  5B                pop bx
00000B5A  09C0              or ax,ax
00000B5C  7440              jz 0xb9e
00000B5E  B81000            mov ax,0x10
00000B61  50                push ax
00000B62  B83003            mov ax,0x330
00000B65  50                push ax
00000B66  B88212            mov ax,0x1282
00000B69  50                push ax
00000B6A  50                push ax
00000B6B  FF76FE            push word [bp-0x2]
00000B6E  E8A102            call word 0xe12
00000B71  83C40A            add sp,byte +0xa
00000B74  B88212            mov ax,0x1282
00000B77  50                push ax
00000B78  50                push ax
00000B79  B81000            mov ax,0x10
00000B7C  50                push ax
00000B7D  FF76FE            push word [bp-0x2]
00000B80  E8A2FA            call word 0x625
00000B83  83C408            add sp,byte +0x8
00000B86  09C0              or ax,ax
00000B88  7514              jnz 0xb9e
00000B8A  BA8212            mov dx,0x1282
00000B8D  09D2              or dx,dx
00000B8F  7408              jz 0xb99
00000B91  B88212            mov ax,0x1282
00000B94  50                push ax
00000B95  E8D8F8            call word 0x470
00000B98  5B                pop bx
00000B99  31C0              xor ax,ax
00000B9B  E9AD00            jmp word 0xc4b
00000B9E  B88212            mov ax,0x1282
00000BA1  50                push ax
00000BA2  B84212            mov ax,0x1242
00000BA5  50                push ax
00000BA6  E8730B            call word 0x171c
00000BA9  5B                pop bx
00000BAA  5B                pop bx
00000BAB  C606821200        mov byte [0x1282],0x0
00000BB0  BF4212            mov di,0x1242
00000BB3  C7460C0000        mov word [bp+0xc],0x0
00000BB8  837C0600          cmp word [si+0x6],byte +0x0
00000BBC  7419              jz 0xbd7
00000BBE  B8C60D            mov ax,0xdc6
00000BC1  50                push ax
00000BC2  FF7406            push word [si+0x6]
00000BC5  FF7610            push word [bp+0x10]
00000BC8  B88212            mov ax,0x1282
00000BCB  50                push ax
00000BCC  E894F9            call word 0x563
00000BCF  83C408            add sp,byte +0x8
00000BD2  8946FA            mov [bp-0x6],ax
00000BD5  EB07              jmp short 0xbde
00000BD7  8B16B80B          mov dx,[0xbb8]
00000BDB  8956FA            mov [bp-0x6],dx
00000BDE  56                push si
00000BDF  FF76FC            push word [bp-0x4]
00000BE2  FF76FA            push word [bp-0x6]
00000BE5  57                push di
00000BE6  FF76FE            push word [bp-0x2]
00000BE9  E82602            call word 0xe12
00000BEC  83C40A            add sp,byte +0xa
00000BEF  FF76FA            push word [bp-0x6]
00000BF2  57                push di
00000BF3  56                push si
00000BF4  FF76FE            push word [bp-0x2]
00000BF7  E82BFA            call word 0x625
00000BFA  83C408            add sp,byte +0x8
00000BFD  09C0              or ax,ax
00000BFF  7526              jnz 0xc27
00000C01  F6440A20          test byte [si+0xa],0x20
00000C05  750D              jnz 0xc14
00000C07  837EFA00          cmp word [bp-0x6],byte +0x0
00000C0B  7407              jz 0xc14
00000C0D  FF76FA            push word [bp-0x6]
00000C10  E85DF8            call word 0x470
00000C13  5B                pop bx
00000C14  837E0C00          cmp word [bp+0xc],byte +0x0
00000C18  7509              jnz 0xc23
00000C1A  09FF              or di,di
00000C1C  7405              jz 0xc23
00000C1E  57                push di
00000C1F  E84EF8            call word 0x470
00000C22  5B                pop bx
00000C23  31C0              xor ax,ax
00000C25  EB24              jmp short 0xc4b
00000C27  837E0C00          cmp word [bp+0xc],byte +0x0
00000C2B  7509              jnz 0xc36
00000C2D  09FF              or di,di
00000C2F  7405              jz 0xc36
00000C31  57                push di
00000C32  E83BF8            call word 0x470
00000C35  5B                pop bx
00000C36  B88212            mov ax,0x1282
00000C39  50                push ax
00000C3A  B84212            mov ax,0x1242
00000C3D  50                push ax
00000C3E  E8DB0A            call word 0x171c
00000C41  5B                pop bx
00000C42  5B                pop bx
00000C43  C606821200        mov byte [0x1282],0x0
00000C48  B84212            mov ax,0x1242
00000C4B  E9E410            jmp word 0x1d32
00000C4E  55                push bp
00000C4F  89E5              mov bp,sp
00000C51  50                push ax
00000C52  50                push ax
00000C53  56                push si
00000C54  57                push di
00000C55  8B5E04            mov bx,[bp+0x4]
00000C58  8B7F04            mov di,[bx+0x4]
00000C5B  837E0600          cmp word [bp+0x6],byte +0x0
00000C5F  7504              jnz 0xc65
00000C61  31C0              xor ax,ax
00000C63  EB4D              jmp short 0xcb2
00000C65  FF7606            push word [bp+0x6]
00000C68  E8C30A            call word 0x172e
00000C6B  5B                pop bx
00000C6C  8946FC            mov [bp-0x4],ax
00000C6F  803D00            cmp byte [di],0x0
00000C72  743C              jz 0xcb0
00000C74  89FE              mov si,di
00000C76  803C00            cmp byte [si],0x0
00000C79  7408              jz 0xc83
00000C7B  803C2C            cmp byte [si],0x2c
00000C7E  7403              jz 0xc83
00000C80  46                inc si
00000C81  EBF3              jmp short 0xc76
00000C83  89F2              mov dx,si
00000C85  29FA              sub dx,di
00000C87  3956FC            cmp [bp-0x4],dx
00000C8A  7516              jnz 0xca2
00000C8C  FF76FC            push word [bp-0x4]
00000C8F  FF7606            push word [bp+0x6]
00000C92  57                push di
00000C93  E89E0A            call word 0x1734
00000C96  83C406            add sp,byte +0x6
00000C99  09C0              or ax,ax
00000C9B  7505              jnz 0xca2
00000C9D  B80100            mov ax,0x1
00000CA0  EB10              jmp short 0xcb2
00000CA2  803C2C            cmp byte [si],0x2c
00000CA5  7505              jnz 0xcac
00000CA7  89F7              mov di,si
00000CA9  47                inc di
00000CAA  EBC3              jmp short 0xc6f
00000CAC  89F7              mov di,si
00000CAE  EBBF              jmp short 0xc6f
00000CB0  31C0              xor ax,ax
00000CB2  E97D10            jmp word 0x1d32
00000CB5  55                push bp
00000CB6  89E5              mov bp,sp
00000CB8  83EC4C            sub sp,byte +0x4c
00000CBB  56                push si
00000CBC  57                push di
00000CBD  BF5603            mov di,0x356
00000CC0  FF7604            push word [bp+0x4]
00000CC3  E834F9            call word 0x5fa
00000CC6  5B                pop bx
00000CC7  8946FC            mov [bp-0x4],ax
00000CCA  833ECC0B00        cmp word [0xbcc],byte +0x0
00000CCF  7405              jz 0xcd6
00000CD1  C746FCCC0D        mov word [bp-0x4],0xdcc
00000CD6  837EFC00          cmp word [bp-0x4],byte +0x0
00000CDA  7506              jnz 0xce2
00000CDC  8B4604            mov ax,[bp+0x4]
00000CDF  E92D01            jmp word 0xe0f
00000CE2  8D46BC            lea ax,[bp-0x44]
00000CE5  50                push ax
00000CE6  FF7604            push word [bp+0x4]
00000CE9  E8B5F8            call word 0x5a1
00000CEC  5B                pop bx
00000CED  5B                pop bx
00000CEE  833D00            cmp word [di],byte +0x0
00000CF1  741B              jz 0xd0e
00000CF3  F685E40008        test byte [di+0xe4],0x8
00000CF8  740E              jz 0xd08
00000CFA  FF76FC            push word [bp-0x4]
00000CFD  FF35              push word [di]
00000CFF  E8140A            call word 0x1716
00000D02  5B                pop bx
00000D03  5B                pop bx
00000D04  09C0              or ax,ax
00000D06  7406              jz 0xd0e
00000D08  81C7E600          add di,0xe6
00000D0C  EBE0              jmp short 0xcee
00000D0E  833D00            cmp word [di],byte +0x0
00000D11  7504              jnz 0xd17
00000D13  8B3EE818          mov di,[0x18e8]
00000D17  8D5D04            lea bx,[di+0x4]
00000D1A  895EBA            mov [bp-0x46],bx
00000D1D  8B5EBA            mov bx,[bp-0x46]
00000D20  833F00            cmp word [bx],byte +0x0
00000D23  7503              jnz 0xd28
00000D25  E9CC00            jmp word 0xdf4
00000D28  C746B60100        mov word [bp-0x4a],0x1
00000D2D  BE0400            mov si,0x4
00000D30  8B5EBA            mov bx,[bp-0x46]
00000D33  FF34              push word [si]
00000D35  FF37              push word [bx]
00000D37  E8DC09            call word 0x1716
00000D3A  5B                pop bx
00000D3B  5B                pop bx
00000D3C  09C0              or ax,ax
00000D3E  7405              jz 0xd45
00000D40  83C60C            add si,byte +0xc
00000D43  EBEB              jmp short 0xd30
00000D45  F6440A04          test byte [si+0xa],0x4
00000D49  7403              jz 0xd4e
00000D4B  E99F00            jmp word 0xded
00000D4E  FF76FC            push word [bp-0x4]
00000D51  56                push si
00000D52  E8F9FE            call word 0xc4e
00000D55  5B                pop bx
00000D56  5B                pop bx
00000D57  09C0              or ax,ax
00000D59  7503              jnz 0xd5e
00000D5B  E98F00            jmp word 0xded
00000D5E  833E401200        cmp word [0x1240],byte +0x0
00000D63  7416              jz 0xd7b
00000D65  837C0600          cmp word [si+0x6],byte +0x0
00000D69  7410              jz 0xd7b
00000D6B  FF7406            push word [si+0x6]
00000D6E  FF364012          push word [0x1240]
00000D72  E8A109            call word 0x1716
00000D75  5B                pop bx
00000D76  5B                pop bx
00000D77  09C0              or ax,ax
00000D79  7405              jz 0xd80
00000D7B  B80100            mov ax,0x1
00000D7E  EB02              jmp short 0xd82
00000D80  31C0              xor ax,ax
00000D82  8946B4            mov [bp-0x4c],ax
00000D85  FF7406            push word [si+0x6]
00000D88  FF36EC18          push word [0x18ec]
00000D8C  E8BFFE            call word 0xc4e
00000D8F  5B                pop bx
00000D90  5B                pop bx
00000D91  09C0              or ax,ax
00000D93  7506              jnz 0xd9b
00000D95  837EB400          cmp word [bp-0x4c],byte +0x0
00000D99  750F              jnz 0xdaa
00000D9B  B8CA0D            mov ax,0xdca
00000D9E  50                push ax
00000D9F  8D46BC            lea ax,[bp-0x44]
00000DA2  50                push ax
00000DA3  E86A09            call word 0x1710
00000DA6  5B                pop bx
00000DA7  5B                pop bx
00000DA8  EB03              jmp short 0xdad
00000DAA  B8A818            mov ax,0x18a8
00000DAD  8D5D04            lea bx,[di+0x4]
00000DB0  8B56BA            mov dx,[bp-0x46]
00000DB3  29DA              sub dx,bx
00000DB5  B92000            mov cx,0x20
00000DB8  50                push ax
00000DB9  89D0              mov ax,dx
00000DBB  99                cwd
00000DBC  F7F9              idiv cx
00000DBE  FF76B6            push word [bp-0x4a]
00000DC1  FF7606            push word [bp+0x6]
00000DC4  50                push ax
00000DC5  FF7604            push word [bp+0x4]
00000DC8  57                push di
00000DC9  56                push si
00000DCA  E8DBFC            call word 0xaa8
00000DCD  83C40E            add sp,byte +0xe
00000DD0  894604            mov [bp+0x4],ax
00000DD3  31D2              xor dx,dx
00000DD5  895606            mov [bp+0x6],dx
00000DD8  8956B6            mov [bp-0x4a],dx
00000DDB  8B5406            mov dx,[si+0x6]
00000DDE  8956FC            mov [bp-0x4],dx
00000DE1  837EB400          cmp word [bp-0x4c],byte +0x0
00000DE5  740D              jz 0xdf4
00000DE7  837E0400          cmp word [bp+0x4],byte +0x0
00000DEB  7407              jz 0xdf4
00000DED  8346BA20          add word [bp-0x46],byte +0x20
00000DF1  E929FF            jmp word 0xd1d
00000DF4  837E0600          cmp word [bp+0x6],byte +0x0
00000DF8  7512              jnz 0xe0c
00000DFA  837E0400          cmp word [bp+0x4],byte +0x0
00000DFE  740C              jz 0xe0c
00000E00  FF7604            push word [bp+0x4]
00000E03  B84C16            mov ax,0x164c
00000E06  50                push ax
00000E07  E8BDF6            call word 0x4c7
00000E0A  5B                pop bx
00000E0B  5B                pop bx
00000E0C  8B4604            mov ax,[bp+0x4]
00000E0F  E9200F            jmp word 0x1d32
00000E12  55                push bp
00000E13  89E5              mov bp,sp
00000E15  56                push si
00000E16  57                push di
00000E17  8B7E0C            mov di,[bp+0xc]
00000E1A  8B5E04            mov bx,[bp+0x4]
00000E1D  C7070100          mov word [bx],0x1
00000E21  FF7502            push word [di+0x2]
00000E24  FF7604            push word [bp+0x4]
00000E27  E89DF6            call word 0x4c7
00000E2A  5B                pop bx
00000E2B  5B                pop bx
00000E2C  57                push di
00000E2D  FF7604            push word [bp+0x4]
00000E30  E86102            call word 0x1094
00000E33  5B                pop bx
00000E34  5B                pop bx
00000E35  837E0A00          cmp word [bp+0xa],byte +0x0
00000E39  7431              jz 0xe6c
00000E3B  31F6              xor si,si
00000E3D  83FE0A            cmp si,byte +0xa
00000E40  7D2A              jnl 0xe6c
00000E42  8B5E0A            mov bx,[bp+0xa]
00000E45  83C302            add bx,byte +0x2
00000E48  89F2              mov dx,si
00000E4A  D1E2              shl dx,1
00000E4C  01D3              add bx,dx
00000E4E  833F00            cmp word [bx],byte +0x0
00000E51  7419              jz 0xe6c
00000E53  8B5E0A            mov bx,[bp+0xa]
00000E56  83C302            add bx,byte +0x2
00000E59  89F2              mov dx,si
00000E5B  D1E2              shl dx,1
00000E5D  01D3              add bx,dx
00000E5F  FF37              push word [bx]
00000E61  FF7604            push word [bp+0x4]
00000E64  E860F6            call word 0x4c7
00000E67  5B                pop bx
00000E68  5B                pop bx
00000E69  46                inc si
00000E6A  EBD1              jmp short 0xe3d
00000E6C  F6450A01          test byte [di+0xa],0x1
00000E70  741B              jz 0xe8d
00000E72  B8D40D            mov ax,0xdd4
00000E75  50                push ax
00000E76  FF7606            push word [bp+0x6]
00000E79  E89A08            call word 0x1716
00000E7C  5B                pop bx
00000E7D  5B                pop bx
00000E7E  09C0              or ax,ax
00000E80  740B              jz 0xe8d
00000E82  FF7606            push word [bp+0x6]
00000E85  FF7604            push word [bp+0x4]
00000E88  E83CF6            call word 0x4c7
00000E8B  5B                pop bx
00000E8C  5B                pop bx
00000E8D  F6450A02          test byte [di+0xa],0x2
00000E91  740B              jz 0xe9e
00000E93  FF7608            push word [bp+0x8]
00000E96  FF7604            push word [bp+0x4]
00000E99  E82BF6            call word 0x4c7
00000E9C  5B                pop bx
00000E9D  5B                pop bx
00000E9E  F6450A40          test byte [di+0xa],0x40
00000EA2  7417              jz 0xebb
00000EA4  B8D00D            mov ax,0xdd0
00000EA7  50                push ax
00000EA8  FF7604            push word [bp+0x4]
00000EAB  E819F6            call word 0x4c7
00000EAE  5B                pop bx
00000EAF  5B                pop bx
00000EB0  FF7608            push word [bp+0x8]
00000EB3  FF7604            push word [bp+0x4]
00000EB6  E80EF6            call word 0x4c7
00000EB9  5B                pop bx
00000EBA  5B                pop bx
00000EBB  837E0A00          cmp word [bp+0xa],byte +0x0
00000EBF  7431              jz 0xef2
00000EC1  31F6              xor si,si
00000EC3  83FE05            cmp si,byte +0x5
00000EC6  7D2A              jnl 0xef2
00000EC8  8B5E0A            mov bx,[bp+0xa]
00000ECB  83C316            add bx,byte +0x16
00000ECE  89F2              mov dx,si
00000ED0  D1E2              shl dx,1
00000ED2  01D3              add bx,dx
00000ED4  833F00            cmp word [bx],byte +0x0
00000ED7  7419              jz 0xef2
00000ED9  8B5E0A            mov bx,[bp+0xa]
00000EDC  83C316            add bx,byte +0x16
00000EDF  89F2              mov dx,si
00000EE1  D1E2              shl dx,1
00000EE3  01D3              add bx,dx
00000EE5  FF37              push word [bx]
00000EE7  FF7604            push word [bp+0x4]
00000EEA  E8DAF5            call word 0x4c7
00000EED  5B                pop bx
00000EEE  5B                pop bx
00000EEF  46                inc si
00000EF0  EBD1              jmp short 0xec3
00000EF2  E93D0E            jmp word 0x1d32
00000EF5  55                push bp
00000EF6  89E5              mov bp,sp
00000EF8  50                push ax
00000EF9  56                push si
00000EFA  57                push di
00000EFB  8B7E0A            mov di,[bp+0xa]
00000EFE  C746FE1211        mov word [bp-0x2],0x1112
00000F03  8B5EFE            mov bx,[bp-0x2]
00000F06  C7070100          mov word [bx],0x1
00000F0A  FF7502            push word [di+0x2]
00000F0D  FF76FE            push word [bp-0x2]
00000F10  E8B4F5            call word 0x4c7
00000F13  5B                pop bx
00000F14  5B                pop bx
00000F15  57                push di
00000F16  FF76FE            push word [bp-0x2]
00000F19  E87801            call word 0x1094
00000F1C  5B                pop bx
00000F1D  5B                pop bx
00000F1E  B8DA0D            mov ax,0xdda
00000F21  50                push ax
00000F22  FF76FE            push word [bp-0x2]
00000F25  E89FF5            call word 0x4c7
00000F28  5B                pop bx
00000F29  5B                pop bx
00000F2A  FF7606            push word [bp+0x6]
00000F2D  FF76FE            push word [bp-0x2]
00000F30  E894F5            call word 0x4c7
00000F33  5B                pop bx
00000F34  5B                pop bx
00000F35  31F6              xor si,si
00000F37  83FE0A            cmp si,byte +0xa
00000F3A  7D2A              jnl 0xf66
00000F3C  8B5E08            mov bx,[bp+0x8]
00000F3F  83C302            add bx,byte +0x2
00000F42  89F2              mov dx,si
00000F44  D1E2              shl dx,1
00000F46  01D3              add bx,dx
00000F48  833F00            cmp word [bx],byte +0x0
00000F4B  7419              jz 0xf66
00000F4D  8B5E08            mov bx,[bp+0x8]
00000F50  83C302            add bx,byte +0x2
00000F53  89F2              mov dx,si
00000F55  D1E2              shl dx,1
00000F57  01D3              add bx,dx
00000F59  FF37              push word [bx]
00000F5B  FF76FE            push word [bp-0x2]
00000F5E  E866F5            call word 0x4c7
00000F61  5B                pop bx
00000F62  5B                pop bx
00000F63  46                inc si
00000F64  EBD1              jmp short 0xf37
00000F66  F6450A01          test byte [di+0xa],0x1
00000F6A  740B              jz 0xf77
00000F6C  FF7604            push word [bp+0x4]
00000F6F  FF76FE            push word [bp-0x2]
00000F72  E890F5            call word 0x505
00000F75  5B                pop bx
00000F76  5B                pop bx
00000F77  F6450A02          test byte [di+0xa],0x2
00000F7B  740B              jz 0xf88
00000F7D  FF7606            push word [bp+0x6]
00000F80  FF76FE            push word [bp-0x2]
00000F83  E841F5            call word 0x4c7
00000F86  5B                pop bx
00000F87  5B                pop bx
00000F88  31F6              xor si,si
00000F8A  83FE05            cmp si,byte +0x5
00000F8D  7C03              jl 0xf92
00000F8F  E9A300            jmp word 0x1035
00000F92  8B5E08            mov bx,[bp+0x8]
00000F95  83C316            add bx,byte +0x16
00000F98  89F2              mov dx,si
00000F9A  D1E2              shl dx,1
00000F9C  01D3              add bx,dx
00000F9E  833F00            cmp word [bx],byte +0x0
00000FA1  7503              jnz 0xfa6
00000FA3  E98F00            jmp word 0x1035
00000FA6  8B5E08            mov bx,[bp+0x8]
00000FA9  83C316            add bx,byte +0x16
00000FAC  89F2              mov dx,si
00000FAE  D1E2              shl dx,1
00000FB0  01D3              add bx,dx
00000FB2  8B1F              mov bx,[bx]
00000FB4  803F2D            cmp byte [bx],0x2d
00000FB7  7535              jnz 0xfee
00000FB9  8B5E08            mov bx,[bp+0x8]
00000FBC  83C316            add bx,byte +0x16
00000FBF  89F2              mov dx,si
00000FC1  D1E2              shl dx,1
00000FC3  01D3              add bx,dx
00000FC5  8B1F              mov bx,[bx]
00000FC7  807F016C          cmp byte [bx+0x1],0x6c
00000FCB  7521              jnz 0xfee
00000FCD  8B5E08            mov bx,[bp+0x8]
00000FD0  83C316            add bx,byte +0x16
00000FD3  89F2              mov dx,si
00000FD5  D1E2              shl dx,1
00000FD7  01D3              add bx,dx
00000FD9  8B1F              mov bx,[bx]
00000FDB  83C302            add bx,byte +0x2
00000FDE  53                push bx
00000FDF  E857F0            call word 0x39
00000FE2  5B                pop bx
00000FE3  50                push ax
00000FE4  FF76FE            push word [bp-0x2]
00000FE7  E8DDF4            call word 0x4c7
00000FEA  5B                pop bx
00000FEB  5B                pop bx
00000FEC  EB43              jmp short 0x1031
00000FEE  8B5E08            mov bx,[bp+0x8]
00000FF1  83C316            add bx,byte +0x16
00000FF4  89F2              mov dx,si
00000FF6  D1E2              shl dx,1
00000FF8  01D3              add bx,dx
00000FFA  8B1F              mov bx,[bx]
00000FFC  803F2A            cmp byte [bx],0x2a
00000FFF  7418              jz 0x1019
00001001  8B5E08            mov bx,[bp+0x8]
00001004  83C316            add bx,byte +0x16
00001007  89F2              mov dx,si
00001009  D1E2              shl dx,1
0000100B  01D3              add bx,dx
0000100D  FF37              push word [bx]
0000100F  FF76FE            push word [bp-0x2]
00001012  E8B2F4            call word 0x4c7
00001015  5B                pop bx
00001016  5B                pop bx
00001017  EB18              jmp short 0x1031
00001019  833ECA0B00        cmp word [0xbca],byte +0x0
0000101E  7411              jz 0x1031
00001020  B8D60D            mov ax,0xdd6
00001023  50                push ax
00001024  E812F0            call word 0x39
00001027  5B                pop bx
00001028  50                push ax
00001029  FF76FE            push word [bp-0x2]
0000102C  E898F4            call word 0x4c7
0000102F  5B                pop bx
00001030  5B                pop bx
00001031  46                inc si
00001032  E955FF            jmp word 0xf8a
00001035  FF7606            push word [bp+0x6]
00001038  31C0              xor ax,ax
0000103A  50                push ax
0000103B  57                push di
0000103C  FF76FE            push word [bp-0x2]
0000103F  E8E3F5            call word 0x625
00001042  83C408            add sp,byte +0x8
00001045  09C0              or ax,ax
00001047  7513              jnz 0x105c
00001049  837E0600          cmp word [bp+0x6],byte +0x0
0000104D  7407              jz 0x1056
0000104F  FF7606            push word [bp+0x6]
00001052  E81BF4            call word 0x470
00001055  5B                pop bx
00001056  C706C20B0100      mov word [0xbc2],0x1
0000105C  E9D30C            jmp word 0x1d32
0000105F  55                push bp
00001060  89E5              mov bp,sp
00001062  56                push si
00001063  57                push di
00001064  8B7E04            mov di,[bp+0x4]
00001067  BE0100            mov si,0x1
0000106A  3935              cmp [di],si
0000106C  7E1F              jng 0x108d
0000106E  89F2              mov dx,si
00001070  8D5D02            lea bx,[di+0x2]
00001073  D1E2              shl dx,1
00001075  01D3              add bx,dx
00001077  FF37              push word [bx]
00001079  E8AC03            call word 0x1428
0000107C  5B                pop bx
0000107D  89F2              mov dx,si
0000107F  8D5D02            lea bx,[di+0x2]
00001082  D1E2              shl dx,1
00001084  01D3              add bx,dx
00001086  C7070000          mov word [bx],0x0
0000108A  46                inc si
0000108B  EBDD              jmp short 0x106a
0000108D  C7050000          mov word [di],0x0
00001091  E99E0C            jmp word 0x1d32
00001094  55                push bp
00001095  89E5              mov bp,sp
00001097  83EC46            sub sp,byte +0x46
0000109A  56                push si
0000109B  57                push di
0000109C  C746FE0000        mov word [bp-0x2],0x0
000010A1  8B167A17          mov dx,[0x177a]
000010A5  3956FE            cmp [bp-0x2],dx
000010A8  7C03              jl 0x10ad
000010AA  E91501            jmp word 0x11c2
000010AD  8B5E06            mov bx,[bp+0x6]
000010B0  8B7708            mov si,[bx+0x8]
000010B3  803C00            cmp byte [si],0x0
000010B6  7503              jnz 0x10bb
000010B8  E90101            jmp word 0x11bc
000010BB  8B5EFE            mov bx,[bp-0x2]
000010BE  D1E3              shl bx,1
000010C0  8B9F7C17          mov bx,[bx+0x177c]
000010C4  83C301            add bx,byte +0x1
000010C7  895EBA            mov [bp-0x46],bx
000010CA  803C00            cmp byte [si],0x0
000010CD  7415              jz 0x10e4
000010CF  8A04              mov al,[si]
000010D1  98                cbw
000010D2  8B5EBA            mov bx,[bp-0x46]
000010D5  89C1              mov cx,ax
000010D7  8A07              mov al,[bx]
000010D9  98                cbw
000010DA  39C1              cmp cx,ax
000010DC  7506              jnz 0x10e4
000010DE  46                inc si
000010DF  FF46BA            inc word [bp-0x46]
000010E2  EBE6              jmp short 0x10ca
000010E4  803C2C            cmp byte [si],0x2c
000010E7  7405              jz 0x10ee
000010E9  803C00            cmp byte [si],0x0
000010EC  751F              jnz 0x110d
000010EE  8B5EBA            mov bx,[bp-0x46]
000010F1  803F00            cmp byte [bx],0x0
000010F4  7403              jz 0x10f9
000010F6  E9C300            jmp word 0x11bc
000010F9  8B5EFE            mov bx,[bp-0x2]
000010FC  D1E3              shl bx,1
000010FE  FFB77C17          push word [bx+0x177c]
00001102  FF7604            push word [bp+0x4]
00001105  E8BFF3            call word 0x4c7
00001108  5B                pop bx
00001109  5B                pop bx
0000110A  E9AF00            jmp word 0x11bc
0000110D  803C2A            cmp byte [si],0x2a
00001110  7566              jnz 0x1178
00001112  8D7EBE            lea di,[bp-0x42]
00001115  46                inc si
00001116  803C3D            cmp byte [si],0x3d
00001119  7414              jz 0x112f
0000111B  8B5EFE            mov bx,[bp-0x2]
0000111E  D1E3              shl bx,1
00001120  FFB77C17          push word [bx+0x177c]
00001124  FF7604            push word [bp+0x4]
00001127  E89DF3            call word 0x4c7
0000112A  5B                pop bx
0000112B  5B                pop bx
0000112C  E98D00            jmp word 0x11bc
0000112F  C6052D            mov byte [di],0x2d
00001132  47                inc di
00001133  803C00            cmp byte [si],0x0
00001136  7401              jz 0x1139
00001138  46                inc si
00001139  803C00            cmp byte [si],0x0
0000113C  7412              jz 0x1150
0000113E  803C2C            cmp byte [si],0x2c
00001141  740D              jz 0x1150
00001143  803C2A            cmp byte [si],0x2a
00001146  7408              jz 0x1150
00001148  8A04              mov al,[si]
0000114A  46                inc si
0000114B  8805              mov [di],al
0000114D  47                inc di
0000114E  EBE9              jmp short 0x1139
00001150  803C2A            cmp byte [si],0x2a
00001153  7512              jnz 0x1167
00001155  8B5EBA            mov bx,[bp-0x46]
00001158  803F00            cmp byte [bx],0x0
0000115B  740A              jz 0x1167
0000115D  FF46BA            inc word [bp-0x46]
00001160  8A0F              mov cl,[bx]
00001162  880D              mov [di],cl
00001164  47                inc di
00001165  EBEE              jmp short 0x1155
00001167  C60500            mov byte [di],0x0
0000116A  8D46BE            lea ax,[bp-0x42]
0000116D  50                push ax
0000116E  FF7604            push word [bp+0x4]
00001171  E853F3            call word 0x4c7
00001174  5B                pop bx
00001175  5B                pop bx
00001176  EB44              jmp short 0x11bc
00001178  803C3D            cmp byte [si],0x3d
0000117B  752B              jnz 0x11a8
0000117D  8D7EBE            lea di,[bp-0x42]
00001180  C6052D            mov byte [di],0x2d
00001183  47                inc di
00001184  46                inc si
00001185  803C00            cmp byte [si],0x0
00001188  740D              jz 0x1197
0000118A  803C2C            cmp byte [si],0x2c
0000118D  7408              jz 0x1197
0000118F  8A04              mov al,[si]
00001191  46                inc si
00001192  8805              mov [di],al
00001194  47                inc di
00001195  EBEE              jmp short 0x1185
00001197  C60500            mov byte [di],0x0
0000119A  8D46BE            lea ax,[bp-0x42]
0000119D  50                push ax
0000119E  FF7604            push word [bp+0x4]
000011A1  E823F3            call word 0x4c7
000011A4  5B                pop bx
000011A5  5B                pop bx
000011A6  EB14              jmp short 0x11bc
000011A8  803C00            cmp byte [si],0x0
000011AB  7503              jnz 0x11b0
000011AD  E903FF            jmp word 0x10b3
000011B0  8A04              mov al,[si]
000011B2  46                inc si
000011B3  3C2C              cmp al,0x2c
000011B5  7503              jnz 0x11ba
000011B7  E9F9FE            jmp word 0x10b3
000011BA  EBEC              jmp short 0x11a8
000011BC  FF46FE            inc word [bp-0x2]
000011BF  E9DFFE            jmp word 0x10a1
000011C2  E96D0B            jmp word 0x1d32
000011C5  55                push bp
000011C6  89E5              mov bp,sp
000011C8  56                push si
000011C9  8B36DE0D          mov si,[0xdde]
000011CD  4E                dec si
000011CE  7C0C              jl 0x11dc
000011D0  89F3              mov bx,si
000011D2  D1E3              shl bx,1
000011D4  8B9FF218          mov bx,[bx+0x18f2]
000011D8  FFD3              call bx
000011DA  EBF1              jmp short 0x11cd
000011DC  E9540B            jmp word 0x1d33
000011DF  55                push bp
000011E0  89E5              mov bp,sp
000011E2  E8E0FF            call word 0x11c5
000011E5  833EE00D00        cmp word [0xde0],byte +0x0
000011EA  7406              jz 0x11f2
000011EC  8B1EE00D          mov bx,[0xde0]
000011F0  FFD3              call bx
000011F2  FF7604            push word [bp+0x4]
000011F5  E8B104            call word 0x16a9
000011F8  5B                pop bx
000011F9  E9380B            jmp word 0x1d34
000011FC  55                push bp
000011FD  89E5              mov bp,sp
000011FF  56                push si
00001200  8B1EDC10          mov bx,[0x10dc]
00001204  035E04            add bx,[bp+0x4]
00001207  391EDC10          cmp [0x10dc],bx
0000120B  7717              ja 0x1224
0000120D  8B5604            mov dx,[bp+0x4]
00001210  0316DC10          add dx,[0x10dc]
00001214  81C2FF03          add dx,0x3ff
00001218  81E200FC          and dx,0xfc00
0000121C  89D6              mov si,dx
0000121E  3916DC10          cmp [0x10dc],dx
00001222  760A              jna 0x122e
00001224  C706E40D0C00      mov word [0xde4],0xc
0000122A  31C0              xor ax,ax
0000122C  EB28              jmp short 0x1256
0000122E  56                push si
0000122F  E8C002            call word 0x14f2
00001232  5B                pop bx
00001233  09C0              or ax,ax
00001235  7404              jz 0x123b
00001237  31C0              xor ax,ax
00001239  EB1B              jmp short 0x1256
0000123B  8B1EDC10          mov bx,[0x10dc]
0000123F  8977FE            mov [bx-0x2],si
00001242  C744FE0000        mov word [si-0x2],0x0
00001247  FF36DC10          push word [0x10dc]
0000124B  E8DA01            call word 0x1428
0000124E  5B                pop bx
0000124F  8936DC10          mov [0x10dc],si
00001253  B80100            mov ax,0x1
00001256  E9DA0A            jmp word 0x1d33
00001259  55                push bp
0000125A  89E5              mov bp,sp
0000125C  83EC0C            sub sp,byte +0xc
0000125F  56                push si
00001260  57                push di
00001261  837E0400          cmp word [bp+0x4],byte +0x0
00001265  7505              jnz 0x126c
00001267  31C0              xor ax,ax
00001269  E9CD00            jmp word 0x1339
0000126C  C746F40000        mov word [bp-0xc],0x0
00001271  837EF402          cmp word [bp-0xc],byte +0x2
00001275  7203              jc 0x127a
00001277  E9BD00            jmp word 0x1337
0000127A  8B5604            mov dx,[bp+0x4]
0000127D  42                inc dx
0000127E  81E2FEFF          and dx,0xfffe
00001282  83C202            add dx,byte +0x2
00001285  8956F6            mov [bp-0xa],dx
00001288  83FA04            cmp dx,byte +0x4
0000128B  730B              jnc 0x1298
0000128D  C706E40D0C00      mov word [0xde4],0xc
00001293  31C0              xor ax,ax
00001295  E9A100            jmp word 0x1339
00001298  833EDA1000        cmp word [0x10da],byte +0x0
0000129D  752D              jnz 0x12cc
0000129F  B80400            mov ax,0x4
000012A2  50                push ax
000012A3  E88702            call word 0x152d
000012A6  5B                pop bx
000012A7  89C6              mov si,ax
000012A9  3DFFFF            cmp ax,0xffff
000012AC  7505              jnz 0x12b3
000012AE  31C0              xor ax,ax
000012B0  E98600            jmp word 0x1339
000012B3  89F2              mov dx,si
000012B5  42                inc dx
000012B6  81E2FEFF          and dx,0xfffe
000012BA  89D6              mov si,dx
000012BC  83C602            add si,byte +0x2
000012BF  8936DA10          mov [0x10da],si
000012C3  8936DC10          mov [0x10dc],si
000012C7  C744FE0000        mov word [si-0x2],0x0
000012CC  C746FE0000        mov word [bp-0x2],0x0
000012D1  8B36DE10          mov si,[0x10de]
000012D5  09F6              or si,si
000012D7  744D              jz 0x1326
000012D9  8B54FE            mov dx,[si-0x2]
000012DC  8956FA            mov [bp-0x6],dx
000012DF  8B56F6            mov dx,[bp-0xa]
000012E2  01F2              add dx,si
000012E4  89D7              mov di,dx
000012E6  397EFA            cmp [bp-0x6],di
000012E9  7234              jc 0x131f
000012EB  39F7              cmp di,si
000012ED  7630              jna 0x131f
000012EF  8D5D02            lea bx,[di+0x2]
000012F2  395EFA            cmp [bp-0x6],bx
000012F5  760F              jna 0x1306
000012F7  8B56FA            mov dx,[bp-0x6]
000012FA  8955FE            mov [di-0x2],dx
000012FD  897CFE            mov [si-0x2],di
00001300  8B14              mov dx,[si]
00001302  8915              mov [di],dx
00001304  893C              mov [si],di
00001306  837EFE00          cmp word [bp-0x2],byte +0x0
0000130A  7409              jz 0x1315
0000130C  8B14              mov dx,[si]
0000130E  8B5EFE            mov bx,[bp-0x2]
00001311  8917              mov [bx],dx
00001313  EB06              jmp short 0x131b
00001315  8B14              mov dx,[si]
00001317  8916DE10          mov [0x10de],dx
0000131B  89F0              mov ax,si
0000131D  EB1A              jmp short 0x1339
0000131F  8976FE            mov [bp-0x2],si
00001322  8B34              mov si,[si]
00001324  EBAF              jmp short 0x12d5
00001326  FF76F6            push word [bp-0xa]
00001329  E8D0FE            call word 0x11fc
0000132C  5B                pop bx
0000132D  09C0              or ax,ax
0000132F  7406              jz 0x1337
00001331  FF46F4            inc word [bp-0xc]
00001334  E93AFF            jmp word 0x1271
00001337  31C0              xor ax,ax
00001339  E9F609            jmp word 0x1d32
0000133C  55                push bp
0000133D  89E5              mov bp,sp
0000133F  83EC0E            sub sp,byte +0xe
00001342  56                push si
00001343  57                push di
00001344  8B5604            mov dx,[bp+0x4]
00001347  8956F6            mov [bp-0xa],dx
0000134A  09D2              or dx,dx
0000134C  750A              jnz 0x1358
0000134E  FF7606            push word [bp+0x6]
00001351  E805FF            call word 0x1259
00001354  5B                pop bx
00001355  E9CD00            jmp word 0x1425
00001358  837E0600          cmp word [bp+0x6],byte +0x0
0000135C  750C              jnz 0x136a
0000135E  FF76F6            push word [bp-0xa]
00001361  E8C400            call word 0x1428
00001364  5B                pop bx
00001365  31C0              xor ax,ax
00001367  E9BB00            jmp word 0x1425
0000136A  8B5606            mov dx,[bp+0x6]
0000136D  42                inc dx
0000136E  81E2FEFF          and dx,0xfffe
00001372  83C202            add dx,byte +0x2
00001375  8956F4            mov [bp-0xc],dx
00001378  8B5EF6            mov bx,[bp-0xa]
0000137B  8B57FE            mov dx,[bx-0x2]
0000137E  8956FA            mov [bp-0x6],dx
00001381  2B56F6            sub dx,[bp-0xa]
00001384  8956F2            mov [bp-0xe],dx
00001387  C746FE0000        mov word [bp-0x2],0x0
0000138C  8B3EDE10          mov di,[0x10de]
00001390  09FF              or di,di
00001392  743A              jz 0x13ce
00001394  397EFA            cmp [bp-0x6],di
00001397  7235              jc 0x13ce
00001399  397EFA            cmp [bp-0x6],di
0000139C  7529              jnz 0x13c7
0000139E  8B5EF6            mov bx,[bp-0xa]
000013A1  8B55FE            mov dx,[di-0x2]
000013A4  8957FE            mov [bx-0x2],dx
000013A7  837EFE00          cmp word [bp-0x2],byte +0x0
000013AB  7409              jz 0x13b6
000013AD  8B15              mov dx,[di]
000013AF  8B5EFE            mov bx,[bp-0x2]
000013B2  8917              mov [bx],dx
000013B4  EB06              jmp short 0x13bc
000013B6  8B15              mov dx,[di]
000013B8  8916DE10          mov [0x10de],dx
000013BC  8B5EF6            mov bx,[bp-0xa]
000013BF  8B57FE            mov dx,[bx-0x2]
000013C2  8956FA            mov [bp-0x6],dx
000013C5  EB07              jmp short 0x13ce
000013C7  897EFE            mov [bp-0x2],di
000013CA  8B3D              mov di,[di]
000013CC  EBC2              jmp short 0x1390
000013CE  8B56F4            mov dx,[bp-0xc]
000013D1  0356F6            add dx,[bp-0xa]
000013D4  89D6              mov si,dx
000013D6  3976FA            cmp [bp-0x6],si
000013D9  7223              jc 0x13fe
000013DB  3976F6            cmp [bp-0xa],si
000013DE  771E              ja 0x13fe
000013E0  8D5C02            lea bx,[si+0x2]
000013E3  395EFA            cmp [bp-0x6],bx
000013E6  7611              jna 0x13f9
000013E8  8B56FA            mov dx,[bp-0x6]
000013EB  8954FE            mov [si-0x2],dx
000013EE  8B5EF6            mov bx,[bp-0xa]
000013F1  8977FE            mov [bx-0x2],si
000013F4  56                push si
000013F5  E83000            call word 0x1428
000013F8  5B                pop bx
000013F9  8B46F6            mov ax,[bp-0xa]
000013FC  EB27              jmp short 0x1425
000013FE  FF7606            push word [bp+0x6]
00001401  E855FE            call word 0x1259
00001404  5B                pop bx
00001405  89C6              mov si,ax
00001407  09C0              or ax,ax
00001409  7504              jnz 0x140f
0000140B  31C0              xor ax,ax
0000140D  EB16              jmp short 0x1425
0000140F  FF76F2            push word [bp-0xe]
00001412  FF76F6            push word [bp-0xa]
00001415  56                push si
00001416  E8E602            call word 0x16ff
00001419  83C406            add sp,byte +0x6
0000141C  FF76F6            push word [bp-0xa]
0000141F  E80600            call word 0x1428
00001422  5B                pop bx
00001423  89F0              mov ax,si
00001425  E90A09            jmp word 0x1d32
00001428  55                push bp
00001429  89E5              mov bp,sp
0000142B  83EC06            sub sp,byte +0x6
0000142E  56                push si
0000142F  57                push di
00001430  8B5604            mov dx,[bp+0x4]
00001433  8956FA            mov [bp-0x6],dx
00001436  09D2              or dx,dx
00001438  7461              jz 0x149b
0000143A  31FF              xor di,di
0000143C  8B36DE10          mov si,[0x10de]
00001440  09F6              or si,si
00001442  740B              jz 0x144f
00001444  3976FA            cmp [bp-0x6],si
00001447  7206              jc 0x144f
00001449  89F7              mov di,si
0000144B  8B34              mov si,[si]
0000144D  EBF1              jmp short 0x1440
0000144F  8B5EFA            mov bx,[bp-0x6]
00001452  8937              mov [bx],si
00001454  09FF              or di,di
00001456  7407              jz 0x145f
00001458  8B56FA            mov dx,[bp-0x6]
0000145B  8915              mov [di],dx
0000145D  EB07              jmp short 0x1466
0000145F  8B56FA            mov dx,[bp-0x6]
00001462  8916DE10          mov [0x10de],dx
00001466  09F6              or si,si
00001468  7415              jz 0x147f
0000146A  8B5EFA            mov bx,[bp-0x6]
0000146D  3977FE            cmp [bx-0x2],si
00001470  750D              jnz 0x147f
00001472  8B54FE            mov dx,[si-0x2]
00001475  8957FE            mov [bx-0x2],dx
00001478  8B14              mov dx,[si]
0000147A  8B5EFA            mov bx,[bp-0x6]
0000147D  8917              mov [bx],dx
0000147F  09FF              or di,di
00001481  7418              jz 0x149b
00001483  8B56FA            mov dx,[bp-0x6]
00001486  3955FE            cmp [di-0x2],dx
00001489  7510              jnz 0x149b
0000148B  8B5EFA            mov bx,[bp-0x6]
0000148E  8B57FE            mov dx,[bx-0x2]
00001491  8955FE            mov [di-0x2],dx
00001494  8B5EFA            mov bx,[bp-0x6]
00001497  8B17              mov dx,[bx]
00001499  8915              mov [di],dx
0000149B  E99408            jmp word 0x1d32
0000149E  55                push bp
0000149F  89E5              mov bp,sp
000014A1  83EC10            sub sp,byte +0x10
000014A4  56                push si
000014A5  8B7604            mov si,[bp+0x4]
000014A8  09F6              or si,si
000014AA  7E0A              jng 0x14b6
000014AC  83FE11            cmp si,byte +0x11
000014AF  7F05              jg 0x14b6
000014B1  83FE09            cmp si,byte +0x9
000014B4  750B              jnz 0x14c1
000014B6  C706E40D1600      mov word [0xde4],0x16
000014BC  B8FFFF            mov ax,0xffff
000014BF  EB2E              jmp short 0x14ef
000014C1  8D46FA            lea ax,[bp-0x6]
000014C4  50                push ax
000014C5  E87C01            call word 0x1644
000014C8  5B                pop bx
000014C9  C746FE0000        mov word [bp-0x2],0x0
000014CE  8B5606            mov dx,[bp+0x6]
000014D1  8956F8            mov [bp-0x8],dx
000014D4  8D46F0            lea ax,[bp-0x10]
000014D7  50                push ax
000014D8  8D46F8            lea ax,[bp-0x8]
000014DB  50                push ax
000014DC  56                push si
000014DD  E8C500            call word 0x15a5
000014E0  83C406            add sp,byte +0x6
000014E3  09C0              or ax,ax
000014E5  7D05              jnl 0x14ec
000014E7  B8FFFF            mov ax,0xffff
000014EA  EB03              jmp short 0x14ef
000014EC  8B46F0            mov ax,[bp-0x10]
000014EF  E94108            jmp word 0x1d33
000014F2  55                push bp
000014F3  89E5              mov bp,sp
000014F5  83EC18            sub sp,byte +0x18
000014F8  8B16E60D          mov dx,[0xde6]
000014FC  395604            cmp [bp+0x4],dx
000014FF  7427              jz 0x1528
00001501  8B5604            mov dx,[bp+0x4]
00001504  8956F2            mov [bp-0xe],dx
00001507  8D46E8            lea ax,[bp-0x18]
0000150A  50                push ax
0000150B  B81100            mov ax,0x11
0000150E  50                push ax
0000150F  31C0              xor ax,ax
00001511  50                push ax
00001512  E85600            call word 0x156b
00001515  83C406            add sp,byte +0x6
00001518  09C0              or ax,ax
0000151A  7D05              jnl 0x1521
0000151C  B8FFFF            mov ax,0xffff
0000151F  EB09              jmp short 0x152a
00001521  8B56FA            mov dx,[bp-0x6]
00001524  8916E60D          mov [0xde6],dx
00001528  31C0              xor ax,ax
0000152A  E90708            jmp word 0x1d34
0000152D  55                push bp
0000152E  89E5              mov bp,sp
00001530  56                push si
00001531  57                push di
00001532  8B36E60D          mov si,[0xde6]
00001536  8B5604            mov dx,[bp+0x4]
00001539  0316E60D          add dx,[0xde6]
0000153D  89D7              mov di,dx
0000153F  837E0400          cmp word [bp+0x4],byte +0x0
00001543  7E04              jng 0x1549
00001545  39F7              cmp di,si
00001547  720A              jc 0x1553
00001549  837E0400          cmp word [bp+0x4],byte +0x0
0000154D  7D09              jnl 0x1558
0000154F  39F7              cmp di,si
00001551  7605              jna 0x1558
00001553  B8FFFF            mov ax,0xffff
00001556  EB10              jmp short 0x1568
00001558  57                push di
00001559  E896FF            call word 0x14f2
0000155C  5B                pop bx
0000155D  09C0              or ax,ax
0000155F  7504              jnz 0x1565
00001561  89F0              mov ax,si
00001563  EB03              jmp short 0x1568
00001565  B8FFFF            mov ax,0xffff
00001568  E9C707            jmp word 0x1d32
0000156B  55                push bp
0000156C  89E5              mov bp,sp
0000156E  56                push si
0000156F  57                push di
00001570  8B7608            mov si,[bp+0x8]
00001573  8B5606            mov dx,[bp+0x6]
00001576  895402            mov [si+0x2],dx
00001579  56                push si
0000157A  FF7604            push word [bp+0x4]
0000157D  E86D01            call word 0x16ed
00001580  5B                pop bx
00001581  5B                pop bx
00001582  89C7              mov di,ax
00001584  09FF              or di,di
00001586  7403              jz 0x158b
00001588  897C02            mov [si+0x2],di
0000158B  837C0200          cmp word [si+0x2],byte +0x0
0000158F  7D0E              jnl 0x159f
00001591  8B5402            mov dx,[si+0x2]
00001594  F7DA              neg dx
00001596  8916E40D          mov [0xde4],dx
0000159A  B8FFFF            mov ax,0xffff
0000159D  EB03              jmp short 0x15a2
0000159F  8B4402            mov ax,[si+0x2]
000015A2  E98D07            jmp word 0x1d32
000015A5  55                push bp
000015A6  89E5              mov bp,sp
000015A8  83EC18            sub sp,byte +0x18
000015AB  8B5604            mov dx,[bp+0x4]
000015AE  8956EE            mov [bp-0x12],dx
000015B1  8B5606            mov dx,[bp+0x6]
000015B4  8956F2            mov [bp-0xe],dx
000015B7  8B5608            mov dx,[bp+0x8]
000015BA  8956F4            mov [bp-0xc],dx
000015BD  C746F6DD16        mov word [bp-0xa],0x16dd
000015C2  8D46E8            lea ax,[bp-0x18]
000015C5  50                push ax
000015C6  B84700            mov ax,0x47
000015C9  50                push ax
000015CA  31C0              xor ax,ax
000015CC  50                push ax
000015CD  E89BFF            call word 0x156b
000015D0  83C406            add sp,byte +0x6
000015D3  E95E07            jmp word 0x1d34
000015D6  55                push bp
000015D7  89E5              mov bp,sp
000015D9  837E0611          cmp word [bp+0x6],byte +0x11
000015DD  760B              jna 0x15ea
000015DF  C706E40D1600      mov word [0xde4],0x16
000015E5  B8FFFF            mov ax,0xffff
000015E8  EB1D              jmp short 0x1607
000015EA  8B4606            mov ax,[bp+0x6]
000015ED  99                cwd
000015EE  89C1              mov cx,ax
000015F0  BA0100            mov dx,0x1
000015F3  31C0              xor ax,ax
000015F5  E306              jcxz 0x15fd
000015F7  D1E2              shl dx,1
000015F9  D1D0              rcl ax,1
000015FB  E2FA              loop 0x15f7
000015FD  8B5E04            mov bx,[bp+0x4]
00001600  0917              or [bx],dx
00001602  094702            or [bx+0x2],ax
00001605  31C0              xor ax,ax
00001607  E92A07            jmp word 0x1d34
0000160A  55                push bp
0000160B  89E5              mov bp,sp
0000160D  837E0611          cmp word [bp+0x6],byte +0x11
00001611  760B              jna 0x161e
00001613  C706E40D1600      mov word [0xde4],0x16
00001619  B8FFFF            mov ax,0xffff
0000161C  EB23              jmp short 0x1641
0000161E  8B4606            mov ax,[bp+0x6]
00001621  99                cwd
00001622  89C1              mov cx,ax
00001624  BA0100            mov dx,0x1
00001627  31DB              xor bx,bx
00001629  E306              jcxz 0x1631
0000162B  D1E2              shl dx,1
0000162D  D1D3              rcl bx,1
0000162F  E2FA              loop 0x162b
00001631  F7D3              not bx
00001633  F7D2              not dx
00001635  89D9              mov cx,bx
00001637  8B5E04            mov bx,[bp+0x4]
0000163A  2117              and [bx],dx
0000163C  214F02            and [bx+0x2],cx
0000163F  31C0              xor ax,ax
00001641  E9F006            jmp word 0x1d34
00001644  55                push bp
00001645  89E5              mov bp,sp
00001647  31C0              xor ax,ax
00001649  8B5E04            mov bx,[bp+0x4]
0000164C  8907              mov [bx],ax
0000164E  894702            mov [bx+0x2],ax
00001651  31C0              xor ax,ax
00001653  E9DE06            jmp word 0x1d34
00001656  55                push bp
00001657  89E5              mov bp,sp
00001659  8B5E04            mov bx,[bp+0x4]
0000165C  C707FFFF          mov word [bx],0xffff
00001660  C747020300        mov word [bx+0x2],0x3
00001665  31C0              xor ax,ax
00001667  E9CA06            jmp word 0x1d34
0000166A  55                push bp
0000166B  89E5              mov bp,sp
0000166D  837E0611          cmp word [bp+0x6],byte +0x11
00001671  760B              jna 0x167e
00001673  C706E40D1600      mov word [0xde4],0x16
00001679  B8FFFF            mov ax,0xffff
0000167C  EB28              jmp short 0x16a6
0000167E  8B4606            mov ax,[bp+0x6]
00001681  99                cwd
00001682  89C1              mov cx,ax
00001684  BA0100            mov dx,0x1
00001687  31DB              xor bx,bx
00001689  E306              jcxz 0x1691
0000168B  D1E2              shl dx,1
0000168D  D1D3              rcl bx,1
0000168F  E2FA              loop 0x168b
00001691  53                push bx
00001692  8B5E04            mov bx,[bp+0x4]
00001695  59                pop cx
00001696  2317              and dx,[bx]
00001698  234F02            and cx,[bx+0x2]
0000169B  09D1              or cx,dx
0000169D  7405              jz 0x16a4
0000169F  B80100            mov ax,0x1
000016A2  EB02              jmp short 0x16a6
000016A4  31C0              xor ax,ax
000016A6  E98B06            jmp word 0x1d34
000016A9  E99000            jmp word 0x173c
000016AC  00E9              add cl,ch
000016AE  AC                lodsb
000016AF  0000              add [bx+si],al
000016B1  E9D500            jmp word 0x1789
000016B4  00E9              add cl,ch
000016B6  F20000            repne add [bx+si],al
000016B9  E91B01            jmp word 0x17d7
000016BC  00E9              add cl,ch
000016BE  F30200            rep add al,[bx+si]
000016C1  E90903            jmp word 0x19cd
000016C4  00E9              add cl,ch
000016C6  1F                pop ds
000016C7  0300              add ax,[bx+si]
000016C9  E94103            jmp word 0x1a0d
000016CC  00E9              add cl,ch
000016CE  98                cbw
000016CF  0300              add ax,[bx+si]
000016D1  E94D04            jmp word 0x1b21
000016D4  00E9              add cl,ch
000016D6  7004              jo 0x16dc
000016D8  00E9              add cl,ch
000016DA  A00400            mov al,[0x4]
000016DD  83C408            add sp,byte +0x8
000016E0  E9F003            jmp word 0x1ad3
000016E3  B90100            mov cx,0x1
000016E6  EB0A              jmp short 0x16f2
000016E8  B90200            mov cx,0x2
000016EB  EB05              jmp short 0x16f2
000016ED  B90300            mov cx,0x3
000016F0  EB00              jmp short 0x16f2
000016F2  55                push bp
000016F3  89E5              mov bp,sp
000016F5  8B4604            mov ax,[bp+0x4]
000016F8  8B5E06            mov bx,[bp+0x6]
000016FB  CD20              int 0x20
000016FD  5D                pop bp
000016FE  C3                ret
000016FF  55                push bp
00001700  89E5              mov bp,sp
00001702  56                push si
00001703  57                push di
00001704  8B7E04            mov di,[bp+0x4]
00001707  8B7606            mov si,[bp+0x6]
0000170A  8B4E08            mov cx,[bp+0x8]
0000170D  E9AF04            jmp word 0x1bbf
00001710  BAFFFF            mov dx,0xffff
00001713  E9D204            jmp word 0x1be8
00001716  B9FFFF            mov cx,0xffff
00001719  E9FA04            jmp word 0x1c16
0000171C  55                push bp
0000171D  89E5              mov bp,sp
0000171F  56                push si
00001720  57                push di
00001721  B9FFFF            mov cx,0xffff
00001724  E81905            call word 0x1c40
00001727  8B4604            mov ax,[bp+0x4]
0000172A  5F                pop di
0000172B  5E                pop si
0000172C  5D                pop bp
0000172D  C3                ret
0000172E  B9FFFF            mov cx,0xffff
00001731  E92305            jmp word 0x1c57
00001734  89E3              mov bx,sp
00001736  8B4F06            mov cx,[bx+0x6]
00001739  E9DA04            jmp word 0x1c16
0000173C  55                push bp
0000173D  89E5              mov bp,sp
0000173F  83EC18            sub sp,byte +0x18
00001742  8B5604            mov dx,[bp+0x4]
00001745  8956EC            mov [bp-0x14],dx
00001748  8D46E8            lea ax,[bp-0x18]
0000174B  50                push ax
0000174C  B80100            mov ax,0x1
0000174F  50                push ax
00001750  31C0              xor ax,ax
00001752  50                push ax
00001753  E815FE            call word 0x156b
00001756  83C406            add sp,byte +0x6
00001759  E9D805            jmp word 0x1d34
0000175C  55                push bp
0000175D  89E5              mov bp,sp
0000175F  83EC18            sub sp,byte +0x18
00001762  8B5606            mov dx,[bp+0x6]
00001765  8956EE            mov [bp-0x12],dx
00001768  8D46E8            lea ax,[bp-0x18]
0000176B  50                push ax
0000176C  FF7604            push word [bp+0x4]
0000176F  E80005            call word 0x1c72
00001772  5B                pop bx
00001773  5B                pop bx
00001774  8D46E8            lea ax,[bp-0x18]
00001777  50                push ax
00001778  B82100            mov ax,0x21
0000177B  50                push ax
0000177C  B80100            mov ax,0x1
0000177F  50                push ax
00001780  E8E8FD            call word 0x156b
00001783  83C406            add sp,byte +0x6
00001786  E9AB05            jmp word 0x1d34
00001789  55                push bp
0000178A  89E5              mov bp,sp
0000178C  83EC18            sub sp,byte +0x18
0000178F  8B5604            mov dx,[bp+0x4]
00001792  8956EC            mov [bp-0x14],dx
00001795  8D46E8            lea ax,[bp-0x18]
00001798  50                push ax
00001799  B80600            mov ax,0x6
0000179C  50                push ax
0000179D  B80100            mov ax,0x1
000017A0  50                push ax
000017A1  E8C7FD            call word 0x156b
000017A4  83C406            add sp,byte +0x6
000017A7  E98A05            jmp word 0x1d34
000017AA  55                push bp
000017AB  89E5              mov bp,sp
000017AD  83EC18            sub sp,byte +0x18
000017B0  8B5606            mov dx,[bp+0x6]
000017B3  8956EE            mov [bp-0x12],dx
000017B6  8D46E8            lea ax,[bp-0x18]
000017B9  50                push ax
000017BA  FF7604            push word [bp+0x4]
000017BD  E8B204            call word 0x1c72
000017C0  5B                pop bx
000017C1  5B                pop bx
000017C2  8D46E8            lea ax,[bp-0x18]
000017C5  50                push ax
000017C6  B80800            mov ax,0x8
000017C9  50                push ax
000017CA  B80100            mov ax,0x1
000017CD  50                push ax
000017CE  E89AFD            call word 0x156b
000017D1  83C406            add sp,byte +0x6
000017D4  E95D05            jmp word 0x1d34
000017D7  55                push bp
000017D8  89E5              mov bp,sp
000017DA  8B1E0200          mov bx,[0x2]
000017DE  FF37              push word [bx]
000017E0  FF7606            push word [bp+0x6]
000017E3  FF7604            push word [bp+0x4]
000017E6  E80600            call word 0x17ef
000017E9  83C406            add sp,byte +0x6
000017EC  E94505            jmp word 0x1d34
000017EF  55                push bp
000017F0  89E5              mov bp,sp
000017F2  83EC2C            sub sp,byte +0x2c
000017F5  56                push si
000017F6  57                push di
000017F7  C746EC0000        mov word [bp-0x14],0x0
000017FC  31F6              xor si,si
000017FE  C746F00000        mov word [bp-0x10],0x0
00001803  C746F40000        mov word [bp-0xc],0x0
00001808  8B5606            mov dx,[bp+0x6]
0000180B  8956FE            mov [bp-0x2],dx
0000180E  8B5EFE            mov bx,[bp-0x2]
00001811  833F00            cmp word [bx],byte +0x0
00001814  7425              jz 0x183b
00001816  FF37              push word [bx]
00001818  E813FF            call word 0x172e
0000181B  5B                pop bx
0000181C  050300            add ax,0x3
0000181F  8946EE            mov [bp-0x12],ax
00001822  01C6              add si,ax
00001824  3976EE            cmp [bp-0x12],si
00001827  7605              jna 0x182e
00001829  C746EC0100        mov word [bp-0x14],0x1
0000182E  8346F002          add word [bp-0x10],byte +0x2
00001832  FF46F4            inc word [bp-0xc]
00001835  8346FE02          add word [bp-0x2],byte +0x2
00001839  EBD3              jmp short 0x180e
0000183B  8B5608            mov dx,[bp+0x8]
0000183E  8956FC            mov [bp-0x4],dx
00001841  8B5EFC            mov bx,[bp-0x4]
00001844  833F00            cmp word [bx],byte +0x0
00001847  7422              jz 0x186b
00001849  FF37              push word [bx]
0000184B  E8E0FE            call word 0x172e
0000184E  5B                pop bx
0000184F  050300            add ax,0x3
00001852  8946EE            mov [bp-0x12],ax
00001855  01C6              add si,ax
00001857  3976EE            cmp [bp-0x12],si
0000185A  7605              jna 0x1861
0000185C  C746EC0100        mov word [bp-0x14],0x1
00001861  8346F002          add word [bp-0x10],byte +0x2
00001865  8346FC02          add word [bp-0x4],byte +0x2
00001869  EBD6              jmp short 0x1841
0000186B  83C606            add si,byte +0x6
0000186E  8346F006          add word [bp-0x10],byte +0x6
00001872  89F2              mov dx,si
00001874  42                inc dx
00001875  81E2FEFF          and dx,0xfffe
00001879  89D6              mov si,dx
0000187B  837EEC00          cmp word [bp-0x14],byte +0x0
0000187F  7505              jnz 0x1886
00001881  83FE06            cmp si,byte +0x6
00001884  730C              jnc 0x1892
00001886  C706E40D0700      mov word [0xde4],0x7
0000188C  B8FFFF            mov ax,0xffff
0000188F  E91E01            jmp word 0x19b0
00001892  56                push si
00001893  E897FC            call word 0x152d
00001896  5B                pop bx
00001897  8946FA            mov [bp-0x6],ax
0000189A  3DFFFF            cmp ax,0xffff
0000189D  750C              jnz 0x18ab
0000189F  C706E40D0700      mov word [0xde4],0x7
000018A5  B8FFFF            mov ax,0xffff
000018A8  E90501            jmp word 0x19b0
000018AB  8B56F4            mov dx,[bp-0xc]
000018AE  8B5EFA            mov bx,[bp-0x6]
000018B1  8917              mov [bx],dx
000018B3  8B5EFA            mov bx,[bp-0x6]
000018B6  83C302            add bx,byte +0x2
000018B9  895EF8            mov [bp-0x8],bx
000018BC  8B56F0            mov dx,[bp-0x10]
000018BF  0356FA            add dx,[bp-0x6]
000018C2  89D7              mov di,dx
000018C4  8B5606            mov dx,[bp+0x6]
000018C7  8956FE            mov [bp-0x2],dx
000018CA  8B5EFE            mov bx,[bp-0x2]
000018CD  833F00            cmp word [bx],byte +0x0
000018D0  7435              jz 0x1907
000018D2  89FA              mov dx,di
000018D4  2B56FA            sub dx,[bp-0x6]
000018D7  8B5EF8            mov bx,[bp-0x8]
000018DA  8917              mov [bx],dx
000018DC  8346F802          add word [bp-0x8],byte +0x2
000018E0  8B5EFE            mov bx,[bp-0x2]
000018E3  FF37              push word [bx]
000018E5  E846FE            call word 0x172e
000018E8  5B                pop bx
000018E9  40                inc ax
000018EA  8946EE            mov [bp-0x12],ax
000018ED  8B5EFE            mov bx,[bp-0x2]
000018F0  50                push ax
000018F1  FF37              push word [bx]
000018F3  57                push di
000018F4  E808FE            call word 0x16ff
000018F7  83C406            add sp,byte +0x6
000018FA  8B56EE            mov dx,[bp-0x12]
000018FD  01FA              add dx,di
000018FF  89D7              mov di,dx
00001901  8346FE02          add word [bp-0x2],byte +0x2
00001905  EBC3              jmp short 0x18ca
00001907  8B5EF8            mov bx,[bp-0x8]
0000190A  C7070000          mov word [bx],0x0
0000190E  8346F802          add word [bp-0x8],byte +0x2
00001912  8B5608            mov dx,[bp+0x8]
00001915  8956FC            mov [bp-0x4],dx
00001918  8B5EFC            mov bx,[bp-0x4]
0000191B  833F00            cmp word [bx],byte +0x0
0000191E  7435              jz 0x1955
00001920  89FA              mov dx,di
00001922  2B56FA            sub dx,[bp-0x6]
00001925  8B5EF8            mov bx,[bp-0x8]
00001928  8917              mov [bx],dx
0000192A  8346F802          add word [bp-0x8],byte +0x2
0000192E  8B5EFC            mov bx,[bp-0x4]
00001931  FF37              push word [bx]
00001933  E8F8FD            call word 0x172e
00001936  5B                pop bx
00001937  40                inc ax
00001938  8946EE            mov [bp-0x12],ax
0000193B  8B5EFC            mov bx,[bp-0x4]
0000193E  50                push ax
0000193F  FF37              push word [bx]
00001941  57                push di
00001942  E8BAFD            call word 0x16ff
00001945  83C406            add sp,byte +0x6
00001948  8B56EE            mov dx,[bp-0x12]
0000194B  01FA              add dx,di
0000194D  89D7              mov di,dx
0000194F  8346FC02          add word [bp-0x4],byte +0x2
00001953  EBC3              jmp short 0x1918
00001955  8B5EF8            mov bx,[bp-0x8]
00001958  C7070000          mov word [bx],0x0
0000195C  8346F802          add word [bp-0x8],byte +0x2
00001960  8B5EFA            mov bx,[bp-0x6]
00001963  01F3              add bx,si
00001965  39FB              cmp bx,di
00001967  7606              jna 0x196f
00001969  C60500            mov byte [di],0x0
0000196C  47                inc di
0000196D  EBF1              jmp short 0x1960
0000196F  FF7604            push word [bp+0x4]
00001972  E8B9FD            call word 0x172e
00001975  5B                pop bx
00001976  40                inc ax
00001977  8946D8            mov [bp-0x28],ax
0000197A  8976DA            mov [bp-0x26],si
0000197D  8B5604            mov dx,[bp+0x4]
00001980  8956DE            mov [bp-0x22],dx
00001983  8B56FA            mov dx,[bp-0x6]
00001986  8956E0            mov [bp-0x20],dx
00001989  C746DC0000        mov word [bp-0x24],0x0
0000198E  C746E20000        mov word [bp-0x1e],0x0
00001993  8D46D4            lea ax,[bp-0x2c]
00001996  50                push ax
00001997  B83B00            mov ax,0x3b
0000199A  50                push ax
0000199B  31C0              xor ax,ax
0000199D  50                push ax
0000199E  E8CAFB            call word 0x156b
000019A1  83C406            add sp,byte +0x6
000019A4  89F2              mov dx,si
000019A6  F7DA              neg dx
000019A8  52                push dx
000019A9  E881FB            call word 0x152d
000019AC  5B                pop bx
000019AD  B8FFFF            mov ax,0xffff
000019B0  E97F03            jmp word 0x1d32
000019B3  55                push bp
000019B4  89E5              mov bp,sp
000019B6  83EC18            sub sp,byte +0x18
000019B9  8D46E8            lea ax,[bp-0x18]
000019BC  50                push ax
000019BD  B80200            mov ax,0x2
000019C0  50                push ax
000019C1  31C0              xor ax,ax
000019C3  50                push ax
000019C4  E8A4FB            call word 0x156b
000019C7  83C406            add sp,byte +0x6
000019CA  E96703            jmp word 0x1d34
000019CD  55                push bp
000019CE  89E5              mov bp,sp
000019D0  83EC18            sub sp,byte +0x18
000019D3  8D46E8            lea ax,[bp-0x18]
000019D6  50                push ax
000019D7  B81400            mov ax,0x14
000019DA  50                push ax
000019DB  31C0              xor ax,ax
000019DD  50                push ax
000019DE  E88AFB            call word 0x156b
000019E1  83C406            add sp,byte +0x6
000019E4  E94D03            jmp word 0x1d34
000019E7  55                push bp
000019E8  89E5              mov bp,sp
000019EA  83EC18            sub sp,byte +0x18
000019ED  8B5604            mov dx,[bp+0x4]
000019F0  8956EC            mov [bp-0x14],dx
000019F3  8B5606            mov dx,[bp+0x6]
000019F6  8956EE            mov [bp-0x12],dx
000019F9  8D46E8            lea ax,[bp-0x18]
000019FC  50                push ax
000019FD  B82500            mov ax,0x25
00001A00  50                push ax
00001A01  31C0              xor ax,ax
00001A03  50                push ax
00001A04  E864FB            call word 0x156b
00001A07  83C406            add sp,byte +0x6
00001A0A  E92703            jmp word 0x1d34
00001A0D  55                push bp
00001A0E  89E5              mov bp,sp
00001A10  83EC1A            sub sp,byte +0x1a
00001A13  56                push si
00001A14  8D7608            lea si,[bp+0x8]
00001A17  F6460640          test byte [bp+0x6],0x40
00001A1B  7424              jz 0x1a41
00001A1D  FF7604            push word [bp+0x4]
00001A20  E80BFD            call word 0x172e
00001A23  5B                pop bx
00001A24  40                inc ax
00001A25  8946EA            mov [bp-0x16],ax
00001A28  8B5606            mov dx,[bp+0x6]
00001A2B  8956EC            mov [bp-0x14],dx
00001A2E  8D5C02            lea bx,[si+0x2]
00001A31  89DE              mov si,bx
00001A33  8B57FE            mov dx,[bx-0x2]
00001A36  8956EE            mov [bp-0x12],dx
00001A39  8B5604            mov dx,[bp+0x4]
00001A3C  8956F0            mov [bp-0x10],dx
00001A3F  EB12              jmp short 0x1a53
00001A41  8D46E6            lea ax,[bp-0x1a]
00001A44  50                push ax
00001A45  FF7604            push word [bp+0x4]
00001A48  E82702            call word 0x1c72
00001A4B  5B                pop bx
00001A4C  5B                pop bx
00001A4D  8B5606            mov dx,[bp+0x6]
00001A50  8956EC            mov [bp-0x14],dx
00001A53  8D46E6            lea ax,[bp-0x1a]
00001A56  50                push ax
00001A57  B80500            mov ax,0x5
00001A5A  50                push ax
00001A5B  B80100            mov ax,0x1
00001A5E  50                push ax
00001A5F  E809FB            call word 0x156b
00001A62  83C406            add sp,byte +0x6
00001A65  E9CB02            jmp word 0x1d33
00001A68  55                push bp
00001A69  89E5              mov bp,sp
00001A6B  83EC18            sub sp,byte +0x18
00001A6E  8B5604            mov dx,[bp+0x4]
00001A71  8956EC            mov [bp-0x14],dx
00001A74  8B5608            mov dx,[bp+0x8]
00001A77  8956EE            mov [bp-0x12],dx
00001A7A  8B5606            mov dx,[bp+0x6]
00001A7D  8956F2            mov [bp-0xe],dx
00001A80  8D46E8            lea ax,[bp-0x18]
00001A83  50                push ax
00001A84  B80300            mov ax,0x3
00001A87  50                push ax
00001A88  B80100            mov ax,0x1
00001A8B  50                push ax
00001A8C  E8DCFA            call word 0x156b
00001A8F  83C406            add sp,byte +0x6
00001A92  E99F02            jmp word 0x1d34
00001A95  55                push bp
00001A96  89E5              mov bp,sp
00001A98  83EC26            sub sp,byte +0x26
00001A9B  56                push si
00001A9C  8B7604            mov si,[bp+0x4]
00001A9F  8B14              mov dx,[si]
00001AA1  8956DA            mov [bp-0x26],dx
00001AA4  8B5402            mov dx,[si+0x2]
00001AA7  8B4C04            mov cx,[si+0x4]
00001AAA  8956DC            mov [bp-0x24],dx
00001AAD  894EDE            mov [bp-0x22],cx
00001AB0  8B5406            mov dx,[si+0x6]
00001AB3  8956F6            mov [bp-0xa],dx
00001AB6  8B5408            mov dx,[si+0x8]
00001AB9  8956FC            mov [bp-0x4],dx
00001ABC  8B540A            mov dx,[si+0xa]
00001ABF  8956E8            mov [bp-0x18],dx
00001AC2  8B5606            mov dx,[bp+0x6]
00001AC5  8956F2            mov [bp-0xe],dx
00001AC8  8D46DA            lea ax,[bp-0x26]
00001ACB  50                push ax
00001ACC  E80400            call word 0x1ad3
00001ACF  5B                pop bx
00001AD0  E96002            jmp word 0x1d33
00001AD3  55                push bp
00001AD4  89E5              mov bp,sp
00001AD6  50                push ax
00001AD7  50                push ax
00001AD8  56                push si
00001AD9  8B7604            mov si,[bp+0x4]
00001ADC  8D46FC            lea ax,[bp-0x4]
00001ADF  50                push ax
00001AE0  E873FB            call word 0x1656
00001AE3  5B                pop bx
00001AE4  31C0              xor ax,ax
00001AE6  50                push ax
00001AE7  8D46FC            lea ax,[bp-0x4]
00001AEA  50                push ax
00001AEB  B80200            mov ax,0x2
00001AEE  50                push ax
00001AEF  E8B401            call word 0x1ca6
00001AF2  83C406            add sp,byte +0x6
00001AF5  8B5402            mov dx,[si+0x2]
00001AF8  8B4C04            mov cx,[si+0x4]
00001AFB  8916EA10          mov [0x10ea],dx
00001AFF  890EEC10          mov [0x10ec],cx
00001B03  8B14              mov dx,[si]
00001B05  8916E610          mov [0x10e6],dx
00001B09  8936F210          mov [0x10f2],si
00001B0D  B8E010            mov ax,0x10e0
00001B10  50                push ax
00001B11  B84B00            mov ax,0x4b
00001B14  50                push ax
00001B15  31C0              xor ax,ax
00001B17  50                push ax
00001B18  E850FA            call word 0x156b
00001B1B  83C406            add sp,byte +0x6
00001B1E  E91202            jmp word 0x1d33
00001B21  55                push bp
00001B22  89E5              mov bp,sp
00001B24  83EC18            sub sp,byte +0x18
00001B27  8D46E8            lea ax,[bp-0x18]
00001B2A  50                push ax
00001B2B  FF7604            push word [bp+0x4]
00001B2E  E84101            call word 0x1c72
00001B31  5B                pop bx
00001B32  5B                pop bx
00001B33  8D46E8            lea ax,[bp-0x18]
00001B36  50                push ax
00001B37  B80A00            mov ax,0xa
00001B3A  50                push ax
00001B3B  B80100            mov ax,0x1
00001B3E  50                push ax
00001B3F  E829FA            call word 0x156b
00001B42  83C406            add sp,byte +0x6
00001B45  E9EC01            jmp word 0x1d34
00001B48  55                push bp
00001B49  89E5              mov bp,sp
00001B4B  83EC18            sub sp,byte +0x18
00001B4E  8D46E8            lea ax,[bp-0x18]
00001B51  50                push ax
00001B52  B80700            mov ax,0x7
00001B55  50                push ax
00001B56  31C0              xor ax,ax
00001B58  50                push ax
00001B59  E80FFA            call word 0x156b
00001B5C  83C406            add sp,byte +0x6
00001B5F  09C0              or ax,ax
00001B61  7D05              jnl 0x1b68
00001B63  B8FFFF            mov ax,0xffff
00001B66  EB11              jmp short 0x1b79
00001B68  837E0400          cmp word [bp+0x4],byte +0x0
00001B6C  7408              jz 0x1b76
00001B6E  8B56EC            mov dx,[bp-0x14]
00001B71  8B5E04            mov bx,[bp+0x4]
00001B74  8917              mov [bx],dx
00001B76  8B46EA            mov ax,[bp-0x16]
00001B79  E9B801            jmp word 0x1d34
00001B7C  55                push bp
00001B7D  89E5              mov bp,sp
00001B7F  83EC18            sub sp,byte +0x18
00001B82  8B5604            mov dx,[bp+0x4]
00001B85  8956EC            mov [bp-0x14],dx
00001B88  8B5608            mov dx,[bp+0x8]
00001B8B  8956EE            mov [bp-0x12],dx
00001B8E  8B5606            mov dx,[bp+0x6]
00001B91  8956F2            mov [bp-0xe],dx
00001B94  8D46E8            lea ax,[bp-0x18]
00001B97  50                push ax
00001B98  B80400            mov ax,0x4
00001B9B  50                push ax
00001B9C  B80100            mov ax,0x1
00001B9F  50                push ax
00001BA0  E8C8F9            call word 0x156b
00001BA3  83C406            add sp,byte +0x6
00001BA6  E98B01            jmp word 0x1d34
00001BA9  55                push bp
00001BAA  89E5              mov bp,sp
00001BAC  56                push si
00001BAD  57                push di
00001BAE  8B7E04            mov di,[bp+0x4]
00001BB1  8B7606            mov si,[bp+0x6]
00001BB4  8B4E08            mov cx,[bp+0x8]
00001BB7  89F8              mov ax,di
00001BB9  29F0              sub ax,si
00001BBB  39C8              cmp ax,cx
00001BBD  721D              jc 0x1bdc
00001BBF  FC                cld
00001BC0  83F910            cmp cx,byte +0x10
00001BC3  720E              jc 0x1bd3
00001BC5  89F0              mov ax,si
00001BC7  09F8              or ax,di
00001BC9  A801              test al,0x1
00001BCB  7506              jnz 0x1bd3
00001BCD  D1E9              shr cx,1
00001BCF  F2A5              repne movsw
00001BD1  11C9              adc cx,cx
00001BD3  F2A4              repne movsb
00001BD5  8B4604            mov ax,[bp+0x4]
00001BD8  5F                pop di
00001BD9  5E                pop si
00001BDA  5D                pop bp
00001BDB  C3                ret
00001BDC  FD                std
00001BDD  01CE              add si,cx
00001BDF  4E                dec si
00001BE0  01CF              add di,cx
00001BE2  4F                dec di
00001BE3  F2A4              repne movsb
00001BE5  FC                cld
00001BE6  EBED              jmp short 0x1bd5
00001BE8  55                push bp
00001BE9  89E5              mov bp,sp
00001BEB  56                push si
00001BEC  57                push di
00001BED  8B7E04            mov di,[bp+0x4]
00001BF0  B9FFFF            mov cx,0xffff
00001BF3  30C0              xor al,al
00001BF5  FC                cld
00001BF6  F2AE              repne scasb
00001BF8  4F                dec di
00001BF9  57                push di
00001BFA  8B7E06            mov di,[bp+0x6]
00001BFD  89D1              mov cx,dx
00001BFF  F2AE              repne scasb
00001C01  7501              jnz 0x1c04
00001C03  41                inc cx
00001C04  29CA              sub dx,cx
00001C06  89D1              mov cx,dx
00001C08  8B7606            mov si,[bp+0x6]
00001C0B  5F                pop di
00001C0C  F2A4              repne movsb
00001C0E  AA                stosb
00001C0F  8B4604            mov ax,[bp+0x4]
00001C12  5F                pop di
00001C13  5E                pop si
00001C14  5D                pop bp
00001C15  C3                ret
00001C16  55                push bp
00001C17  89E5              mov bp,sp
00001C19  56                push si
00001C1A  57                push di
00001C1B  31C0              xor ax,ax
00001C1D  85C9              test cx,cx
00001C1F  741B              jz 0x1c3c
00001C21  8B7604            mov si,[bp+0x4]
00001C24  8B7E06            mov di,[bp+0x6]
00001C27  FC                cld
00001C28  A6                cmpsb
00001C29  750B              jnz 0x1c36
00001C2B  807CFF00          cmp byte [si-0x1],0x0
00001C2F  740B              jz 0x1c3c
00001C31  49                dec cx
00001C32  75F4              jnz 0x1c28
00001C34  EB06              jmp short 0x1c3c
00001C36  7703              ja 0x1c3b
00001C38  2D0200            sub ax,0x2
00001C3B  40                inc ax
00001C3C  5F                pop di
00001C3D  5E                pop si
00001C3E  5D                pop bp
00001C3F  C3                ret
00001C40  8B7E06            mov di,[bp+0x6]
00001C43  30C0              xor al,al
00001C45  89CA              mov dx,cx
00001C47  FC                cld
00001C48  F2AE              repne scasb
00001C4A  29CA              sub dx,cx
00001C4C  87CA              xchg cx,dx
00001C4E  8B7606            mov si,[bp+0x6]
00001C51  8B7E04            mov di,[bp+0x4]
00001C54  F2A4              repne movsb
00001C56  C3                ret
00001C57  55                push bp
00001C58  89E5              mov bp,sp
00001C5A  57                push di
00001C5B  8B7E04            mov di,[bp+0x4]
00001C5E  30C0              xor al,al
00001C60  89CA              mov dx,cx
00001C62  80F901            cmp cl,0x1
00001C65  FC                cld
00001C66  F2AE              repne scasb
00001C68  7501              jnz 0x1c6b
00001C6A  41                inc cx
00001C6B  89D0              mov ax,dx
00001C6D  29C8              sub ax,cx
00001C6F  5F                pop di
00001C70  5D                pop bp
00001C71  C3                ret
00001C72  55                push bp
00001C73  89E5              mov bp,sp
00001C75  56                push si
00001C76  FF7604            push word [bp+0x4]
00001C79  E8B2FA            call word 0x172e
00001C7C  5B                pop bx
00001C7D  40                inc ax
00001C7E  89C6              mov si,ax
00001C80  8B5E06            mov bx,[bp+0x6]
00001C83  897704            mov [bx+0x4],si
00001C86  8B5E06            mov bx,[bp+0x6]
00001C89  8B5604            mov dx,[bp+0x4]
00001C8C  895708            mov [bx+0x8],dx
00001C8F  83FE0E            cmp si,byte +0xe
00001C92  770F              ja 0x1ca3
00001C94  8B5E06            mov bx,[bp+0x6]
00001C97  FF7604            push word [bp+0x4]
00001C9A  83C30A            add bx,byte +0xa
00001C9D  53                push bx
00001C9E  E87BFA            call word 0x171c
00001CA1  5B                pop bx
00001CA2  5B                pop bx
00001CA3  E98D00            jmp word 0x1d33
00001CA6  55                push bp
00001CA7  89E5              mov bp,sp
00001CA9  83EC18            sub sp,byte +0x18
00001CAC  837E0600          cmp word [bp+0x6],byte +0x0
00001CB0  750F              jnz 0x1cc1
00001CB2  C746EC0400        mov word [bp-0x14],0x4
00001CB7  31C0              xor ax,ax
00001CB9  8946F2            mov [bp-0xe],ax
00001CBC  8946F4            mov [bp-0xc],ax
00001CBF  EB14              jmp short 0x1cd5
00001CC1  8B5604            mov dx,[bp+0x4]
00001CC4  8956EC            mov [bp-0x14],dx
00001CC7  8B5E06            mov bx,[bp+0x6]
00001CCA  8B17              mov dx,[bx]
00001CCC  8B4F02            mov cx,[bx+0x2]
00001CCF  8956F2            mov [bp-0xe],dx
00001CD2  894EF4            mov [bp-0xc],cx
00001CD5  8D46E8            lea ax,[bp-0x18]
00001CD8  50                push ax
00001CD9  B84A00            mov ax,0x4a
00001CDC  50                push ax
00001CDD  31C0              xor ax,ax
00001CDF  50                push ax
00001CE0  E888F8            call word 0x156b
00001CE3  83C406            add sp,byte +0x6
00001CE6  09C0              or ax,ax
00001CE8  7D05              jnl 0x1cef
00001CEA  B8FFFF            mov ax,0xffff
00001CED  EB17              jmp short 0x1d06
00001CEF  837E0800          cmp word [bp+0x8],byte +0x0
00001CF3  740E              jz 0x1d03
00001CF5  8B5E08            mov bx,[bp+0x8]
00001CF8  8B56F2            mov dx,[bp-0xe]
00001CFB  8B4EF4            mov cx,[bp-0xc]
00001CFE  8917              mov [bx],dx
00001D00  894F02            mov [bx+0x2],cx
00001D03  8B46EA            mov ax,[bp-0x16]
00001D06  E92B00            jmp word 0x1d34
00001D09  8B17              mov dx,[bx]
00001D0B  8B4F02            mov cx,[bx+0x2]
00001D0E  83C304            add bx,byte +0x4
00001D11  49                dec cx
00001D12  7C14              jl 0x1d28
00001D14  3B07              cmp ax,[bx]
00001D16  75F6              jnz 0x1d0e
00001D18  8B5F02            mov bx,[bx+0x2]
00001D1B  85DB              test bx,bx
00001D1D  7507              jnz 0x1d26
00001D1F  B81400            mov ax,0x14
00001D22  50                push ax
00001D23  E90600            jmp word 0x1d2c
00001D26  FFE3              jmp bx
00001D28  89D3              mov bx,dx
00001D2A  EBEF              jmp short 0x1d1b
00001D2C  E86600            call word 0x1d95
00001D2F  E80A00            call word 0x1d3c
00001D32  5F                pop di
00001D33  5E                pop si
00001D34  89EC              mov sp,bp
00001D36  5D                pop bp
00001D37  C3                ret
00001D38  5E                pop si
00001D39  5F                pop di
00001D3A  EBF8              jmp short 0x1d34
00001D3C  E86AF9            call word 0x16a9
00001D3F  B80600            mov ax,0x6
00001D42  BA120E            mov dx,0xe12
00001D45  EB30              jmp short 0x1d77
00001D47  B81200            mov ax,0x12
00001D4A  BA290E            mov dx,0xe29
00001D4D  EB28              jmp short 0x1d77
00001D4F  B81400            mov ax,0x14
00001D52  BA400E            mov dx,0xe40
00001D55  EB20              jmp short 0x1d77
00001D57  B80100            mov ax,0x1
00001D5A  BA570E            mov dx,0xe57
00001D5D  EB18              jmp short 0x1d77
00001D5F  B80200            mov ax,0x2
00001D62  BA6E0E            mov dx,0xe6e
00001D65  EB10              jmp short 0x1d77
00001D67  B81200            mov ax,0x12
00001D6A  BA850E            mov dx,0xe85
00001D6D  EB08              jmp short 0x1d77
00001D6F  B81100            mov ax,0x11
00001D72  BA9C0E            mov dx,0xe9c
00001D75  EB00              jmp short 0x1d77
00001D77  31DB              xor bx,bx
00001D79  871ED00E          xchg bx,[0xed0]
00001D7D  85DB              test bx,bx
00001D7F  7405              jz 0x1d86
00001D81  50                push ax
00001D82  FFD3              call bx
00001D84  58                pop ax
00001D85  C3                ret
00001D86  BB1600            mov bx,0x16
00001D89  53                push bx
00001D8A  52                push dx
00001D8B  B80200            mov ax,0x2
00001D8E  50                push ax
00001D8F  E83B00            call word 0x1dcd
00001D92  E814F9            call word 0x16a9
00001D95  89C2              mov dx,ax
00001D97  83FA15            cmp dx,byte +0x15
00001D9A  7311              jnc 0x1dad
00001D9C  D1E2              shl dx,1
00001D9E  BBE80D            mov bx,0xde8
00001DA1  01D3              add bx,dx
00001DA3  8B1F              mov bx,[bx]
00001DA5  85DB              test bx,bx
00001DA7  7404              jz 0x1dad
00001DA9  89DA              mov dx,bx
00001DAB  EB1E              jmp short 0x1dcb
00001DAD  BBC10E            mov bx,0xec1
00001DB0  B90600            mov cx,0x6
00001DB3  89C2              mov dx,ax
00001DB5  81E20700          and dx,0x7
00001DB9  03163000          add dx,[0x30]
00001DBD  8817              mov [bx],dl
00001DBF  4B                dec bx
00001DC0  D1FA              sar dx,1
00001DC2  D1FA              sar dx,1
00001DC4  D1FA              sar dx,1
00001DC6  E2ED              loop 0x1db5
00001DC8  BAB30E            mov dx,0xeb3
00001DCB  EBAA              jmp short 0x1d77
00001DCD  55                push bp
00001DCE  89E5              mov bp,sp
00001DD0  C706FA100400      mov word [0x10fa],0x4
00001DD6  8B5E04            mov bx,[bp+0x4]
00001DD9  891EFC10          mov [0x10fc],bx
00001DDD  8B5E08            mov bx,[bp+0x8]
00001DE0  891EFE10          mov [0x10fe],bx
00001DE4  8B5E06            mov bx,[bp+0x6]
00001DE7  891E0211          mov [0x1102],bx
00001DEB  B8F810            mov ax,0x10f8
00001DEE  50                push ax
00001DEF  B80100            mov ax,0x1
00001DF2  50                push ax
00001DF3  B80100            mov ax,0x1
00001DF6  BBF810            mov bx,0x10f8
00001DF9  B90300            mov cx,0x3
00001DFC  CD20              int 0x20
00001DFE  89EC              mov sp,bp
00001E00  5D                pop bp
00001E01  C3                ret
00001E02  0000              add [bx+si],al
00001E04  0000              add [bx+si],al
00001E06  0000              add [bx+si],al
00001E08  0000              add [bx+si],al
00001E0A  0000              add [bx+si],al
00001E0C  0000              add [bx+si],al
00001E0E  0000              add [bx+si],al
