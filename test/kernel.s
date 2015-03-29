00000000  EB04              jmp short 0x6
00000002  0A00              or al,[bx+si]
00000004  B401              mov ah,0x1
00000006  55                push bp
00000007  89E5              mov bp,sp
00000009  56                push si
0000000A  57                push di
0000000B  837E0400          cmp word [bp+0x4],byte +0x0
0000000F  7404              jz 0x15
00000011  FF06F245          inc word [0x45f2]
00000015  8C163E46          mov [0x463e],ss
00000019  89263C46          mov [0x463c],sp
0000001D  8B5E06            mov bx,[bp+0x6]
00000020  8B5608            mov dx,[bp+0x8]
00000023  8B460A            mov ax,[bp+0xa]
00000026  A3F645            mov [0x45f6],ax
00000029  8B460C            mov ax,[bp+0xc]
0000002C  A3F845            mov [0x45f8],ax
0000002F  8CD8              mov ax,ds
00000031  8EC0              mov es,ax
00000033  8ED0              mov ss,ax
00000035  BC701C            mov sp,0x1c70
00000038  2E8C0E3409        mov [cs:0x934],cs
0000003D  2E8C1E0400        mov [cs:0x4],ds
00000042  52                push dx
00000043  53                push bx
00000044  FF363E46          push word [0x463e]
00000048  1E                push ds
00000049  0E                push cs
0000004A  E81803            call word 0x365
0000004D  83C40A            add sp,byte +0xa
00000050  833E424600        cmp word [0x4642],byte +0x0
00000055  7409              jz 0x60
00000057  E89E0B            call word 0xbf8
0000005A  E83108            call word 0x88e
0000005D  6A00              push byte +0x0
0000005F  9D                popfw
00000060  E9050D            jmp word 0xd68
00000063  E421              in al,0x21
00000065  09F8              or ax,di
00000067  E621              out 0x21,al
00000069  B020              mov al,0x20
0000006B  E620              out 0x20,al
0000006D  8B8CFC45          mov cx,[si+0x45fc]
00000071  51                push cx
00000072  FB                sti
00000073  E87257            call word 0x57e8
00000076  FA                cli
00000077  59                pop cx
00000078  83BC1C4600        cmp word [si+0x461c],byte +0x0
0000007D  7508              jnz 0x87
0000007F  E421              in al,0x21
00000081  F7D7              not di
00000083  21F8              and ax,di
00000085  E621              out 0x21,al
00000087  C3                ret
00000088  E8D400            call word 0x15f
0000008B  BE0000            mov si,0x0
0000008E  BF0100            mov di,0x1
00000091  EBD0              jmp short 0x63
00000093  E8C900            call word 0x15f
00000096  BE0200            mov si,0x2
00000099  BF0200            mov di,0x2
0000009C  EBC5              jmp short 0x63
0000009E  E8BE00            call word 0x15f
000000A1  BE0400            mov si,0x4
000000A4  BF0400            mov di,0x4
000000A7  EBBA              jmp short 0x63
000000A9  E8B300            call word 0x15f
000000AC  BE0600            mov si,0x6
000000AF  BF0800            mov di,0x8
000000B2  EBAF              jmp short 0x63
000000B4  E8A800            call word 0x15f
000000B7  BE0800            mov si,0x8
000000BA  BF1000            mov di,0x10
000000BD  EBA4              jmp short 0x63
000000BF  E89D00            call word 0x15f
000000C2  BE0A00            mov si,0xa
000000C5  BF2000            mov di,0x20
000000C8  EB99              jmp short 0x63
000000CA  E89200            call word 0x15f
000000CD  BE0C00            mov si,0xc
000000D0  BF4000            mov di,0x40
000000D3  EB8E              jmp short 0x63
000000D5  E88700            call word 0x15f
000000D8  BE0E00            mov si,0xe
000000DB  BF8000            mov di,0x80
000000DE  EB83              jmp short 0x63
000000E0  E4A1              in al,0xa1
000000E2  09F8              or ax,di
000000E4  E6A1              out 0xa1,al
000000E6  B020              mov al,0x20
000000E8  E620              out 0x20,al
000000EA  8B8CFC45          mov cx,[si+0x45fc]
000000EE  E6A0              out 0xa0,al
000000F0  51                push cx
000000F1  FB                sti
000000F2  E8F356            call word 0x57e8
000000F5  FA                cli
000000F6  59                pop cx
000000F7  83BC1C4600        cmp word [si+0x461c],byte +0x0
000000FC  7508              jnz 0x106
000000FE  E4A1              in al,0xa1
00000100  F7D7              not di
00000102  21F8              and ax,di
00000104  E6A1              out 0xa1,al
00000106  C3                ret
00000107  E85500            call word 0x15f
0000010A  BE1000            mov si,0x10
0000010D  BF0100            mov di,0x1
00000110  EBCE              jmp short 0xe0
00000112  E84A00            call word 0x15f
00000115  BE1200            mov si,0x12
00000118  BF0200            mov di,0x2
0000011B  EBC3              jmp short 0xe0
0000011D  E83F00            call word 0x15f
00000120  BE1400            mov si,0x14
00000123  BF0400            mov di,0x4
00000126  EBB8              jmp short 0xe0
00000128  E83400            call word 0x15f
0000012B  BE1600            mov si,0x16
0000012E  BF0800            mov di,0x8
00000131  EBAD              jmp short 0xe0
00000133  E82900            call word 0x15f
00000136  BE1800            mov si,0x18
00000139  BF1000            mov di,0x10
0000013C  EBA2              jmp short 0xe0
0000013E  E81E00            call word 0x15f
00000141  BE1A00            mov si,0x1a
00000144  BF2000            mov di,0x20
00000147  EB97              jmp short 0xe0
00000149  E81300            call word 0x15f
0000014C  BE1C00            mov si,0x1c
0000014F  BF4000            mov di,0x40
00000152  EB8C              jmp short 0xe0
00000154  E80800            call word 0x15f
00000157  BE1E00            mov si,0x1e
0000015A  BF8000            mov di,0x80
0000015D  EB81              jmp short 0xe0
0000015F  FC                cld
00000160  1E                push ds
00000161  56                push si
00000162  2E8E1E0400        mov ds,[cs:0x4]
00000167  FE064046          inc byte [0x4640]
0000016B  753D              jnz 0x1aa
0000016D  8B36F445          mov si,[0x45f4]
00000171  894412            mov [si+0x12],ax
00000174  895C0C            mov [si+0xc],bx
00000177  894C10            mov [si+0x10],cx
0000017A  89540E            mov [si+0xe],dx
0000017D  8F4406            pop word [si+0x6]
00000180  897C04            mov [si+0x4],di
00000183  896C08            mov [si+0x8],bp
00000186  8C04              mov [si],es
00000188  8F4402            pop word [si+0x2]
0000018B  5B                pop bx
0000018C  8F4416            pop word [si+0x16]
0000018F  8F4418            pop word [si+0x18]
00000192  8F441A            pop word [si+0x1a]
00000195  89641C            mov [si+0x1c],sp
00000198  8C541E            mov [si+0x1e],ss
0000019B  8CDA              mov dx,ds
0000019D  8ED2              mov ss,dx
0000019F  BC701C            mov sp,0x1c70
000001A2  B80102            mov ax,0x201
000001A5  50                push ax
000001A6  8EC2              mov es,dx
000001A8  FFE3              jmp bx
000001AA  06                push es
000001AB  55                push bp
000001AC  57                push di
000001AD  52                push dx
000001AE  51                push cx
000001AF  53                push bx
000001B0  50                push ax
000001B1  89E5              mov bp,sp
000001B3  8B5E12            mov bx,[bp+0x12]
000001B6  B83E02            mov ax,0x23e
000001B9  50                push ax
000001BA  8CD2              mov dx,ss
000001BC  8EDA              mov ds,dx
000001BE  EBE6              jmp short 0x1a6
000001C0  FC                cld
000001C1  1E                push ds
000001C2  56                push si
000001C3  2E8E1E0400        mov ds,[cs:0x4]
000001C8  FE064046          inc byte [0x4640]
000001CC  8B36F445          mov si,[0x45f4]
000001D0  8F4406            pop word [si+0x6]
000001D3  897C04            mov [si+0x4],di
000001D6  896C08            mov [si+0x8],bp
000001D9  8C04              mov [si],es
000001DB  8F4402            pop word [si+0x2]
000001DE  8F4416            pop word [si+0x16]
000001E1  8F4418            pop word [si+0x18]
000001E4  8F441A            pop word [si+0x1a]
000001E7  89641C            mov [si+0x1c],sp
000001EA  8C541E            mov [si+0x1e],ss
000001ED  8CDA              mov dx,ds
000001EF  8EC2              mov es,dx
000001F1  8ED2              mov ss,dx
000001F3  BC701C            mov sp,0x1c70
000001F6  53                push bx
000001F7  50                push ax
000001F8  51                push cx
000001F9  FB                sti
000001FA  E8610E            call word 0x105e
000001FD  894412            mov [si+0x12],ax
00000200  FA                cli
00000201  833EFA4500        cmp word [0x45fa],byte +0x0
00000206  7403              jz 0x20b
00000208  E8C912            call word 0x14d4
0000020B  8B36F445          mov si,[0x45f4]
0000020F  FE0E4046          dec byte [0x4640]
00000213  8B4412            mov ax,[si+0x12]
00000216  8B5C0C            mov bx,[si+0xc]
00000219  8B4C10            mov cx,[si+0x10]
0000021C  8B540E            mov dx,[si+0xe]
0000021F  8B7C04            mov di,[si+0x4]
00000222  8B6C08            mov bp,[si+0x8]
00000225  8E04              mov es,[si]
00000227  8E541E            mov ss,[si+0x1e]
0000022A  8B641C            mov sp,[si+0x1c]
0000022D  FF741A            push word [si+0x1a]
00000230  FF7418            push word [si+0x18]
00000233  FF7416            push word [si+0x16]
00000236  FF7402            push word [si+0x2]
00000239  8B7406            mov si,[si+0x6]
0000023C  1F                pop ds
0000023D  CF                iretw
0000023E  FE0E4046          dec byte [0x4640]
00000242  58                pop ax
00000243  5B                pop bx
00000244  59                pop cx
00000245  5A                pop dx
00000246  5F                pop di
00000247  5D                pop bp
00000248  07                pop es
00000249  5E                pop si
0000024A  1F                pop ds
0000024B  83C402            add sp,byte +0x2
0000024E  CF                iretw
0000024F  50                push ax
00000250  B000              mov al,0x0
00000252  EB21              jmp short 0x275
00000254  50                push ax
00000255  B001              mov al,0x1
00000257  EB1C              jmp short 0x275
00000259  50                push ax
0000025A  B002              mov al,0x2
0000025C  EB17              jmp short 0x275
0000025E  50                push ax
0000025F  B003              mov al,0x3
00000261  EB12              jmp short 0x275
00000263  50                push ax
00000264  B004              mov al,0x4
00000266  EB0D              jmp short 0x275
00000268  50                push ax
00000269  B005              mov al,0x5
0000026B  EB08              jmp short 0x275
0000026D  50                push ax
0000026E  B006              mov al,0x6
00000270  EB03              jmp short 0x275
00000272  50                push ax
00000273  B007              mov al,0x7
00000275  2EA29F02          mov [cs:0x29f],al
00000279  58                pop ax
0000027A  E8E2FE            call word 0x15f
0000027D  2EFF369F02        push word [cs:0x29f]
00000282  E88B12            call word 0x1510
00000285  83C402            add sp,byte +0x2
00000288  FA                cli
00000289  C3                ret
0000028A  E8D2FE            call word 0x15f
0000028D  FF267046          jmp word [0x4670]
00000291  B89B02            mov ax,0x29b
00000294  50                push ax
00000295  E85B09            call word 0xbf3
00000298  58                pop ax
00000299  EBF6              jmp short 0x291
0000029B  FB                sti
0000029C  F4                hlt
0000029D  FA                cli
0000029E  C3                ret
0000029F  0000              add [bx+si],al
000002A1  FC                cld
000002A2  60                pushaw
000002A3  1E                push ds
000002A4  06                push es
000002A5  8CD2              mov dx,ss
000002A7  8EDA              mov ds,dx
000002A9  8EC2              mov es,dx
000002AB  89E5              mov bp,sp
000002AD  FE064046          inc byte [0x4640]
000002B1  7509              jnz 0x2bc
000002B3  BC701C            mov sp,0x1c70
000002B6  68E502            push word 0x2e5
000002B9  FF6614            jmp word [bp+0x14]
000002BC  68FF02            push word 0x2ff
000002BF  FF6614            jmp word [bp+0x14]
000002C2  FC                cld
000002C3  83EC0C            sub sp,byte +0xc
000002C6  55                push bp
000002C7  56                push si
000002C8  57                push di
000002C9  1E                push ds
000002CA  06                push es
000002CB  8CD2              mov dx,ss
000002CD  8EDA              mov ds,dx
000002CF  8EC2              mov es,dx
000002D1  FE064046          inc byte [0x4640]
000002D5  89E6              mov si,sp
000002D7  BC701C            mov sp,0x1c70
000002DA  FB                sti
000002DB  53                push bx
000002DC  50                push ax
000002DD  51                push cx
000002DE  E87D0D            call word 0x105e
000002E1  894412            mov [si+0x12],ax
000002E4  FA                cli
000002E5  833EFA4500        cmp word [0x45fa],byte +0x0
000002EA  7403              jz 0x2ef
000002EC  E8E511            call word 0x14d4
000002EF  8B36F445          mov si,[0x45f4]
000002F3  0F005420          lldt [si+0x20]
000002F7  8D4420            lea ax,[si+0x20]
000002FA  A34646            mov [0x4646],ax
000002FD  89F4              mov sp,si
000002FF  FE0E4046          dec byte [0x4640]
00000303  07                pop es
00000304  1F                pop ds
00000305  61                popaw
00000306  83C402            add sp,byte +0x2
00000309  CF                iretw
0000030A  6A00              push byte +0x0
0000030C  EB34              jmp short 0x342
0000030E  6A01              push byte +0x1
00000310  EB30              jmp short 0x342
00000312  6A02              push byte +0x2
00000314  EB2C              jmp short 0x342
00000316  6A03              push byte +0x3
00000318  EB28              jmp short 0x342
0000031A  6A04              push byte +0x4
0000031C  EB24              jmp short 0x342
0000031E  6A05              push byte +0x5
00000320  EB20              jmp short 0x342
00000322  6A06              push byte +0x6
00000324  EB1C              jmp short 0x342
00000326  6A07              push byte +0x7
00000328  EB18              jmp short 0x342
0000032A  6A08              push byte +0x8
0000032C  EB1E              jmp short 0x34c
0000032E  6A09              push byte +0x9
00000330  EB10              jmp short 0x342
00000332  6A0A              push byte +0xa
00000334  EB16              jmp short 0x34c
00000336  6A0B              push byte +0xb
00000338  EB12              jmp short 0x34c
0000033A  6A0C              push byte +0xc
0000033C  EB0E              jmp short 0x34c
0000033E  6A0D              push byte +0xd
00000340  EB0A              jmp short 0x34c
00000342  368F06721C        pop word [ss:0x1c72]
00000347  E857FF            call word 0x2a1
0000034A  EB0D              jmp short 0x359
0000034C  368F06721C        pop word [ss:0x1c72]
00000351  368F06701C        pop word [ss:0x1c70]
00000356  E848FF            call word 0x2a1
00000359  FF36721C          push word [0x1c72]
0000035D  E8B011            call word 0x1510
00000360  83C402            add sp,byte +0x2
00000363  FA                cli
00000364  C3                ret
00000365  55                push bp
00000366  89E5              mov bp,sp
00000368  50                push ax
00000369  50                push ax
0000036A  56                push si
0000036B  57                push di
0000036C  8B7E0C            mov di,[bp+0xc]
0000036F  FF7604            push word [bp+0x4]
00000372  E82903            call word 0x69e
00000375  5B                pop bx
00000376  A37446            mov [0x4674],ax
00000379  89167646          mov [0x4676],dx
0000037D  FF7606            push word [bp+0x6]
00000380  E81B03            call word 0x69e
00000383  5B                pop bx
00000384  A38446            mov [0x4684],ax
00000387  89168646          mov [0x4686],dx
0000038B  E82301            call word 0x4b1
0000038E  FF7608            push word [bp+0x8]
00000391  E80A03            call word 0x69e
00000394  5B                pop bx
00000395  03460A            add ax,[bp+0xa]
00000398  83D200            adc dx,byte +0x0
0000039B  A37846            mov [0x4678],ax
0000039E  89167A46          mov [0x467a],dx
000003A2  893E8846          mov [0x4688],di
000003A6  81FFFE00          cmp di,0xfe
000003AA  7603              jna 0x3af
000003AC  BFFE00            mov di,0xfe
000003AF  BA741C            mov dx,0x1c74
000003B2  31C9              xor cx,cx
000003B4  03168446          add dx,[0x4684]
000003B8  130E8646          adc cx,[0x4686]
000003BC  31C0              xor ax,ax
000003BE  50                push ax
000003BF  57                push di
000003C0  51                push cx
000003C1  52                push dx
000003C2  FF367A46          push word [0x467a]
000003C6  FF367846          push word [0x4678]
000003CA  E8B806            call word 0xa85
000003CD  83C40C            add sp,byte +0xc
000003D0  B82000            mov ax,0x20
000003D3  50                push ax
000003D4  E89800            call word 0x46f
000003D7  5B                pop bx
000003D8  89C6              mov si,ax
000003DA  B81C00            mov ax,0x1c
000003DD  50                push ax
000003DE  56                push si
000003DF  E8B9A7            call word 0xab9b
000003E2  5B                pop bx
000003E3  5B                pop bx
000003E4  09C0              or ax,ax
000003E6  7506              jnz 0x3ee
000003E8  C70682460100      mov word [0x4682],0x1
000003EE  B81800            mov ax,0x18
000003F1  50                push ax
000003F2  56                push si
000003F3  E8A5A7            call word 0xab9b
000003F6  5B                pop bx
000003F7  5B                pop bx
000003F8  09C0              or ax,ax
000003FA  750B              jnz 0x407
000003FC  BA0100            mov dx,0x1
000003FF  89168246          mov [0x4682],dx
00000403  89167E46          mov [0x467e],dx
00000407  B80E00            mov ax,0xe
0000040A  50                push ax
0000040B  E86100            call word 0x46f
0000040E  5B                pop bx
0000040F  50                push ax
00000410  E82EA3            call word 0xa741
00000413  5B                pop bx
00000414  A38046            mov [0x4680],ax
00000417  B80A00            mov ax,0xa
0000041A  50                push ax
0000041B  E85100            call word 0x46f
0000041E  5B                pop bx
0000041F  89C6              mov si,ax
00000421  09F6              or si,si
00000423  740E              jz 0x433
00000425  B80600            mov ax,0x6
00000428  50                push ax
00000429  56                push si
0000042A  E86EA7            call word 0xab9b
0000042D  5B                pop bx
0000042E  5B                pop bx
0000042F  09C0              or ax,ax
00000431  7508              jnz 0x43b
00000433  C7067C460100      mov word [0x467c],0x1
00000439  EB19              jmp short 0x454
0000043B  B80200            mov ax,0x2
0000043E  50                push ax
0000043F  56                push si
00000440  E858A7            call word 0xab9b
00000443  5B                pop bx
00000444  5B                pop bx
00000445  09C0              or ax,ax
00000447  750B              jnz 0x454
00000449  BA0100            mov dx,0x1
0000044C  89167246          mov [0x4672],dx
00000450  89167C46          mov [0x467c],dx
00000454  31C0              xor ax,ax
00000456  813E80461E01      cmp word [0x4680],0x11e
0000045C  7201              jc 0x45f
0000045E  40                inc ax
0000045F  A34246            mov [0x4642],ax
00000462  09C0              or ax,ax
00000464  7506              jnz 0x46c
00000466  C706F2450000      mov word [0x45f2],0x0
0000046C  E93EAA            jmp word 0xaead
0000046F  55                push bp
00000470  89E5              mov bp,sp
00000472  56                push si
00000473  57                push di
00000474  BE741C            mov si,0x1c74
00000477  803C00            cmp byte [si],0x0
0000047A  7430              jz 0x4ac
0000047C  8B7E04            mov di,[bp+0x4]
0000047F  803D00            cmp byte [di],0x0
00000482  7410              jz 0x494
00000484  8A05              mov al,[di]
00000486  98                cbw
00000487  89C3              mov bx,ax
00000489  8A04              mov al,[si]
0000048B  98                cbw
0000048C  39C3              cmp bx,ax
0000048E  7504              jnz 0x494
00000490  47                inc di
00000491  46                inc si
00000492  EBEB              jmp short 0x47f
00000494  803D00            cmp byte [di],0x0
00000497  750A              jnz 0x4a3
00000499  803C3D            cmp byte [si],0x3d
0000049C  7505              jnz 0x4a3
0000049E  8D4401            lea ax,[si+0x1]
000004A1  EB0B              jmp short 0x4ae
000004A3  8A04              mov al,[si]
000004A5  46                inc si
000004A6  08C0              or al,al
000004A8  74CD              jz 0x477
000004AA  EBF7              jmp short 0x4a3
000004AC  31C0              xor ax,ax
000004AE  E9FCA9            jmp word 0xaead
000004B1  55                push bp
000004B2  89E5              mov bp,sp
000004B4  83EC06            sub sp,byte +0x6
000004B7  56                push si
000004B8  57                push di
000004B9  C746FC9246        mov word [bp-0x4],0x4692
000004BE  8B5EFC            mov bx,[bp-0x4]
000004C1  C707C701          mov word [bx],0x1c7
000004C5  BA8A46            mov dx,0x468a
000004C8  31C9              xor cx,cx
000004CA  03168446          add dx,[0x4684]
000004CE  130E8646          adc cx,[0x4686]
000004D2  8B5EFC            mov bx,[bp-0x4]
000004D5  895702            mov [bx+0x2],dx
000004D8  894F04            mov [bx+0x4],cx
000004DB  C746FC9A46        mov word [bp-0x4],0x469a
000004E0  8B5EFC            mov bx,[bp-0x4]
000004E3  C707BF03          mov word [bx],0x3bf
000004E7  BA741D            mov dx,0x1d74
000004EA  31C9              xor cx,cx
000004EC  03168446          add dx,[0x4684]
000004F0  130E8646          adc cx,[0x4686]
000004F4  8B5EFC            mov bx,[bp-0x4]
000004F7  895702            mov [bx+0x2],dx
000004FA  894F04            mov [bx+0x4],cx
000004FD  31C0              xor ax,ax
000004FF  50                push ax
00000500  B81BAF            mov ax,0xaf1b
00000503  50                push ax
00000504  FF367646          push word [0x4676]
00000508  FF367446          push word [0x4674]
0000050C  B8BA46            mov ax,0x46ba
0000050F  50                push ax
00000510  E80901            call word 0x61c
00000513  83C40A            add sp,byte +0xa
00000516  31C0              xor ax,ax
00000518  50                push ax
00000519  B8A474            mov ax,0x74a4
0000051C  50                push ax
0000051D  FF368646          push word [0x4686]
00000521  FF368446          push word [0x4684]
00000525  B8A246            mov ax,0x46a2
00000528  50                push ax
00000529  E81901            call word 0x645
0000052C  83C40A            add sp,byte +0xa
0000052F  31C0              xor ax,ax
00000531  BB0100            mov bx,0x1
00000534  53                push bx
00000535  31DB              xor bx,bx
00000537  53                push bx
00000538  50                push ax
00000539  50                push ax
0000053A  B8AA46            mov ax,0x46aa
0000053D  50                push ax
0000053E  E80401            call word 0x645
00000541  83C40A            add sp,byte +0xa
00000544  31C0              xor ax,ax
00000546  BB0100            mov bx,0x1
00000549  53                push bx
0000054A  31DB              xor bx,bx
0000054C  53                push bx
0000054D  50                push ax
0000054E  50                push ax
0000054F  B8D246            mov ax,0x46d2
00000552  50                push ax
00000553  E8EF00            call word 0x645
00000556  83C40A            add sp,byte +0xa
00000559  31C0              xor ax,ax
0000055B  BB0100            mov bx,0x1
0000055E  53                push bx
0000055F  31DB              xor bx,bx
00000561  53                push bx
00000562  50                push ax
00000563  50                push ax
00000564  B8DA46            mov ax,0x46da
00000567  50                push ax
00000568  E8DA00            call word 0x645
0000056B  83C40A            add sp,byte +0xa
0000056E  BE5248            mov si,0x4852
00000571  C746FA0F00        mov word [bp-0x6],0xf
00000576  81FEEE60          cmp si,0x60ee
0000057A  7347              jnc 0x5c3
0000057C  8D5C22            lea bx,[si+0x22]
0000057F  31D2              xor dx,dx
00000581  031E8446          add bx,[0x4684]
00000585  13168646          adc dx,[0x4686]
00000589  31C0              xor ax,ax
0000058B  50                push ax
0000058C  B82000            mov ax,0x20
0000058F  50                push ax
00000590  52                push dx
00000591  53                push bx
00000592  8B5EFA            mov bx,[bp-0x6]
00000595  B90300            mov cx,0x3
00000598  D3E3              shl bx,cl
0000059A  81C38A46          add bx,0x468a
0000059E  53                push bx
0000059F  E8A300            call word 0x645
000005A2  83C40A            add sp,byte +0xa
000005A5  8B5EFA            mov bx,[bp-0x6]
000005A8  B90300            mov cx,0x3
000005AB  D3E3              shl bx,cl
000005AD  C6878F4682        mov byte [bx+0x468f],0x82
000005B2  8B56FA            mov dx,[bp-0x6]
000005B5  D3E2              shl dx,cl
000005B7  895420            mov [si+0x20],dx
000005BA  81C69600          add si,0x96
000005BE  FF46FA            inc word [bp-0x6]
000005C1  EBB3              jmp short 0x576
000005C3  C70648461800      mov word [0x4648],0x18
000005C9  BA4446            mov dx,0x4644
000005CC  31C9              xor cx,cx
000005CE  03168446          add dx,[0x4684]
000005D2  130E8646          adc cx,[0x4686]
000005D6  31C0              xor ax,ax
000005D8  50                push ax
000005D9  B82C00            mov ax,0x2c
000005DC  50                push ax
000005DD  51                push cx
000005DE  52                push dx
000005DF  B8CA46            mov ax,0x46ca
000005E2  50                push ax
000005E3  E85F00            call word 0x645
000005E6  83C40A            add sp,byte +0xa
000005E9  C606CF4681        mov byte [0x46cf],0x81
000005EE  BF2600            mov di,0x26
000005F1  81FFA600          cmp di,0xa6
000005F5  7322              jnc 0x619
000005F7  B90500            mov cx,0x5
000005FA  8A5503            mov dl,[di+0x3]
000005FD  30F6              xor dh,dh
000005FF  D3E2              shl dx,cl
00000601  81CA8600          or dx,0x86
00000605  52                push dx
00000606  FF35              push word [di]
00000608  31C0              xor ax,ax
0000060A  8A4502            mov al,[di+0x2]
0000060D  50                push ax
0000060E  E87E01            call word 0x78f
00000611  83C406            add sp,byte +0x6
00000614  83C704            add di,byte +0x4
00000617  EBD8              jmp short 0x5f1
00000619  E991A8            jmp word 0xaead
0000061C  55                push bp
0000061D  89E5              mov bp,sp
0000061F  56                push si
00000620  8B7604            mov si,[bp+0x4]
00000623  FF760A            push word [bp+0xa]
00000626  FF7608            push word [bp+0x8]
00000629  FF7606            push word [bp+0x6]
0000062C  56                push si
0000062D  E83E00            call word 0x66e
00000630  83C408            add sp,byte +0x8
00000633  B90500            mov cx,0x5
00000636  8B560C            mov dx,[bp+0xc]
00000639  D3E2              shl dx,cl
0000063B  81CA9A00          or dx,0x9a
0000063F  885405            mov [si+0x5],dl
00000642  E969A8            jmp word 0xaeae
00000645  55                push bp
00000646  89E5              mov bp,sp
00000648  56                push si
00000649  8B7604            mov si,[bp+0x4]
0000064C  FF760A            push word [bp+0xa]
0000064F  FF7608            push word [bp+0x8]
00000652  FF7606            push word [bp+0x6]
00000655  56                push si
00000656  E81500            call word 0x66e
00000659  83C408            add sp,byte +0x8
0000065C  B90500            mov cx,0x5
0000065F  8B560C            mov dx,[bp+0xc]
00000662  D3E2              shl dx,cl
00000664  81CA9200          or dx,0x92
00000668  885405            mov [si+0x5],dl
0000066B  E940A8            jmp word 0xaeae
0000066E  55                push bp
0000066F  89E5              mov bp,sp
00000671  56                push si
00000672  8B7604            mov si,[bp+0x4]
00000675  8B5606            mov dx,[bp+0x6]
00000678  895402            mov [si+0x2],dx
0000067B  8B5608            mov dx,[bp+0x8]
0000067E  885404            mov [si+0x4],dl
00000681  B91800            mov cx,0x18
00000684  8B5606            mov dx,[bp+0x6]
00000687  8B5E08            mov bx,[bp+0x8]
0000068A  E306              jcxz 0x692
0000068C  D1EB              shr bx,1
0000068E  D1DA              rcr dx,1
00000690  E2FA              loop 0x68c
00000692  885407            mov [si+0x7],dl
00000695  8B560A            mov dx,[bp+0xa]
00000698  4A                dec dx
00000699  8914              mov [si],dx
0000069B  E910A8            jmp word 0xaeae
0000069E  55                push bp
0000069F  89E5              mov bp,sp
000006A1  50                push ax
000006A2  50                push ax
000006A3  56                push si
000006A4  833E424600        cmp word [0x4642],byte +0x0
000006A9  7518              jnz 0x6c3
000006AB  B90400            mov cx,0x4
000006AE  8B5604            mov dx,[bp+0x4]
000006B1  31DB              xor bx,bx
000006B3  E306              jcxz 0x6bb
000006B5  D1E2              shl dx,1
000006B7  D1D3              rcl bx,1
000006B9  E2FA              loop 0x6b5
000006BB  8956FC            mov [bp-0x4],dx
000006BE  895EFE            mov [bp-0x2],bx
000006C1  EB40              jmp short 0x703
000006C3  B90300            mov cx,0x3
000006C6  8B5604            mov dx,[bp+0x4]
000006C9  D3EA              shr dx,cl
000006CB  89D3              mov bx,dx
000006CD  D3E3              shl bx,cl
000006CF  8DB78A46          lea si,[bx+0x468a]
000006D3  8A5404            mov dl,[si+0x4]
000006D6  30F6              xor dh,dh
000006D8  8B4C02            mov cx,[si+0x2]
000006DB  31DB              xor bx,bx
000006DD  81C90000          or cx,0x0
000006E1  09D3              or bx,dx
000006E3  53                push bx
000006E4  51                push cx
000006E5  B91800            mov cx,0x18
000006E8  8A5407            mov dl,[si+0x7]
000006EB  30F6              xor dh,dh
000006ED  31DB              xor bx,bx
000006EF  E306              jcxz 0x6f7
000006F1  D1E2              shl dx,1
000006F3  D1D3              rcl bx,1
000006F5  E2FA              loop 0x6f1
000006F7  59                pop cx
000006F8  58                pop ax
000006F9  09D1              or cx,dx
000006FB  09D8              or ax,bx
000006FD  894EFC            mov [bp-0x4],cx
00000700  8946FE            mov [bp-0x2],ax
00000703  8B46FC            mov ax,[bp-0x4]
00000706  8B56FE            mov dx,[bp-0x2]
00000709  E9A2A7            jmp word 0xaeae
0000070C  55                push bp
0000070D  89E5              mov bp,sp
0000070F  56                push si
00000710  57                push di
00000711  833E424600        cmp word [0x4642],byte +0x0
00000716  752D              jnz 0x745
00000718  B90400            mov cx,0x4
0000071B  8B5608            mov dx,[bp+0x8]
0000071E  8B5E0A            mov bx,[bp+0xa]
00000721  E306              jcxz 0x729
00000723  D1EB              shr bx,1
00000725  D1DA              rcr dx,1
00000727  E2FA              loop 0x723
00000729  8B5E04            mov bx,[bp+0x4]
0000072C  8917              mov [bx],dx
0000072E  FF760A            push word [bp+0xa]
00000731  FF7608            push word [bp+0x8]
00000734  31C0              xor ax,ax
00000736  50                push ax
00000737  B81000            mov ax,0x10
0000073A  50                push ax
0000073B  E879A7            call word 0xaeb7
0000073E  8B5E06            mov bx,[bp+0x6]
00000741  8907              mov [bx],ax
00000743  EB47              jmp short 0x78c
00000745  8B7E0A            mov di,[bp+0xa]
00000748  89FA              mov dx,di
0000074A  83EA0A            sub dx,byte +0xa
0000074D  83C20B            add dx,byte +0xb
00000750  89D6              mov si,dx
00000752  89F3              mov bx,si
00000754  B90300            mov cx,0x3
00000757  D3E3              shl bx,cl
00000759  B80100            mov ax,0x1
0000075C  50                push ax
0000075D  31C0              xor ax,ax
0000075F  50                push ax
00000760  57                push di
00000761  50                push ax
00000762  81C38A46          add bx,0x468a
00000766  53                push bx
00000767  E8DBFE            call word 0x645
0000076A  83C40A            add sp,byte +0xa
0000076D  B90300            mov cx,0x3
00000770  89F2              mov dx,si
00000772  D3E2              shl dx,cl
00000774  81CA0100          or dx,0x1
00000778  8B5E04            mov bx,[bp+0x4]
0000077B  8917              mov [bx],dx
0000077D  8B560A            mov dx,[bp+0xa]
00000780  81E20000          and dx,0x0
00000784  8B5608            mov dx,[bp+0x8]
00000787  8B5E06            mov bx,[bp+0x6]
0000078A  8917              mov [bx],dx
0000078C  E91EA7            jmp word 0xaead
0000078F  55                push bp
00000790  89E5              mov bp,sp
00000792  56                push si
00000793  8B5E04            mov bx,[bp+0x4]
00000796  B90300            mov cx,0x3
00000799  D3E3              shl bx,cl
0000079B  8DB7741D          lea si,[bx+0x1d74]
0000079F  8B5606            mov dx,[bp+0x6]
000007A2  8914              mov [si],dx
000007A4  C744023000        mov word [si+0x2],0x30
000007A9  8B5608            mov dx,[bp+0x8]
000007AC  885405            mov [si+0x5],dl
000007AF  E9FCA6            jmp word 0xaeae
000007B2  55                push bp
000007B3  89E5              mov bp,sp
000007B5  8B5E04            mov bx,[bp+0x4]
000007B8  814F1A0030        or word [bx+0x1a],0x3000
000007BD  E9EFA6            jmp word 0xaeaf
000007C0  E8FE00            call word 0x8c1
000007C3  8B263C46          mov sp,[0x463c]
000007C7  8B1E3E46          mov bx,[0x463e]
000007CB  8EDB              mov ds,bx
000007CD  8EC3              mov es,bx
000007CF  8ED3              mov ss,bx
000007D1  5F                pop di
000007D2  5E                pop si
000007D3  5D                pop bp
000007D4  CB                retf
000007D5  55                push bp
000007D6  56                push si
000007D7  57                push di
000007D8  9C                pushfw
000007D9  E84C00            call word 0x828
000007DC  9D                popfw
000007DD  5F                pop di
000007DE  5E                pop si
000007DF  5D                pop bp
000007E0  C3                ret
000007E1  55                push bp
000007E2  56                push si
000007E3  57                push di
000007E4  9C                pushfw
000007E5  FA                cli
000007E6  E4A1              in al,0xa1
000007E8  88C4              mov ah,al
000007EA  E421              in al,0x21
000007EC  50                push ax
000007ED  A12061            mov ax,[0x6120]
000007F0  25FEFF            and ax,0xfffe
000007F3  E621              out 0x21,al
000007F5  88E0              mov al,ah
000007F7  E6A1              out 0xa1,al
000007F9  E8C500            call word 0x8c1
000007FC  31C0              xor ax,ax
000007FE  8EC0              mov es,ax
00000800  26A36C04          mov [es:0x46c],ax
00000804  26A36E04          mov [es:0x46e],ax
00000808  FB                sti
00000809  E81C00            call word 0x828
0000080C  FA                cli
0000080D  31C0              xor ax,ax
0000080F  8EC0              mov es,ax
00000811  26A16C04          mov ax,[es:0x46c]
00000815  01061661          add [0x6116],ax
00000819  E87200            call word 0x88e
0000081C  58                pop ax
0000081D  E621              out 0x21,al
0000081F  88E0              mov al,ah
00000821  E6A1              out 0xa1,al
00000823  9D                popfw
00000824  5F                pop di
00000825  5E                pop si
00000826  5D                pop bp
00000827  C3                ret
00000828  BDEE60            mov bp,0x60ee
0000082B  B0CD              mov al,0xcd
0000082D  8A6600            mov ah,[bp+0x0]
00000830  84E4              test ah,ah
00000832  750D              jnz 0x841
00000834  0E                push cs
00000835  686408            push word 0x864
00000838  FF7606            push word [bp+0x6]
0000083B  FF7604            push word [bp+0x4]
0000083E  B8CB90            mov ax,0x90cb
00000841  2EA36208          mov [cs:0x862],ax
00000845  EB00              jmp short 0x847
00000847  8E5E08            mov ds,[bp+0x8]
0000084A  8E460A            mov es,[bp+0xa]
0000084D  8B460C            mov ax,[bp+0xc]
00000850  8B5E10            mov bx,[bp+0x10]
00000853  8B4E14            mov cx,[bp+0x14]
00000856  8B5618            mov dx,[bp+0x18]
00000859  8B761C            mov si,[bp+0x1c]
0000085C  8B7E20            mov di,[bp+0x20]
0000085F  8B6E24            mov bp,[bp+0x24]
00000862  CDFF              int 0xff
00000864  55                push bp
00000865  9C                pushfw
00000866  BDEE60            mov bp,0x60ee
00000869  8F4600            pop word [bp+0x0]
0000086C  8C5E08            mov [bp+0x8],ds
0000086F  8C460A            mov [bp+0xa],es
00000872  89460C            mov [bp+0xc],ax
00000875  895E10            mov [bp+0x10],bx
00000878  894E14            mov [bp+0x14],cx
0000087B  895618            mov [bp+0x18],dx
0000087E  89761C            mov [bp+0x1c],si
00000881  897E20            mov [bp+0x20],di
00000884  8F4624            pop word [bp+0x24]
00000887  8CD0              mov ax,ss
00000889  8ED8              mov ds,ax
0000088B  8EC0              mov es,ax
0000088D  C3                ret
0000088E  0F01169246        lgdt [0x4692]
00000893  0F01E0            smsw ax
00000896  A33621            mov [0x2136],ax
00000899  0C01              or al,0x1
0000089B  0F01F0            lmsw ax
0000089E  EAA3083000        jmp word 0x30:0x8a3
000008A3  B81800            mov ax,0x18
000008A6  8ED8              mov ds,ax
000008A8  8EC0              mov es,ax
000008AA  8ED0              mov ss,ax
000008AC  0F011E9A46        lidt [0x469a]
000008B1  8026CF46FD        and byte [0x46cf],0xfd
000008B6  B84000            mov ax,0x40
000008B9  0F00D8            ltr ax
000008BC  B402              mov ah,0x2
000008BE  E98500            jmp word 0x946
000008C1  89263421          mov [0x2134],sp
000008C5  813E80468201      cmp word [0x4680],0x182
000008CB  732C              jnc 0x8f9
000008CD  31C0              xor ax,ax
000008CF  A3DC46            mov [0x46dc],ax
000008D2  A2DE46            mov [0x46de],al
000008D5  A2E146            mov [0x46e1],al
000008D8  B85100            mov ax,0x51
000008DB  8EC0              mov es,ax
000008DD  26C70667043609    mov word [es:0x467],0x936
000008E4  2EA13409          mov ax,[cs:0x934]
000008E8  26A36904          mov [es:0x469],ax
000008EC  B08F              mov al,0x8f
000008EE  E670              out 0x70,al
000008F0  EB00              jmp short 0x8f2
000008F2  B00A              mov al,0xa
000008F4  E671              out 0x71,al
000008F6  E9EE03            jmp word 0xce7
000008F9  0F011EC600        lidt [0xc6]
000008FE  FF36BA46          push word [0x46ba]
00000902  FF36A246          push word [0x46a2]
00000906  C706BA46FFFF      mov word [0x46ba],0xffff
0000090C  C706A246FFFF      mov word [0x46a2],0xffff
00000912  EA17093000        jmp word 0x30:0x917
00000917  B81800            mov ax,0x18
0000091A  8ED8              mov ds,ax
0000091C  8EC0              mov es,ax
0000091E  8ED0              mov ss,ax
00000920  8F06A246          pop word [0x46a2]
00000924  8F06BA46          pop word [0x46ba]
00000928  0F20C0            mov eax,cr0
0000092B  A13621            mov ax,[0x2136]
0000092E  0F22C0            mov cr0,eax
00000931  EA36090000        jmp word 0x0:0x936
00000936  2EA10400          mov ax,[cs:0x4]
0000093A  8ED8              mov ds,ax
0000093C  8EC0              mov es,ax
0000093E  8ED0              mov ss,ax
00000940  8B263421          mov sp,[0x2134]
00000944  30E4              xor ah,ah
00000946  833E724600        cmp word [0x4672],byte +0x0
0000094B  7522              jnz 0x96f
0000094D  E81800            call word 0x968
00000950  B0D1              mov al,0xd1
00000952  E664              out 0x64,al
00000954  E81100            call word 0x968
00000957  B0DD              mov al,0xdd
00000959  08E0              or al,ah
0000095B  E660              out 0x60,al
0000095D  E80800            call word 0x968
00000960  B0FF              mov al,0xff
00000962  E664              out 0x64,al
00000964  E80100            call word 0x968
00000967  C3                ret
00000968  E464              in al,0x64
0000096A  A802              test al,0x2
0000096C  75FA              jnz 0x968
0000096E  C3                ret
0000096F  E492              in al,0x92
00000971  24FD              and al,0xfd
00000973  08E0              or al,ah
00000975  E692              out 0x92,al
00000977  EB00              jmp short 0x979
00000979  E492              in al,0x92
0000097B  2402              and al,0x2
0000097D  38E0              cmp al,ah
0000097F  75F8              jnz 0x979
00000981  C3                ret
00000982  FC                cld
00000983  06                push es
00000984  1E                push ds
00000985  89E3              mov bx,sp
00000987  56                push si
00000988  57                push di
00000989  8B470C            mov ax,[bx+0xc]
0000098C  B106              mov cl,0x6
0000098E  D3E0              shl ax,cl
00000990  8EC0              mov es,ax
00000992  8B7F0E            mov di,[bx+0xe]
00000995  8B4706            mov ax,[bx+0x6]
00000998  8B770A            mov si,[bx+0xa]
0000099B  8B5F08            mov bx,[bx+0x8]
0000099E  D3E3              shl bx,cl
000009A0  8EDB              mov ds,bx
000009A2  AB                stosw
000009A3  83C602            add si,byte +0x2
000009A6  B90B00            mov cx,0xb
000009A9  F2A5              repne movsw
000009AB  5F                pop di
000009AC  5E                pop si
000009AD  1F                pop ds
000009AE  07                pop es
000009AF  C3                ret
000009B0  FB                sti
000009B1  EBFD              jmp short 0x9b0
000009B3  E80A00            call word 0x9c0
000009B6  8EC3              mov es,bx
000009B8  89C7              mov di,ax
000009BA  D1E9              shr cx,1
000009BC  F26D              repne insw
000009BE  EB26              jmp short 0x9e6
000009C0  58                pop ax
000009C1  55                push bp
000009C2  89E5              mov bp,sp
000009C4  56                push si
000009C5  57                push di
000009C6  50                push ax
000009C7  8B5604            mov dx,[bp+0x4]
000009CA  8B4606            mov ax,[bp+0x6]
000009CD  8B5E08            mov bx,[bp+0x8]
000009D0  8B4E0A            mov cx,[bp+0xa]
000009D3  FC                cld
000009D4  51                push cx
000009D5  88DD              mov ch,bl
000009D7  89C3              mov bx,ax
000009D9  250F00            and ax,0xf
000009DC  B104              mov cl,0x4
000009DE  D3EB              shr bx,cl
000009E0  D2E5              shl ch,cl
000009E2  08EF              or bh,ch
000009E4  59                pop cx
000009E5  C3                ret
000009E6  8CD0              mov ax,ss
000009E8  8ED8              mov ds,ax
000009EA  8EC0              mov es,ax
000009EC  5F                pop di
000009ED  5E                pop si
000009EE  5D                pop bp
000009EF  C3                ret
000009F0  E8CDFF            call word 0x9c0
000009F3  8EC3              mov es,bx
000009F5  89C7              mov di,ax
000009F7  E304              jcxz 0x9fd
000009F9  EC                in al,dx
000009FA  AA                stosb
000009FB  E2FC              loop 0x9f9
000009FD  EBE7              jmp short 0x9e6
000009FF  E8BEFF            call word 0x9c0
00000A02  8EDB              mov ds,bx
00000A04  89C6              mov si,ax
00000A06  D1E9              shr cx,1
00000A08  F26F              repne outsw
00000A0A  EBDA              jmp short 0x9e6
00000A0C  E8B1FF            call word 0x9c0
00000A0F  8EDB              mov ds,bx
00000A11  89C6              mov si,ax
00000A13  E304              jcxz 0xa19
00000A15  AC                lodsb
00000A16  EE                out dx,al
00000A17  E2FC              loop 0xa15
00000A19  EBCB              jmp short 0x9e6
00000A1B  55                push bp
00000A1C  89E5              mov bp,sp
00000A1E  9C                pushfw
00000A1F  FA                cli
00000A20  8B5E04            mov bx,[bp+0x4]
00000A23  8B4F04            mov cx,[bx+0x4]
00000A26  8B4706            mov ax,[bx+0x6]
00000A29  F7D0              not ax
00000A2B  89CB              mov bx,cx
00000A2D  01DB              add bx,bx
00000A2F  21871C46          and [bx+0x461c],ax
00000A33  7513              jnz 0xa48
00000A35  B4FE              mov ah,0xfe
00000A37  D2C4              rol ah,cl
00000A39  BA2100            mov dx,0x21
00000A3C  80F908            cmp cl,0x8
00000A3F  7203              jc 0xa44
00000A41  BAA100            mov dx,0xa1
00000A44  EC                in al,dx
00000A45  20E0              and al,ah
00000A47  EE                out dx,al
00000A48  9D                popfw
00000A49  C9                leave
00000A4A  C3                ret
00000A4B  55                push bp
00000A4C  89E5              mov bp,sp
00000A4E  9C                pushfw
00000A4F  FA                cli
00000A50  8B5E04            mov bx,[bp+0x4]
00000A53  8B4F04            mov cx,[bx+0x4]
00000A56  8B4706            mov ax,[bx+0x6]
00000A59  9C                pushfw
00000A5A  FA                cli
00000A5B  89CB              mov bx,cx
00000A5D  01DB              add bx,bx
00000A5F  09871C46          or [bx+0x461c],ax
00000A63  B401              mov ah,0x1
00000A65  D2C4              rol ah,cl
00000A67  BA2100            mov dx,0x21
00000A6A  80F908            cmp cl,0x8
00000A6D  7203              jc 0xa72
00000A6F  BAA100            mov dx,0xa1
00000A72  EC                in al,dx
00000A73  84E0              test al,ah
00000A75  7509              jnz 0xa80
00000A77  08E0              or al,ah
00000A79  EE                out dx,al
00000A7A  B80100            mov ax,0x1
00000A7D  9D                popfw
00000A7E  C9                leave
00000A7F  C3                ret
00000A80  31C0              xor ax,ax
00000A82  9D                popfw
00000A83  C9                leave
00000A84  C3                ret
00000A85  55                push bp
00000A86  89E5              mov bp,sp
00000A88  56                push si
00000A89  57                push di
00000A8A  1E                push ds
00000A8B  06                push es
00000A8C  8B4604            mov ax,[bp+0x4]
00000A8F  8B5606            mov dx,[bp+0x6]
00000A92  89C6              mov si,ax
00000A94  81E60F00          and si,0xf
00000A98  80E20F            and dl,0xf
00000A9B  24F0              and al,0xf0
00000A9D  08D0              or al,dl
00000A9F  B104              mov cl,0x4
00000AA1  D3C8              ror ax,cl
00000AA3  8ED8              mov ds,ax
00000AA5  8B4608            mov ax,[bp+0x8]
00000AA8  8B560A            mov dx,[bp+0xa]
00000AAB  89C7              mov di,ax
00000AAD  81E70F00          and di,0xf
00000AB1  80E20F            and dl,0xf
00000AB4  24F0              and al,0xf0
00000AB6  08D0              or al,dl
00000AB8  D3C8              ror ax,cl
00000ABA  8EC0              mov es,ax
00000ABC  8B460C            mov ax,[bp+0xc]
00000ABF  8B560E            mov dx,[bp+0xe]
00000AC2  89C1              mov cx,ax
00000AC4  85C0              test ax,ax
00000AC6  7804              js 0xacc
00000AC8  85D2              test dx,dx
00000ACA  7403              jz 0xacf
00000ACC  B90080            mov cx,0x8000
00000ACF  29C8              sub ax,cx
00000AD1  83DA00            sbb dx,byte +0x0
00000AD4  D1D9              rcr cx,1
00000AD6  7301              jnc 0xad9
00000AD8  A4                movsb
00000AD9  F2A5              repne movsw
00000ADB  89C1              mov cx,ax
00000ADD  09D1              or cx,dx
00000ADF  7506              jnz 0xae7
00000AE1  07                pop es
00000AE2  1F                pop ds
00000AE3  5F                pop di
00000AE4  5E                pop si
00000AE5  5D                pop bp
00000AE6  C3                ret
00000AE7  81EE0080          sub si,0x8000
00000AEB  8CD9              mov cx,ds
00000AED  81C10008          add cx,0x800
00000AF1  8ED9              mov ds,cx
00000AF3  81EF0080          sub di,0x8000
00000AF7  8CC1              mov cx,es
00000AF9  81C10008          add cx,0x800
00000AFD  8EC1              mov es,cx
00000AFF  EBC1              jmp short 0xac2
00000B01  8CD9              mov cx,ds
00000B03  5A                pop dx
00000B04  1F                pop ds
00000B05  5B                pop bx
00000B06  83EC04            sub sp,byte +0x4
00000B09  8B07              mov ax,[bx]
00000B0B  8ED9              mov ds,cx
00000B0D  FFE2              jmp dx
00000B0F  EAF0FF00F0        jmp word 0xf000:0xfff0
00000B14  55                push bp
00000B15  89E5              mov bp,sp
00000B17  56                push si
00000B18  57                push di
00000B19  06                push es
00000B1A  8B7604            mov si,[bp+0x4]
00000B1D  8B7E06            mov di,[bp+0x6]
00000B20  8B5608            mov dx,[bp+0x8]
00000B23  8E061E61          mov es,[0x611e]
00000B27  FC                cld
00000B28  233E1C61          and di,[0x611c]
00000B2C  89D1              mov cx,dx
00000B2E  A11861            mov ax,[0x6118]
00000B31  29F8              sub ax,di
00000B33  39C1              cmp cx,ax
00000B35  7602              jna 0xb39
00000B37  89C1              mov cx,ax
00000B39  29CA              sub dx,cx
00000B3B  D1E7              shl di,1
00000B3D  033E1A61          add di,[0x611a]
00000B41  85F6              test si,si
00000B43  7404              jz 0xb49
00000B45  F2A5              repne movsw
00000B47  EB05              jmp short 0xb4e
00000B49  A1D20C            mov ax,[0xcd2]
00000B4C  F2AB              repne stosw
00000B4E  2B3E1A61          sub di,[0x611a]
00000B52  D1EF              shr di,1
00000B54  85D2              test dx,dx
00000B56  75D0              jnz 0xb28
00000B58  07                pop es
00000B59  5F                pop di
00000B5A  5E                pop si
00000B5B  5D                pop bp
00000B5C  C3                ret
00000B5D  55                push bp
00000B5E  89E5              mov bp,sp
00000B60  56                push si
00000B61  57                push di
00000B62  06                push es
00000B63  8B7604            mov si,[bp+0x4]
00000B66  8B7E06            mov di,[bp+0x6]
00000B69  8B5608            mov dx,[bp+0x8]
00000B6C  8E061E61          mov es,[0x611e]
00000B70  39FE              cmp si,di
00000B72  722C              jc 0xba0
00000B74  FC                cld
00000B75  23361C61          and si,[0x611c]
00000B79  233E1C61          and di,[0x611c]
00000B7D  89D1              mov cx,dx
00000B7F  A11861            mov ax,[0x6118]
00000B82  29F0              sub ax,si
00000B84  39C1              cmp cx,ax
00000B86  7602              jna 0xb8a
00000B88  89C1              mov cx,ax
00000B8A  A11861            mov ax,[0x6118]
00000B8D  29F8              sub ax,di
00000B8F  39C1              cmp cx,ax
00000B91  7602              jna 0xb95
00000B93  89C1              mov cx,ax
00000B95  29CA              sub dx,cx
00000B97  E83800            call word 0xbd2
00000B9A  85D2              test dx,dx
00000B9C  75D7              jnz 0xb75
00000B9E  EB2D              jmp short 0xbcd
00000BA0  FD                std
00000BA1  01D6              add si,dx
00000BA3  4E                dec si
00000BA4  01D7              add di,dx
00000BA6  4F                dec di
00000BA7  23361C61          and si,[0x611c]
00000BAB  233E1C61          and di,[0x611c]
00000BAF  89D1              mov cx,dx
00000BB1  8D4401            lea ax,[si+0x1]
00000BB4  39C1              cmp cx,ax
00000BB6  7602              jna 0xbba
00000BB8  89C1              mov cx,ax
00000BBA  8D4501            lea ax,[di+0x1]
00000BBD  39C1              cmp cx,ax
00000BBF  7602              jna 0xbc3
00000BC1  89C1              mov cx,ax
00000BC3  29CA              sub dx,cx
00000BC5  E80A00            call word 0xbd2
00000BC8  85D2              test dx,dx
00000BCA  75DB              jnz 0xba7
00000BCC  FC                cld
00000BCD  07                pop es
00000BCE  5F                pop di
00000BCF  5E                pop si
00000BD0  5D                pop bp
00000BD1  C3                ret
00000BD2  D1E6              shl si,1
00000BD4  D1E7              shl di,1
00000BD6  03361A61          add si,[0x611a]
00000BDA  033E1A61          add di,[0x611a]
00000BDE  1E                push ds
00000BDF  8E1E1E61          mov ds,[0x611e]
00000BE3  F2A5              repne movsw
00000BE5  1F                pop ds
00000BE6  2B361A61          sub si,[0x611a]
00000BEA  2B3E1A61          sub di,[0x611a]
00000BEE  D1EE              shr si,1
00000BF0  D1EF              shr di,1
00000BF2  C3                ret
00000BF3  89E3              mov bx,sp
00000BF5  FF6702            jmp word [bx+0x2]
00000BF8  BEA600            mov si,0xa6
00000BFB  AD                lodsw
00000BFC  89C3              mov bx,ax
00000BFE  2EC607E9          mov byte [cs:bx],0xe9
00000C02  AD                lodsw
00000C03  29D8              sub ax,bx
00000C05  2D0300            sub ax,0x3
00000C08  2E894701          mov [cs:bx+0x1],ax
00000C0C  81FEC600          cmp si,0xc6
00000C10  72E9              jc 0xbfb
00000C12  C3                ret
00000C13  89E3              mov bx,sp
00000C15  56                push si
00000C16  57                push di
00000C17  1E                push ds
00000C18  06                push es
00000C19  8B4704            mov ax,[bx+0x4]
00000C1C  89C2              mov dx,ax
00000C1E  C1E00A            shl ax,byte 0xa
00000C21  C1EA06            shr dx,byte 0x6
00000C24  034706            add ax,[bx+0x6]
00000C27  83D200            adc dx,byte +0x0
00000C2A  A3D446            mov [0x46d4],ax
00000C2D  8816D646          mov [0x46d6],dl
00000C31  8836D946          mov [0x46d9],dh
00000C35  8B4708            mov ax,[bx+0x8]
00000C38  89C2              mov dx,ax
00000C3A  C1E00A            shl ax,byte 0xa
00000C3D  C1EA06            shr dx,byte 0x6
00000C40  03470A            add ax,[bx+0xa]
00000C43  83D200            adc dx,byte +0x0
00000C46  A3DC46            mov [0x46dc],ax
00000C49  8816DE46          mov [0x46de],dl
00000C4D  8836E146          mov [0x46e1],dh
00000C51  8B5F02            mov bx,[bx+0x2]
00000C54  B84900            mov ax,0x49
00000C57  8ED8              mov ds,ax
00000C59  B85100            mov ax,0x51
00000C5C  8EC0              mov es,ax
00000C5E  26891E0000        mov [es:0x0],bx
00000C63  BE0200            mov si,0x2
00000C66  89F7              mov di,si
00000C68  B90B00            mov cx,0xb
00000C6B  FC                cld
00000C6C  F2A5              repne movsw
00000C6E  07                pop es
00000C6F  1F                pop ds
00000C70  5F                pop di
00000C71  5E                pop si
00000C72  C3                ret
00000C73  A3D446            mov [0x46d4],ax
00000C76  881ED646          mov [0x46d6],bl
00000C7A  883ED946          mov [0x46d9],bh
00000C7E  31C0              xor ax,ax
00000C80  BB4900            mov bx,0x49
00000C83  C3                ret
00000C84  FC                cld
00000C85  5A                pop dx
00000C86  8F06D446          pop word [0x46d4]
00000C8A  58                pop ax
00000C8B  A2D646            mov [0x46d6],al
00000C8E  8826D946          mov [0x46d9],ah
00000C92  8F06DC46          pop word [0x46dc]
00000C96  58                pop ax
00000C97  A2DE46            mov [0x46de],al
00000C9A  8826E146          mov [0x46e1],ah
00000C9E  59                pop cx
00000C9F  5B                pop bx
00000CA0  83EC0C            sub sp,byte +0xc
00000CA3  57                push di
00000CA4  56                push si
00000CA5  06                push es
00000CA6  1E                push ds
00000CA7  29F6              sub si,si
00000CA9  89F7              mov di,si
00000CAB  EB1E              jmp short 0xccb
00000CAD  51                push cx
00000CAE  B90080            mov cx,0x8000
00000CB1  F2A5              repne movsw
00000CB3  59                pop cx
00000CB4  4B                dec bx
00000CB5  1F                pop ds
00000CB6  8006D64601        add byte [0x46d6],0x1
00000CBB  8016D94600        adc byte [0x46d9],0x0
00000CC0  8006DE4601        add byte [0x46de],0x1
00000CC5  8016E14600        adc byte [0x46e1],0x0
00000CCA  1E                push ds
00000CCB  B84900            mov ax,0x49
00000CCE  8ED8              mov ds,ax
00000CD0  B85100            mov ax,0x51
00000CD3  8EC0              mov es,ax
00000CD5  85DB              test bx,bx
00000CD7  75D4              jnz 0xcad
00000CD9  D1E9              shr cx,1
00000CDB  F2A5              repne movsw
00000CDD  D1D1              rcl cx,1
00000CDF  F2A4              repne movsb
00000CE1  1F                pop ds
00000CE2  07                pop es
00000CE3  5E                pop si
00000CE4  5F                pop di
00000CE5  FFE2              jmp dx
00000CE7  0F011EC800        lidt [0xc8]
00000CEC  CC                int3
00000CED  89E3              mov bx,sp
00000CEF  8B4702            mov ax,[bx+0x2]
00000CF2  A37046            mov [0x4670],ax
00000CF5  CD22              int 0x22
00000CF7  C3                ret
00000CF8  55                push bp
00000CF9  89E5              mov bp,sp
00000CFB  83EC08            sub sp,byte +0x8
00000CFE  56                push si
00000CFF  57                push di
00000D00  31FF              xor di,di
00000D02  83FF02            cmp di,byte +0x2
00000D05  7D5E              jnl 0xd65
00000D07  8D5D30            lea bx,[di+0x30]
00000D0A  881E9301          mov [0x193],bl
00000D0E  B89201            mov ax,0x192
00000D11  50                push ax
00000D12  E85AF7            call word 0x46f
00000D15  5B                pop bx
00000D16  8946FA            mov [bp-0x6],ax
00000D19  09C0              or ax,ax
00000D1B  7445              jz 0xd62
00000D1D  BE6A01            mov si,0x16a
00000D20  81FE9201          cmp si,0x192
00000D24  733C              jnc 0xd62
00000D26  56                push si
00000D27  FF76FA            push word [bp-0x6]
00000D2A  E86E9E            call word 0xab9b
00000D2D  5B                pop bx
00000D2E  5B                pop bx
00000D2F  09C0              or ax,ax
00000D31  752A              jnz 0xd5d
00000D33  BAF8FF            mov dx,0xfff8
00000D36  29FA              sub dx,di
00000D38  83C20A            add dx,byte +0xa
00000D3B  B80C00            mov ax,0xc
00000D3E  F7E2              mul dx
00000D40  05CE00            add ax,0xce
00000D43  8946F8            mov [bp-0x8],ax
00000D46  8B5408            mov dx,[si+0x8]
00000D49  8B5EF8            mov bx,[bp-0x8]
00000D4C  8917              mov [bx],dx
00000D4E  8B5EF8            mov bx,[bp-0x8]
00000D51  FF76FA            push word [bp-0x6]
00000D54  83C304            add bx,byte +0x4
00000D57  53                push bx
00000D58  E8469E            call word 0xaba1
00000D5B  5B                pop bx
00000D5C  5B                pop bx
00000D5D  83C60A            add si,byte +0xa
00000D60  EBBE              jmp short 0xd20
00000D62  47                inc di
00000D63  EB9D              jmp short 0xd02
00000D65  E945A1            jmp word 0xaead
00000D68  55                push bp
00000D69  89E5              mov bp,sp
00000D6B  83EC42            sub sp,byte +0x42
00000D6E  56                push si
00000D6F  57                push di
00000D70  B80100            mov ax,0x1
00000D73  50                push ax
00000D74  E8F948            call word 0x5670
00000D77  5B                pop bx
00000D78  E82E4D            call word 0x5aa9
00000D7B  BE5248            mov si,0x4852
00000D7E  BFF6FF            mov di,0xfff6
00000D81  81FEEE60          cmp si,0x60ee
00000D85  7312              jnc 0xd99
00000D87  897C44            mov [si+0x44],di
00000D8A  89FB              mov bx,di
00000D8C  D1E3              shl bx,1
00000D8E  89B7766F          mov [bx+0x6f76],si
00000D92  81C69600          add si,0x96
00000D96  47                inc di
00000D97  EBE8              jmp short 0xd81
00000D99  E85CFF            call word 0xcf8
00000D9C  C746F24861        mov word [bp-0xe],0x6148
00000DA1  BFF6FF            mov di,0xfff6
00000DA4  83FF02            cmp di,byte +0x2
00000DA7  7E03              jng 0xdac
00000DA9  E9C001            jmp word 0xf6c
00000DAC  89FB              mov bx,di
00000DAE  D1E3              shl bx,1
00000DB0  8BB7766F          mov si,[bx+0x6f76]
00000DB4  B80C00            mov ax,0xc
00000DB7  8D5D0A            lea bx,[di+0xa]
00000DBA  F7E3              mul bx
00000DBC  05CE00            add ax,0xce
00000DBF  8946EE            mov [bp-0x12],ax
00000DC2  050400            add ax,0x4
00000DC5  50                push ax
00000DC6  8D848600          lea ax,[si+0x86]
00000DCA  50                push ax
00000DCB  E8D39D            call word 0xaba1
00000DCE  5B                pop bx
00000DCF  5B                pop bx
00000DD0  09FF              or di,di
00000DD2  7D47              jnl 0xe1b
00000DD4  8B5EEE            mov bx,[bp-0x12]
00000DD7  837F0200          cmp word [bx+0x2],byte +0x0
00000DDB  7E0D              jng 0xdea
00000DDD  8B56F2            mov dx,[bp-0xe]
00000DE0  895442            mov [si+0x42],dx
00000DE3  8B5C42            mov bx,[si+0x42]
00000DE6  C707EFBE          mov word [bx],0xbeef
00000DEA  8B5EEE            mov bx,[bp-0x12]
00000DED  8B5702            mov dx,[bx+0x2]
00000DF0  0156F2            add [bp-0xe],dx
00000DF3  8B56F2            mov dx,[bp-0xe]
00000DF6  89541C            mov [si+0x1c],dx
00000DF9  B90A00            mov cx,0xa
00000DFC  8B167446          mov dx,[0x4674]
00000E00  8B1E7646          mov bx,[0x4676]
00000E04  E306              jcxz 0xe0c
00000E06  D1EB              shr bx,1
00000E08  D1DA              rcr dx,1
00000E0A  E2FA              loop 0xe06
00000E0C  8956F8            mov [bp-0x8],dx
00000E0F  C746FA0000        mov word [bp-0x6],0x0
00000E14  C744600100        mov word [si+0x60],0x1
00000E19  EB16              jmp short 0xe31
00000E1B  89FA              mov dx,di
00000E1D  42                inc dx
00000E1E  8956FA            mov [bp-0x6],dx
00000E21  83FF02            cmp di,byte +0x2
00000E24  7D05              jnl 0xe2b
00000E26  B80200            mov ax,0x2
00000E29  EB03              jmp short 0xe2e
00000E2B  B80300            mov ax,0x3
00000E2E  894460            mov [si+0x60],ax
00000E31  8D5EBE            lea bx,[bp-0x42]
00000E34  31D2              xor dx,dx
00000E36  031E8446          add bx,[0x4684]
00000E3A  13168646          adc dx,[0x4686]
00000E3E  B90500            mov cx,0x5
00000E41  8B46FA            mov ax,[bp-0x6]
00000E44  D3E0              shl ax,cl
00000E46  31C9              xor cx,cx
00000E48  51                push cx
00000E49  B92000            mov cx,0x20
00000E4C  51                push cx
00000E4D  52                push dx
00000E4E  99                cwd
00000E4F  0306F645          add ax,[0x45f6]
00000E53  1316F845          adc dx,[0x45f8]
00000E57  53                push bx
00000E58  52                push dx
00000E59  50                push ax
00000E5A  E828FC            call word 0xa85
00000E5D  83C40C            add sp,byte +0xc
00000E60  B90A00            mov cx,0xa
00000E63  8B56DA            mov dx,[bp-0x26]
00000E66  8B5EDC            mov bx,[bp-0x24]
00000E69  E306              jcxz 0xe71
00000E6B  D1FB              sar bx,1
00000E6D  D1DA              rcr dx,1
00000E6F  E2FA              loop 0xe6b
00000E71  8956F8            mov [bp-0x8],dx
00000E74  8B56C6            mov dx,[bp-0x3a]
00000E77  8B4EC8            mov cx,[bp-0x38]
00000E7A  81C2FF03          add dx,0x3ff
00000E7E  83D100            adc cx,byte +0x0
00000E81  51                push cx
00000E82  B90A00            mov cx,0xa
00000E85  5B                pop bx
00000E86  E306              jcxz 0xe8e
00000E88  D1FB              sar bx,1
00000E8A  D1DA              rcr dx,1
00000E8C  E2FA              loop 0xe88
00000E8E  8956F6            mov [bp-0xa],dx
00000E91  F646C020          test byte [bp-0x40],0x20
00000E95  7505              jnz 0xe9c
00000E97  C746F60000        mov word [bp-0xa],0x0
00000E9C  8B56D6            mov dx,[bp-0x2a]
00000E9F  8B4ED8            mov cx,[bp-0x28]
00000EA2  81C2FF03          add dx,0x3ff
00000EA6  83D100            adc cx,byte +0x0
00000EA9  51                push cx
00000EAA  B90A00            mov cx,0xa
00000EAD  5B                pop bx
00000EAE  E306              jcxz 0xeb6
00000EB0  D1FB              sar bx,1
00000EB2  D1DA              rcr dx,1
00000EB4  E2FA              loop 0xeb0
00000EB6  8956F4            mov [bp-0xc],dx
00000EB9  8B56F8            mov dx,[bp-0x8]
00000EBC  89544E            mov [si+0x4e],dx
00000EBF  8B56F6            mov dx,[bp-0xa]
00000EC2  895450            mov [si+0x50],dx
00000EC5  8B56F6            mov dx,[bp-0xa]
00000EC8  0356F8            add dx,[bp-0x8]
00000ECB  895454            mov [si+0x54],dx
00000ECE  8B56F4            mov dx,[bp-0xc]
00000ED1  895456            mov [si+0x56],dx
00000ED4  8B56F6            mov dx,[bp-0xa]
00000ED7  0356F8            add dx,[bp-0x8]
00000EDA  0356F4            add dx,[bp-0xc]
00000EDD  89545A            mov [si+0x5a],dx
00000EE0  8B56F4            mov dx,[bp-0xc]
00000EE3  895458            mov [si+0x58],dx
00000EE6  C746F02661        mov word [bp-0x10],0x6126
00000EEB  817EF04661        cmp word [bp-0x10],0x6146
00000EF0  732C              jnc 0xf1e
00000EF2  8B5EF0            mov bx,[bp-0x10]
00000EF5  8B56F8            mov dx,[bp-0x8]
00000EF8  3917              cmp [bx],dx
00000EFA  751C              jnz 0xf18
00000EFC  8B56F4            mov dx,[bp-0xc]
00000EFF  0356F6            add dx,[bp-0xa]
00000F02  8B5EF0            mov bx,[bp-0x10]
00000F05  0117              add [bx],dx
00000F07  8B5EF0            mov bx,[bp-0x10]
00000F0A  8B56F4            mov dx,[bp-0xc]
00000F0D  0356F6            add dx,[bp-0xa]
00000F10  2B5702            sub dx,[bx+0x2]
00000F13  F7DA              neg dx
00000F15  895702            mov [bx+0x2],dx
00000F18  8346F004          add word [bp-0x10],byte +0x4
00000F1C  EBCD              jmp short 0xeeb
00000F1E  8B5EEE            mov bx,[bp-0x12]
00000F21  8B17              mov dx,[bx]
00000F23  895416            mov [si+0x16],dx
00000F26  837C6001          cmp word [si+0x60],byte +0x1
00000F2A  7505              jnz 0xf31
00000F2C  B80012            mov ax,0x1200
00000F2F  EB03              jmp short 0xf34
00000F31  B80002            mov ax,0x200
00000F34  89441A            mov [si+0x1a],ax
00000F37  09FF              or di,di
00000F39  7C14              jl 0xf4f
00000F3B  8B545C            mov dx,[si+0x5c]
00000F3E  035458            add dx,[si+0x58]
00000F41  B90A00            mov cx,0xa
00000F44  D3E2              shl dx,cl
00000F46  89541C            mov [si+0x1c],dx
00000F49  83EA02            sub dx,byte +0x2
00000F4C  89541C            mov [si+0x1c],dx
00000F4F  83FFFA            cmp di,byte -0x6
00000F52  740A              jz 0xf5e
00000F54  83FFFF            cmp di,byte -0x1
00000F57  7405              jz 0xf5e
00000F59  56                push si
00000F5A  E83605            call word 0x1493
00000F5D  5B                pop bx
00000F5E  C7444A0000        mov word [si+0x4a],0x0
00000F63  56                push si
00000F64  E87E16            call word 0x25e5
00000F67  5B                pop bx
00000F68  47                inc di
00000F69  E938FE            jmp word 0xda4
00000F6C  C706B84F0100      mov word [0x4fb8],0x1
00000F72  8B166A6F          mov dx,[0x6f6a]
00000F76  8916B66F          mov [0x6fb6],dx
00000F7A  8B1E6A6F          mov bx,[0x6f6a]
00000F7E  C747600400        mov word [bx+0x60],0x4
00000F83  E8FA04            call word 0x1480
00000F86  E878F2            call word 0x201
00000F89  E9219F            jmp word 0xaead
00000F8C  55                push bp
00000F8D  89E5              mov bp,sp
00000F8F  837E0400          cmp word [bp+0x4],byte +0x0
00000F93  7427              jz 0xfbc
00000F95  FF7604            push word [bp+0x4]
00000F98  B89C01            mov ax,0x19c
00000F9B  50                push ax
00000F9C  E89594            call word 0xa434
00000F9F  5B                pop bx
00000FA0  5B                pop bx
00000FA1  817E060080        cmp word [bp+0x6],0x8000
00000FA6  740C              jz 0xfb4
00000FA8  FF7606            push word [bp+0x6]
00000FAB  B89801            mov ax,0x198
00000FAE  50                push ax
00000FAF  E88294            call word 0xa434
00000FB2  5B                pop bx
00000FB3  5B                pop bx
00000FB4  B89601            mov ax,0x196
00000FB7  50                push ax
00000FB8  E87994            call word 0xa434
00000FBB  5B                pop bx
00000FBC  B80200            mov ax,0x2
00000FBF  50                push ax
00000FC0  E80B37            call word 0x46ce
00000FC3  5B                pop bx
00000FC4  E9E89E            jmp word 0xaeaf
00000FC7  55                push bp
00000FC8  89E5              mov bp,sp
00000FCA  56                push si
00000FCB  8B5E04            mov bx,[bp+0x4]
00000FCE  D1E3              shl bx,1
00000FD0  8BB7766F          mov si,[bx+0x6f76]
00000FD4  803E404600        cmp byte [0x4640],0x0
00000FD9  7507              jnz 0xfe2
00000FDB  803E382100        cmp byte [0x2138],0x0
00000FE0  742F              jz 0x1011
00000FE2  E8CB9A            call word 0xaab0
00000FE5  807C4700          cmp byte [si+0x47],0x0
00000FE9  7521              jnz 0x100c
00000FEB  C6444701          mov byte [si+0x47],0x1
00000FEF  833EFA4500        cmp word [0x45fa],byte +0x0
00000FF4  7409              jz 0xfff
00000FF6  8B1E2261          mov bx,[0x6122]
00000FFA  897748            mov [bx+0x48],si
00000FFD  EB04              jmp short 0x1003
00000FFF  8936FA45          mov [0x45fa],si
00001003  89362261          mov [0x6122],si
00001007  C744480000        mov word [si+0x48],0x0
0000100C  E8A39A            call word 0xaab2
0000100F  EB4A              jmp short 0x105b
00001011  C606382101        mov byte [0x2138],0x1
00001016  BA0600            mov dx,0x6
00001019  23544A            and dx,[si+0x4a]
0000101C  83FA04            cmp dx,byte +0x4
0000101F  750D              jnz 0x102e
00001021  817C7ACE7A        cmp word [si+0x7a],0x7ace
00001026  7411              jz 0x1039
00001028  837C7AFF          cmp word [si+0x7a],byte -0x1
0000102C  740B              jz 0x1039
0000102E  C6444601          mov byte [si+0x46],0x1
00001032  C606382100        mov byte [0x2138],0x0
00001037  EB22              jmp short 0x105b
00001039  8B5C78            mov bx,[si+0x78]
0000103C  C707FFFF          mov word [bx],0xffff
00001040  8B5C78            mov bx,[si+0x78]
00001043  C747020200        mov word [bx+0x2],0x2
00001048  81644AFBFF        and word [si+0x4a],0xfffb
0000104D  C6444600          mov byte [si+0x46],0x0
00001051  56                push si
00001052  E8A802            call word 0x12fd
00001055  5B                pop bx
00001056  C606382100        mov byte [0x2138],0x0
0000105B  E9509E            jmp word 0xaeae
0000105E  55                push bp
0000105F  89E5              mov bp,sp
00001061  56                push si
00001062  57                push di
00001063  BA0A00            mov dx,0xa
00001066  035606            add dx,[bp+0x6]
00001069  83FA2A            cmp dx,byte +0x2a
0000106C  720C              jc 0x107a
0000106E  817E06CE7A        cmp word [bp+0x6],0x7ace
00001073  7405              jz 0x107a
00001075  B817FC            mov ax,0xfc17
00001078  EB45              jmp short 0x10bf
0000107A  8B36F445          mov si,[0x45f4]
0000107E  837C6003          cmp word [si+0x60],byte +0x3
00001082  750B              jnz 0x108f
00001084  837E0403          cmp word [bp+0x4],byte +0x3
00001088  7405              jz 0x108f
0000108A  B810FC            mov ax,0xfc10
0000108D  EB30              jmp short 0x10bf
0000108F  F6460401          test byte [bp+0x4],0x1
00001093  741D              jz 0x10b2
00001095  FF7608            push word [bp+0x8]
00001098  FF7606            push word [bp+0x6]
0000109B  56                push si
0000109C  E82300            call word 0x10c2
0000109F  83C406            add sp,byte +0x6
000010A2  89C7              mov di,ax
000010A4  837E0401          cmp word [bp+0x4],byte +0x1
000010A8  7404              jz 0x10ae
000010AA  09FF              or di,di
000010AC  7404              jz 0x10b2
000010AE  89F8              mov ax,di
000010B0  EB0D              jmp short 0x10bf
000010B2  FF7608            push word [bp+0x8]
000010B5  FF7606            push word [bp+0x6]
000010B8  56                push si
000010B9  E83201            call word 0x11ee
000010BC  83C406            add sp,byte +0x6
000010BF  E9EB9D            jmp word 0xaead
000010C2  55                push bp
000010C3  89E5              mov bp,sp
000010C5  83EC0A            sub sp,byte +0xa
000010C8  56                push si
000010C9  57                push di
000010CA  8B7604            mov si,[bp+0x4]
000010CD  837C6003          cmp word [si+0x60],byte +0x3
000010D1  7512              jnz 0x10e5
000010D3  837E0601          cmp word [bp+0x6],byte +0x1
000010D7  740C              jz 0x10e5
000010D9  837E0600          cmp word [bp+0x6],byte +0x0
000010DD  7406              jz 0x10e5
000010DF  B817FC            mov ax,0xfc17
000010E2  E90601            jmp word 0x11eb
000010E5  8B5E06            mov bx,[bp+0x6]
000010E8  D1E3              shl bx,1
000010EA  8BBF766F          mov di,[bx+0x6f76]
000010EE  837D6000          cmp word [di+0x60],byte +0x0
000010F2  7506              jnz 0x10fa
000010F4  B817FC            mov ax,0xfc17
000010F7  E9F100            jmp word 0x11eb
000010FA  8B5608            mov dx,[bp+0x8]
000010FD  8956FA            mov [bp-0x6],dx
00001100  B90A00            mov cx,0xa
00001103  D3EA              shr dx,cl
00001105  8956F8            mov [bp-0x8],dx
00001108  BA1700            mov dx,0x17
0000110B  0356FA            add dx,[bp-0x6]
0000110E  D3EA              shr dx,cl
00001110  8956F6            mov [bp-0xa],dx
00001113  8B56F8            mov dx,[bp-0x8]
00001116  395452            cmp [si+0x52],dx
00001119  7710              ja 0x112b
0000111B  3956F6            cmp [bp-0xa],dx
0000111E  720B              jc 0x112b
00001120  8B545C            mov dx,[si+0x5c]
00001123  035458            add dx,[si+0x58]
00001126  3956F6            cmp [bp-0xa],dx
00001129  7206              jc 0x1131
0000112B  B8F2FF            mov ax,0xfff2
0000112E  E9BA00            jmp word 0x11eb
00001131  F6454A02          test byte [di+0x4a],0x2
00001135  742E              jz 0x1165
00001137  8B5D7C            mov bx,[di+0x7c]
0000113A  D1E3              shl bx,1
0000113C  8B97766F          mov dx,[bx+0x6f76]
00001140  8956FC            mov [bp-0x4],dx
00001143  3976FC            cmp [bp-0x4],si
00001146  7506              jnz 0x114e
00001148  B89BFF            mov ax,0xff9b
0000114B  E99D00            jmp word 0x11eb
0000114E  8B5EFC            mov bx,[bp-0x4]
00001151  F6474A02          test byte [bx+0x4a],0x2
00001155  740E              jz 0x1165
00001157  8B5F7C            mov bx,[bx+0x7c]
0000115A  D1E3              shl bx,1
0000115C  8B97766F          mov dx,[bx+0x6f76]
00001160  8956FC            mov [bp-0x4],dx
00001163  EBDE              jmp short 0x1143
00001165  BA0600            mov dx,0x6
00001168  23554A            and dx,[di+0x4a]
0000116B  83FA04            cmp dx,byte +0x4
0000116E  7532              jnz 0x11a2
00001170  817D7ACE7A        cmp word [di+0x7a],0x7ace
00001175  7408              jz 0x117f
00001177  8B5444            mov dx,[si+0x44]
0000117A  39557A            cmp [di+0x7a],dx
0000117D  7523              jnz 0x11a2
0000117F  FF7578            push word [di+0x78]
00001182  FF7554            push word [di+0x54]
00001185  FF7608            push word [bp+0x8]
00001188  FF7454            push word [si+0x54]
0000118B  FF7444            push word [si+0x44]
0000118E  E8F1F7            call word 0x982
00001191  83C40A            add sp,byte +0xa
00001194  81654AFBFF        and word [di+0x4a],0xfffb
00001199  754E              jnz 0x11e9
0000119B  57                push di
0000119C  E85E01            call word 0x12fd
0000119F  5B                pop bx
000011A0  EB47              jmp short 0x11e9
000011A2  8B5608            mov dx,[bp+0x8]
000011A5  895478            mov [si+0x78],dx
000011A8  837C4A00          cmp word [si+0x4a],byte +0x0
000011AC  7505              jnz 0x11b3
000011AE  56                push si
000011AF  E8B901            call word 0x136b
000011B2  5B                pop bx
000011B3  814C4A0200        or word [si+0x4a],0x2
000011B8  8B5606            mov dx,[bp+0x6]
000011BB  89547C            mov [si+0x7c],dx
000011BE  8B5574            mov dx,[di+0x74]
000011C1  8956FC            mov [bp-0x4],dx
000011C4  09D2              or dx,dx
000011C6  7505              jnz 0x11cd
000011C8  897574            mov [di+0x74],si
000011CB  EB17              jmp short 0x11e4
000011CD  8B5EFC            mov bx,[bp-0x4]
000011D0  837F7600          cmp word [bx+0x76],byte +0x0
000011D4  7408              jz 0x11de
000011D6  8B5776            mov dx,[bx+0x76]
000011D9  8956FC            mov [bp-0x4],dx
000011DC  EBEF              jmp short 0x11cd
000011DE  8B5EFC            mov bx,[bp-0x4]
000011E1  897776            mov [bx+0x76],si
000011E4  C744760000        mov word [si+0x76],0x0
000011E9  31C0              xor ax,ax
000011EB  E9BF9C            jmp word 0xaead
000011EE  55                push bp
000011EF  89E5              mov bp,sp
000011F1  50                push ax
000011F2  50                push ax
000011F3  56                push si
000011F4  57                push di
000011F5  8B7E04            mov di,[bp+0x4]
000011F8  F6454A02          test byte [di+0x4a],0x2
000011FC  7403              jz 0x1201
000011FE  E98300            jmp word 0x1284
00001201  8B7574            mov si,[di+0x74]
00001204  09F6              or si,si
00001206  7452              jz 0x125a
00001208  817E06CE7A        cmp word [bp+0x6],0x7ace
0000120D  7408              jz 0x1217
0000120F  8B5606            mov dx,[bp+0x6]
00001212  395444            cmp [si+0x44],dx
00001215  753B              jnz 0x1252
00001217  FF7608            push word [bp+0x8]
0000121A  FF7554            push word [di+0x54]
0000121D  FF7478            push word [si+0x78]
00001220  FF7454            push word [si+0x54]
00001223  FF7444            push word [si+0x44]
00001226  E859F7            call word 0x982
00001229  83C40A            add sp,byte +0xa
0000122C  397574            cmp [di+0x74],si
0000122F  7508              jnz 0x1239
00001231  8B5476            mov dx,[si+0x76]
00001234  895574            mov [di+0x74],dx
00001237  EB09              jmp short 0x1242
00001239  8B5EFC            mov bx,[bp-0x4]
0000123C  8B5476            mov dx,[si+0x76]
0000123F  895776            mov [bx+0x76],dx
00001242  81644AFDFF        and word [si+0x4a],0xfffd
00001247  7505              jnz 0x124e
00001249  56                push si
0000124A  E8B000            call word 0x12fd
0000124D  5B                pop bx
0000124E  31C0              xor ax,ax
00001250  EB67              jmp short 0x12b9
00001252  8976FC            mov [bp-0x4],si
00001255  8B7476            mov si,[si+0x76]
00001258  EBAA              jmp short 0x1204
0000125A  807D4600          cmp byte [di+0x46],0x0
0000125E  7424              jz 0x1284
00001260  817E06CE7A        cmp word [bp+0x6],0x7ace
00001265  7406              jz 0x126d
00001267  837E06FF          cmp word [bp+0x6],byte -0x1
0000126B  7517              jnz 0x1284
0000126D  8B5E08            mov bx,[bp+0x8]
00001270  C707FFFF          mov word [bx],0xffff
00001274  8B5E08            mov bx,[bp+0x8]
00001277  C747020200        mov word [bx+0x2],0x2
0000127C  C6454600          mov byte [di+0x46],0x0
00001280  31C0              xor ax,ax
00001282  EB35              jmp short 0x12b9
00001284  8B5606            mov dx,[bp+0x6]
00001287  89557A            mov [di+0x7a],dx
0000128A  8B5608            mov dx,[bp+0x8]
0000128D  895578            mov [di+0x78],dx
00001290  837D4A00          cmp word [di+0x4a],byte +0x0
00001294  7505              jnz 0x129b
00001296  57                push di
00001297  E8D100            call word 0x136b
0000129A  5B                pop bx
0000129B  814D4A0400        or word [di+0x4a],0x4
000012A0  833E246100        cmp word [0x6124],byte +0x0
000012A5  7E10              jng 0x12b7
000012A7  837D4400          cmp word [di+0x44],byte +0x0
000012AB  750A              jnz 0x12b7
000012AD  817E06CE7A        cmp word [bp+0x6],0x7ace
000012B2  7503              jnz 0x12b7
000012B4  E85111            call word 0x2408
000012B7  31C0              xor ax,ax
000012B9  E9F19B            jmp word 0xaead
000012BC  55                push bp
000012BD  89E5              mov bp,sp
000012BF  56                push si
000012C0  8B36B86F          mov si,[0x6fb8]
000012C4  09F6              or si,si
000012C6  7406              jz 0x12ce
000012C8  8936F445          mov [0x45f4],si
000012CC  EB2C              jmp short 0x12fa
000012CE  8B36BA6F          mov si,[0x6fba]
000012D2  09F6              or si,si
000012D4  7406              jz 0x12dc
000012D6  8936F445          mov [0x45f4],si
000012DA  EB1E              jmp short 0x12fa
000012DC  8B36BC6F          mov si,[0x6fbc]
000012E0  09F6              or si,si
000012E2  740A              jz 0x12ee
000012E4  8936F445          mov [0x45f4],si
000012E8  8936B66F          mov [0x6fb6],si
000012EC  EB0C              jmp short 0x12fa
000012EE  8B166A6F          mov dx,[0x6f6a]
000012F2  8916F445          mov [0x45f4],dx
000012F6  8916B66F          mov [0x6fb6],dx
000012FA  E9B19B            jmp word 0xaeae
000012FD  55                push bp
000012FE  89E5              mov bp,sp
00001300  56                push si
00001301  8B7604            mov si,[bp+0x4]
00001304  837C6001          cmp word [si+0x60],byte +0x1
00001308  7523              jnz 0x132d
0000130A  833EB86F00        cmp word [0x6fb8],byte +0x0
0000130F  7409              jz 0x131a
00001311  8B1EBE6F          mov bx,[0x6fbe]
00001315  89777E            mov [bx+0x7e],si
00001318  EB08              jmp short 0x1322
0000131A  8936B86F          mov [0x6fb8],si
0000131E  8936F445          mov [0x45f4],si
00001322  8936BE6F          mov [0x6fbe],si
00001326  C7447E0000        mov word [si+0x7e],0x0
0000132B  EB3B              jmp short 0x1368
0000132D  837C6002          cmp word [si+0x60],byte +0x2
00001331  751F              jnz 0x1352
00001333  833EBA6F00        cmp word [0x6fba],byte +0x0
00001338  7409              jz 0x1343
0000133A  8B1EC06F          mov bx,[0x6fc0]
0000133E  89777E            mov [bx+0x7e],si
00001341  EB04              jmp short 0x1347
00001343  8936BA6F          mov [0x6fba],si
00001347  8936C06F          mov [0x6fc0],si
0000134B  C7447E0000        mov word [si+0x7e],0x0
00001350  EB16              jmp short 0x1368
00001352  833EBC6F00        cmp word [0x6fbc],byte +0x0
00001357  7504              jnz 0x135d
00001359  8936C26F          mov [0x6fc2],si
0000135D  8B16BC6F          mov dx,[0x6fbc]
00001361  89547E            mov [si+0x7e],dx
00001364  8936BC6F          mov [0x6fbc],si
00001368  E9439B            jmp word 0xaeae
0000136B  55                push bp
0000136C  89E5              mov bp,sp
0000136E  50                push ax
0000136F  50                push ax
00001370  56                push si
00001371  57                push di
00001372  8B7E04            mov di,[bp+0x4]
00001375  837D6001          cmp word [di+0x60],byte +0x1
00001379  7541              jnz 0x13bc
0000137B  8B5D42            mov bx,[di+0x42]
0000137E  813FEFBE          cmp word [bx],0xbeef
00001382  740C              jz 0x1390
00001384  FF7544            push word [di+0x44]
00001387  B8AE01            mov ax,0x1ae
0000138A  50                push ax
0000138B  E8FEFB            call word 0xf8c
0000138E  5B                pop bx
0000138F  5B                pop bx
00001390  8B36B86F          mov si,[0x6fb8]
00001394  09F6              or si,si
00001396  7503              jnz 0x139b
00001398  E98800            jmp word 0x1423
0000139B  39FE              cmp si,di
0000139D  7516              jnz 0x13b5
0000139F  8B547E            mov dx,[si+0x7e]
000013A2  8916B86F          mov [0x6fb8],dx
000013A6  393EF445          cmp [0x45f4],di
000013AA  7403              jz 0x13af
000013AC  E97400            jmp word 0x1423
000013AF  E80AFF            call word 0x12bc
000013B2  E96E00            jmp word 0x1423
000013B5  C746FCBE6F        mov word [bp-0x4],0x6fbe
000013BA  EB42              jmp short 0x13fe
000013BC  837D6002          cmp word [di+0x60],byte +0x2
000013C0  751F              jnz 0x13e1
000013C2  8B36BA6F          mov si,[0x6fba]
000013C6  09F6              or si,si
000013C8  7459              jz 0x1423
000013CA  39FE              cmp si,di
000013CC  750C              jnz 0x13da
000013CE  8B547E            mov dx,[si+0x7e]
000013D1  8916BA6F          mov [0x6fba],dx
000013D5  E8E4FE            call word 0x12bc
000013D8  EB49              jmp short 0x1423
000013DA  C746FCC06F        mov word [bp-0x4],0x6fc0
000013DF  EB1D              jmp short 0x13fe
000013E1  8B36BC6F          mov si,[0x6fbc]
000013E5  09F6              or si,si
000013E7  743A              jz 0x1423
000013E9  39FE              cmp si,di
000013EB  750C              jnz 0x13f9
000013ED  8B547E            mov dx,[si+0x7e]
000013F0  8916BC6F          mov [0x6fbc],dx
000013F4  E8C5FE            call word 0x12bc
000013F7  EB2A              jmp short 0x1423
000013F9  C746FCC26F        mov word [bp-0x4],0x6fc2
000013FE  397C7E            cmp [si+0x7e],di
00001401  740B              jz 0x140e
00001403  8B547E            mov dx,[si+0x7e]
00001406  89D6              mov si,dx
00001408  09D2              or dx,dx
0000140A  75F2              jnz 0x13fe
0000140C  EB15              jmp short 0x1423
0000140E  8B5C7E            mov bx,[si+0x7e]
00001411  8B577E            mov dx,[bx+0x7e]
00001414  89547E            mov [si+0x7e],dx
00001417  8B5EFC            mov bx,[bp-0x4]
0000141A  393F              cmp [bx],di
0000141C  7505              jnz 0x1423
0000141E  8B5EFC            mov bx,[bp-0x4]
00001421  8937              mov [bx],si
00001423  E9879A            jmp word 0xaead
00001426  55                push bp
00001427  89E5              mov bp,sp
00001429  833EBC6F00        cmp word [0x6fbc],byte +0x0
0000142E  742A              jz 0x145a
00001430  8B1EC26F          mov bx,[0x6fc2]
00001434  8B16BC6F          mov dx,[0x6fbc]
00001438  89577E            mov [bx+0x7e],dx
0000143B  8B16BC6F          mov dx,[0x6fbc]
0000143F  8916C26F          mov [0x6fc2],dx
00001443  8B1EBC6F          mov bx,[0x6fbc]
00001447  8B577E            mov dx,[bx+0x7e]
0000144A  8916BC6F          mov [0x6fbc],dx
0000144E  8B1EC26F          mov bx,[0x6fc2]
00001452  C7477E0000        mov word [bx+0x7e],0x0
00001457  E862FE            call word 0x12bc
0000145A  E9529A            jmp word 0xaeaf
0000145D  55                push bp
0000145E  89E5              mov bp,sp
00001460  50                push ax
00001461  C606382101        mov byte [0x2138],0x1
00001466  FF7608            push word [bp+0x8]
00001469  FF7606            push word [bp+0x6]
0000146C  FF7604            push word [bp+0x4]
0000146F  E850FC            call word 0x10c2
00001472  83C406            add sp,byte +0x6
00001475  8946FE            mov [bp-0x2],ax
00001478  C606382100        mov byte [0x2138],0x0
0000147D  E92F9A            jmp word 0xaeaf
00001480  55                push bp
00001481  89E5              mov bp,sp
00001483  C606382101        mov byte [0x2138],0x1
00001488  E831FE            call word 0x12bc
0000148B  C606382100        mov byte [0x2138],0x0
00001490  E91C9A            jmp word 0xaeaf
00001493  55                push bp
00001494  89E5              mov bp,sp
00001496  C606382101        mov byte [0x2138],0x1
0000149B  FF7604            push word [bp+0x4]
0000149E  E85CFE            call word 0x12fd
000014A1  5B                pop bx
000014A2  C606382100        mov byte [0x2138],0x0
000014A7  E9059A            jmp word 0xaeaf
000014AA  55                push bp
000014AB  89E5              mov bp,sp
000014AD  C606382101        mov byte [0x2138],0x1
000014B2  FF7604            push word [bp+0x4]
000014B5  E8B3FE            call word 0x136b
000014B8  5B                pop bx
000014B9  C606382100        mov byte [0x2138],0x0
000014BE  E9EE99            jmp word 0xaeaf
000014C1  55                push bp
000014C2  89E5              mov bp,sp
000014C4  C606382101        mov byte [0x2138],0x1
000014C9  E85AFF            call word 0x1426
000014CC  C606382100        mov byte [0x2138],0x0
000014D1  E9DB99            jmp word 0xaeaf
000014D4  55                push bp
000014D5  89E5              mov bp,sp
000014D7  56                push si
000014D8  803E382100        cmp byte [0x2138],0x0
000014DD  752E              jnz 0x150d
000014DF  8B36FA45          mov si,[0x45fa]
000014E3  8B5448            mov dx,[si+0x48]
000014E6  8916FA45          mov [0x45fa],dx
000014EA  09D2              or dx,dx
000014EC  7506              jnz 0x14f4
000014EE  C70622610000      mov word [0x6122],0x0
000014F4  C6444700          mov byte [si+0x47],0x0
000014F8  E8B795            call word 0xaab2
000014FB  FF7444            push word [si+0x44]
000014FE  E8C6FA            call word 0xfc7
00001501  5B                pop bx
00001502  E8AB95            call word 0xaab0
00001505  8B36FA45          mov si,[0x45fa]
00001509  09F6              or si,si
0000150B  75D6              jnz 0x14e3
0000150D  E99E99            jmp word 0xaeae
00001510  55                push bp
00001511  89E5              mov bp,sp
00001513  56                push si
00001514  57                push di
00001515  8B3EF445          mov di,[0x45f4]
00001519  B80600            mov ax,0x6
0000151C  F76604            mul word [bp+0x4]
0000151F  05C401            add ax,0x1c4
00001522  89C6              mov si,ax
00001524  837E0402          cmp word [bp+0x4],byte +0x2
00001528  750A              jnz 0x1534
0000152A  B89002            mov ax,0x290
0000152D  50                push ax
0000152E  E8038F            call word 0xa434
00001531  5B                pop bx
00001532  EB64              jmp short 0x1598
00001534  803E404600        cmp byte [0x4640],0x0
00001539  7516              jnz 0x1551
0000153B  837D6003          cmp word [di+0x60],byte +0x3
0000153F  7510              jnz 0x1551
00001541  E86E95            call word 0xaab2
00001544  FF7402            push word [si+0x2]
00001547  FF7544            push word [di+0x44]
0000154A  E8590E            call word 0x23a6
0000154D  5B                pop bx
0000154E  5B                pop bx
0000154F  EB47              jmp short 0x1598
00001551  833C00            cmp word [si],byte +0x0
00001554  7409              jz 0x155f
00001556  8B168046          mov dx,[0x4680]
0000155A  395404            cmp [si+0x4],dx
0000155D  760E              jna 0x156d
0000155F  FF7604            push word [bp+0x4]
00001562  B87202            mov ax,0x272
00001565  50                push ax
00001566  E8CB8E            call word 0xa434
00001569  5B                pop bx
0000156A  5B                pop bx
0000156B  EB0B              jmp short 0x1578
0000156D  FF34              push word [si]
0000156F  B86C02            mov ax,0x26c
00001572  50                push ax
00001573  E8BE8E            call word 0xa434
00001576  5B                pop bx
00001577  5B                pop bx
00001578  FF7516            push word [di+0x16]
0000157B  FF7518            push word [di+0x18]
0000157E  FF7544            push word [di+0x44]
00001581  B84402            mov ax,0x244
00001584  50                push ax
00001585  E8AC8E            call word 0xa434
00001588  83C408            add sp,byte +0x8
0000158B  B80080            mov ax,0x8000
0000158E  50                push ax
0000158F  B82A02            mov ax,0x22a
00001592  50                push ax
00001593  E8F6F9            call word 0xf8c
00001596  5B                pop bx
00001597  5B                pop bx
00001598  E91299            jmp word 0xaead
0000159B  55                push bp
0000159C  89E5              mov bp,sp
0000159E  56                push si
0000159F  B83A21            mov ax,0x213a
000015A2  50                push ax
000015A3  B8CE7A            mov ax,0x7ace
000015A6  50                push ax
000015A7  E83095            call word 0xaada
000015AA  5B                pop bx
000015AB  5B                pop bx
000015AC  E90001            jmp word 0x16af
000015AF  B83A21            mov ax,0x213a
000015B2  50                push ax
000015B3  E81601            call word 0x16cc
000015B6  5B                pop bx
000015B7  89C6              mov si,ax
000015B9  E9FC00            jmp word 0x16b8
000015BC  B83A21            mov ax,0x213a
000015BF  50                push ax
000015C0  E88E01            call word 0x1751
000015C3  5B                pop bx
000015C4  89C6              mov si,ax
000015C6  E9EF00            jmp word 0x16b8
000015C9  B83A21            mov ax,0x213a
000015CC  50                push ax
000015CD  E81702            call word 0x17e7
000015D0  5B                pop bx
000015D1  89C6              mov si,ax
000015D3  E9E200            jmp word 0x16b8
000015D6  B83A21            mov ax,0x213a
000015D9  50                push ax
000015DA  E87502            call word 0x1852
000015DD  5B                pop bx
000015DE  89C6              mov si,ax
000015E0  E9D500            jmp word 0x16b8
000015E3  B83A21            mov ax,0x213a
000015E6  50                push ax
000015E7  E81903            call word 0x1903
000015EA  5B                pop bx
000015EB  89C6              mov si,ax
000015ED  E9C800            jmp word 0x16b8
000015F0  B83A21            mov ax,0x213a
000015F3  50                push ax
000015F4  E8FE03            call word 0x19f5
000015F7  5B                pop bx
000015F8  89C6              mov si,ax
000015FA  E9BB00            jmp word 0x16b8
000015FD  B83A21            mov ax,0x213a
00001600  50                push ax
00001601  E80D04            call word 0x1a11
00001604  5B                pop bx
00001605  89C6              mov si,ax
00001607  E9AE00            jmp word 0x16b8
0000160A  B83A21            mov ax,0x213a
0000160D  50                push ax
0000160E  E85504            call word 0x1a66
00001611  5B                pop bx
00001612  89C6              mov si,ax
00001614  E9A100            jmp word 0x16b8
00001617  B83A21            mov ax,0x213a
0000161A  50                push ax
0000161B  E89504            call word 0x1ab3
0000161E  5B                pop bx
0000161F  89C6              mov si,ax
00001621  E99400            jmp word 0x16b8
00001624  B83A21            mov ax,0x213a
00001627  50                push ax
00001628  E8C705            call word 0x1bf2
0000162B  5B                pop bx
0000162C  89C6              mov si,ax
0000162E  E98700            jmp word 0x16b8
00001631  B83A21            mov ax,0x213a
00001634  50                push ax
00001635  E86906            call word 0x1ca1
00001638  5B                pop bx
00001639  89C6              mov si,ax
0000163B  E97A00            jmp word 0x16b8
0000163E  B83A21            mov ax,0x213a
00001641  50                push ax
00001642  E87306            call word 0x1cb8
00001645  5B                pop bx
00001646  89C6              mov si,ax
00001648  EB6E              jmp short 0x16b8
0000164A  B83A21            mov ax,0x213a
0000164D  50                push ax
0000164E  E8AD06            call word 0x1cfe
00001651  5B                pop bx
00001652  89C6              mov si,ax
00001654  EB62              jmp short 0x16b8
00001656  B83A21            mov ax,0x213a
00001659  50                push ax
0000165A  E88C07            call word 0x1de9
0000165D  5B                pop bx
0000165E  89C6              mov si,ax
00001660  EB56              jmp short 0x16b8
00001662  B83A21            mov ax,0x213a
00001665  50                push ax
00001666  E88F08            call word 0x1ef8
00001669  5B                pop bx
0000166A  89C6              mov si,ax
0000166C  EB4A              jmp short 0x16b8
0000166E  B83A21            mov ax,0x213a
00001671  50                push ax
00001672  E8BB08            call word 0x1f30
00001675  5B                pop bx
00001676  89C6              mov si,ax
00001678  EB3E              jmp short 0x16b8
0000167A  B83A21            mov ax,0x213a
0000167D  50                push ax
0000167E  E8DB08            call word 0x1f5c
00001681  5B                pop bx
00001682  89C6              mov si,ax
00001684  EB32              jmp short 0x16b8
00001686  B83A21            mov ax,0x213a
00001689  50                push ax
0000168A  E8150B            call word 0x21a2
0000168D  5B                pop bx
0000168E  89C6              mov si,ax
00001690  EB26              jmp short 0x16b8
00001692  B83A21            mov ax,0x213a
00001695  50                push ax
00001696  E8700C            call word 0x2309
00001699  5B                pop bx
0000169A  89C6              mov si,ax
0000169C  EB1A              jmp short 0x16b8
0000169E  B83A21            mov ax,0x213a
000016A1  50                push ax
000016A2  E8B50C            call word 0x235a
000016A5  5B                pop bx
000016A6  89C6              mov si,ax
000016A8  EB0E              jmp short 0x16b8
000016AA  BE0FFC            mov si,0xfc0f
000016AD  EB09              jmp short 0x16b8
000016AF  BBAE03            mov bx,0x3ae
000016B2  A13C21            mov ax,[0x213c]
000016B5  E98C96            jmp word 0xad44
000016B8  89363C21          mov [0x213c],si
000016BC  B83A21            mov ax,0x213a
000016BF  50                push ax
000016C0  FF363A21          push word [0x213a]
000016C4  E80E94            call word 0xaad5
000016C7  5B                pop bx
000016C8  5B                pop bx
000016C9  E9D3FE            jmp word 0x159f
000016CC  55                push bp
000016CD  89E5              mov bp,sp
000016CF  83EC06            sub sp,byte +0x6
000016D2  56                push si
000016D3  57                push di
000016D4  8B7E04            mov di,[bp+0x4]
000016D7  8B5D04            mov bx,[di+0x4]
000016DA  D1E3              shl bx,1
000016DC  8B97766F          mov dx,[bx+0x6f76]
000016E0  8956FA            mov [bp-0x6],dx
000016E3  8B5D06            mov bx,[di+0x6]
000016E6  D1E3              shl bx,1
000016E8  8BB7766F          mov si,[bx+0x6f76]
000016EC  8B5420            mov dx,[si+0x20]
000016EF  8956FE            mov [bp-0x2],dx
000016F2  FF76FA            push word [bp-0x6]
000016F5  56                push si
000016F6  B94B00            mov cx,0x4b
000016F9  E83396            call word 0xad2f
000016FC  8B56FE            mov dx,[bp-0x2]
000016FF  895420            mov [si+0x20],dx
00001702  8B5506            mov dx,[di+0x6]
00001705  895444            mov [si+0x44],dx
00001708  814C4A0100        or word [si+0x4a],0x1
0000170D  81644AC7FF        and word [si+0x4a],0xffc7
00001712  8D848000          lea ax,[si+0x80]
00001716  50                push ax
00001717  E83C92            call word 0xa956
0000171A  5B                pop bx
0000171B  C78484000000      mov word [si+0x84],0x0
00001721  8B5508            mov dx,[di+0x8]
00001724  89545E            mov [si+0x5e],dx
00001727  C744120000        mov word [si+0x12],0x0
0000172C  31C0              xor ax,ax
0000172E  894462            mov [si+0x62],ax
00001731  894464            mov [si+0x64],ax
00001734  31DB              xor bx,bx
00001736  895C66            mov [si+0x66],bx
00001739  895C68            mov [si+0x68],bx
0000173C  31C0              xor ax,ax
0000173E  89446A            mov [si+0x6a],ax
00001741  89446C            mov [si+0x6c],ax
00001744  31DB              xor bx,bx
00001746  895C6E            mov [si+0x6e],bx
00001749  895C70            mov [si+0x70],bx
0000174C  31C0              xor ax,ax
0000174E  E95C97            jmp word 0xaead
00001751  55                push bp
00001752  89E5              mov bp,sp
00001754  83EC0E            sub sp,byte +0xe
00001757  56                push si
00001758  57                push di
00001759  8B5E04            mov bx,[bp+0x4]
0000175C  8B17              mov dx,[bx]
0000175E  8956F8            mov [bp-0x8],dx
00001761  8B7F04            mov di,[bx+0x4]
00001764  8B570A            mov dx,[bx+0xa]
00001767  8956F2            mov [bp-0xe],dx
0000176A  8D5D0A            lea bx,[di+0xa]
0000176D  83FB2A            cmp bx,byte +0x2a
00001770  7205              jc 0x1777
00001772  B80DFC            mov ax,0xfc0d
00001775  EB6D              jmp short 0x17e4
00001777  89FB              mov bx,di
00001779  D1E3              shl bx,1
0000177B  8BB7766F          mov si,[bx+0x6f76]
0000177F  8B5EF8            mov bx,[bp-0x8]
00001782  D1E3              shl bx,1
00001784  B81200            mov ax,0x12
00001787  50                push ax
00001788  FF76F2            push word [bp-0xe]
0000178B  B80100            mov ax,0x1
0000178E  50                push ax
0000178F  FFB7766F          push word [bx+0x6f76]
00001793  E8E40C            call word 0x247a
00001796  83C408            add sp,byte +0x8
00001799  8946FA            mov [bp-0x6],ax
0000179C  8956FC            mov [bp-0x4],dx
0000179F  8D5C4C            lea bx,[si+0x4c]
000017A2  31D2              xor dx,dx
000017A4  031E8446          add bx,[0x4684]
000017A8  13168646          adc dx,[0x4686]
000017AC  31C0              xor ax,ax
000017AE  50                push ax
000017AF  B81200            mov ax,0x12
000017B2  50                push ax
000017B3  52                push dx
000017B4  53                push bx
000017B5  FF76FC            push word [bp-0x4]
000017B8  FF76FA            push word [bp-0x6]
000017BB  E8C7F2            call word 0xa85
000017BE  83C40C            add sp,byte +0xc
000017C1  56                push si
000017C2  E8200E            call word 0x25e5
000017C5  5B                pop bx
000017C6  8B544A            mov dx,[si+0x4a]
000017C9  8956F4            mov [bp-0xc],dx
000017CC  81644AFEFF        and word [si+0x4a],0xfffe
000017D1  837EF400          cmp word [bp-0xc],byte +0x0
000017D5  740B              jz 0x17e2
000017D7  837C4A00          cmp word [si+0x4a],byte +0x0
000017DB  7505              jnz 0x17e2
000017DD  56                push si
000017DE  E8B2FC            call word 0x1493
000017E1  5B                pop bx
000017E2  31C0              xor ax,ax
000017E4  E9C696            jmp word 0xaead
000017E7  55                push bp
000017E8  89E5              mov bp,sp
000017EA  83EC0C            sub sp,byte +0xc
000017ED  56                push si
000017EE  8B5E04            mov bx,[bp+0x4]
000017F1  8B17              mov dx,[bx]
000017F3  8956F8            mov [bp-0x8],dx
000017F6  8B5704            mov dx,[bx+0x4]
000017F9  8956F6            mov [bp-0xa],dx
000017FC  8B570A            mov dx,[bx+0xa]
000017FF  8956F4            mov [bp-0xc],dx
00001802  8B5EF6            mov bx,[bp-0xa]
00001805  D1E3              shl bx,1
00001807  8BB7766F          mov si,[bx+0x6f76]
0000180B  8B5EF8            mov bx,[bp-0x8]
0000180E  D1E3              shl bx,1
00001810  B81200            mov ax,0x12
00001813  50                push ax
00001814  FF76F4            push word [bp-0xc]
00001817  B80100            mov ax,0x1
0000181A  50                push ax
0000181B  FFB7766F          push word [bx+0x6f76]
0000181F  E8580C            call word 0x247a
00001822  83C408            add sp,byte +0x8
00001825  8946FA            mov [bp-0x6],ax
00001828  8956FC            mov [bp-0x4],dx
0000182B  8D5C4C            lea bx,[si+0x4c]
0000182E  31D2              xor dx,dx
00001830  031E8446          add bx,[0x4684]
00001834  13168646          adc dx,[0x4686]
00001838  31C0              xor ax,ax
0000183A  50                push ax
0000183B  B81200            mov ax,0x12
0000183E  50                push ax
0000183F  FF76FC            push word [bp-0x4]
00001842  FF76FA            push word [bp-0x6]
00001845  52                push dx
00001846  53                push bx
00001847  E83BF2            call word 0xa85
0000184A  83C40C            add sp,byte +0xc
0000184D  31C0              xor ax,ax
0000184F  E95C96            jmp word 0xaeae
00001852  55                push bp
00001853  89E5              mov bp,sp
00001855  83EC0A            sub sp,byte +0xa
00001858  56                push si
00001859  57                push di
0000185A  8B7E04            mov di,[bp+0x4]
0000185D  8B5D04            mov bx,[di+0x4]
00001860  D1E3              shl bx,1
00001862  8BB7766F          mov si,[bx+0x6f76]
00001866  837D0600          cmp word [di+0x6],byte +0x0
0000186A  740C              jz 0x1878
0000186C  B80500            mov ax,0x5
0000186F  50                push ax
00001870  FF7504            push word [di+0x4]
00001873  E8300B            call word 0x23a6
00001876  5B                pop bx
00001877  5B                pop bx
00001878  8B550A            mov dx,[di+0xa]
0000187B  8956FC            mov [bp-0x4],dx
0000187E  89541C            mov [si+0x1c],dx
00001881  B81000            mov ax,0x10
00001884  50                push ax
00001885  31C0              xor ax,ax
00001887  50                push ax
00001888  8D4432            lea ax,[si+0x32]
0000188B  50                push ax
0000188C  E8B392            call word 0xab42
0000188F  83C406            add sp,byte +0x6
00001892  8B550E            mov dx,[di+0xe]
00001895  895416            mov [si+0x16],dx
00001898  81644AFBFF        and word [si+0x4a],0xfffb
0000189D  7505              jnz 0x18a4
0000189F  56                push si
000018A0  E8F0FB            call word 0x1493
000018A3  5B                pop bx
000018A4  B80F00            mov ax,0xf
000018A7  50                push ax
000018A8  FF750C            push word [di+0xc]
000018AB  FF35              push word [di]
000018AD  E8A30C            call word 0x2553
000018B0  83C406            add sp,byte +0x6
000018B3  8946F8            mov [bp-0x8],ax
000018B6  8956FA            mov [bp-0x6],dx
000018B9  09C2              or dx,ax
000018BB  7441              jz 0x18fe
000018BD  8D9C8600          lea bx,[si+0x86]
000018C1  31D2              xor dx,dx
000018C3  031E8446          add bx,[0x4684]
000018C7  13168646          adc dx,[0x4686]
000018CB  31C0              xor ax,ax
000018CD  50                push ax
000018CE  B80F00            mov ax,0xf
000018D1  50                push ax
000018D2  52                push dx
000018D3  53                push bx
000018D4  FF76FA            push word [bp-0x6]
000018D7  FF76F8            push word [bp-0x8]
000018DA  E8A8F1            call word 0xa85
000018DD  83C40C            add sp,byte +0xc
000018E0  8D9C8600          lea bx,[si+0x86]
000018E4  895EF6            mov [bp-0xa],bx
000018E7  8B5EF6            mov bx,[bp-0xa]
000018EA  8A17              mov dl,[bx]
000018EC  30F6              xor dh,dh
000018EE  83FA20            cmp dx,byte +0x20
000018F1  7C05              jl 0x18f8
000018F3  FF46F6            inc word [bp-0xa]
000018F6  EBEF              jmp short 0x18e7
000018F8  8B5EF6            mov bx,[bp-0xa]
000018FB  C60700            mov byte [bx],0x0
000018FE  31C0              xor ax,ax
00001900  E9AA95            jmp word 0xaead
00001903  55                push bp
00001904  89E5              mov bp,sp
00001906  83EC10            sub sp,byte +0x10
00001909  56                push si
0000190A  57                push di
0000190B  8B5E04            mov bx,[bp+0x4]
0000190E  8B5704            mov dx,[bx+0x4]
00001911  8956F6            mov [bp-0xa],dx
00001914  8B5706            mov dx,[bx+0x6]
00001917  8956F4            mov [bp-0xc],dx
0000191A  8B5EF6            mov bx,[bp-0xa]
0000191D  D1E3              shl bx,1
0000191F  8BBF766F          mov di,[bx+0x6f76]
00001923  8B5EF4            mov bx,[bp-0xc]
00001926  D1E3              shl bx,1
00001928  8BB7766F          mov si,[bx+0x6f76]
0000192C  E88191            call word 0xaab0
0000192F  8B5462            mov dx,[si+0x62]
00001932  8B4C64            mov cx,[si+0x64]
00001935  03546A            add dx,[si+0x6a]
00001938  134C6C            adc cx,[si+0x6c]
0000193B  01556A            add [di+0x6a],dx
0000193E  114D6C            adc [di+0x6c],cx
00001941  8B5466            mov dx,[si+0x66]
00001944  8B4C68            mov cx,[si+0x68]
00001947  03546E            add dx,[si+0x6e]
0000194A  134C70            adc cx,[si+0x70]
0000194D  01556E            add [di+0x6e],dx
00001950  114D70            adc [di+0x70],cx
00001953  E85C91            call word 0xaab2
00001956  FF76F4            push word [bp-0xc]
00001959  E86D11            call word 0x2ac9
0000195C  5B                pop bx
0000195D  837C4A00          cmp word [si+0x4a],byte +0x0
00001961  7505              jnz 0x1968
00001963  56                push si
00001964  E843FB            call word 0x14aa
00001967  5B                pop bx
00001968  B8DE03            mov ax,0x3de
0000196B  50                push ax
0000196C  8D848600          lea ax,[si+0x86]
00001970  50                push ax
00001971  E82D92            call word 0xaba1
00001974  5B                pop bx
00001975  5B                pop bx
00001976  F6444A02          test byte [si+0x4a],0x2
0000197A  7451              jz 0x19cd
0000197C  BF5248            mov di,0x4852
0000197F  81FFEE60          cmp di,0x60ee
00001983  7348              jnc 0x19cd
00001985  837D7400          cmp word [di+0x74],byte +0x0
00001989  743C              jz 0x19c7
0000198B  397574            cmp [di+0x74],si
0000198E  7508              jnz 0x1998
00001990  8B5476            mov dx,[si+0x76]
00001993  895574            mov [di+0x74],dx
00001996  EB35              jmp short 0x19cd
00001998  8B5574            mov dx,[di+0x74]
0000199B  8956FA            mov [bp-0x6],dx
0000199E  8B5EFA            mov bx,[bp-0x6]
000019A1  8B5776            mov dx,[bx+0x76]
000019A4  8956F8            mov [bp-0x8],dx
000019A7  09D2              or dx,dx
000019A9  741C              jz 0x19c7
000019AB  3976F8            cmp [bp-0x8],si
000019AE  750F              jnz 0x19bf
000019B0  8B5EF8            mov bx,[bp-0x8]
000019B3  FF7776            push word [bx+0x76]
000019B6  8B5EFA            mov bx,[bp-0x6]
000019B9  5A                pop dx
000019BA  895776            mov [bx+0x76],dx
000019BD  EB08              jmp short 0x19c7
000019BF  8B56F8            mov dx,[bp-0x8]
000019C2  8956FA            mov [bp-0x6],dx
000019C5  EBD7              jmp short 0x199e
000019C7  81C79600          add di,0x96
000019CB  EBB2              jmp short 0x197f
000019CD  F6444A08          test byte [si+0x4a],0x8
000019D1  7404              jz 0x19d7
000019D3  FF0E2461          dec word [0x6124]
000019D7  8D848000          lea ax,[si+0x80]
000019DB  50                push ax
000019DC  E8778F            call word 0xa956
000019DF  5B                pop bx
000019E0  C78484000000      mov word [si+0x84],0x0
000019E6  C7444A0000        mov word [si+0x4a],0x0
000019EB  C744600000        mov word [si+0x60],0x0
000019F0  31C0              xor ax,ax
000019F2  E9B894            jmp word 0xaead
000019F5  55                push bp
000019F6  89E5              mov bp,sp
000019F8  56                push si
000019F9  57                push di
000019FA  8B7E04            mov di,[bp+0x4]
000019FD  8B5D04            mov bx,[di+0x4]
00001A00  D1E3              shl bx,1
00001A02  8BB7766F          mov si,[bx+0x6f76]
00001A06  8B541C            mov dx,[si+0x1c]
00001A09  89550A            mov [di+0xa],dx
00001A0C  31C0              xor ax,ax
00001A0E  E99C94            jmp word 0xaead
00001A11  55                push bp
00001A12  89E5              mov bp,sp
00001A14  56                push si
00001A15  57                push di
00001A16  8B7E04            mov di,[bp+0x4]
00001A19  8B5D04            mov bx,[di+0x4]
00001A1C  D1E3              shl bx,1
00001A1E  8BB7766F          mov si,[bx+0x6f76]
00001A22  E88B90            call word 0xaab0
00001A25  8B5462            mov dx,[si+0x62]
00001A28  8B4C64            mov cx,[si+0x64]
00001A2B  895504            mov [di+0x4],dx
00001A2E  894D06            mov [di+0x6],cx
00001A31  8B5466            mov dx,[si+0x66]
00001A34  8B4C68            mov cx,[si+0x68]
00001A37  895508            mov [di+0x8],dx
00001A3A  894D0A            mov [di+0xa],cx
00001A3D  E87290            call word 0xaab2
00001A40  8B546A            mov dx,[si+0x6a]
00001A43  8B4C6C            mov cx,[si+0x6c]
00001A46  89550C            mov [di+0xc],dx
00001A49  894D0E            mov [di+0xe],cx
00001A4C  8B546E            mov dx,[si+0x6e]
00001A4F  8B4C70            mov cx,[si+0x70]
00001A52  895510            mov [di+0x10],dx
00001A55  894D12            mov [di+0x12],cx
00001A58  E8EA0E            call word 0x2945
00001A5B  894514            mov [di+0x14],ax
00001A5E  895516            mov [di+0x16],dx
00001A61  31C0              xor ax,ax
00001A63  E94794            jmp word 0xaead
00001A66  55                push bp
00001A67  89E5              mov bp,sp
00001A69  50                push ax
00001A6A  50                push ax
00001A6B  56                push si
00001A6C  57                push di
00001A6D  8B7604            mov si,[bp+0x4]
00001A70  837C0403          cmp word [si+0x4],byte +0x3
00001A74  7531              jnz 0x1aa7
00001A76  8B5408            mov dx,[si+0x8]
00001A79  42                inc dx
00001A7A  89D7              mov di,dx
00001A7C  57                push di
00001A7D  FF740A            push word [si+0xa]
00001A80  FF7406            push word [si+0x6]
00001A83  E8CD0A            call word 0x2553
00001A86  83C406            add sp,byte +0x6
00001A89  8946FC            mov [bp-0x4],ax
00001A8C  8956FE            mov [bp-0x2],dx
00001A8F  31C0              xor ax,ax
00001A91  50                push ax
00001A92  57                push di
00001A93  FF367A46          push word [0x467a]
00001A97  FF367846          push word [0x4678]
00001A9B  FF76FE            push word [bp-0x2]
00001A9E  FF76FC            push word [bp-0x4]
00001AA1  E8E1EF            call word 0xa85
00001AA4  83C40C            add sp,byte +0xc
00001AA7  FF7404            push word [si+0x4]
00001AAA  E8212C            call word 0x46ce
00001AAD  5B                pop bx
00001AAE  31C0              xor ax,ax
00001AB0  E9FA93            jmp word 0xaead
00001AB3  55                push bp
00001AB4  89E5              mov bp,sp
00001AB6  83EC4E            sub sp,byte +0x4e
00001AB9  56                push si
00001ABA  57                push di
00001ABB  8B5E04            mov bx,[bp+0x4]
00001ABE  8B5F04            mov bx,[bx+0x4]
00001AC1  D1E3              shl bx,1
00001AC3  8BB7766F          mov si,[bx+0x6f76]
00001AC7  8B5E04            mov bx,[bp+0x4]
00001ACA  B80C00            mov ax,0xc
00001ACD  50                push ax
00001ACE  FF770A            push word [bx+0xa]
00001AD1  B80100            mov ax,0x1
00001AD4  50                push ax
00001AD5  FF36766F          push word [0x6f76]
00001AD9  E89E09            call word 0x247a
00001ADC  83C408            add sp,byte +0x8
00001ADF  8946EE            mov [bp-0x12],ax
00001AE2  8956F0            mov [bp-0x10],dx
00001AE5  8D5EF4            lea bx,[bp-0xc]
00001AE8  31D2              xor dx,dx
00001AEA  031E8446          add bx,[0x4684]
00001AEE  13168646          adc dx,[0x4686]
00001AF2  31C0              xor ax,ax
00001AF4  50                push ax
00001AF5  B80C00            mov ax,0xc
00001AF8  50                push ax
00001AF9  52                push dx
00001AFA  53                push bx
00001AFB  FF76F0            push word [bp-0x10]
00001AFE  FF76EE            push word [bp-0x12]
00001B01  E881EF            call word 0xa85
00001B04  83C40C            add sp,byte +0xc
00001B07  8B7EFE            mov di,[bp-0x2]
00001B0A  83C7DA            add di,byte -0x26
00001B0D  B82000            mov ax,0x20
00001B10  50                push ax
00001B11  56                push si
00001B12  8D46CA            lea ax,[bp-0x36]
00001B15  50                push ax
00001B16  E81890            call word 0xab31
00001B19  83C406            add sp,byte +0x6
00001B1C  C746C40200        mov word [bp-0x3c],0x2
00001B21  8B56F6            mov dx,[bp-0xa]
00001B24  8B4EF8            mov cx,[bp-0x8]
00001B27  8956C6            mov [bp-0x3a],dx
00001B2A  894EC8            mov [bp-0x38],cx
00001B2D  B82600            mov ax,0x26
00001B30  50                push ax
00001B31  57                push di
00001B32  B80100            mov ax,0x1
00001B35  50                push ax
00001B36  56                push si
00001B37  E84009            call word 0x247a
00001B3A  83C408            add sp,byte +0x8
00001B3D  8946EA            mov [bp-0x16],ax
00001B40  8956EC            mov [bp-0x14],dx
00001B43  09C2              or dx,ax
00001B45  7506              jnz 0x1b4d
00001B47  B8F2FF            mov ax,0xfff2
00001B4A  E9A200            jmp word 0x1bef
00001B4D  8D5EC4            lea bx,[bp-0x3c]
00001B50  31D2              xor dx,dx
00001B52  031E8446          add bx,[0x4684]
00001B56  13168646          adc dx,[0x4686]
00001B5A  31C0              xor ax,ax
00001B5C  50                push ax
00001B5D  B82600            mov ax,0x26
00001B60  50                push ax
00001B61  FF76EC            push word [bp-0x14]
00001B64  FF76EA            push word [bp-0x16]
00001B67  52                push dx
00001B68  53                push bx
00001B69  E819EF            call word 0xa85
00001B6C  83C40C            add sp,byte +0xc
00001B6F  8D5DF2            lea bx,[di-0xe]
00001B72  895EB2            mov [bp-0x4e],bx
00001B75  897EC0            mov [bp-0x40],di
00001B78  8B5416            mov dx,[si+0x16]
00001B7B  8956BE            mov [bp-0x42],dx
00001B7E  8B5408            mov dx,[si+0x8]
00001B81  8956BC            mov [bp-0x44],dx
00001B84  83C308            add bx,byte +0x8
00001B87  895C08            mov [si+0x8],bx
00001B8A  897EBA            mov [bp-0x46],di
00001B8D  C746B80000        mov word [bp-0x48],0x0
00001B92  8B56F4            mov dx,[bp-0xc]
00001B95  8956B6            mov [bp-0x4a],dx
00001B98  8B56FC            mov dx,[bp-0x4]
00001B9B  8956B4            mov [bp-0x4c],dx
00001B9E  B80E00            mov ax,0xe
00001BA1  50                push ax
00001BA2  FF76B2            push word [bp-0x4e]
00001BA5  B80100            mov ax,0x1
00001BA8  50                push ax
00001BA9  56                push si
00001BAA  E8CD08            call word 0x247a
00001BAD  83C408            add sp,byte +0x8
00001BB0  8946EA            mov [bp-0x16],ax
00001BB3  8956EC            mov [bp-0x14],dx
00001BB6  09C2              or dx,ax
00001BB8  7505              jnz 0x1bbf
00001BBA  B8F2FF            mov ax,0xfff2
00001BBD  EB30              jmp short 0x1bef
00001BBF  8D5EB4            lea bx,[bp-0x4c]
00001BC2  31D2              xor dx,dx
00001BC4  031E8446          add bx,[0x4684]
00001BC8  13168646          adc dx,[0x4686]
00001BCC  31C0              xor ax,ax
00001BCE  50                push ax
00001BCF  B80E00            mov ax,0xe
00001BD2  50                push ax
00001BD3  FF76EC            push word [bp-0x14]
00001BD6  FF76EA            push word [bp-0x16]
00001BD9  52                push dx
00001BDA  53                push bx
00001BDB  E8A7EE            call word 0xa85
00001BDE  83C40C            add sp,byte +0xc
00001BE1  8B56B2            mov dx,[bp-0x4e]
00001BE4  89541C            mov [si+0x1c],dx
00001BE7  8B56FA            mov dx,[bp-0x6]
00001BEA  895416            mov [si+0x16],dx
00001BED  31C0              xor ax,ax
00001BEF  E9BB92            jmp word 0xaead
00001BF2  55                push bp
00001BF3  89E5              mov bp,sp
00001BF5  83EC2C            sub sp,byte +0x2c
00001BF8  56                push si
00001BF9  57                push di
00001BFA  8B7E04            mov di,[bp+0x4]
00001BFD  8B5D04            mov bx,[di+0x4]
00001C00  D1E3              shl bx,1
00001C02  8BB7766F          mov si,[bx+0x6f76]
00001C06  B82600            mov ax,0x26
00001C09  50                push ax
00001C0A  FF750A            push word [di+0xa]
00001C0D  B80100            mov ax,0x1
00001C10  50                push ax
00001C11  56                push si
00001C12  E86508            call word 0x247a
00001C15  83C408            add sp,byte +0x8
00001C18  8946D4            mov [bp-0x2c],ax
00001C1B  8956D6            mov [bp-0x2a],dx
00001C1E  09C2              or dx,ax
00001C20  7505              jnz 0x1c27
00001C22  B8F2FF            mov ax,0xfff2
00001C25  EB77              jmp short 0x1c9e
00001C27  8D5EDA            lea bx,[bp-0x26]
00001C2A  31D2              xor dx,dx
00001C2C  031E8446          add bx,[0x4684]
00001C30  13168646          adc dx,[0x4686]
00001C34  31C0              xor ax,ax
00001C36  50                push ax
00001C37  B82600            mov ax,0x26
00001C3A  50                push ax
00001C3B  52                push dx
00001C3C  53                push bx
00001C3D  FF76D6            push word [bp-0x2a]
00001C40  FF76D4            push word [bp-0x2c]
00001C43  E83FEE            call word 0xa85
00001C46  83C40C            add sp,byte +0xc
00001C49  F646DA02          test byte [bp-0x26],0x2
00001C4D  7505              jnz 0x1c54
00001C4F  B8EAFF            mov ax,0xffea
00001C52  EB4A              jmp short 0x1c9e
00001C54  F646DA04          test byte [bp-0x26],0x4
00001C58  741C              jz 0x1c76
00001C5A  8B56F2            mov dx,[bp-0xe]
00001C5D  895412            mov [si+0x12],dx
00001C60  8B56E8            mov dx,[bp-0x18]
00001C63  895408            mov [si+0x8],dx
00001C66  8B56F6            mov dx,[bp-0xa]
00001C69  895416            mov [si+0x16],dx
00001C6C  8B56FC            mov dx,[bp-0x4]
00001C6F  89541C            mov [si+0x1c],dx
00001C72  31C0              xor ax,ax
00001C74  EB28              jmp short 0x1c9e
00001C76  8B541A            mov dx,[si+0x1a]
00001C79  8956FA            mov [bp-0x6],dx
00001C7C  8B5418            mov dx,[si+0x18]
00001C7F  8956F8            mov [bp-0x8],dx
00001C82  8B5402            mov dx,[si+0x2]
00001C85  8956E2            mov [bp-0x1e],dx
00001C88  8B14              mov dx,[si]
00001C8A  8956E0            mov [bp-0x20],dx
00001C8D  B82000            mov ax,0x20
00001C90  50                push ax
00001C91  8D46E0            lea ax,[bp-0x20]
00001C94  50                push ax
00001C95  56                push si
00001C96  E8988E            call word 0xab31
00001C99  83C406            add sp,byte +0x6
00001C9C  31C0              xor ax,ax
00001C9E  E90C92            jmp word 0xaead
00001CA1  55                push bp
00001CA2  89E5              mov bp,sp
00001CA4  56                push si
00001CA5  8B7604            mov si,[bp+0x4]
00001CA8  FF7406            push word [si+0x6]
00001CAB  FF7404            push word [si+0x4]
00001CAE  E8F506            call word 0x23a6
00001CB1  5B                pop bx
00001CB2  5B                pop bx
00001CB3  31C0              xor ax,ax
00001CB5  E9F691            jmp word 0xaeae
00001CB8  55                push bp
00001CB9  89E5              mov bp,sp
00001CBB  56                push si
00001CBC  57                push di
00001CBD  8B7E04            mov di,[bp+0x4]
00001CC0  8B5D04            mov bx,[di+0x4]
00001CC3  D1E3              shl bx,1
00001CC5  8BB7766F          mov si,[bx+0x6f76]
00001CC9  837C6000          cmp word [si+0x60],byte +0x0
00001CCD  7505              jnz 0x1cd4
00001CCF  B80DFC            mov ax,0xfc0d
00001CD2  EB27              jmp short 0x1cfb
00001CD4  83BC840000        cmp word [si+0x84],byte +0x0
00001CD9  741E              jz 0x1cf9
00001CDB  8B948400          mov dx,[si+0x84]
00001CDF  83EA01            sub dx,byte +0x1
00001CE2  89948400          mov [si+0x84],dx
00001CE6  83BC840000        cmp word [si+0x84],byte +0x0
00001CEB  750C              jnz 0x1cf9
00001CED  81644AEFFF        and word [si+0x4a],0xffef
00001CF2  7505              jnz 0x1cf9
00001CF4  56                push si
00001CF5  E89BF7            call word 0x1493
00001CF8  5B                pop bx
00001CF9  31C0              xor ax,ax
00001CFB  E9AF91            jmp word 0xaead
00001CFE  55                push bp
00001CFF  89E5              mov bp,sp
00001D01  83EC18            sub sp,byte +0x18
00001D04  56                push si
00001D05  57                push di
00001D06  8B7604            mov si,[bp+0x4]
00001D09  8B5406            mov dx,[si+0x6]
00001D0C  8956FE            mov [bp-0x2],dx
00001D0F  8B7C08            mov di,[si+0x8]
00001D12  8A4404            mov al,[si+0x4]
00001D15  98                cbw
00001D16  8946FA            mov [bp-0x6],ax
00001D19  8A4405            mov al,[si+0x5]
00001D1C  98                cbw
00001D1D  8946F8            mov [bp-0x8],ax
00001D20  8B540A            mov dx,[si+0xa]
00001D23  8956F6            mov [bp-0xa],dx
00001D26  8B540E            mov dx,[si+0xe]
00001D29  8956F4            mov [bp-0xc],dx
00001D2C  8B5412            mov dx,[si+0x12]
00001D2F  8B4C14            mov cx,[si+0x14]
00001D32  8956E8            mov [bp-0x18],dx
00001D35  894EEA            mov [bp-0x16],cx
00001D38  817EFE19FC        cmp word [bp-0x2],0xfc19
00001D3D  750E              jnz 0x1d4d
00001D3F  8B540A            mov dx,[si+0xa]
00001D42  8B4C0C            mov cx,[si+0xc]
00001D45  8956F0            mov [bp-0x10],dx
00001D48  894EF2            mov [bp-0xe],cx
00001D4B  EB39              jmp short 0x1d86
00001D4D  8B56E8            mov dx,[bp-0x18]
00001D50  3956E8            cmp [bp-0x18],dx
00001D53  7506              jnz 0x1d5b
00001D55  837EEA00          cmp word [bp-0x16],byte +0x0
00001D59  740D              jz 0x1d68
00001D5B  B80080            mov ax,0x8000
00001D5E  50                push ax
00001D5F  B8E803            mov ax,0x3e8
00001D62  50                push ax
00001D63  E826F2            call word 0xf8c
00001D66  5B                pop bx
00001D67  5B                pop bx
00001D68  8B5EFE            mov bx,[bp-0x2]
00001D6B  D1E3              shl bx,1
00001D6D  FF76E8            push word [bp-0x18]
00001D70  FF76F6            push word [bp-0xa]
00001D73  FF76FA            push word [bp-0x6]
00001D76  FFB7766F          push word [bx+0x6f76]
00001D7A  E8FD06            call word 0x247a
00001D7D  83C408            add sp,byte +0x8
00001D80  8946F0            mov [bp-0x10],ax
00001D83  8956F2            mov [bp-0xe],dx
00001D86  81FF19FC          cmp di,0xfc19
00001D8A  750E              jnz 0x1d9a
00001D8C  8B540E            mov dx,[si+0xe]
00001D8F  8B4C10            mov cx,[si+0x10]
00001D92  8956EC            mov [bp-0x14],dx
00001D95  894EEE            mov [bp-0x12],cx
00001D98  EB1D              jmp short 0x1db7
00001D9A  89FB              mov bx,di
00001D9C  D1E3              shl bx,1
00001D9E  FF76E8            push word [bp-0x18]
00001DA1  FF76F4            push word [bp-0xc]
00001DA4  FF76F8            push word [bp-0x8]
00001DA7  FFB7766F          push word [bx+0x6f76]
00001DAB  E8CC06            call word 0x247a
00001DAE  83C408            add sp,byte +0x8
00001DB1  8946EC            mov [bp-0x14],ax
00001DB4  8956EE            mov [bp-0x12],dx
00001DB7  8B56F2            mov dx,[bp-0xe]
00001DBA  0B56F0            or dx,[bp-0x10]
00001DBD  7408              jz 0x1dc7
00001DBF  8B56EE            mov dx,[bp-0x12]
00001DC2  0B56EC            or dx,[bp-0x14]
00001DC5  7505              jnz 0x1dcc
00001DC7  B8F2FF            mov ax,0xfff2
00001DCA  EB1A              jmp short 0x1de6
00001DCC  FF76EA            push word [bp-0x16]
00001DCF  FF76E8            push word [bp-0x18]
00001DD2  FF76EE            push word [bp-0x12]
00001DD5  FF76EC            push word [bp-0x14]
00001DD8  FF76F2            push word [bp-0xe]
00001DDB  FF76F0            push word [bp-0x10]
00001DDE  E8A4EC            call word 0xa85
00001DE1  83C40C            add sp,byte +0xc
00001DE4  31C0              xor ax,ax
00001DE6  E9C490            jmp word 0xaead
00001DE9  55                push bp
00001DEA  89E5              mov bp,sp
00001DEC  83EC7A            sub sp,byte +0x7a
00001DEF  56                push si
00001DF0  57                push di
00001DF1  8B7604            mov si,[bp+0x4]
00001DF4  8B5404            mov dx,[si+0x4]
00001DF7  8956FE            mov [bp-0x2],dx
00001DFA  8B5406            mov dx,[si+0x6]
00001DFD  8956FC            mov [bp-0x4],dx
00001E00  8B5408            mov dx,[si+0x8]
00001E03  8956FA            mov [bp-0x6],dx
00001E06  8B540A            mov dx,[si+0xa]
00001E09  8956F2            mov [bp-0xe],dx
00001E0C  837EFA10          cmp word [bp-0x6],byte +0x10
00001E10  7E06              jng 0x1e18
00001E12  B8DFFF            mov ax,0xffdf
00001E15  E9DD00            jmp word 0x1ef5
00001E18  B80600            mov ax,0x6
00001E1B  F766FA            mul word [bp-0x6]
00001E1E  50                push ax
00001E1F  FF76F2            push word [bp-0xe]
00001E22  FF34              push word [si]
00001E24  E82C07            call word 0x2553
00001E27  83C406            add sp,byte +0x6
00001E2A  8946EE            mov [bp-0x12],ax
00001E2D  8956F0            mov [bp-0x10],dx
00001E30  09C2              or dx,ax
00001E32  7506              jnz 0x1e3a
00001E34  B8F2FF            mov ax,0xfff2
00001E37  E9BB00            jmp word 0x1ef5
00001E3A  B80600            mov ax,0x6
00001E3D  F766FA            mul word [bp-0x6]
00001E40  8D5E86            lea bx,[bp-0x7a]
00001E43  31D2              xor dx,dx
00001E45  031E8446          add bx,[0x4684]
00001E49  13168646          adc dx,[0x4686]
00001E4D  31C9              xor cx,cx
00001E4F  51                push cx
00001E50  50                push ax
00001E51  52                push dx
00001E52  53                push bx
00001E53  FF76F0            push word [bp-0x10]
00001E56  FF76EE            push word [bp-0x12]
00001E59  E829EC            call word 0xa85
00001E5C  83C40C            add sp,byte +0xc
00001E5F  31FF              xor di,di
00001E61  397EFA            cmp [bp-0x6],di
00001E64  7F03              jg 0x1e69
00001E66  E98A00            jmp word 0x1ef3
00001E69  B80600            mov ax,0x6
00001E6C  F7E7              mul di
00001E6E  8D5E86            lea bx,[bp-0x7a]
00001E71  01C3              add bx,ax
00001E73  8B17              mov dx,[bx]
00001E75  8956F6            mov [bp-0xa],dx
00001E78  B80600            mov ax,0x6
00001E7B  F7E7              mul di
00001E7D  8D5E86            lea bx,[bp-0x7a]
00001E80  01C3              add bx,ax
00001E82  8B5702            mov dx,[bx+0x2]
00001E85  8956F4            mov [bp-0xc],dx
00001E88  B80600            mov ax,0x6
00001E8B  F7E7              mul di
00001E8D  8D5E86            lea bx,[bp-0x7a]
00001E90  01C3              add bx,ax
00001E92  8B5704            mov dx,[bx+0x4]
00001E95  8956E6            mov [bp-0x1a],dx
00001E98  C746E80000        mov word [bp-0x18],0x0
00001E9D  52                push dx
00001E9E  FF76F6            push word [bp-0xa]
00001EA1  FF76FE            push word [bp-0x2]
00001EA4  E8AC06            call word 0x2553
00001EA7  83C406            add sp,byte +0x6
00001EAA  8946EE            mov [bp-0x12],ax
00001EAD  8956F0            mov [bp-0x10],dx
00001EB0  FF76E6            push word [bp-0x1a]
00001EB3  FF76F4            push word [bp-0xc]
00001EB6  FF76FC            push word [bp-0x4]
00001EB9  E89706            call word 0x2553
00001EBC  83C406            add sp,byte +0x6
00001EBF  8946EA            mov [bp-0x16],ax
00001EC2  8956EC            mov [bp-0x14],dx
00001EC5  8B56F0            mov dx,[bp-0x10]
00001EC8  0B56EE            or dx,[bp-0x12]
00001ECB  7405              jz 0x1ed2
00001ECD  0B46EC            or ax,[bp-0x14]
00001ED0  7505              jnz 0x1ed7
00001ED2  B8F2FF            mov ax,0xfff2
00001ED5  EB1E              jmp short 0x1ef5
00001ED7  FF76E8            push word [bp-0x18]
00001EDA  FF76E6            push word [bp-0x1a]
00001EDD  FF76EC            push word [bp-0x14]
00001EE0  FF76EA            push word [bp-0x16]
00001EE3  FF76F0            push word [bp-0x10]
00001EE6  FF76EE            push word [bp-0x12]
00001EE9  E899EB            call word 0xa85
00001EEC  83C40C            add sp,byte +0xc
00001EEF  47                inc di
00001EF0  E96EFF            jmp word 0x1e61
00001EF3  31C0              xor ax,ax
00001EF5  E9B58F            jmp word 0xaead
00001EF8  55                push bp
00001EF9  89E5              mov bp,sp
00001EFB  56                push si
00001EFC  57                push di
00001EFD  8B7604            mov si,[bp+0x4]
00001F00  BF2661            mov di,0x6126
00001F03  81FF4661          cmp di,0x6146
00001F07  7322              jnc 0x1f2b
00001F09  8B15              mov dx,[di]
00001F0B  895404            mov [si+0x4],dx
00001F0E  8B5502            mov dx,[di+0x2]
00001F11  895406            mov [si+0x6],dx
00001F14  8B164661          mov dx,[0x6146]
00001F18  895408            mov [si+0x8],dx
00001F1B  C745020000        mov word [di+0x2],0x0
00001F20  837C0600          cmp word [si+0x6],byte +0x0
00001F24  7505              jnz 0x1f2b
00001F26  83C704            add di,byte +0x4
00001F29  EBD8              jmp short 0x1f03
00001F2B  31C0              xor ax,ax
00001F2D  E97D8F            jmp word 0xaead
00001F30  55                push bp
00001F31  89E5              mov bp,sp
00001F33  56                push si
00001F34  8B7604            mov si,[bp+0x4]
00001F37  8A4404            mov al,[si+0x4]
00001F3A  98                cbw
00001F3B  8B5C06            mov bx,[si+0x6]
00001F3E  D1E3              shl bx,1
00001F40  FF7412            push word [si+0x12]
00001F43  FF740A            push word [si+0xa]
00001F46  50                push ax
00001F47  FFB7766F          push word [bx+0x6f76]
00001F4B  E82C05            call word 0x247a
00001F4E  83C408            add sp,byte +0x8
00001F51  89440A            mov [si+0xa],ax
00001F54  89540C            mov [si+0xc],dx
00001F57  31C0              xor ax,ax
00001F59  E9528F            jmp word 0xaeae
00001F5C  55                push bp
00001F5D  89E5              mov bp,sp
00001F5F  83EC0C            sub sp,byte +0xc
00001F62  56                push si
00001F63  57                push di
00001F64  8B7E04            mov di,[bp+0x4]
00001F67  8B5D04            mov bx,[di+0x4]
00001F6A  D1E3              shl bx,1
00001F6C  8BB7766F          mov si,[bx+0x6f76]
00001F70  837C6000          cmp word [si+0x60],byte +0x0
00001F74  7403              jz 0x1f79
00001F76  E91B02            jmp word 0x2194
00001F79  B8FBFF            mov ax,0xfffb
00001F7C  E92002            jmp word 0x219f
00001F7F  837C4A00          cmp word [si+0x4a],byte +0x0
00001F83  7505              jnz 0x1f8a
00001F85  56                push si
00001F86  E821F5            call word 0x14aa
00001F89  5B                pop bx
00001F8A  814C4A2000        or word [si+0x4a],0x20
00001F8F  81641AFFFE        and word [si+0x1a],0xfeff
00001F94  31C0              xor ax,ax
00001F96  E90602            jmp word 0x219f
00001F99  837C5000          cmp word [si+0x50],byte +0x0
00001F9D  7446              jz 0x1fe5
00001F9F  B80400            mov ax,0x4
00001FA2  50                push ax
00001FA3  FF750A            push word [di+0xa]
00001FA6  31C0              xor ax,ax
00001FA8  50                push ax
00001FA9  56                push si
00001FAA  E8CD04            call word 0x247a
00001FAD  83C408            add sp,byte +0x8
00001FB0  8946FA            mov [bp-0x6],ax
00001FB3  8956FC            mov [bp-0x4],dx
00001FB6  09C2              or dx,ax
00001FB8  7506              jnz 0x1fc0
00001FBA  B8FBFF            mov ax,0xfffb
00001FBD  E9DF01            jmp word 0x219f
00001FC0  8D5D0E            lea bx,[di+0xe]
00001FC3  31D2              xor dx,dx
00001FC5  031E8446          add bx,[0x4684]
00001FC9  13168646          adc dx,[0x4686]
00001FCD  31C0              xor ax,ax
00001FCF  50                push ax
00001FD0  B80400            mov ax,0x4
00001FD3  50                push ax
00001FD4  52                push dx
00001FD5  53                push bx
00001FD6  FF76FC            push word [bp-0x4]
00001FD9  FF76FA            push word [bp-0x6]
00001FDC  E8A6EA            call word 0xa85
00001FDF  83C40C            add sp,byte +0xc
00001FE2  E9B801            jmp word 0x219d
00001FE5  B80400            mov ax,0x4
00001FE8  50                push ax
00001FE9  FF750A            push word [di+0xa]
00001FEC  B80100            mov ax,0x1
00001FEF  50                push ax
00001FF0  56                push si
00001FF1  E88604            call word 0x247a
00001FF4  83C408            add sp,byte +0x8
00001FF7  8946FA            mov [bp-0x6],ax
00001FFA  8956FC            mov [bp-0x4],dx
00001FFD  09C2              or dx,ax
00001FFF  7506              jnz 0x2007
00002001  B8FBFF            mov ax,0xfffb
00002004  E99801            jmp word 0x219f
00002007  8D5D0E            lea bx,[di+0xe]
0000200A  31D2              xor dx,dx
0000200C  031E8446          add bx,[0x4684]
00002010  13168646          adc dx,[0x4686]
00002014  31C0              xor ax,ax
00002016  50                push ax
00002017  B80400            mov ax,0x4
0000201A  50                push ax
0000201B  52                push dx
0000201C  53                push bx
0000201D  FF76FC            push word [bp-0x4]
00002020  FF76FA            push word [bp-0x6]
00002023  E85FEA            call word 0xa85
00002026  83C40C            add sp,byte +0xc
00002029  E97101            jmp word 0x219d
0000202C  F6450A03          test byte [di+0xa],0x3
00002030  7507              jnz 0x2039
00002032  817D0A9200        cmp word [di+0xa],0x92
00002037  7606              jna 0x203f
00002039  B8FBFF            mov ax,0xfffb
0000203C  E96001            jmp word 0x219f
0000203F  89F3              mov bx,si
00002041  035D0A            add bx,[di+0xa]
00002044  8B17              mov dx,[bx]
00002046  8B4F02            mov cx,[bx+0x2]
00002049  89550E            mov [di+0xe],dx
0000204C  894D10            mov [di+0x10],cx
0000204F  E94B01            jmp word 0x219d
00002052  837C5000          cmp word [si+0x50],byte +0x0
00002056  744E              jz 0x20a6
00002058  B80400            mov ax,0x4
0000205B  50                push ax
0000205C  FF750A            push word [di+0xa]
0000205F  31C0              xor ax,ax
00002061  50                push ax
00002062  56                push si
00002063  E81404            call word 0x247a
00002066  83C408            add sp,byte +0x8
00002069  8946F6            mov [bp-0xa],ax
0000206C  8956F8            mov [bp-0x8],dx
0000206F  09C2              or dx,ax
00002071  7506              jnz 0x2079
00002073  B8FBFF            mov ax,0xfffb
00002076  E92601            jmp word 0x219f
00002079  8D5D0E            lea bx,[di+0xe]
0000207C  31D2              xor dx,dx
0000207E  031E8446          add bx,[0x4684]
00002082  13168646          adc dx,[0x4686]
00002086  31C0              xor ax,ax
00002088  50                push ax
00002089  B80400            mov ax,0x4
0000208C  50                push ax
0000208D  FF76F8            push word [bp-0x8]
00002090  FF76F6            push word [bp-0xa]
00002093  52                push dx
00002094  53                push bx
00002095  E8EDE9            call word 0xa85
00002098  83C40C            add sp,byte +0xc
0000209B  31C0              xor ax,ax
0000209D  89450E            mov [di+0xe],ax
000020A0  894510            mov [di+0x10],ax
000020A3  E9F700            jmp word 0x219d
000020A6  B80400            mov ax,0x4
000020A9  50                push ax
000020AA  FF750A            push word [di+0xa]
000020AD  B80100            mov ax,0x1
000020B0  50                push ax
000020B1  56                push si
000020B2  E8C503            call word 0x247a
000020B5  83C408            add sp,byte +0x8
000020B8  8946F6            mov [bp-0xa],ax
000020BB  8956F8            mov [bp-0x8],dx
000020BE  09C2              or dx,ax
000020C0  7506              jnz 0x20c8
000020C2  B8FBFF            mov ax,0xfffb
000020C5  E9D700            jmp word 0x219f
000020C8  8D5D0E            lea bx,[di+0xe]
000020CB  31D2              xor dx,dx
000020CD  031E8446          add bx,[0x4684]
000020D1  13168646          adc dx,[0x4686]
000020D5  31C0              xor ax,ax
000020D7  50                push ax
000020D8  B80400            mov ax,0x4
000020DB  50                push ax
000020DC  FF76F8            push word [bp-0x8]
000020DF  FF76F6            push word [bp-0xa]
000020E2  52                push dx
000020E3  53                push bx
000020E4  E89EE9            call word 0xa85
000020E7  83C40C            add sp,byte +0xc
000020EA  31C0              xor ax,ax
000020EC  89450E            mov [di+0xe],ax
000020EF  894510            mov [di+0x10],ax
000020F2  E9A800            jmp word 0x219d
000020F5  F6450A01          test byte [di+0xa],0x1
000020F9  7506              jnz 0x2101
000020FB  837D0A1E          cmp word [di+0xa],byte +0x1e
000020FF  7606              jna 0x2107
00002101  B8FBFF            mov ax,0xfffb
00002104  E99800            jmp word 0x219f
00002107  8B550A            mov dx,[di+0xa]
0000210A  8956F4            mov [bp-0xc],dx
0000210D  83FA18            cmp dx,byte +0x18
00002110  7412              jz 0x2124
00002112  837EF402          cmp word [bp-0xc],byte +0x2
00002116  740C              jz 0x2124
00002118  837EF400          cmp word [bp-0xc],byte +0x0
0000211C  7406              jz 0x2124
0000211E  837EF41E          cmp word [bp-0xc],byte +0x1e
00002122  7506              jnz 0x212a
00002124  B8FBFF            mov ax,0xfffb
00002127  E97500            jmp word 0x219f
0000212A  837EF41A          cmp word [bp-0xc],byte +0x1a
0000212E  751A              jnz 0x214a
00002130  BA2AF3            mov dx,0xf32a
00002133  23541A            and dx,[si+0x1a]
00002136  8B4D0E            mov cx,[di+0xe]
00002139  81E1D50C          and cx,0xcd5
0000213D  31DB              xor bx,bx
0000213F  09CA              or dx,cx
00002141  81CB0000          or bx,0x0
00002145  89541A            mov [si+0x1a],dx
00002148  EB0A              jmp short 0x2154
0000214A  89F3              mov bx,si
0000214C  035EF4            add bx,[bp-0xc]
0000214F  8B550E            mov dx,[di+0xe]
00002152  8917              mov [bx],dx
00002154  31C0              xor ax,ax
00002156  89450E            mov [di+0xe],ax
00002159  894510            mov [di+0x10],ax
0000215C  EB3F              jmp short 0x219d
0000215E  81644ADFFF        and word [si+0x4a],0xffdf
00002163  7505              jnz 0x216a
00002165  56                push si
00002166  E82AF3            call word 0x1493
00002169  5B                pop bx
0000216A  31C0              xor ax,ax
0000216C  89450E            mov [di+0xe],ax
0000216F  894510            mov [di+0x10],ax
00002172  EB29              jmp short 0x219d
00002174  814C1A0001        or word [si+0x1a],0x100
00002179  81644ADFFF        and word [si+0x4a],0xffdf
0000217E  7505              jnz 0x2185
00002180  56                push si
00002181  E80FF3            call word 0x1493
00002184  5B                pop bx
00002185  31C0              xor ax,ax
00002187  89450E            mov [di+0xe],ax
0000218A  894510            mov [di+0x10],ax
0000218D  EB0E              jmp short 0x219d
0000218F  B8FBFF            mov ax,0xfffb
00002192  EB0B              jmp short 0x219f
00002194  BB0604            mov bx,0x406
00002197  8B4506            mov ax,[di+0x6]
0000219A  E9A78B            jmp word 0xad44
0000219D  31C0              xor ax,ax
0000219F  E90B8D            jmp word 0xaead
000021A2  55                push bp
000021A3  89E5              mov bp,sp
000021A5  83EC40            sub sp,byte +0x40
000021A8  56                push si
000021A9  57                push di
000021AA  8B5E04            mov bx,[bp+0x4]
000021AD  8B7F04            mov di,[bx+0x4]
000021B0  89FB              mov bx,di
000021B2  D1E3              shl bx,1
000021B4  8BB7766F          mov si,[bx+0x6f76]
000021B8  8B5E04            mov bx,[bp+0x4]
000021BB  8B5706            mov dx,[bx+0x6]
000021BE  8956F8            mov [bp-0x8],dx
000021C1  8B5708            mov dx,[bx+0x8]
000021C4  8956FC            mov [bp-0x4],dx
000021C7  8B5712            mov dx,[bx+0x12]
000021CA  8956F6            mov [bp-0xa],dx
000021CD  E92D01            jmp word 0x22fd
000021D0  837EFC00          cmp word [bp-0x4],byte +0x0
000021D4  7406              jz 0x21dc
000021D6  837C6003          cmp word [si+0x60],byte +0x3
000021DA  7406              jz 0x21e2
000021DC  B8FFFF            mov ax,0xffff
000021DF  E92401            jmp word 0x2306
000021E2  897EF4            mov [bp-0xc],di
000021E5  B80200            mov ax,0x2
000021E8  50                push ax
000021E9  FF76F6            push word [bp-0xa]
000021EC  57                push di
000021ED  8D46F4            lea ax,[bp-0xc]
000021F0  50                push ax
000021F1  B8FEFF            mov ax,0xfffe
000021F4  50                push ax
000021F5  E87A03            call word 0x2572
000021F8  83C40A            add sp,byte +0xa
000021FB  09C0              or ax,ax
000021FD  7406              jz 0x2205
000021FF  B8F2FF            mov ax,0xfff2
00002202  E90101            jmp word 0x2306
00002205  C744600200        mov word [si+0x60],0x2
0000220A  C7445E0000        mov word [si+0x5e],0x0
0000220F  31C0              xor ax,ax
00002211  E9F200            jmp word 0x2306
00002214  B80800            mov ax,0x8
00002217  50                push ax
00002218  8D46EC            lea ax,[bp-0x14]
0000221B  50                push ax
0000221C  B8FEFF            mov ax,0xfffe
0000221F  50                push ax
00002220  FF76F6            push word [bp-0xa]
00002223  57                push di
00002224  E84B03            call word 0x2572
00002227  83C40A            add sp,byte +0xa
0000222A  09C0              or ax,ax
0000222C  7406              jz 0x2234
0000222E  B8F2FF            mov ax,0xfff2
00002231  E9D200            jmp word 0x2306
00002234  837EEE00          cmp word [bp-0x12],byte +0x0
00002238  7460              jz 0x229a
0000223A  837EEE20          cmp word [bp-0x12],byte +0x20
0000223E  7606              jna 0x2246
00002240  B8EAFF            mov ax,0xffea
00002243  E9C000            jmp word 0x2306
00002246  FF76EE            push word [bp-0x12]
00002249  8D46C4            lea ax,[bp-0x3c]
0000224C  50                push ax
0000224D  B8FEFF            mov ax,0xfffe
00002250  50                push ax
00002251  FF76EC            push word [bp-0x14]
00002254  57                push di
00002255  E81A03            call word 0x2572
00002258  83C40A            add sp,byte +0xa
0000225B  09C0              or ax,ax
0000225D  7406              jz 0x2265
0000225F  B8F2FF            mov ax,0xfff2
00002262  E9A100            jmp word 0x2306
00002265  8D46C4            lea ax,[bp-0x3c]
00002268  50                push ax
00002269  E803E2            call word 0x46f
0000226C  5B                pop bx
0000226D  8946C2            mov [bp-0x3e],ax
00002270  09C0              or ax,ax
00002272  7506              jnz 0x227a
00002274  B8FDFF            mov ax,0xfffd
00002277  E98C00            jmp word 0x2306
0000227A  8B56C2            mov dx,[bp-0x3e]
0000227D  31C9              xor cx,cx
0000227F  03168446          add dx,[0x4684]
00002283  130E8646          adc cx,[0x4686]
00002287  8956E8            mov [bp-0x18],dx
0000228A  894EEA            mov [bp-0x16],cx
0000228D  FF76C2            push word [bp-0x3e]
00002290  E82089            call word 0xabb3
00002293  5B                pop bx
00002294  40                inc ax
00002295  8946C0            mov [bp-0x40],ax
00002298  EB15              jmp short 0x22af
0000229A  8B167846          mov dx,[0x4678]
0000229E  8B0E7A46          mov cx,[0x467a]
000022A2  8956E8            mov [bp-0x18],dx
000022A5  894EEA            mov [bp-0x16],cx
000022A8  8B168846          mov dx,[0x4688]
000022AC  8956C0            mov [bp-0x40],dx
000022AF  FF76F2            push word [bp-0xe]
000022B2  FF76F0            push word [bp-0x10]
000022B5  B80100            mov ax,0x1
000022B8  50                push ax
000022B9  56                push si
000022BA  E8BD01            call word 0x247a
000022BD  83C408            add sp,byte +0x8
000022C0  8946E4            mov [bp-0x1c],ax
000022C3  8956E6            mov [bp-0x1a],dx
000022C6  09C2              or dx,ax
000022C8  7505              jnz 0x22cf
000022CA  B8F2FF            mov ax,0xfff2
000022CD  EB37              jmp short 0x2306
000022CF  8B56F2            mov dx,[bp-0xe]
000022D2  3956C0            cmp [bp-0x40],dx
000022D5  7605              jna 0x22dc
000022D7  B8F9FF            mov ax,0xfff9
000022DA  EB2A              jmp short 0x2306
000022DC  31C0              xor ax,ax
000022DE  50                push ax
000022DF  FF76C0            push word [bp-0x40]
000022E2  FF76E6            push word [bp-0x1a]
000022E5  FF76E4            push word [bp-0x1c]
000022E8  FF76EA            push word [bp-0x16]
000022EB  FF76E8            push word [bp-0x18]
000022EE  E894E7            call word 0xa85
000022F1  83C40C            add sp,byte +0xc
000022F4  31C0              xor ax,ax
000022F6  EB0E              jmp short 0x2306
000022F8  B8EAFF            mov ax,0xffea
000022FB  EB09              jmp short 0x2306
000022FD  BB2204            mov bx,0x422
00002300  8B46F8            mov ax,[bp-0x8]
00002303  E93E8A            jmp word 0xad44
00002306  E9A48B            jmp word 0xaead
00002309  55                push bp
0000230A  89E5              mov bp,sp
0000230C  50                push ax
0000230D  56                push si
0000230E  57                push di
0000230F  8B5E04            mov bx,[bp+0x4]
00002312  8B7F0A            mov di,[bx+0xa]
00002315  8B7704            mov si,[bx+0x4]
00002318  09F6              or si,si
0000231A  7E32              jng 0x234e
0000231C  89FA              mov dx,di
0000231E  42                inc dx
0000231F  B80100            mov ax,0x1
00002322  50                push ax
00002323  8D46FF            lea ax,[bp-0x1]
00002326  50                push ax
00002327  B8FEFF            mov ax,0xfffe
0000232A  50                push ax
0000232B  57                push di
0000232C  89D7              mov di,dx
0000232E  8B5E04            mov bx,[bp+0x4]
00002331  FF37              push word [bx]
00002333  E83C02            call word 0x2572
00002336  83C40A            add sp,byte +0xa
00002339  09C0              or ax,ax
0000233B  7405              jz 0x2342
0000233D  B8F2FF            mov ax,0xfff2
00002340  EB15              jmp short 0x2357
00002342  8A46FF            mov al,[bp-0x1]
00002345  98                cbw
00002346  50                push ax
00002347  E83C31            call word 0x5486
0000234A  5B                pop bx
0000234B  4E                dec si
0000234C  EBCA              jmp short 0x2318
0000234E  31C0              xor ax,ax
00002350  50                push ax
00002351  E83231            call word 0x5486
00002354  5B                pop bx
00002355  31C0              xor ax,ax
00002357  E9538B            jmp word 0xaead
0000235A  55                push bp
0000235B  89E5              mov bp,sp
0000235D  56                push si
0000235E  BE5248            mov si,0x4852
00002361  81FEEE60          cmp si,0x60ee
00002365  7339              jnc 0x23a0
00002367  837C6001          cmp word [si+0x60],byte +0x1
0000236B  7406              jz 0x2373
0000236D  837C6002          cmp word [si+0x60],byte +0x2
00002371  7527              jnz 0x239a
00002373  8B5E04            mov bx,[bp+0x4]
00002376  B80E00            mov ax,0xe
00002379  50                push ax
0000237A  83C30A            add bx,byte +0xa
0000237D  53                push bx
0000237E  8D848600          lea ax,[si+0x86]
00002382  50                push ax
00002383  E83388            call word 0xabb9
00002386  83C406            add sp,byte +0x6
00002389  09C0              or ax,ax
0000238B  750D              jnz 0x239a
0000238D  8B5E04            mov bx,[bp+0x4]
00002390  8B5444            mov dx,[si+0x44]
00002393  895704            mov [bx+0x4],dx
00002396  31C0              xor ax,ax
00002398  EB09              jmp short 0x23a3
0000239A  81C69600          add si,0x96
0000239E  EBC1              jmp short 0x2361
000023A0  B8FDFF            mov ax,0xfffd
000023A3  E9088B            jmp word 0xaeae
000023A6  55                push bp
000023A7  89E5              mov bp,sp
000023A9  56                push si
000023AA  57                push di
000023AB  8B5E04            mov bx,[bp+0x4]
000023AE  D1E3              shl bx,1
000023B0  8BB7766F          mov si,[bx+0x6f76]
000023B4  FF7606            push word [bp+0x6]
000023B7  8D848000          lea ax,[si+0x80]
000023BB  50                push ax
000023BC  E89B85            call word 0xa95a
000023BF  5B                pop bx
000023C0  5B                pop bx
000023C1  09C0              or ax,ax
000023C3  7540              jnz 0x2405
000023C5  FF7606            push word [bp+0x6]
000023C8  8D848000          lea ax,[si+0x80]
000023CC  50                push ax
000023CD  E88285            call word 0xa952
000023D0  5B                pop bx
000023D1  5B                pop bx
000023D2  8384840001        add word [si+0x84],byte +0x1
000023D7  F6444A08          test byte [si+0x4a],0x8
000023DB  7528              jnz 0x2405
000023DD  837C4A00          cmp word [si+0x4a],byte +0x0
000023E1  7505              jnz 0x23e8
000023E3  56                push si
000023E4  E8C3F0            call word 0x14aa
000023E7  5B                pop bx
000023E8  814C4A1800        or word [si+0x4a],0x18
000023ED  FF062461          inc word [0x6124]
000023F1  8B3E766F          mov di,[0x6f76]
000023F5  F6454A04          test byte [di+0x4a],0x4
000023F9  740A              jz 0x2405
000023FB  817D7ACE7A        cmp word [di+0x7a],0x7ace
00002400  7503              jnz 0x2405
00002402  E80300            call word 0x2408
00002405  E9A58A            jmp word 0xaead
00002408  55                push bp
00002409  89E5              mov bp,sp
0000240B  56                push si
0000240C  BE2E4E            mov si,0x4e2e
0000240F  81FEEE60          cmp si,0x60ee
00002413  7362              jnc 0x2477
00002415  F6444A08          test byte [si+0x4a],0x8
00002419  7456              jz 0x2471
0000241B  C7063C214000      mov word [0x213c],0x40
00002421  8B5444            mov dx,[si+0x44]
00002424  89163E21          mov [0x213e],dx
00002428  8B948000          mov dx,[si+0x80]
0000242C  8B8C8200          mov cx,[si+0x82]
00002430  89164421          mov [0x2144],dx
00002434  890E4621          mov [0x2146],cx
00002438  FF0E2461          dec word [0x6124]
0000243C  B83A21            mov ax,0x213a
0000243F  50                push ax
00002440  31C0              xor ax,ax
00002442  50                push ax
00002443  FF36746F          push word [0x6f74]
00002447  E813F0            call word 0x145d
0000244A  83C406            add sp,byte +0x6
0000244D  09C0              or ax,ax
0000244F  740D              jz 0x245e
00002451  B80080            mov ax,0x8000
00002454  50                push ax
00002455  B83004            mov ax,0x430
00002458  50                push ax
00002459  E830EB            call word 0xf8c
0000245C  5B                pop bx
0000245D  5B                pop bx
0000245E  8D848000          lea ax,[si+0x80]
00002462  50                push ax
00002463  E8F084            call word 0xa956
00002466  5B                pop bx
00002467  81644AF7FF        and word [si+0x4a],0xfff7
0000246C  E811F0            call word 0x1480
0000246F  EB06              jmp short 0x2477
00002471  81C69600          add si,0x96
00002475  EB98              jmp short 0x240f
00002477  E9348A            jmp word 0xaeae
0000247A  55                push bp
0000247B  89E5              mov bp,sp
0000247D  83EC0A            sub sp,byte +0xa
00002480  56                push si
00002481  57                push di
00002482  8B7E06            mov di,[bp+0x6]
00002485  8B7604            mov si,[bp+0x4]
00002488  837E0A00          cmp word [bp+0xa],byte +0x0
0000248C  7507              jnz 0x2495
0000248E  31C0              xor ax,ax
00002490  50                push ax
00002491  50                push ax
00002492  E9B900            jmp word 0x254e
00002495  8B560A            mov dx,[bp+0xa]
00002498  035608            add dx,[bp+0x8]
0000249B  83EA01            sub dx,byte +0x1
0000249E  B90A00            mov cx,0xa
000024A1  D3EA              shr dx,cl
000024A3  8956FE            mov [bp-0x2],dx
000024A6  09FF              or di,di
000024A8  7415              jz 0x24bf
000024AA  8B5456            mov dx,[si+0x56]
000024AD  035452            add dx,[si+0x52]
000024B0  3956FE            cmp [bp-0x2],dx
000024B3  7305              jnc 0x24ba
000024B5  B80100            mov ax,0x1
000024B8  EB03              jmp short 0x24bd
000024BA  B80200            mov ax,0x2
000024BD  89C7              mov di,ax
000024BF  B80600            mov ax,0x6
000024C2  F7E7              mul di
000024C4  8D5C4C            lea bx,[si+0x4c]
000024C7  01C3              add bx,ax
000024C9  B80600            mov ax,0x6
000024CC  F7E7              mul di
000024CE  FF37              push word [bx]
000024D0  8D5C4C            lea bx,[si+0x4c]
000024D3  01C3              add bx,ax
000024D5  5A                pop dx
000024D6  035704            add dx,[bx+0x4]
000024D9  B90A00            mov cx,0xa
000024DC  8B5E08            mov bx,[bp+0x8]
000024DF  D3EB              shr bx,cl
000024E1  39DA              cmp dx,bx
000024E3  7706              ja 0x24eb
000024E5  31C0              xor ax,ax
000024E7  50                push ax
000024E8  50                push ax
000024E9  EB63              jmp short 0x254e
000024EB  B80600            mov ax,0x6
000024EE  F7E7              mul di
000024F0  8D5C4C            lea bx,[si+0x4c]
000024F3  01C3              add bx,ax
000024F5  8B5702            mov dx,[bx+0x2]
000024F8  8956F6            mov [bp-0xa],dx
000024FB  C746F80000        mov word [bp-0x8],0x0
00002500  B90A00            mov cx,0xa
00002503  31DB              xor bx,bx
00002505  E306              jcxz 0x250d
00002507  D1E2              shl dx,1
00002509  D1D3              rcl bx,1
0000250B  E2FA              loop 0x2507
0000250D  8956F6            mov [bp-0xa],dx
00002510  895EF8            mov [bp-0x8],bx
00002513  8B5608            mov dx,[bp+0x8]
00002516  8956FA            mov [bp-0x6],dx
00002519  C746FC0000        mov word [bp-0x4],0x0
0000251E  B80600            mov ax,0x6
00002521  31DB              xor bx,bx
00002523  53                push bx
00002524  52                push dx
00002525  F7E7              mul di
00002527  8D5C4C            lea bx,[si+0x4c]
0000252A  01C3              add bx,ax
0000252C  B90A00            mov cx,0xa
0000252F  8B17              mov dx,[bx]
00002531  D3E2              shl dx,cl
00002533  59                pop cx
00002534  5B                pop bx
00002535  29D1              sub cx,dx
00002537  83DB00            sbb bx,byte +0x0
0000253A  894EFA            mov [bp-0x6],cx
0000253D  895EFC            mov [bp-0x4],bx
00002540  8B56F6            mov dx,[bp-0xa]
00002543  8B4EF8            mov cx,[bp-0x8]
00002546  0356FA            add dx,[bp-0x6]
00002549  134EFC            adc cx,[bp-0x4]
0000254C  51                push cx
0000254D  52                push dx
0000254E  58                pop ax
0000254F  5A                pop dx
00002550  E95A89            jmp word 0xaead
00002553  55                push bp
00002554  89E5              mov bp,sp
00002556  8B5E04            mov bx,[bp+0x4]
00002559  D1E3              shl bx,1
0000255B  FF7608            push word [bp+0x8]
0000255E  FF7606            push word [bp+0x6]
00002561  B80100            mov ax,0x1
00002564  50                push ax
00002565  FFB7766F          push word [bx+0x6f76]
00002569  E80EFF            call word 0x247a
0000256C  83C408            add sp,byte +0x8
0000256F  E93D89            jmp word 0xaeaf
00002572  55                push bp
00002573  89E5              mov bp,sp
00002575  83EC08            sub sp,byte +0x8
00002578  8B5E04            mov bx,[bp+0x4]
0000257B  D1E3              shl bx,1
0000257D  FF760C            push word [bp+0xc]
00002580  FF7606            push word [bp+0x6]
00002583  B80100            mov ax,0x1
00002586  50                push ax
00002587  FFB7766F          push word [bx+0x6f76]
0000258B  E8ECFE            call word 0x247a
0000258E  83C408            add sp,byte +0x8
00002591  8946FC            mov [bp-0x4],ax
00002594  8956FE            mov [bp-0x2],dx
00002597  8B5E08            mov bx,[bp+0x8]
0000259A  D1E3              shl bx,1
0000259C  FF760C            push word [bp+0xc]
0000259F  FF760A            push word [bp+0xa]
000025A2  B80100            mov ax,0x1
000025A5  50                push ax
000025A6  FFB7766F          push word [bx+0x6f76]
000025AA  E8CDFE            call word 0x247a
000025AD  83C408            add sp,byte +0x8
000025B0  8946F8            mov [bp-0x8],ax
000025B3  8956FA            mov [bp-0x6],dx
000025B6  8B56FE            mov dx,[bp-0x2]
000025B9  0B56FC            or dx,[bp-0x4]
000025BC  7405              jz 0x25c3
000025BE  0B46FA            or ax,[bp-0x6]
000025C1  7505              jnz 0x25c8
000025C3  B8F2FF            mov ax,0xfff2
000025C6  EB1A              jmp short 0x25e2
000025C8  31C0              xor ax,ax
000025CA  50                push ax
000025CB  FF760C            push word [bp+0xc]
000025CE  FF76FA            push word [bp-0x6]
000025D1  FF76F8            push word [bp-0x8]
000025D4  FF76FE            push word [bp-0x2]
000025D7  FF76FC            push word [bp-0x4]
000025DA  E8A8E4            call word 0xa85
000025DD  83C40C            add sp,byte +0xc
000025E0  31C0              xor ax,ax
000025E2  E9CA88            jmp word 0xaeaf
000025E5  55                push bp
000025E6  89E5              mov bp,sp
000025E8  83EC08            sub sp,byte +0x8
000025EB  56                push si
000025EC  57                push di
000025ED  8B7604            mov si,[bp+0x4]
000025F0  833E424600        cmp word [0x4642],byte +0x0
000025F5  7503              jnz 0x25fa
000025F7  E9A400            jmp word 0x269e
000025FA  8B545C            mov dx,[si+0x5c]
000025FD  035458            add dx,[si+0x58]
00002600  B90A00            mov cx,0xa
00002603  31DB              xor bx,bx
00002605  E306              jcxz 0x260d
00002607  D1E2              shl dx,1
00002609  D1D3              rcl bx,1
0000260B  E2FA              loop 0x2607
0000260D  8956F8            mov [bp-0x8],dx
00002610  895EFA            mov [bp-0x6],bx
00002613  837C5000          cmp word [si+0x50],byte +0x0
00002617  7508              jnz 0x2621
00002619  8956FC            mov [bp-0x4],dx
0000261C  895EFE            mov [bp-0x2],bx
0000261F  EB16              jmp short 0x2637
00002621  B90A00            mov cx,0xa
00002624  8B5450            mov dx,[si+0x50]
00002627  31DB              xor bx,bx
00002629  E306              jcxz 0x2631
0000262B  D1E2              shl dx,1
0000262D  D1D3              rcl bx,1
0000262F  E2FA              loop 0x262b
00002631  8956FC            mov [bp-0x4],dx
00002634  895EFE            mov [bp-0x2],bx
00002637  837C6001          cmp word [si+0x60],byte +0x1
0000263B  7505              jnz 0x2642
0000263D  B80100            mov ax,0x1
00002640  EB03              jmp short 0x2645
00002642  B80300            mov ax,0x3
00002645  89C7              mov di,ax
00002647  B90A00            mov cx,0xa
0000264A  8B544E            mov dx,[si+0x4e]
0000264D  31DB              xor bx,bx
0000264F  E306              jcxz 0x2657
00002651  D1E2              shl dx,1
00002653  D1D3              rcl bx,1
00002655  E2FA              loop 0x2651
00002657  57                push di
00002658  FF76FC            push word [bp-0x4]
0000265B  53                push bx
0000265C  52                push dx
0000265D  8D4422            lea ax,[si+0x22]
00002660  50                push ax
00002661  E8B8DF            call word 0x61c
00002664  83C40A            add sp,byte +0xa
00002667  B90A00            mov cx,0xa
0000266A  8B5454            mov dx,[si+0x54]
0000266D  31DB              xor bx,bx
0000266F  E306              jcxz 0x2677
00002671  D1E2              shl dx,1
00002673  D1D3              rcl bx,1
00002675  E2FA              loop 0x2671
00002677  57                push di
00002678  FF76F8            push word [bp-0x8]
0000267B  53                push bx
0000267C  52                push dx
0000267D  8D442A            lea ax,[si+0x2a]
00002680  50                push ax
00002681  E8C1DF            call word 0x645
00002684  83C40A            add sp,byte +0xa
00002687  BA0400            mov dx,0x4
0000268A  09FA              or dx,di
0000268C  895418            mov [si+0x18],dx
0000268F  BA0C00            mov dx,0xc
00002692  09FA              or dx,di
00002694  895402            mov [si+0x2],dx
00002697  8914              mov [si],dx
00002699  89541E            mov [si+0x1e],dx
0000269C  EB18              jmp short 0x26b6
0000269E  B90600            mov cx,0x6
000026A1  8B544E            mov dx,[si+0x4e]
000026A4  D3E2              shl dx,cl
000026A6  895418            mov [si+0x18],dx
000026A9  8B5454            mov dx,[si+0x54]
000026AC  D3E2              shl dx,cl
000026AE  895402            mov [si+0x2],dx
000026B1  8914              mov [si],dx
000026B3  89541E            mov [si+0x1e],dx
000026B6  E9F487            jmp word 0xaead
000026B9  55                push bp
000026BA  89E5              mov bp,sp
000026BC  83EC18            sub sp,byte +0x18
000026BF  56                push si
000026C0  E81605            call word 0x2bd9
000026C3  8D46E8            lea ax,[bp-0x18]
000026C6  50                push ax
000026C7  B8CE7A            mov ax,0x7ace
000026CA  50                push ax
000026CB  E80C84            call word 0xaada
000026CE  5B                pop bx
000026CF  5B                pop bx
000026D0  8B76EA            mov si,[bp-0x16]
000026D3  E8DA83            call word 0xaab0
000026D6  8B16E022          mov dx,[0x22e0]
000026DA  8B0EE222          mov cx,[0x22e2]
000026DE  01165221          add [0x2152],dx
000026E2  110E5421          adc [0x2154],cx
000026E6  31C0              xor ax,ax
000026E8  A3E022            mov [0x22e0],ax
000026EB  A3E222            mov [0x22e2],ax
000026EE  E8C183            call word 0xaab2
000026F1  EB59              jmp short 0x274c
000026F3  E87A00            call word 0x2770
000026F6  EB5C              jmp short 0x2754
000026F8  8D46E8            lea ax,[bp-0x18]
000026FB  50                push ax
000026FC  E82F02            call word 0x292e
000026FF  5B                pop bx
00002700  EB52              jmp short 0x2754
00002702  8D46E8            lea ax,[bp-0x18]
00002705  50                push ax
00002706  E86602            call word 0x296f
00002709  5B                pop bx
0000270A  EB48              jmp short 0x2754
0000270C  8D46E8            lea ax,[bp-0x18]
0000270F  50                push ax
00002710  E88502            call word 0x2998
00002713  5B                pop bx
00002714  EB3E              jmp short 0x2754
00002716  B87F2A            mov ax,0x2a7f
00002719  50                push ax
0000271A  B8FDFF            mov ax,0xfffd
0000271D  50                push ax
0000271E  8D46E8            lea ax,[bp-0x18]
00002721  50                push ax
00002722  E8A202            call word 0x29c7
00002725  83C406            add sp,byte +0x6
00002728  EB2A              jmp short 0x2754
0000272A  B8942A            mov ax,0x2a94
0000272D  50                push ax
0000272E  B8F9FF            mov ax,0xfff9
00002731  50                push ax
00002732  8D46E8            lea ax,[bp-0x18]
00002735  50                push ax
00002736  E88E02            call word 0x29c7
00002739  83C406            add sp,byte +0x6
0000273C  EB16              jmp short 0x2754
0000273E  FF76EA            push word [bp-0x16]
00002741  B85404            mov ax,0x454
00002744  50                push ax
00002745  E844E8            call word 0xf8c
00002748  5B                pop bx
00002749  5B                pop bx
0000274A  EB08              jmp short 0x2754
0000274C  BB4204            mov bx,0x442
0000274F  89F0              mov ax,si
00002751  E9F085            jmp word 0xad44
00002754  C746EA0000        mov word [bp-0x16],0x0
00002759  83FE02            cmp si,byte +0x2
0000275C  7503              jnz 0x2761
0000275E  E962FF            jmp word 0x26c3
00002761  8D46E8            lea ax,[bp-0x18]
00002764  50                push ax
00002765  FF76E8            push word [bp-0x18]
00002768  E86A83            call word 0xaad5
0000276B  5B                pop bx
0000276C  5B                pop bx
0000276D  E953FF            jmp word 0x26c3
00002770  55                push bp
00002771  89E5              mov bp,sp
00002773  83EC08            sub sp,byte +0x8
00002776  56                push si
00002777  57                push di
00002778  8B165221          mov dx,[0x2152]
0000277C  8B0E5421          mov cx,[0x2154]
00002780  390E5E21          cmp [0x215e],cx
00002784  7E03              jng 0x2789
00002786  E99100            jmp word 0x281a
00002789  7509              jnz 0x2794
0000278B  39165C21          cmp [0x215c],dx
0000278F  7603              jna 0x2794
00002791  E98600            jmp word 0x281a
00002794  8B165A21          mov dx,[0x215a]
00002798  8956FA            mov [bp-0x6],dx
0000279B  09D2              or dx,dx
0000279D  7455              jz 0x27f4
0000279F  8B5EFA            mov bx,[bp-0x6]
000027A2  8B165221          mov dx,[0x2152]
000027A6  8B0E5421          mov cx,[0x2154]
000027AA  394F06            cmp [bx+0x6],cx
000027AD  7F45              jg 0x27f4
000027AF  7505              jnz 0x27b6
000027B1  395704            cmp [bx+0x4],dx
000027B4  773E              ja 0x27f4
000027B6  8B17              mov dx,[bx]
000027B8  89165A21          mov [0x215a],dx
000027BC  8B5F02            mov bx,[bx+0x2]
000027BF  D1E3              shl bx,1
000027C1  8B9F766F          mov bx,[bx+0x6f76]
000027C5  895EF8            mov [bp-0x8],bx
000027C8  837F7200          cmp word [bx+0x72],byte +0x0
000027CC  7510              jnz 0x27de
000027CE  391EF445          cmp [0x45f4],bx
000027D2  740A              jz 0x27de
000027D4  8B5EFA            mov bx,[bp-0x6]
000027D7  FF7702            push word [bx+0x2]
000027DA  E8EAE7            call word 0xfc7
000027DD  5B                pop bx
000027DE  8B5EF8            mov bx,[bp-0x8]
000027E1  8B5772            mov dx,[bx+0x72]
000027E4  8B5EFA            mov bx,[bp-0x6]
000027E7  8917              mov [bx],dx
000027E9  8B5EF8            mov bx,[bp-0x8]
000027EC  8B56FA            mov dx,[bp-0x6]
000027EF  895772            mov [bx+0x72],dx
000027F2  EBA0              jmp short 0x2794
000027F4  833E5A2100        cmp word [0x215a],byte +0x0
000027F9  750A              jnz 0x2805
000027FB  B8FF7F            mov ax,0x7fff
000027FE  50                push ax
000027FF  B8FFFF            mov ax,0xffff
00002802  50                push ax
00002803  EB0A              jmp short 0x280f
00002805  8B1E5A21          mov bx,[0x215a]
00002809  FF7706            push word [bx+0x6]
0000280C  FF7704            push word [bx+0x4]
0000280F  8F065C21          pop word [0x215c]
00002813  8F065E21          pop word [0x215e]
00002817  E8E700            call word 0x2901
0000281A  8B164004          mov dx,[0x440]
0000281E  4A                dec dx
0000281F  89164004          mov [0x440],dx
00002823  751B              jnz 0x2840
00002825  8B16E422          mov dx,[0x22e4]
00002829  3916B66F          cmp [0x6fb6],dx
0000282D  7503              jnz 0x2832
0000282F  E88FEC            call word 0x14c1
00002832  C70640040600      mov word [0x440],0x6
00002838  8B16B66F          mov dx,[0x6fb6]
0000283C  8916E422          mov [0x22e4],dx
00002840  E96A86            jmp word 0xaead
00002843  55                push bp
00002844  89E5              mov bp,sp
00002846  56                push si
00002847  57                push di
00002848  8B7E04            mov di,[bp+0x4]
0000284B  837D04FF          cmp word [di+0x4],byte -0x1
0000284F  7507              jnz 0x2858
00002851  817D06FF7F        cmp word [di+0x6],0x7fff
00002856  7405              jz 0x285d
00002858  57                push di
00002859  E85400            call word 0x28b0
0000285C  5B                pop bx
0000285D  8B5606            mov dx,[bp+0x6]
00002860  895502            mov [di+0x2],dx
00002863  8B5608            mov dx,[bp+0x8]
00002866  8B4E0A            mov cx,[bp+0xa]
00002869  895504            mov [di+0x4],dx
0000286C  894D06            mov [di+0x6],cx
0000286F  8B560C            mov dx,[bp+0xc]
00002872  895508            mov [di+0x8],dx
00002875  BE5A21            mov si,0x215a
00002878  833C00            cmp word [si],byte +0x0
0000287B  7418              jz 0x2895
0000287D  8B1C              mov bx,[si]
0000287F  8B5608            mov dx,[bp+0x8]
00002882  8B4E0A            mov cx,[bp+0xa]
00002885  394F06            cmp [bx+0x6],cx
00002888  7F0B              jg 0x2895
0000288A  7505              jnz 0x2891
0000288C  395704            cmp [bx+0x4],dx
0000288F  7704              ja 0x2895
00002891  8B34              mov si,[si]
00002893  EBE3              jmp short 0x2878
00002895  8B14              mov dx,[si]
00002897  8915              mov [di],dx
00002899  893C              mov [si],di
0000289B  8B1E5A21          mov bx,[0x215a]
0000289F  8B5704            mov dx,[bx+0x4]
000028A2  8B4F06            mov cx,[bx+0x6]
000028A5  89165C21          mov [0x215c],dx
000028A9  890E5E21          mov [0x215e],cx
000028AD  E9FD85            jmp word 0xaead
000028B0  55                push bp
000028B1  89E5              mov bp,sp
000028B3  50                push ax
000028B4  50                push ax
000028B5  56                push si
000028B6  57                push di
000028B7  8B7E04            mov di,[bp+0x4]
000028BA  C74504FFFF        mov word [di+0x4],0xffff
000028BF  C74506FF7F        mov word [di+0x6],0x7fff
000028C4  BE5A21            mov si,0x215a
000028C7  833C00            cmp word [si],byte +0x0
000028CA  740E              jz 0x28da
000028CC  393C              cmp [si],di
000028CE  7506              jnz 0x28d6
000028D0  8B15              mov dx,[di]
000028D2  8914              mov [si],dx
000028D4  EB28              jmp short 0x28fe
000028D6  8B34              mov si,[si]
000028D8  EBED              jmp short 0x28c7
000028DA  8B5D02            mov bx,[di+0x2]
000028DD  D1E3              shl bx,1
000028DF  8B97766F          mov dx,[bx+0x6f76]
000028E3  8956FC            mov [bp-0x4],dx
000028E6  89D6              mov si,dx
000028E8  83C672            add si,byte +0x72
000028EB  833C00            cmp word [si],byte +0x0
000028EE  740E              jz 0x28fe
000028F0  393C              cmp [si],di
000028F2  7506              jnz 0x28fa
000028F4  8B15              mov dx,[di]
000028F6  8914              mov [si],dx
000028F8  EB04              jmp short 0x28fe
000028FA  8B34              mov si,[si]
000028FC  EBED              jmp short 0x28eb
000028FE  E9AC85            jmp word 0xaead
00002901  55                push bp
00002902  89E5              mov bp,sp
00002904  56                push si
00002905  57                push di
00002906  8B3EF445          mov di,[0x45f4]
0000290A  8B5572            mov dx,[di+0x72]
0000290D  89D6              mov si,dx
0000290F  09D2              or dx,dx
00002911  7418              jz 0x292b
00002913  8B14              mov dx,[si]
00002915  895572            mov [di+0x72],dx
00002918  C74404FFFF        mov word [si+0x4],0xffff
0000291D  C74406FF7F        mov word [si+0x6],0x7fff
00002922  8B5C08            mov bx,[si+0x8]
00002925  56                push si
00002926  FFD3              call bx
00002928  5B                pop bx
00002929  EBDF              jmp short 0x290a
0000292B  E97F85            jmp word 0xaead
0000292E  55                push bp
0000292F  89E5              mov bp,sp
00002931  8B5E04            mov bx,[bp+0x4]
00002934  8B165221          mov dx,[0x2152]
00002938  8B0E5421          mov cx,[0x2154]
0000293C  89570A            mov [bx+0xa],dx
0000293F  894F0C            mov [bx+0xc],cx
00002942  E96A85            jmp word 0xaeaf
00002945  55                push bp
00002946  89E5              mov bp,sp
00002948  50                push ax
00002949  50                push ax
0000294A  E86381            call word 0xaab0
0000294D  8B165221          mov dx,[0x2152]
00002951  8B0E5421          mov cx,[0x2154]
00002955  0316E022          add dx,[0x22e0]
00002959  130EE222          adc cx,[0x22e2]
0000295D  8956FC            mov [bp-0x4],dx
00002960  894EFE            mov [bp-0x2],cx
00002963  E84C81            call word 0xaab2
00002966  8B46FC            mov ax,[bp-0x4]
00002969  8B56FE            mov dx,[bp-0x2]
0000296C  E94085            jmp word 0xaeaf
0000296F  55                push bp
00002970  89E5              mov bp,sp
00002972  FF365421          push word [0x2154]
00002976  FF365221          push word [0x2152]
0000297A  31C0              xor ax,ax
0000297C  50                push ax
0000297D  B83C00            mov ax,0x3c
00002980  50                push ax
00002981  E80784            call word 0xad8b
00002984  03065621          add ax,[0x2156]
00002988  13165821          adc dx,[0x2158]
0000298C  8B5E04            mov bx,[bp+0x4]
0000298F  89470A            mov [bx+0xa],ax
00002992  89570C            mov [bx+0xc],dx
00002995  E91785            jmp word 0xaeaf
00002998  55                push bp
00002999  89E5              mov bp,sp
0000299B  8B5E04            mov bx,[bp+0x4]
0000299E  FF770C            push word [bx+0xc]
000029A1  FF770A            push word [bx+0xa]
000029A4  FF365421          push word [0x2154]
000029A8  FF365221          push word [0x2152]
000029AC  31C0              xor ax,ax
000029AE  50                push ax
000029AF  B83C00            mov ax,0x3c
000029B2  50                push ax
000029B3  E8D583            call word 0xad8b
000029B6  59                pop cx
000029B7  5B                pop bx
000029B8  29C1              sub cx,ax
000029BA  19D3              sbb bx,dx
000029BC  890E5621          mov [0x2156],cx
000029C0  891E5821          mov [0x2158],bx
000029C4  E9E884            jmp word 0xaeaf
000029C7  55                push bp
000029C8  89E5              mov bp,sp
000029CA  83EC08            sub sp,byte +0x8
000029CD  56                push si
000029CE  57                push di
000029CF  8B5E04            mov bx,[bp+0x4]
000029D2  8B5704            mov dx,[bx+0x4]
000029D5  8956FC            mov [bp-0x4],dx
000029D8  8B570A            mov dx,[bx+0xa]
000029DB  8B4F0C            mov cx,[bx+0xc]
000029DE  8956F8            mov [bp-0x8],dx
000029E1  894EFA            mov [bp-0x6],cx
000029E4  8B5EFC            mov bx,[bp-0x4]
000029E7  D1E3              shl bx,1
000029E9  8BB7766F          mov si,[bx+0x6f76]
000029ED  B80C00            mov ax,0xc
000029F0  F766FC            mul word [bp-0x4]
000029F3  056021            add ax,0x2160
000029F6  89C7              mov di,ax
000029F8  8B165221          mov dx,[0x2152]
000029FC  8B0E5421          mov cx,[0x2154]
00002A00  394D06            cmp [di+0x6],cx
00002A03  7C14              jl 0x2a19
00002A05  7505              jnz 0x2a0c
00002A07  395504            cmp [di+0x4],dx
00002A0A  760D              jna 0x2a19
00002A0C  837D04FF          cmp word [di+0x4],byte -0x1
00002A10  7514              jnz 0x2a26
00002A12  817D06FF7F        cmp word [di+0x6],0x7fff
00002A17  750D              jnz 0x2a26
00002A19  31C0              xor ax,ax
00002A1B  8B5E04            mov bx,[bp+0x4]
00002A1E  89470A            mov [bx+0xa],ax
00002A21  89470C            mov [bx+0xc],ax
00002A24  EB29              jmp short 0x2a4f
00002A26  8B5504            mov dx,[di+0x4]
00002A29  8B4D06            mov cx,[di+0x6]
00002A2C  2B165221          sub dx,[0x2152]
00002A30  1B0E5421          sbb cx,[0x2154]
00002A34  83C23B            add dx,byte +0x3b
00002A37  83D100            adc cx,byte +0x0
00002A3A  51                push cx
00002A3B  52                push dx
00002A3C  31C0              xor ax,ax
00002A3E  50                push ax
00002A3F  B83C00            mov ax,0x3c
00002A42  50                push ax
00002A43  E84583            call word 0xad8b
00002A46  8B5E04            mov bx,[bp+0x4]
00002A49  89470A            mov [bx+0xa],ax
00002A4C  89570C            mov [bx+0xc],dx
00002A4F  8B56FA            mov dx,[bp-0x6]
00002A52  0B56F8            or dx,[bp-0x8]
00002A55  7507              jnz 0x2a5e
00002A57  57                push di
00002A58  E855FE            call word 0x28b0
00002A5B  5B                pop bx
00002A5C  EB1E              jmp short 0x2a7c
00002A5E  8B56FC            mov dx,[bp-0x4]
00002A61  89550A            mov [di+0xa],dx
00002A64  FF7608            push word [bp+0x8]
00002A67  E8DBFE            call word 0x2945
00002A6A  0346F8            add ax,[bp-0x8]
00002A6D  1356FA            adc dx,[bp-0x6]
00002A70  52                push dx
00002A71  50                push ax
00002A72  FF7606            push word [bp+0x6]
00002A75  57                push di
00002A76  E8CAFD            call word 0x2843
00002A79  83C40A            add sp,byte +0xa
00002A7C  E92E84            jmp word 0xaead
00002A7F  55                push bp
00002A80  89E5              mov bp,sp
00002A82  8B5E04            mov bx,[bp+0x4]
00002A85  B80E00            mov ax,0xe
00002A88  50                push ax
00002A89  FF770A            push word [bx+0xa]
00002A8C  E817F9            call word 0x23a6
00002A8F  5B                pop bx
00002A90  5B                pop bx
00002A91  E91B84            jmp word 0xaeaf
00002A94  55                push bp
00002A95  89E5              mov bp,sp
00002A97  83EC18            sub sp,byte +0x18
00002A9A  C746EA0200        mov word [bp-0x16],0x2
00002A9F  8B5E04            mov bx,[bp+0x4]
00002AA2  8D46E8            lea ax,[bp-0x18]
00002AA5  50                push ax
00002AA6  FF770A            push word [bx+0xa]
00002AA9  E82980            call word 0xaad5
00002AAC  5B                pop bx
00002AAD  5B                pop bx
00002AAE  E9FE83            jmp word 0xaeaf
00002AB1  55                push bp
00002AB2  89E5              mov bp,sp
00002AB4  83EC18            sub sp,byte +0x18
00002AB7  E847FE            call word 0x2901
00002ABA  8D46E8            lea ax,[bp-0x18]
00002ABD  50                push ax
00002ABE  B8FFFF            mov ax,0xffff
00002AC1  50                push ax
00002AC2  E81580            call word 0xaada
00002AC5  5B                pop bx
00002AC6  5B                pop bx
00002AC7  EBEE              jmp short 0x2ab7
00002AC9  55                push bp
00002ACA  89E5              mov bp,sp
00002ACC  B80C00            mov ax,0xc
00002ACF  F76604            mul word [bp+0x4]
00002AD2  89C3              mov bx,ax
00002AD4  81C36021          add bx,0x2160
00002AD8  53                push bx
00002AD9  E8D4FD            call word 0x28b0
00002ADC  5B                pop bx
00002ADD  E9CF83            jmp word 0xaeaf
00002AE0  55                push bp
00002AE1  89E5              mov bp,sp
00002AE3  83EC08            sub sp,byte +0x8
00002AE6  56                push si
00002AE7  57                push di
00002AE8  833E724600        cmp word [0x4672],byte +0x0
00002AED  7415              jz 0x2b04
00002AEF  B86100            mov ax,0x61
00002AF2  50                push ax
00002AF3  E8AF7F            call word 0xaaa5
00002AF6  5B                pop bx
00002AF7  0D8000            or ax,0x80
00002AFA  50                push ax
00002AFB  B86100            mov ax,0x61
00002AFE  50                push ax
00002AFF  E8B27F            call word 0xaab4
00002B02  5B                pop bx
00002B03  5B                pop bx
00002B04  803E404600        cmp byte [0x4640],0x0
00002B09  7406              jz 0x2b11
00002B0B  8B36746F          mov si,[0x6f74]
00002B0F  EB04              jmp short 0x2b15
00002B11  8B36F445          mov si,[0x45f4]
00002B15  8B161661          mov dx,[0x6116]
00002B19  42                inc dx
00002B1A  89D7              mov di,dx
00002B1C  C70616610000      mov word [0x6116],0x0
00002B22  017C62            add [si+0x62],di
00002B25  83546400          adc word [si+0x64],byte +0x0
00002B29  3936B66F          cmp [0x6fb6],si
00002B2D  741A              jz 0x2b49
00002B2F  39366A6F          cmp [0x6f6a],si
00002B33  7414              jz 0x2b49
00002B35  8B1EB66F          mov bx,[0x6fb6]
00002B39  89FA              mov dx,di
00002B3B  31C9              xor cx,cx
00002B3D  035766            add dx,[bx+0x66]
00002B40  134F68            adc cx,[bx+0x68]
00002B43  895766            mov [bx+0x66],dx
00002B46  894F68            mov [bx+0x68],cx
00002B49  013EE022          add [0x22e0],di
00002B4D  8316E22200        adc word [0x22e2],byte +0x0
00002B52  8B165221          mov dx,[0x2152]
00002B56  8B0E5421          mov cx,[0x2154]
00002B5A  0316E022          add dx,[0x22e0]
00002B5E  130EE222          adc cx,[0x22e2]
00002B62  8956F8            mov [bp-0x8],dx
00002B65  894EFA            mov [bp-0x6],cx
00002B68  390E5E6F          cmp [0x6f5e],cx
00002B6C  7F13              jg 0x2b81
00002B6E  7506              jnz 0x2b76
00002B70  39165C6F          cmp [0x6f5c],dx
00002B74  770B              ja 0x2b81
00002B76  FF76FA            push word [bp-0x6]
00002B79  FF76F8            push word [bp-0x8]
00002B7C  E86E15            call word 0x40ed
00002B7F  5B                pop bx
00002B80  5B                pop bx
00002B81  8B56F8            mov dx,[bp-0x8]
00002B84  8B4EFA            mov cx,[bp-0x6]
00002B87  390E5E21          cmp [0x215e],cx
00002B8B  7C20              jl 0x2bad
00002B8D  7506              jnz 0x2b95
00002B8F  39165C21          cmp [0x215c],dx
00002B93  7618              jna 0x2bad
00002B95  833E400401        cmp word [0x440],byte +0x1
00002B9A  751E              jnz 0x2bba
00002B9C  8B16E422          mov dx,[0x22e4]
00002BA0  3916B66F          cmp [0x6fb6],dx
00002BA4  7514              jnz 0x2bba
00002BA6  833EBC6F00        cmp word [0x6fbc],byte +0x0
00002BAB  740D              jz 0x2bba
00002BAD  B8FDFF            mov ax,0xfffd
00002BB0  50                push ax
00002BB1  E813E4            call word 0xfc7
00002BB4  5B                pop bx
00002BB5  B80100            mov ax,0x1
00002BB8  EB1C              jmp short 0x2bd6
00002BBA  8B164004          mov dx,[0x440]
00002BBE  4A                dec dx
00002BBF  89164004          mov [0x440],dx
00002BC3  750E              jnz 0x2bd3
00002BC5  C70640040600      mov word [0x440],0x6
00002BCB  8B16B66F          mov dx,[0x6fb6]
00002BCF  8916E422          mov [0x22e4],dx
00002BD3  B80100            mov ax,0x1
00002BD6  E9D482            jmp word 0xaead
00002BD9  55                push bp
00002BDA  89E5              mov bp,sp
00002BDC  B83600            mov ax,0x36
00002BDF  50                push ax
00002BE0  B84300            mov ax,0x43
00002BE3  50                push ax
00002BE4  E8CD7E            call word 0xaab4
00002BE7  5B                pop bx
00002BE8  5B                pop bx
00002BE9  B8AE4D            mov ax,0x4dae
00002BEC  50                push ax
00002BED  B84000            mov ax,0x40
00002BF0  50                push ax
00002BF1  E8C07E            call word 0xaab4
00002BF4  5B                pop bx
00002BF5  5B                pop bx
00002BF6  B84D00            mov ax,0x4d
00002BF9  50                push ax
00002BFA  B84000            mov ax,0x40
00002BFD  50                push ax
00002BFE  E8B37E            call word 0xaab4
00002C01  5B                pop bx
00002C02  5B                pop bx
00002C03  B8E02A            mov ax,0x2ae0
00002C06  50                push ax
00002C07  31C0              xor ax,ax
00002C09  50                push ax
00002C0A  B8E622            mov ax,0x22e6
00002C0D  50                push ax
00002C0E  E8652B            call word 0x5776
00002C11  83C406            add sp,byte +0x6
00002C14  B8E622            mov ax,0x22e6
00002C17  50                push ax
00002C18  E800DE            call word 0xa1b
00002C1B  5B                pop bx
00002C1C  E99082            jmp word 0xaeaf
00002C1F  55                push bp
00002C20  89E5              mov bp,sp
00002C22  B83600            mov ax,0x36
00002C25  50                push ax
00002C26  B84300            mov ax,0x43
00002C29  50                push ax
00002C2A  E8877E            call word 0xaab4
00002C2D  5B                pop bx
00002C2E  5B                pop bx
00002C2F  31C0              xor ax,ax
00002C31  50                push ax
00002C32  B84000            mov ax,0x40
00002C35  50                push ax
00002C36  E87B7E            call word 0xaab4
00002C39  5B                pop bx
00002C3A  5B                pop bx
00002C3B  31C0              xor ax,ax
00002C3D  50                push ax
00002C3E  B84000            mov ax,0x40
00002C41  50                push ax
00002C42  E86F7E            call word 0xaab4
00002C45  5B                pop bx
00002C46  5B                pop bx
00002C47  E96582            jmp word 0xaeaf
00002C4A  55                push bp
00002C4B  89E5              mov bp,sp
00002C4D  83EC06            sub sp,byte +0x6
00002C50  8D46FA            lea ax,[bp-0x6]
00002C53  50                push ax
00002C54  E81800            call word 0x2c6f
00002C57  5B                pop bx
00002C58  8D46FA            lea ax,[bp-0x6]
00002C5B  50                push ax
00002C5C  E82800            call word 0x2c87
00002C5F  5B                pop bx
00002C60  395606            cmp [bp+0x6],dx
00002C63  77F3              ja 0x2c58
00002C65  7505              jnz 0x2c6c
00002C67  394604            cmp [bp+0x4],ax
00002C6A  77EC              ja 0x2c58
00002C6C  E94082            jmp word 0xaeaf
00002C6F  55                push bp
00002C70  89E5              mov bp,sp
00002C72  8B5E04            mov bx,[bp+0x4]
00002C75  C747040000        mov word [bx+0x4],0x0
00002C7A  31C0              xor ax,ax
00002C7C  8B5E04            mov bx,[bp+0x4]
00002C7F  8907              mov [bx],ax
00002C81  894702            mov [bx+0x2],ax
00002C84  E92882            jmp word 0xaeaf
00002C87  55                push bp
00002C88  89E5              mov bp,sp
00002C8A  56                push si
00002C8B  57                push di
00002C8C  8B7604            mov si,[bp+0x4]
00002C8F  E81E7E            call word 0xaab0
00002C92  31C0              xor ax,ax
00002C94  50                push ax
00002C95  B84300            mov ax,0x43
00002C98  50                push ax
00002C99  E8187E            call word 0xaab4
00002C9C  5B                pop bx
00002C9D  5B                pop bx
00002C9E  B84000            mov ax,0x40
00002CA1  50                push ax
00002CA2  E8007E            call word 0xaaa5
00002CA5  5B                pop bx
00002CA6  89C7              mov di,ax
00002CA8  B84000            mov ax,0x40
00002CAB  50                push ax
00002CAC  E8F67D            call word 0xaaa5
00002CAF  5B                pop bx
00002CB0  B90800            mov cx,0x8
00002CB3  D3E0              shl ax,cl
00002CB5  09C7              or di,ax
00002CB7  E8F87D            call word 0xaab2
00002CBA  397C04            cmp [si+0x4],di
00002CBD  7209              jc 0x2cc8
00002CBF  8B5404            mov dx,[si+0x4]
00002CC2  29FA              sub dx,di
00002CC4  89D0              mov ax,dx
00002CC6  EB03              jmp short 0x2ccb
00002CC8  B80100            mov ax,0x1
00002CCB  0104              add [si],ax
00002CCD  83540200          adc word [si+0x2],byte +0x0
00002CD1  897C04            mov [si+0x4],di
00002CD4  837C0200          cmp word [si+0x2],byte +0x0
00002CD8  7727              ja 0x2d01
00002CDA  7506              jnz 0x2ce2
00002CDC  813CC610          cmp word [si],0x10c6
00002CE0  731F              jnc 0x2d01
00002CE2  B84042            mov ax,0x4240
00002CE5  BA0F00            mov dx,0xf
00002CE8  FF7402            push word [si+0x2]
00002CEB  FF34              push word [si]
00002CED  E89F81            call word 0xae8f
00002CF0  52                push dx
00002CF1  50                push ax
00002CF2  B81200            mov ax,0x12
00002CF5  50                push ax
00002CF6  B8DE34            mov ax,0x34de
00002CF9  50                push ax
00002CFA  E81881            call word 0xae15
00002CFD  52                push dx
00002CFE  50                push ax
00002CFF  EB1D              jmp short 0x2d1e
00002D01  FF7402            push word [si+0x2]
00002D04  FF34              push word [si]
00002D06  B81200            mov ax,0x12
00002D09  50                push ax
00002D0A  B8DE34            mov ax,0x34de
00002D0D  50                push ax
00002D0E  E80481            call word 0xae15
00002D11  52                push dx
00002D12  50                push ax
00002D13  B84042            mov ax,0x4240
00002D16  BA0F00            mov dx,0xf
00002D19  E87381            call word 0xae8f
00002D1C  52                push dx
00002D1D  50                push ax
00002D1E  58                pop ax
00002D1F  5A                pop dx
00002D20  E98A81            jmp word 0xaead
00002D23  55                push bp
00002D24  89E5              mov bp,sp
00002D26  E8AC01            call word 0x2ed5
00002D29  B87004            mov ax,0x470
00002D2C  50                push ax
00002D2D  E86330            call word 0x5d93
00002D30  5B                pop bx
00002D31  E97B81            jmp word 0xaeaf
00002D34  55                push bp
00002D35  89E5              mov bp,sp
00002D37  56                push si
00002D38  8B7604            mov si,[bp+0x4]
00002D3B  09F6              or si,si
00002D3D  7C05              jl 0x2d44
00002D3F  83FE04            cmp si,byte +0x4
00002D42  7C04              jl 0x2d48
00002D44  31C0              xor ax,ax
00002D46  EB0F              jmp short 0x2d57
00002D48  89362E23          mov [0x232e],si
00002D4C  89F3              mov bx,si
00002D4E  B90400            mov cx,0x4
00002D51  D3E3              shl bx,cl
00002D53  8D87EE22          lea ax,[bx+0x22ee]
00002D57  E95481            jmp word 0xaeae
00002D5A  55                push bp
00002D5B  89E5              mov bp,sp
00002D5D  83EC16            sub sp,byte +0x16
00002D60  56                push si
00002D61  57                push di
00002D62  8B760C            mov si,[bp+0xc]
00002D65  8B5E04            mov bx,[bp+0x4]
00002D68  D1E3              shl bx,1
00002D6A  8B9F766F          mov bx,[bx+0x6f76]
00002D6E  B90A00            mov cx,0xa
00002D71  8B5754            mov dx,[bx+0x54]
00002D74  31DB              xor bx,bx
00002D76  E306              jcxz 0x2d7e
00002D78  D1E2              shl dx,1
00002D7A  D1D3              rcl bx,1
00002D7C  E2FA              loop 0x2d78
00002D7E  8956EA            mov [bp-0x16],dx
00002D81  895EEC            mov [bp-0x14],bx
00002D84  8B162E23          mov dx,[0x232e]
00002D88  8956FE            mov [bp-0x2],dx
00002D8B  8B5EFE            mov bx,[bp-0x2]
00002D8E  B90400            mov cx,0x4
00002D91  D3E3              shl bx,cl
00002D93  81C3EE22          add bx,0x22ee
00002D97  895EF2            mov [bp-0xe],bx
00002D9A  83C308            add bx,byte +0x8
00002D9D  B90800            mov cx,0x8
00002DA0  E8D780            call word 0xae7a
00002DA3  E8727C            call word 0xaa18
00002DA6  83C408            add sp,byte +0x8
00002DA9  8946EE            mov [bp-0x12],ax
00002DAC  8956F0            mov [bp-0x10],dx
00002DAF  837E0E00          cmp word [bp+0xe],byte +0x0
00002DB3  7503              jnz 0x2db8
00002DB5  E9DF00            jmp word 0x2e97
00002DB8  8B14              mov dx,[si]
00002DBA  31C9              xor cx,cx
00002DBC  0356EA            add dx,[bp-0x16]
00002DBF  134EEC            adc cx,[bp-0x14]
00002DC2  8956F6            mov [bp-0xa],dx
00002DC5  894EF8            mov [bp-0x8],cx
00002DC8  8B7C02            mov di,[si+0x2]
00002DCB  E99A00            jmp word 0x2e68
00002DCE  837E0609          cmp word [bp+0x6],byte +0x9
00002DD2  7403              jz 0x2dd7
00002DD4  E99D00            jmp word 0x2e74
00002DD7  31C0              xor ax,ax
00002DD9  E9BD00            jmp word 0x2e99
00002DDC  8B56EE            mov dx,[bp-0x12]
00002DDF  8B4EF0            mov cx,[bp-0x10]
00002DE2  394E0A            cmp [bp+0xa],cx
00002DE5  720C              jc 0x2df3
00002DE7  7505              jnz 0x2dee
00002DE9  395608            cmp [bp+0x8],dx
00002DEC  7205              jc 0x2df3
00002DEE  31C0              xor ax,ax
00002DF0  E9A600            jmp word 0x2e99
00002DF3  89FA              mov dx,di
00002DF5  31C9              xor cx,cx
00002DF7  035608            add dx,[bp+0x8]
00002DFA  134E0A            adc cx,[bp+0xa]
00002DFD  394EF0            cmp [bp-0x10],cx
00002E00  7715              ja 0x2e17
00002E02  7505              jnz 0x2e09
00002E04  3956EE            cmp [bp-0x12],dx
00002E07  730E              jnc 0x2e17
00002E09  8B56EE            mov dx,[bp-0x12]
00002E0C  8B4EF0            mov cx,[bp-0x10]
00002E0F  2B5608            sub dx,[bp+0x8]
00002E12  1B4E0A            sbb cx,[bp+0xa]
00002E15  89D7              mov di,dx
00002E17  8B5EF2            mov bx,[bp-0xe]
00002E1A  B90800            mov cx,0x8
00002E1D  E85A80            call word 0xae7a
00002E20  E8F57B            call word 0xaa18
00002E23  83C408            add sp,byte +0x8
00002E26  034608            add ax,[bp+0x8]
00002E29  13560A            adc dx,[bp+0xa]
00002E2C  8946FA            mov [bp-0x6],ax
00002E2F  8956FC            mov [bp-0x4],dx
00002E32  837E0609          cmp word [bp+0x6],byte +0x9
00002E36  7518              jnz 0x2e50
00002E38  31C0              xor ax,ax
00002E3A  50                push ax
00002E3B  57                push di
00002E3C  FF76F8            push word [bp-0x8]
00002E3F  FF76F6            push word [bp-0xa]
00002E42  FF76FC            push word [bp-0x4]
00002E45  FF76FA            push word [bp-0x6]
00002E48  E83ADC            call word 0xa85
00002E4B  83C40C            add sp,byte +0xc
00002E4E  EB24              jmp short 0x2e74
00002E50  31C0              xor ax,ax
00002E52  50                push ax
00002E53  57                push di
00002E54  FF76FC            push word [bp-0x4]
00002E57  FF76FA            push word [bp-0x6]
00002E5A  FF76F8            push word [bp-0x8]
00002E5D  FF76F6            push word [bp-0xa]
00002E60  E822DC            call word 0xa85
00002E63  83C40C            add sp,byte +0xc
00002E66  EB0C              jmp short 0x2e74
00002E68  837EFE03          cmp word [bp-0x2],byte +0x3
00002E6C  7503              jnz 0x2e71
00002E6E  E95DFF            jmp word 0x2dce
00002E71  E968FF            jmp word 0x2ddc
00002E74  017E08            add [bp+0x8],di
00002E77  83560A00          adc word [bp+0xa],byte +0x0
00002E7B  013C              add [si],di
00002E7D  8B5402            mov dx,[si+0x2]
00002E80  29FA              sub dx,di
00002E82  895402            mov [si+0x2],dx
00002E85  837C0200          cmp word [si+0x2],byte +0x0
00002E89  7403              jz 0x2e8e
00002E8B  E921FF            jmp word 0x2daf
00002E8E  83C604            add si,byte +0x4
00002E91  FF4E0E            dec word [bp+0xe]
00002E94  E918FF            jmp word 0x2daf
00002E97  31C0              xor ax,ax
00002E99  E91180            jmp word 0xaead
00002E9C  55                push bp
00002E9D  89E5              mov bp,sp
00002E9F  8B5E06            mov bx,[bp+0x6]
00002EA2  FF7704            push word [bx+0x4]
00002EA5  E88CFE            call word 0x2d34
00002EA8  5B                pop bx
00002EA9  09C0              or ax,ax
00002EAB  7505              jnz 0x2eb2
00002EAD  B8FAFF            mov ax,0xfffa
00002EB0  EB20              jmp short 0x2ed2
00002EB2  833E2E2301        cmp word [0x232e],byte +0x1
00002EB7  7407              jz 0x2ec0
00002EB9  833E2E2302        cmp word [0x232e],byte +0x2
00002EBE  7510              jnz 0x2ed0
00002EC0  8B5E06            mov bx,[bp+0x6]
00002EC3  8B5F06            mov bx,[bx+0x6]
00002EC6  D1E3              shl bx,1
00002EC8  FFB7766F          push word [bx+0x6f76]
00002ECC  E8E3D8            call word 0x7b2
00002ECF  5B                pop bx
00002ED0  31C0              xor ax,ax
00002ED2  E9DA7F            jmp word 0xaeaf
00002ED5  55                push bp
00002ED6  89E5              mov bp,sp
00002ED8  83EC20            sub sp,byte +0x20
00002EDB  FF368646          push word [0x4686]
00002EDF  FF368446          push word [0x4684]
00002EE3  8D46F8            lea ax,[bp-0x8]
00002EE6  50                push ax
00002EE7  E84C7B            call word 0xaa36
00002EEA  83C406            add sp,byte +0x6
00002EED  50                push ax
00002EEE  B80E23            mov ax,0x230e
00002EF1  50                push ax
00002EF2  B90400            mov cx,0x4
00002EF5  E8377E            call word 0xad2f
00002EF8  BAA474            mov dx,0x74a4
00002EFB  31C9              xor cx,cx
00002EFD  03168446          add dx,[0x4684]
00002F01  130E8646          adc cx,[0x4686]
00002F05  51                push cx
00002F06  52                push dx
00002F07  8D46F0            lea ax,[bp-0x10]
00002F0A  50                push ax
00002F0B  E8287B            call word 0xaa36
00002F0E  83C406            add sp,byte +0x6
00002F11  50                push ax
00002F12  B81623            mov ax,0x2316
00002F15  50                push ax
00002F16  B90400            mov cx,0x4
00002F19  E8137E            call word 0xad2f
00002F1C  833E424600        cmp word [0x4642],byte +0x0
00002F21  751E              jnz 0x2f41
00002F23  B81000            mov ax,0x10
00002F26  50                push ax
00002F27  31C0              xor ax,ax
00002F29  50                push ax
00002F2A  8D46E8            lea ax,[bp-0x18]
00002F2D  50                push ax
00002F2E  E8057B            call word 0xaa36
00002F31  83C406            add sp,byte +0x6
00002F34  50                push ax
00002F35  B80623            mov ax,0x2306
00002F38  50                push ax
00002F39  B90400            mov cx,0x4
00002F3C  E8F07D            call word 0xad2f
00002F3F  EB1C              jmp short 0x2f5d
00002F41  B80001            mov ax,0x100
00002F44  50                push ax
00002F45  31C0              xor ax,ax
00002F47  50                push ax
00002F48  8D46E0            lea ax,[bp-0x20]
00002F4B  50                push ax
00002F4C  E8E77A            call word 0xaa36
00002F4F  83C406            add sp,byte +0x6
00002F52  50                push ax
00002F53  B80623            mov ax,0x2306
00002F56  50                push ax
00002F57  B90400            mov cx,0x4
00002F5A  E8D27D            call word 0xad2f
00002F5D  E94F7F            jmp word 0xaeaf
00002F60  55                push bp
00002F61  89E5              mov bp,sp
00002F63  83EC1E            sub sp,byte +0x1e
00002F66  56                push si
00002F67  57                push di
00002F68  8B7606            mov si,[bp+0x6]
00002F6B  FF7404            push word [si+0x4]
00002F6E  E8C3FD            call word 0x2d34
00002F71  5B                pop bx
00002F72  8946FE            mov [bp-0x2],ax
00002F75  09C0              or ax,ax
00002F77  7506              jnz 0x2f7f
00002F79  B8FAFF            mov ax,0xfffa
00002F7C  E91201            jmp word 0x3091
00002F7F  8B5C06            mov bx,[si+0x6]
00002F82  D1E3              shl bx,1
00002F84  8B97766F          mov dx,[bx+0x6f76]
00002F88  8956FC            mov [bp-0x4],dx
00002F8B  E9F800            jmp word 0x3086
00002F8E  837C0601          cmp word [si+0x6],byte +0x1
00002F92  7406              jz 0x2f9a
00002F94  B8FFFF            mov ax,0xffff
00002F97  E9F700            jmp word 0x3091
00002F9A  B80004            mov ax,0x400
00002F9D  31D2              xor dx,dx
00002F9F  FF740C            push word [si+0xc]
00002FA2  FF740A            push word [si+0xa]
00002FA5  E8E77E            call word 0xae8f
00002FA8  8946F8            mov [bp-0x8],ax
00002FAB  8956FA            mov [bp-0x6],dx
00002FAE  05FF03            add ax,0x3ff
00002FB1  83D200            adc dx,byte +0x0
00002FB4  B90A00            mov cx,0xa
00002FB7  E306              jcxz 0x2fbf
00002FB9  D1EA              shr dx,1
00002FBB  D1D8              rcr ax,1
00002FBD  E2FA              loop 0x2fb9
00002FBF  8946F4            mov [bp-0xc],ax
00002FC2  BF4661            mov di,0x6146
00002FC5  83C7FC            add di,byte -0x4
00002FC8  8B56F4            mov dx,[bp-0xc]
00002FCB  395502            cmp [di+0x2],dx
00002FCE  7315              jnc 0x2fe5
00002FD0  81FF2661          cmp di,0x6126
00002FD4  75EF              jnz 0x2fc5
00002FD6  B80080            mov ax,0x8000
00002FD9  50                push ax
00002FDA  B89604            mov ax,0x496
00002FDD  50                push ax
00002FDE  E8ABDF            call word 0xf8c
00002FE1  5B                pop bx
00002FE2  5B                pop bx
00002FE3  EBE0              jmp short 0x2fc5
00002FE5  8B5502            mov dx,[di+0x2]
00002FE8  2B56F4            sub dx,[bp-0xc]
00002FEB  895502            mov [di+0x2],dx
00002FEE  0315              add dx,[di]
00002FF0  8956F6            mov [bp-0xa],dx
00002FF3  B90A00            mov cx,0xa
00002FF6  31DB              xor bx,bx
00002FF8  E306              jcxz 0x3000
00002FFA  D1E2              shl dx,1
00002FFC  D1D3              rcl bx,1
00002FFE  E2FA              loop 0x2ffa
00003000  53                push bx
00003001  52                push dx
00003002  8D46EA            lea ax,[bp-0x16]
00003005  50                push ax
00003006  E82D7A            call word 0xaa36
00003009  83C406            add sp,byte +0x6
0000300C  50                push ax
0000300D  FF76FE            push word [bp-0x2]
00003010  B90400            mov cx,0x4
00003013  E8197D            call word 0xad2f
00003016  FF76FA            push word [bp-0x6]
00003019  FF76F8            push word [bp-0x8]
0000301C  8D46E2            lea ax,[bp-0x1e]
0000301F  50                push ax
00003020  E8137A            call word 0xaa36
00003023  83C406            add sp,byte +0x6
00003026  8B5EFE            mov bx,[bp-0x2]
00003029  50                push ax
0000302A  83C308            add bx,byte +0x8
0000302D  53                push bx
0000302E  B90400            mov cx,0x4
00003031  E8FB7C            call word 0xad2f
00003034  EB59              jmp short 0x308f
00003036  837C0600          cmp word [si+0x6],byte +0x0
0000303A  7509              jnz 0x3045
0000303C  8B5412            mov dx,[si+0x12]
0000303F  89168604          mov [0x486],dx
00003043  EB4A              jmp short 0x308f
00003045  837C0601          cmp word [si+0x6],byte +0x1
00003049  7509              jnz 0x3054
0000304B  8B5412            mov dx,[si+0x12]
0000304E  89168804          mov [0x488],dx
00003052  EB3B              jmp short 0x308f
00003054  B8FFFF            mov ax,0xffff
00003057  EB38              jmp short 0x3091
00003059  B80A00            mov ax,0xa
0000305C  50                push ax
0000305D  FF7412            push word [si+0x12]
00003060  FF7406            push word [si+0x6]
00003063  B88004            mov ax,0x480
00003066  50                push ax
00003067  B8FCFF            mov ax,0xfffc
0000306A  50                push ax
0000306B  E804F5            call word 0x2572
0000306E  83C40A            add sp,byte +0xa
00003071  09C0              or ax,ax
00003073  741A              jz 0x308f
00003075  B8F2FF            mov ax,0xfff2
00003078  EB17              jmp short 0x3091
0000307A  56                push si
0000307B  B87004            mov ax,0x470
0000307E  50                push ax
0000307F  E82830            call word 0x60aa
00003082  5B                pop bx
00003083  5B                pop bx
00003084  EB0B              jmp short 0x3091
00003086  BB8A04            mov bx,0x48a
00003089  8B4408            mov ax,[si+0x8]
0000308C  E9B57C            jmp word 0xad44
0000308F  31C0              xor ax,ax
00003091  E9197E            jmp word 0xaead
00003094  55                push bp
00003095  89E5              mov bp,sp
00003097  8B1E2E23          mov bx,[0x232e]
0000309B  B90400            mov cx,0x4
0000309E  D3E3              shl bx,cl
000030A0  81C3F622          add bx,0x22f6
000030A4  B80002            mov ax,0x200
000030A7  50                push ax
000030A8  B90800            mov cx,0x8
000030AB  E8CC7D            call word 0xae7a
000030AE  E8A279            call word 0xaa53
000030B1  83C40A            add sp,byte +0xa
000030B4  52                push dx
000030B5  50                push ax
000030B6  31C0              xor ax,ax
000030B8  50                push ax
000030B9  B80008            mov ax,0x800
000030BC  50                push ax
000030BD  E8557D            call word 0xae15
000030C0  8B5E04            mov bx,[bp+0x4]
000030C3  894710            mov [bx+0x10],ax
000030C6  8B5E04            mov bx,[bp+0x4]
000030C9  C747124000        mov word [bx+0x12],0x40
000030CE  8B5E04            mov bx,[bp+0x4]
000030D1  C747142000        mov word [bx+0x14],0x20
000030D6  E9D67D            jmp word 0xaeaf
000030D9  55                push bp
000030DA  89E5              mov bp,sp
000030DC  83EC18            sub sp,byte +0x18
000030DF  56                push si
000030E0  57                push di
000030E1  BEC46F            mov si,0x6fc4
000030E4  81FE9C74          cmp si,0x749c
000030E8  730B              jnc 0x30f5
000030EA  56                push si
000030EB  E8B70F            call word 0x40a5
000030EE  5B                pop bx
000030EF  81C66C02          add si,0x26c
000030F3  EBEF              jmp short 0x30e4
000030F5  B81C05            mov ax,0x51c
000030F8  50                push ax
000030F9  B82005            mov ax,0x520
000030FC  50                push ax
000030FD  B82205            mov ax,0x522
00003100  50                push ax
00003101  E83073            call word 0xa434
00003104  83C406            add sp,byte +0x6
00003107  833E424600        cmp word [0x4642],byte +0x0
0000310C  7405              jz 0x3113
0000310E  B8F204            mov ax,0x4f2
00003111  EB03              jmp short 0x3116
00003113  B8EC04            mov ax,0x4ec
00003116  50                push ax
00003117  B80405            mov ax,0x504
0000311A  50                push ax
0000311B  E81673            call word 0xa434
0000311E  5B                pop bx
0000311F  5B                pop bx
00003120  833EC44800        cmp word [0x48c4],byte +0x0
00003125  7403              jz 0x312a
00003127  E8D7F7            call word 0x2901
0000312A  BEC46F            mov si,0x6fc4
0000312D  81FE9C74          cmp si,0x749c
00003131  7310              jnc 0x3143
00003133  833C00            cmp word [si],byte +0x0
00003136  7405              jz 0x313d
00003138  56                push si
00003139  E83B06            call word 0x3777
0000313C  5B                pop bx
0000313D  81C66C02          add si,0x26c
00003141  EBEA              jmp short 0x312d
00003143  8D46E8            lea ax,[bp-0x18]
00003146  50                push ax
00003147  B8CE7A            mov ax,0x7ace
0000314A  50                push ax
0000314B  E88C79            call word 0xaada
0000314E  5B                pop bx
0000314F  5B                pop bx
00003150  837EEA02          cmp word [bp-0x16],byte +0x2
00003154  74CA              jz 0x3120
00003156  8B7EEC            mov di,[bp-0x14]
00003159  83FF02            cmp di,byte +0x2
0000315C  730C              jnc 0x316a
0000315E  B86C02            mov ax,0x26c
00003161  F7E7              mul di
00003163  05C46F            add ax,0x6fc4
00003166  89C6              mov si,ax
00003168  EB1D              jmp short 0x3187
0000316A  83FF0F            cmp di,byte +0xf
0000316D  7505              jnz 0x3174
0000316F  BEC46F            mov si,0x6fc4
00003172  EB13              jmp short 0x3187
00003174  89FA              mov dx,di
00003176  83EA10            sub dx,byte +0x10
00003179  89FA              mov dx,di
0000317B  81EA8000          sub dx,0x80
0000317F  89FA              mov dx,di
00003181  81EAC000          sub dx,0xc0
00003185  31F6              xor si,si
00003187  09F6              or si,si
00003189  7406              jz 0x3191
0000318B  837C0A00          cmp word [si+0xa],byte +0x0
0000318F  757C              jnz 0x320d
00003191  B8FAFF            mov ax,0xfffa
00003194  50                push ax
00003195  FF76EE            push word [bp-0x12]
00003198  FF76E8            push word [bp-0x18]
0000319B  B84400            mov ax,0x44
0000319E  50                push ax
0000319F  E86A0E            call word 0x400c
000031A2  83C408            add sp,byte +0x8
000031A5  E978FF            jmp word 0x3120
000031A8  8D46E8            lea ax,[bp-0x18]
000031AB  50                push ax
000031AC  56                push si
000031AD  E86600            call word 0x3216
000031B0  5B                pop bx
000031B1  5B                pop bx
000031B2  E96BFF            jmp word 0x3120
000031B5  8D46E8            lea ax,[bp-0x18]
000031B8  50                push ax
000031B9  56                push si
000031BA  E84C01            call word 0x3309
000031BD  5B                pop bx
000031BE  5B                pop bx
000031BF  E95EFF            jmp word 0x3120
000031C2  8D46E8            lea ax,[bp-0x18]
000031C5  50                push ax
000031C6  56                push si
000031C7  E8EF01            call word 0x33b9
000031CA  5B                pop bx
000031CB  5B                pop bx
000031CC  E951FF            jmp word 0x3120
000031CF  8D46E8            lea ax,[bp-0x18]
000031D2  50                push ax
000031D3  56                push si
000031D4  E85504            call word 0x362c
000031D7  5B                pop bx
000031D8  5B                pop bx
000031D9  E944FF            jmp word 0x3120
000031DC  8D46E8            lea ax,[bp-0x18]
000031DF  50                push ax
000031E0  56                push si
000031E1  E89D04            call word 0x3681
000031E4  5B                pop bx
000031E5  5B                pop bx
000031E6  E937FF            jmp word 0x3120
000031E9  8D46E8            lea ax,[bp-0x18]
000031EC  50                push ax
000031ED  56                push si
000031EE  E8FF04            call word 0x36f0
000031F1  5B                pop bx
000031F2  5B                pop bx
000031F3  E92AFF            jmp word 0x3120
000031F6  B8EAFF            mov ax,0xffea
000031F9  50                push ax
000031FA  FF76EE            push word [bp-0x12]
000031FD  FF76E8            push word [bp-0x18]
00003200  B84400            mov ax,0x44
00003203  50                push ax
00003204  E8050E            call word 0x400c
00003207  83C408            add sp,byte +0x8
0000320A  E913FF            jmp word 0x3120
0000320D  BBD604            mov bx,0x4d6
00003210  8B46EA            mov ax,[bp-0x16]
00003213  E92E7B            jmp word 0xad44
00003216  55                push bp
00003217  89E5              mov bp,sp
00003219  50                push ax
0000321A  56                push si
0000321B  57                push di
0000321C  8B7E06            mov di,[bp+0x6]
0000321F  8B7604            mov si,[bp+0x4]
00003222  837C2A00          cmp word [si+0x2a],byte +0x0
00003226  7E08              jng 0x3230
00003228  C746FEFBFF        mov word [bp-0x2],0xfffb
0000322D  E9C400            jmp word 0x32f4
00003230  837D0800          cmp word [di+0x8],byte +0x0
00003234  7F08              jg 0x323e
00003236  C746FEEAFF        mov word [bp-0x2],0xffea
0000323B  E9B600            jmp word 0x32f4
0000323E  FF7508            push word [di+0x8]
00003241  FF7512            push word [di+0x12]
00003244  FF7506            push word [di+0x6]
00003247  E809F3            call word 0x2553
0000324A  83C406            add sp,byte +0x6
0000324D  09C2              or dx,ax
0000324F  7508              jnz 0x3259
00003251  C746FEF2FF        mov word [bp-0x2],0xfff2
00003256  E99B00            jmp word 0x32f4
00003259  C6442544          mov byte [si+0x25],0x44
0000325D  8B05              mov ax,[di]
0000325F  98                cbw
00003260  884426            mov [si+0x26],al
00003263  8B4506            mov ax,[di+0x6]
00003266  98                cbw
00003267  884427            mov [si+0x27],al
0000326A  8B5512            mov dx,[di+0x12]
0000326D  895428            mov [si+0x28],dx
00003270  8B5508            mov dx,[di+0x8]
00003273  89542A            mov [si+0x2a],dx
00003276  F6444A10          test byte [si+0x4a],0x10
0000327A  7543              jnz 0x32bf
0000327C  8A5457            mov dl,[si+0x57]
0000327F  30F6              xor dh,dh
00003281  09D2              or dx,dx
00003283  7E3A              jng 0x32bf
00003285  807C5500          cmp byte [si+0x55],0x0
00003289  7517              jnz 0x32a2
0000328B  E82278            call word 0xaab0
0000328E  B80100            mov ax,0x1
00003291  50                push ax
00003292  56                push si
00003293  E8AE0E            call word 0x4144
00003296  5B                pop bx
00003297  5B                pop bx
00003298  C7440E0100        mov word [si+0xe],0x1
0000329D  E81278            call word 0xaab2
000032A0  EB1D              jmp short 0x32bf
000032A2  837C0800          cmp word [si+0x8],byte +0x0
000032A6  7517              jnz 0x32bf
000032A8  E80578            call word 0xaab0
000032AB  31C0              xor ax,ax
000032AD  50                push ax
000032AE  56                push si
000032AF  E8920E            call word 0x4144
000032B2  5B                pop bx
000032B3  5B                pop bx
000032B4  E8FB77            call word 0xaab2
000032B7  8A5455            mov dl,[si+0x55]
000032BA  30F6              xor dh,dh
000032BC  89540E            mov [si+0xe],dx
000032BF  56                push si
000032C0  E81905            call word 0x37dc
000032C3  5B                pop bx
000032C4  56                push si
000032C5  E8AF04            call word 0x3777
000032C8  5B                pop bx
000032C9  837C2A00          cmp word [si+0x2a],byte +0x0
000032CD  7437              jz 0x3306
000032CF  8B550E            mov dx,[di+0xe]
000032D2  81E20008          and dx,0x800
000032D6  81CA0000          or dx,0x0
000032DA  740F              jz 0x32eb
000032DC  C746FEF5FF        mov word [bp-0x2],0xfff5
000032E1  31D2              xor dx,dx
000032E3  89542C            mov [si+0x2c],dx
000032E6  89542A            mov [si+0x2a],dx
000032E9  EB09              jmp short 0x32f4
000032EB  C746FE1AFC        mov word [bp-0x2],0xfc1a
000032F0  C6442543          mov byte [si+0x25],0x43
000032F4  FF76FE            push word [bp-0x2]
000032F7  FF7506            push word [di+0x6]
000032FA  FF35              push word [di]
000032FC  B84400            mov ax,0x44
000032FF  50                push ax
00003300  E8090D            call word 0x400c
00003303  83C408            add sp,byte +0x8
00003306  E9A47B            jmp word 0xaead
00003309  55                push bp
0000330A  89E5              mov bp,sp
0000330C  50                push ax
0000330D  56                push si
0000330E  57                push di
0000330F  8B7E06            mov di,[bp+0x6]
00003312  8B7604            mov si,[bp+0x4]
00003315  837C3400          cmp word [si+0x34],byte +0x0
00003319  7E08              jng 0x3323
0000331B  C746FEFBFF        mov word [bp-0x2],0xfffb
00003320  E98100            jmp word 0x33a4
00003323  837D0800          cmp word [di+0x8],byte +0x0
00003327  7F08              jg 0x3331
00003329  C746FEEAFF        mov word [bp-0x2],0xffea
0000332E  E97300            jmp word 0x33a4
00003331  FF7508            push word [di+0x8]
00003334  FF7512            push word [di+0x12]
00003337  FF7506            push word [di+0x6]
0000333A  E816F2            call word 0x2553
0000333D  83C406            add sp,byte +0x6
00003340  09C2              or dx,ax
00003342  7507              jnz 0x334b
00003344  C746FEF2FF        mov word [bp-0x2],0xfff2
00003349  EB59              jmp short 0x33a4
0000334B  C6442E44          mov byte [si+0x2e],0x44
0000334F  8B05              mov ax,[di]
00003351  98                cbw
00003352  88442F            mov [si+0x2f],al
00003355  8B4506            mov ax,[di+0x6]
00003358  98                cbw
00003359  884430            mov [si+0x30],al
0000335C  8B5512            mov dx,[di+0x12]
0000335F  895432            mov [si+0x32],dx
00003362  8B5508            mov dx,[di+0x8]
00003365  895434            mov [si+0x34],dx
00003368  56                push si
00003369  E80B04            call word 0x3777
0000336C  5B                pop bx
0000336D  837C3400          cmp word [si+0x34],byte +0x0
00003371  7443              jz 0x33b6
00003373  8B550E            mov dx,[di+0xe]
00003376  81E20008          and dx,0x800
0000337A  81CA0000          or dx,0x0
0000337E  741B              jz 0x339b
00003380  837C3600          cmp word [si+0x36],byte +0x0
00003384  7E05              jng 0x338b
00003386  8B4436            mov ax,[si+0x36]
00003389  EB03              jmp short 0x338e
0000338B  B8F5FF            mov ax,0xfff5
0000338E  8946FE            mov [bp-0x2],ax
00003391  31D2              xor dx,dx
00003393  895436            mov [si+0x36],dx
00003396  895434            mov [si+0x34],dx
00003399  EB09              jmp short 0x33a4
0000339B  C746FE1AFC        mov word [bp-0x2],0xfc1a
000033A0  C6442E43          mov byte [si+0x2e],0x43
000033A4  FF76FE            push word [bp-0x2]
000033A7  FF7506            push word [di+0x6]
000033AA  FF35              push word [di]
000033AC  B84400            mov ax,0x44
000033AF  50                push ax
000033B0  E8590C            call word 0x400c
000033B3  83C408            add sp,byte +0x8
000033B6  E9F47A            jmp word 0xaead
000033B9  55                push bp
000033BA  89E5              mov bp,sp
000033BC  83EC0A            sub sp,byte +0xa
000033BF  56                push si
000033C0  57                push di
000033C1  8B7E06            mov di,[bp+0x6]
000033C4  8B7604            mov si,[bp+0x4]
000033C7  EB2A              jmp short 0x33f3
000033C9  C746F62000        mov word [bp-0xa],0x20
000033CE  EB2C              jmp short 0x33fc
000033D0  C746F60200        mov word [bp-0xa],0x2
000033D5  EB25              jmp short 0x33fc
000033D7  C746F60800        mov word [bp-0xa],0x8
000033DC  EB1E              jmp short 0x33fc
000033DE  C746F60006        mov word [bp-0xa],0x600
000033E3  EB17              jmp short 0x33fc
000033E5  C746F60020        mov word [bp-0xa],0x2000
000033EA  EB10              jmp short 0x33fc
000033EC  C746F60000        mov word [bp-0xa],0x0
000033F1  EB09              jmp short 0x33fc
000033F3  BB5405            mov bx,0x554
000033F6  8B4508            mov ax,[di+0x8]
000033F9  E96C79            jmp word 0xad68
000033FC  837EF600          cmp word [bp-0xa],byte +0x0
00003400  742F              jz 0x3431
00003402  FF76F6            push word [bp-0xa]
00003405  FF7512            push word [di+0x12]
00003408  FF7506            push word [di+0x6]
0000340B  E845F1            call word 0x2553
0000340E  83C406            add sp,byte +0x6
00003411  8946F8            mov [bp-0x8],ax
00003414  8956FA            mov [bp-0x6],dx
00003417  09C2              or dx,ax
00003419  7516              jnz 0x3431
0000341B  B8F2FF            mov ax,0xfff2
0000341E  50                push ax
0000341F  FF7506            push word [di+0x6]
00003422  FF35              push word [di]
00003424  B84400            mov ax,0x44
00003427  50                push ax
00003428  E8E10B            call word 0x400c
0000342B  83C408            add sp,byte +0x8
0000342E  E9F801            jmp word 0x3629
00003431  C746FE0000        mov word [bp-0x2],0x0
00003436  E9D501            jmp word 0x360e
00003439  8D5C44            lea bx,[si+0x44]
0000343C  31D2              xor dx,dx
0000343E  031E8446          add bx,[0x4684]
00003442  13168646          adc dx,[0x4686]
00003446  31C0              xor ax,ax
00003448  50                push ax
00003449  FF76F6            push word [bp-0xa]
0000344C  FF76FA            push word [bp-0x6]
0000344F  FF76F8            push word [bp-0x8]
00003452  52                push dx
00003453  53                push bx
00003454  E82ED6            call word 0xa85
00003457  83C40C            add sp,byte +0xc
0000345A  E9BA01            jmp word 0x3617
0000345D  837C3400          cmp word [si+0x34],byte +0x0
00003461  7E21              jng 0x3484
00003463  8B05              mov ax,[di]
00003465  98                cbw
00003466  884438            mov [si+0x38],al
00003469  8B4506            mov ax,[di+0x6]
0000346C  98                cbw
0000346D  884439            mov [si+0x39],al
00003470  8B5508            mov dx,[di+0x8]
00003473  89543A            mov [si+0x3a],dx
00003476  8B5512            mov dx,[di+0x12]
00003479  89543C            mov [si+0x3c],dx
0000347C  C746FE1AFC        mov word [bp-0x2],0xfc1a
00003481  E99301            jmp word 0x3617
00003484  817D080D54        cmp word [di+0x8],0x540d
00003489  7503              jnz 0x348e
0000348B  E98901            jmp word 0x3617
0000348E  817D080B54        cmp word [di+0x8],0x540b
00003493  7505              jnz 0x349a
00003495  56                push si
00003496  E8ED0B            call word 0x4086
00003499  5B                pop bx
0000349A  8D5C44            lea bx,[si+0x44]
0000349D  31D2              xor dx,dx
0000349F  031E8446          add bx,[0x4684]
000034A3  13168646          adc dx,[0x4686]
000034A7  31C0              xor ax,ax
000034A9  50                push ax
000034AA  FF76F6            push word [bp-0xa]
000034AD  52                push dx
000034AE  53                push bx
000034AF  FF76FA            push word [bp-0x6]
000034B2  FF76F8            push word [bp-0x8]
000034B5  E8CDD5            call word 0xa85
000034B8  83C40C            add sp,byte +0xc
000034BB  56                push si
000034BC  E8B10A            call word 0x3f70
000034BF  5B                pop bx
000034C0  E95401            jmp word 0x3617
000034C3  8D5EFC            lea bx,[bp-0x4]
000034C6  31D2              xor dx,dx
000034C8  031E8446          add bx,[0x4684]
000034CC  13168646          adc dx,[0x4686]
000034D0  31C0              xor ax,ax
000034D2  50                push ax
000034D3  FF76F6            push word [bp-0xa]
000034D6  52                push dx
000034D7  53                push bx
000034D8  FF76FA            push word [bp-0x6]
000034DB  FF76F8            push word [bp-0x8]
000034DE  E8A4D5            call word 0xa85
000034E1  83C40C            add sp,byte +0xc
000034E4  EB29              jmp short 0x350f
000034E6  56                push si
000034E7  E89C0B            call word 0x4086
000034EA  5B                pop bx
000034EB  E92901            jmp word 0x3617
000034EE  8B5C1A            mov bx,[si+0x1a]
000034F1  56                push si
000034F2  FFD3              call bx
000034F4  5B                pop bx
000034F5  E91F01            jmp word 0x3617
000034F8  56                push si
000034F9  E88A0B            call word 0x4086
000034FC  5B                pop bx
000034FD  8B5C1A            mov bx,[si+0x1a]
00003500  56                push si
00003501  FFD3              call bx
00003503  5B                pop bx
00003504  E91001            jmp word 0x3617
00003507  C746FEEAFF        mov word [bp-0x2],0xffea
0000350C  E90801            jmp word 0x3617
0000350F  BB9005            mov bx,0x590
00003512  8B46FC            mov ax,[bp-0x4]
00003515  E92C78            jmp word 0xad44
00003518  8D5EFC            lea bx,[bp-0x4]
0000351B  31D2              xor dx,dx
0000351D  031E8446          add bx,[0x4684]
00003521  13168646          adc dx,[0x4686]
00003525  31C0              xor ax,ax
00003527  50                push ax
00003528  FF76F6            push word [bp-0xa]
0000352B  52                push dx
0000352C  53                push bx
0000352D  FF76FA            push word [bp-0x6]
00003530  FF76F8            push word [bp-0x8]
00003533  E84FD5            call word 0xa85
00003536  83C40C            add sp,byte +0xc
00003539  EB3E              jmp short 0x3579
0000353B  31C0              xor ax,ax
0000353D  837EFC01          cmp word [bp-0x4],byte +0x1
00003541  7501              jnz 0x3544
00003543  40                inc ax
00003544  98                cbw
00003545  884422            mov [si+0x22],al
00003548  C7040100          mov word [si],0x1
0000354C  E9C800            jmp word 0x3617
0000354F  8B5C18            mov bx,[si+0x18]
00003552  31C0              xor ax,ax
00003554  8A445A            mov al,[si+0x5a]
00003557  50                push ax
00003558  56                push si
00003559  FFD3              call bx
0000355B  5B                pop bx
0000355C  5B                pop bx
0000355D  E9B700            jmp word 0x3617
00003560  8B5C18            mov bx,[si+0x18]
00003563  31C0              xor ax,ax
00003565  8A4459            mov al,[si+0x59]
00003568  50                push ax
00003569  56                push si
0000356A  FFD3              call bx
0000356C  5B                pop bx
0000356D  5B                pop bx
0000356E  E9A600            jmp word 0x3617
00003571  C746FEEAFF        mov word [bp-0x2],0xffea
00003576  E99E00            jmp word 0x3617
00003579  BB9C05            mov bx,0x59c
0000357C  8B46FC            mov ax,[bp-0x4]
0000357F  E9C277            jmp word 0xad44
00003582  837C1C00          cmp word [si+0x1c],byte +0x0
00003586  7503              jnz 0x358b
00003588  E98C00            jmp word 0x3617
0000358B  8B5C1C            mov bx,[si+0x1c]
0000358E  56                push si
0000358F  FFD3              call bx
00003591  5B                pop bx
00003592  E98200            jmp word 0x3617
00003595  8D5C64            lea bx,[si+0x64]
00003598  31D2              xor dx,dx
0000359A  031E8446          add bx,[0x4684]
0000359E  13168646          adc dx,[0x4686]
000035A2  31C0              xor ax,ax
000035A4  50                push ax
000035A5  FF76F6            push word [bp-0xa]
000035A8  FF76FA            push word [bp-0x6]
000035AB  FF76F8            push word [bp-0x8]
000035AE  52                push dx
000035AF  53                push bx
000035B0  E8D2D4            call word 0xa85
000035B3  83C40C            add sp,byte +0xc
000035B6  EB5F              jmp short 0x3617
000035B8  8D5C64            lea bx,[si+0x64]
000035BB  31D2              xor dx,dx
000035BD  031E8446          add bx,[0x4684]
000035C1  13168646          adc dx,[0x4686]
000035C5  31C0              xor ax,ax
000035C7  50                push ax
000035C8  FF76F6            push word [bp-0xa]
000035CB  52                push dx
000035CC  53                push bx
000035CD  FF76FA            push word [bp-0x6]
000035D0  FF76F8            push word [bp-0x8]
000035D3  E8AFD4            call word 0xa85
000035D6  83C40C            add sp,byte +0xc
000035D9  EB3C              jmp short 0x3617
000035DB  81FE9C74          cmp si,0x749c
000035DF  7336              jnc 0x3617
000035E1  FF76FA            push word [bp-0x6]
000035E4  FF76F8            push word [bp-0x8]
000035E7  E80410            call word 0x45ee
000035EA  5B                pop bx
000035EB  5B                pop bx
000035EC  8946FE            mov [bp-0x2],ax
000035EF  EB26              jmp short 0x3617
000035F1  81FE9C74          cmp si,0x749c
000035F5  7320              jnc 0x3617
000035F7  FF76FA            push word [bp-0x6]
000035FA  FF76F8            push word [bp-0x8]
000035FD  E8BB1F            call word 0x55bb
00003600  5B                pop bx
00003601  5B                pop bx
00003602  8946FE            mov [bp-0x2],ax
00003605  EB10              jmp short 0x3617
00003607  C746FEE7FF        mov word [bp-0x2],0xffe7
0000360C  EB09              jmp short 0x3617
0000360E  BBAA05            mov bx,0x5aa
00003611  8B4508            mov ax,[di+0x8]
00003614  E95177            jmp word 0xad68
00003617  FF76FE            push word [bp-0x2]
0000361A  FF7506            push word [di+0x6]
0000361D  FF35              push word [di]
0000361F  B84400            mov ax,0x44
00003622  50                push ax
00003623  E8E609            call word 0x400c
00003626  83C408            add sp,byte +0x8
00003629  E98178            jmp word 0xaead
0000362C  55                push bp
0000362D  89E5              mov bp,sp
0000362F  50                push ax
00003630  56                push si
00003631  57                push di
00003632  8B7E06            mov di,[bp+0x6]
00003635  8B7604            mov si,[bp+0x4]
00003638  C746FE0000        mov word [bp-0x2],0x0
0000363D  837D040F          cmp word [di+0x4],byte +0xf
00003641  750D              jnz 0x3650
00003643  F6450804          test byte [di+0x8],0x4
00003647  7423              jz 0x366c
00003649  C746FEF3FF        mov word [bp-0x2],0xfff3
0000364E  EB1C              jmp short 0x366c
00003650  F745080001        test word [di+0x8],0x100
00003655  750C              jnz 0x3663
00003657  8B4506            mov ax,[di+0x6]
0000365A  98                cbw
0000365B  884423            mov [si+0x23],al
0000365E  C746FE0100        mov word [bp-0x2],0x1
00003663  8A4424            mov al,[si+0x24]
00003666  98                cbw
00003667  40                inc ax
00003668  98                cbw
00003669  884424            mov [si+0x24],al
0000366C  FF76FE            push word [bp-0x2]
0000366F  FF7506            push word [di+0x6]
00003672  FF35              push word [di]
00003674  B84400            mov ax,0x44
00003677  50                push ax
00003678  E89109            call word 0x400c
0000367B  83C408            add sp,byte +0x8
0000367E  E92C78            jmp word 0xaead
00003681  55                push bp
00003682  89E5              mov bp,sp
00003684  56                push si
00003685  8B7604            mov si,[bp+0x4]
00003688  8B5E06            mov bx,[bp+0x6]
0000368B  837F040F          cmp word [bx+0x4],byte +0xf
0000368F  7447              jz 0x36d8
00003691  8A4424            mov al,[si+0x24]
00003694  98                cbw
00003695  48                dec ax
00003696  98                cbw
00003697  884424            mov [si+0x24],al
0000369A  807C2400          cmp byte [si+0x24],0x0
0000369E  7538              jnz 0x36d8
000036A0  C6442300          mov byte [si+0x23],0x0
000036A4  56                push si
000036A5  E8DE09            call word 0x4086
000036A8  5B                pop bx
000036A9  8B5C1A            mov bx,[si+0x1a]
000036AC  56                push si
000036AD  FFD3              call bx
000036AF  5B                pop bx
000036B0  8B5C40            mov bx,[si+0x40]
000036B3  56                push si
000036B4  FFD3              call bx
000036B6  5B                pop bx
000036B7  B8B604            mov ax,0x4b6
000036BA  50                push ax
000036BB  8D4444            lea ax,[si+0x44]
000036BE  50                push ax
000036BF  B91000            mov cx,0x10
000036C2  E86A76            call word 0xad2f
000036C5  B83023            mov ax,0x2330
000036C8  50                push ax
000036C9  8D4464            lea ax,[si+0x64]
000036CC  50                push ax
000036CD  B90400            mov cx,0x4
000036D0  E85C76            call word 0xad2f
000036D3  56                push si
000036D4  E89908            call word 0x3f70
000036D7  5B                pop bx
000036D8  8B5E06            mov bx,[bp+0x6]
000036DB  31C0              xor ax,ax
000036DD  50                push ax
000036DE  FF7706            push word [bx+0x6]
000036E1  FF37              push word [bx]
000036E3  B84400            mov ax,0x44
000036E6  50                push ax
000036E7  E82209            call word 0x400c
000036EA  83C408            add sp,byte +0x8
000036ED  E9BE77            jmp word 0xaeae
000036F0  55                push bp
000036F1  89E5              mov bp,sp
000036F3  50                push ax
000036F4  50                push ax
000036F5  56                push si
000036F6  57                push di
000036F7  8B7604            mov si,[bp+0x4]
000036FA  8B5E06            mov bx,[bp+0x6]
000036FD  8B7F06            mov di,[bx+0x6]
00003700  8B5708            mov dx,[bx+0x8]
00003703  8956FC            mov [bp-0x4],dx
00003706  F6C204            test dl,0x4
00003709  741B              jz 0x3726
0000370B  837C2A00          cmp word [si+0x2a],byte +0x0
0000370F  7415              jz 0x3726
00003711  8A4427            mov al,[si+0x27]
00003714  98                cbw
00003715  39F8              cmp ax,di
00003717  750D              jnz 0x3726
00003719  56                push si
0000371A  E86909            call word 0x4086
0000371D  5B                pop bx
0000371E  31D2              xor dx,dx
00003720  89542C            mov [si+0x2c],dx
00003723  89542A            mov [si+0x2a],dx
00003726  F646FC02          test byte [bp-0x4],0x2
0000372A  741D              jz 0x3749
0000372C  837C3400          cmp word [si+0x34],byte +0x0
00003730  7417              jz 0x3749
00003732  8A4430            mov al,[si+0x30]
00003735  98                cbw
00003736  39F8              cmp ax,di
00003738  750F              jnz 0x3749
0000373A  8B5C1A            mov bx,[si+0x1a]
0000373D  56                push si
0000373E  FFD3              call bx
00003740  5B                pop bx
00003741  31D2              xor dx,dx
00003743  895436            mov [si+0x36],dx
00003746  895434            mov [si+0x34],dx
00003749  837C3A00          cmp word [si+0x3a],byte +0x0
0000374D  740D              jz 0x375c
0000374F  8A4439            mov al,[si+0x39]
00003752  98                cbw
00003753  39F8              cmp ax,di
00003755  7505              jnz 0x375c
00003757  C7443A0000        mov word [si+0x3a],0x0
0000375C  C7040100          mov word [si],0x1
00003760  8B5E06            mov bx,[bp+0x6]
00003763  B8FCFF            mov ax,0xfffc
00003766  50                push ax
00003767  57                push di
00003768  FF37              push word [bx]
0000376A  B84400            mov ax,0x44
0000376D  50                push ax
0000376E  E89B08            call word 0x400c
00003771  83C408            add sp,byte +0x8
00003774  E93677            jmp word 0xaead
00003777  55                push bp
00003778  89E5              mov bp,sp
0000377A  50                push ax
0000377B  50                push ax
0000377C  56                push si
0000377D  8B7604            mov si,[bp+0x4]
00003780  C7040000          mov word [si],0x0
00003784  8B5C0A            mov bx,[si+0xa]
00003787  56                push si
00003788  FFD3              call bx
0000378A  5B                pop bx
0000378B  8B5C16            mov bx,[si+0x16]
0000378E  56                push si
0000378F  FFD3              call bx
00003791  5B                pop bx
00003792  837C3A00          cmp word [si+0x3a],byte +0x0
00003796  7405              jz 0x379d
00003798  56                push si
00003799  E83F07            call word 0x3edb
0000379C  5B                pop bx
0000379D  833C00            cmp word [si],byte +0x0
000037A0  75DE              jnz 0x3780
000037A2  56                push si
000037A3  E83600            call word 0x37dc
000037A6  5B                pop bx
000037A7  8B540E            mov dx,[si+0xe]
000037AA  39542C            cmp [si+0x2c],dx
000037AD  7C2A              jl 0x37d9
000037AF  837C2A00          cmp word [si+0x2a],byte +0x0
000037B3  7E24              jng 0x37d9
000037B5  8A4427            mov al,[si+0x27]
000037B8  98                cbw
000037B9  89C3              mov bx,ax
000037BB  8A4426            mov al,[si+0x26]
000037BE  98                cbw
000037BF  89C1              mov cx,ax
000037C1  8A4425            mov al,[si+0x25]
000037C4  98                cbw
000037C5  FF742C            push word [si+0x2c]
000037C8  53                push bx
000037C9  51                push cx
000037CA  50                push ax
000037CB  E83E08            call word 0x400c
000037CE  83C408            add sp,byte +0x8
000037D1  31D2              xor dx,dx
000037D3  89542C            mov [si+0x2c],dx
000037D6  89542A            mov [si+0x2a],dx
000037D9  E9D276            jmp word 0xaeae
000037DC  55                push bp
000037DD  89E5              mov bp,sp
000037DF  83EC4C            sub sp,byte +0x4c
000037E2  56                push si
000037E3  57                push di
000037E4  8B7604            mov si,[bp+0x4]
000037E7  837C4E00          cmp word [si+0x4e],byte +0x0
000037EB  7505              jnz 0x37f2
000037ED  C7440E0000        mov word [si+0xe],0x0
000037F2  837C2A00          cmp word [si+0x2a],byte +0x0
000037F6  7503              jnz 0x37fb
000037F8  E92E01            jmp word 0x3929
000037FB  8B540E            mov dx,[si+0xe]
000037FE  395408            cmp [si+0x8],dx
00003801  7D03              jnl 0x3806
00003803  E92301            jmp word 0x3929
00003806  8D5EB4            lea bx,[bp-0x4c]
00003809  31D2              xor dx,dx
0000380B  031E8446          add bx,[0x4684]
0000380F  13168646          adc dx,[0x4686]
00003813  895EF8            mov [bp-0x8],bx
00003816  8956FA            mov [bp-0x6],dx
00003819  8A4427            mov al,[si+0x27]
0000381C  98                cbw
0000381D  89C3              mov bx,ax
0000381F  D1E3              shl bx,1
00003821  8B9F766F          mov bx,[bx+0x6f76]
00003825  B90A00            mov cx,0xa
00003828  8B5754            mov dx,[bx+0x54]
0000382B  31DB              xor bx,bx
0000382D  E306              jcxz 0x3835
0000382F  D1E2              shl dx,1
00003831  D1D3              rcl bx,1
00003833  E2FA              loop 0x382f
00003835  8956F4            mov [bp-0xc],dx
00003838  895EF6            mov [bp-0xa],bx
0000383B  8D7EB4            lea di,[bp-0x4c]
0000383E  837C2A00          cmp word [si+0x2a],byte +0x0
00003842  7F03              jg 0x3847
00003844  E97D00            jmp word 0x38c4
00003847  837C0800          cmp word [si+0x8],byte +0x0
0000384B  7F03              jg 0x3850
0000384D  E97400            jmp word 0x38c4
00003850  8B5C04            mov bx,[si+0x4]
00003853  8B17              mov dx,[bx]
00003855  8956FE            mov [bp-0x2],dx
00003858  F7C20020          test dx,0x2000
0000385C  7538              jnz 0x3896
0000385E  8815              mov [di],dl
00003860  FF4C2A            dec word [si+0x2a]
00003863  47                inc di
00003864  8D5EF4            lea bx,[bp-0xc]
00003867  39DF              cmp di,bx
00003869  752B              jnz 0x3896
0000386B  8B5428            mov dx,[si+0x28]
0000386E  31C9              xor cx,cx
00003870  0356F4            add dx,[bp-0xc]
00003873  134EF6            adc cx,[bp-0xa]
00003876  31C0              xor ax,ax
00003878  50                push ax
00003879  B84000            mov ax,0x40
0000387C  50                push ax
0000387D  51                push cx
0000387E  52                push dx
0000387F  FF76FA            push word [bp-0x6]
00003882  FF76F8            push word [bp-0x8]
00003885  E8FDD1            call word 0xa85
00003888  83C40C            add sp,byte +0xc
0000388B  83442840          add word [si+0x28],byte +0x40
0000388F  83442C40          add word [si+0x2c],byte +0x40
00003893  8D7EB4            lea di,[bp-0x4c]
00003896  83440402          add word [si+0x4],byte +0x2
0000389A  8D9C6C02          lea bx,[si+0x26c]
0000389E  395C04            cmp [si+0x4],bx
000038A1  7506              jnz 0x38a9
000038A3  8D5C6C            lea bx,[si+0x6c]
000038A6  895C04            mov [si+0x4],bx
000038A9  FF4C06            dec word [si+0x6]
000038AC  F746FE0010        test word [bp-0x2],0x1000
000038B1  748B              jz 0x383e
000038B3  FF4C08            dec word [si+0x8]
000038B6  F6444A10          test byte [si+0x4a],0x10
000038BA  7482              jz 0x383e
000038BC  C7442A0000        mov word [si+0x2a],0x0
000038C1  E97AFF            jmp word 0x383e
000038C4  8D5EB4            lea bx,[bp-0x4c]
000038C7  39DF              cmp di,bx
000038C9  7634              jna 0x38ff
000038CB  8D5EB4            lea bx,[bp-0x4c]
000038CE  89FA              mov dx,di
000038D0  29DA              sub dx,bx
000038D2  8956FC            mov [bp-0x4],dx
000038D5  89D0              mov ax,dx
000038D7  99                cwd
000038D8  8B4C28            mov cx,[si+0x28]
000038DB  31DB              xor bx,bx
000038DD  034EF4            add cx,[bp-0xc]
000038E0  135EF6            adc bx,[bp-0xa]
000038E3  52                push dx
000038E4  50                push ax
000038E5  53                push bx
000038E6  51                push cx
000038E7  FF76FA            push word [bp-0x6]
000038EA  FF76F8            push word [bp-0x8]
000038ED  E895D1            call word 0xa85
000038F0  83C40C            add sp,byte +0xc
000038F3  8B56FC            mov dx,[bp-0x4]
000038F6  015428            add [si+0x28],dx
000038F9  8B56FC            mov dx,[bp-0x4]
000038FC  01542C            add [si+0x2c],dx
000038FF  837C2A00          cmp word [si+0x2a],byte +0x0
00003903  7524              jnz 0x3929
00003905  8A4427            mov al,[si+0x27]
00003908  98                cbw
00003909  89C3              mov bx,ax
0000390B  8A4426            mov al,[si+0x26]
0000390E  98                cbw
0000390F  89C1              mov cx,ax
00003911  8A4425            mov al,[si+0x25]
00003914  98                cbw
00003915  FF742C            push word [si+0x2c]
00003918  53                push bx
00003919  51                push cx
0000391A  50                push ax
0000391B  E8EE06            call word 0x400c
0000391E  83C408            add sp,byte +0x8
00003921  31D2              xor dx,dx
00003923  89542C            mov [si+0x2c],dx
00003926  89542A            mov [si+0x2a],dx
00003929  E98175            jmp word 0xaead
0000392C  55                push bp
0000392D  89E5              mov bp,sp
0000392F  83EC08            sub sp,byte +0x8
00003932  56                push si
00003933  57                push di
00003934  8B7604            mov si,[bp+0x4]
00003937  C746F80000        mov word [bp-0x8],0x0
0000393C  C746FA0000        mov word [bp-0x6],0x0
00003941  8B5608            mov dx,[bp+0x8]
00003944  3956FA            cmp [bp-0x6],dx
00003947  7C03              jl 0x394c
00003949  E92702            jmp word 0x3b73
0000394C  8B5E06            mov bx,[bp+0x6]
0000394F  8A17              mov dl,[bx]
00003951  30F6              xor dh,dh
00003953  89D7              mov di,dx
00003955  FF4606            inc word [bp+0x6]
00003958  F6444480          test byte [si+0x44],0x80
0000395C  7404              jz 0x3962
0000395E  81E77F00          and di,0x7f
00003962  F6444A20          test byte [si+0x4a],0x20
00003966  7443              jz 0x39ab
00003968  807C2100          cmp byte [si+0x21],0x0
0000396C  7408              jz 0x3976
0000396E  C6442100          mov byte [si+0x21],0x0
00003972  81CF0040          or di,0x4000
00003976  8A545C            mov dl,[si+0x5c]
00003979  30F6              xor dh,dh
0000397B  39FA              cmp dx,di
0000397D  751B              jnz 0x399a
0000397F  C6442101          mov byte [si+0x21],0x1
00003983  B85E00            mov ax,0x5e
00003986  50                push ax
00003987  56                push si
00003988  E81C03            call word 0x3ca7
0000398B  5B                pop bx
0000398C  5B                pop bx
0000398D  B80800            mov ax,0x8
00003990  50                push ax
00003991  56                push si
00003992  E81203            call word 0x3ca7
00003995  5B                pop bx
00003996  5B                pop bx
00003997  E9D301            jmp word 0x3b6d
0000399A  8A545B            mov dl,[si+0x5b]
0000399D  30F6              xor dh,dh
0000399F  39FA              cmp dx,di
000039A1  7508              jnz 0x39ab
000039A3  56                push si
000039A4  E8AE03            call word 0x3d55
000039A7  5B                pop bx
000039A8  E9C201            jmp word 0x3b6d
000039AB  81FFFF00          cmp di,0xff
000039AF  7504              jnz 0x39b5
000039B1  81CF0040          or di,0x4000
000039B5  83FF0D            cmp di,byte +0xd
000039B8  7514              jnz 0x39ce
000039BA  F6444408          test byte [si+0x44],0x8
000039BE  7403              jz 0x39c3
000039C0  E9AA01            jmp word 0x3b6d
000039C3  F6444402          test byte [si+0x44],0x2
000039C7  7413              jz 0x39dc
000039C9  BF0A00            mov di,0xa
000039CC  EB0E              jmp short 0x39dc
000039CE  83FF0A            cmp di,byte +0xa
000039D1  7509              jnz 0x39dc
000039D3  F6444420          test byte [si+0x44],0x20
000039D7  7403              jz 0x39dc
000039D9  BF0D00            mov di,0xd
000039DC  F6444A10          test byte [si+0x4a],0x10
000039E0  7503              jnz 0x39e5
000039E2  E97C00            jmp word 0x3a61
000039E5  8A5452            mov dl,[si+0x52]
000039E8  30F6              xor dh,dh
000039EA  39FA              cmp dx,di
000039EC  7518              jnz 0x3a06
000039EE  56                push si
000039EF  E8DF02            call word 0x3cd1
000039F2  5B                pop bx
000039F3  F6444A02          test byte [si+0x4a],0x2
000039F7  7403              jz 0x39fc
000039F9  E97101            jmp word 0x3b6d
000039FC  57                push di
000039FD  56                push si
000039FE  E87801            call word 0x3b79
00003A01  5B                pop bx
00003A02  5B                pop bx
00003A03  E96701            jmp word 0x3b6d
00003A06  8A5454            mov dl,[si+0x54]
00003A09  30F6              xor dh,dh
00003A0B  39FA              cmp dx,di
00003A0D  752F              jnz 0x3a3e
00003A0F  56                push si
00003A10  E8BE02            call word 0x3cd1
00003A13  5B                pop bx
00003A14  09C0              or ax,ax
00003A16  75F7              jnz 0x3a0f
00003A18  F6444A02          test byte [si+0x4a],0x2
00003A1C  7403              jz 0x3a21
00003A1E  E94C01            jmp word 0x3b6d
00003A21  57                push di
00003A22  56                push si
00003A23  E85301            call word 0x3b79
00003A26  5B                pop bx
00003A27  5B                pop bx
00003A28  F6444A04          test byte [si+0x4a],0x4
00003A2C  7503              jnz 0x3a31
00003A2E  E93C01            jmp word 0x3b6d
00003A31  B80A00            mov ax,0xa
00003A34  50                push ax
00003A35  56                push si
00003A36  E86E02            call word 0x3ca7
00003A39  5B                pop bx
00003A3A  5B                pop bx
00003A3B  E92F01            jmp word 0x3b6d
00003A3E  8A5450            mov dl,[si+0x50]
00003A41  30F6              xor dh,dh
00003A43  39FA              cmp dx,di
00003A45  7504              jnz 0x3a4b
00003A47  81CF0030          or di,0x3000
00003A4B  83FF0A            cmp di,byte +0xa
00003A4E  7504              jnz 0x3a54
00003A50  81CF0010          or di,0x1000
00003A54  8A5451            mov dl,[si+0x51]
00003A57  30F6              xor dh,dh
00003A59  39FA              cmp dx,di
00003A5B  7504              jnz 0x3a61
00003A5D  81CF0010          or di,0x1000
00003A61  F744440002        test word [si+0x44],0x200
00003A66  743E              jz 0x3aa6
00003A68  8A545A            mov dl,[si+0x5a]
00003A6B  30F6              xor dh,dh
00003A6D  39FA              cmp dx,di
00003A6F  750B              jnz 0x3a7c
00003A71  C6442201          mov byte [si+0x22],0x1
00003A75  C7040100          mov word [si],0x1
00003A79  E9F100            jmp word 0x3b6d
00003A7C  807C2200          cmp byte [si+0x22],0x0
00003A80  7424              jz 0x3aa6
00003A82  8A5459            mov dl,[si+0x59]
00003A85  30F6              xor dh,dh
00003A87  39FA              cmp dx,di
00003A89  7407              jz 0x3a92
00003A8B  F744440008        test word [si+0x44],0x800
00003A90  7414              jz 0x3aa6
00003A92  C6442200          mov byte [si+0x22],0x0
00003A96  C7040100          mov word [si],0x1
00003A9A  8A5459            mov dl,[si+0x59]
00003A9D  30F6              xor dh,dh
00003A9F  39FA              cmp dx,di
00003AA1  7503              jnz 0x3aa6
00003AA3  E9C700            jmp word 0x3b6d
00003AA6  F6444A40          test byte [si+0x4a],0x40
00003AAA  7438              jz 0x3ae4
00003AAC  8A5453            mov dl,[si+0x53]
00003AAF  30F6              xor dh,dh
00003AB1  39FA              cmp dx,di
00003AB3  7409              jz 0x3abe
00003AB5  8A5456            mov dl,[si+0x56]
00003AB8  30F6              xor dh,dh
00003ABA  39FA              cmp dx,di
00003ABC  7526              jnz 0x3ae4
00003ABE  C746FC0200        mov word [bp-0x4],0x2
00003AC3  8A5456            mov dl,[si+0x56]
00003AC6  30F6              xor dh,dh
00003AC8  39FA              cmp dx,di
00003ACA  7505              jnz 0x3ad1
00003ACC  C746FC0300        mov word [bp-0x4],0x3
00003AD1  FF76FC            push word [bp-0x4]
00003AD4  56                push si
00003AD5  E86E05            call word 0x4046
00003AD8  5B                pop bx
00003AD9  5B                pop bx
00003ADA  57                push di
00003ADB  56                push si
00003ADC  E89A00            call word 0x3b79
00003ADF  5B                pop bx
00003AE0  5B                pop bx
00003AE1  E98900            jmp word 0x3b6d
00003AE4  817C060001        cmp word [si+0x6],0x100
00003AE9  750C              jnz 0x3af7
00003AEB  F6444A10          test byte [si+0x4a],0x10
00003AEF  7503              jnz 0x3af4
00003AF1  E97F00            jmp word 0x3b73
00003AF4  E97600            jmp word 0x3b6d
00003AF7  F6444A10          test byte [si+0x4a],0x10
00003AFB  7531              jnz 0x3b2e
00003AFD  81CF0010          or di,0x1000
00003B01  837EF800          cmp word [bp-0x8],byte +0x0
00003B05  7527              jnz 0x3b2e
00003B07  8A5455            mov dl,[si+0x55]
00003B0A  30F6              xor dh,dh
00003B0C  09D2              or dx,dx
00003B0E  7E1E              jng 0x3b2e
00003B10  8A5457            mov dl,[si+0x57]
00003B13  30F6              xor dh,dh
00003B15  09D2              or dx,dx
00003B17  7E15              jng 0x3b2e
00003B19  E8946F            call word 0xaab0
00003B1C  B80100            mov ax,0x1
00003B1F  50                push ax
00003B20  56                push si
00003B21  E82006            call word 0x4144
00003B24  5B                pop bx
00003B25  5B                pop bx
00003B26  E8896F            call word 0xaab2
00003B29  C746F80100        mov word [bp-0x8],0x1
00003B2E  F6444A09          test byte [si+0x4a],0x9
00003B32  7409              jz 0x3b3d
00003B34  57                push di
00003B35  56                push si
00003B36  E84000            call word 0x3b79
00003B39  5B                pop bx
00003B3A  5B                pop bx
00003B3B  89C7              mov di,ax
00003B3D  8B5C02            mov bx,[si+0x2]
00003B40  83440202          add word [si+0x2],byte +0x2
00003B44  893F              mov [bx],di
00003B46  8D9C6C02          lea bx,[si+0x26c]
00003B4A  395C02            cmp [si+0x2],bx
00003B4D  7506              jnz 0x3b55
00003B4F  8D5C6C            lea bx,[si+0x6c]
00003B52  895C02            mov [si+0x2],bx
00003B55  FF4406            inc word [si+0x6]
00003B58  F7C70010          test di,0x1000
00003B5C  7403              jz 0x3b61
00003B5E  FF4408            inc word [si+0x8]
00003B61  817C060001        cmp word [si+0x6],0x100
00003B66  7505              jnz 0x3b6d
00003B68  56                push si
00003B69  E870FC            call word 0x37dc
00003B6C  5B                pop bx
00003B6D  FF46FA            inc word [bp-0x6]
00003B70  E9CEFD            jmp word 0x3941
00003B73  8B46FA            mov ax,[bp-0x6]
00003B76  E93473            jmp word 0xaead
00003B79  55                push bp
00003B7A  89E5              mov bp,sp
00003B7C  50                push ax
00003B7D  50                push ax
00003B7E  56                push si
00003B7F  57                push di
00003B80  8B7E06            mov di,[bp+0x6]
00003B83  8B7604            mov si,[bp+0x4]
00003B86  81E7FFF0          and di,0xf0ff
00003B8A  F6444A01          test byte [si+0x4a],0x1
00003B8E  7522              jnz 0x3bb2
00003B90  81FF0A10          cmp di,0x100a
00003B94  7517              jnz 0x3bad
00003B96  BA1800            mov dx,0x18
00003B99  23544A            and dx,[si+0x4a]
00003B9C  83FA18            cmp dx,byte +0x18
00003B9F  750C              jnz 0x3bad
00003BA1  8B5C18            mov bx,[si+0x18]
00003BA4  B80A00            mov ax,0xa
00003BA7  50                push ax
00003BA8  56                push si
00003BA9  FFD3              call bx
00003BAB  5B                pop bx
00003BAC  5B                pop bx
00003BAD  89F8              mov ax,di
00003BAF  E9F200            jmp word 0x3ca4
00003BB2  837C0600          cmp word [si+0x6],byte +0x0
00003BB6  7504              jnz 0x3bbc
00003BB8  31C0              xor ax,ax
00003BBA  EB04              jmp short 0x3bc0
00003BBC  8A4420            mov al,[si+0x20]
00003BBF  98                cbw
00003BC0  8946FC            mov [bp-0x4],ax
00003BC3  89FA              mov dx,di
00003BC5  30F6              xor dh,dh
00003BC7  83FA20            cmp dx,byte +0x20
00003BCA  7D6E              jnl 0x3c3a
00003BCC  EB5F              jmp short 0x3c2d
00003BCE  C746FE0000        mov word [bp-0x2],0x0
00003BD3  8B5C18            mov bx,[si+0x18]
00003BD6  B82000            mov ax,0x20
00003BD9  50                push ax
00003BDA  56                push si
00003BDB  FFD3              call bx
00003BDD  5B                pop bx
00003BDE  5B                pop bx
00003BDF  FF46FE            inc word [bp-0x2]
00003BE2  837EFE08          cmp word [bp-0x2],byte +0x8
00003BE6  7C03              jl 0x3beb
00003BE8  E98900            jmp word 0x3c74
00003BEB  F6441E07          test byte [si+0x1e],0x7
00003BEF  75E2              jnz 0x3bd3
00003BF1  E98000            jmp word 0x3c74
00003BF4  89FA              mov dx,di
00003BF6  8B5C18            mov bx,[si+0x18]
00003BF9  31C0              xor ax,ax
00003BFB  88D0              mov al,dl
00003BFD  50                push ax
00003BFE  56                push si
00003BFF  FFD3              call bx
00003C01  5B                pop bx
00003C02  5B                pop bx
00003C03  C746FE0000        mov word [bp-0x2],0x0
00003C08  EB6A              jmp short 0x3c74
00003C0A  8B5C18            mov bx,[si+0x18]
00003C0D  B85E00            mov ax,0x5e
00003C10  50                push ax
00003C11  56                push si
00003C12  FFD3              call bx
00003C14  5B                pop bx
00003C15  5B                pop bx
00003C16  89FA              mov dx,di
00003C18  30F6              xor dh,dh
00003C1A  83C240            add dx,byte +0x40
00003C1D  8B5C18            mov bx,[si+0x18]
00003C20  52                push dx
00003C21  56                push si
00003C22  FFD3              call bx
00003C24  5B                pop bx
00003C25  5B                pop bx
00003C26  C746FE0200        mov word [bp-0x2],0x2
00003C2B  EB47              jmp short 0x3c74
00003C2D  BAFF70            mov dx,0x70ff
00003C30  21FA              and dx,di
00003C32  BBEA05            mov bx,0x5ea
00003C35  89D0              mov ax,dx
00003C37  E92E71            jmp word 0xad68
00003C3A  89FA              mov dx,di
00003C3C  80FA7F            cmp dl,0x7f
00003C3F  751F              jnz 0x3c60
00003C41  8B5C18            mov bx,[si+0x18]
00003C44  B85E00            mov ax,0x5e
00003C47  50                push ax
00003C48  56                push si
00003C49  FFD3              call bx
00003C4B  5B                pop bx
00003C4C  5B                pop bx
00003C4D  8B5C18            mov bx,[si+0x18]
00003C50  B83F00            mov ax,0x3f
00003C53  50                push ax
00003C54  56                push si
00003C55  FFD3              call bx
00003C57  5B                pop bx
00003C58  5B                pop bx
00003C59  C746FE0200        mov word [bp-0x2],0x2
00003C5E  EB14              jmp short 0x3c74
00003C60  89FA              mov dx,di
00003C62  8B5C18            mov bx,[si+0x18]
00003C65  31C0              xor ax,ax
00003C67  88D0              mov al,dl
00003C69  50                push ax
00003C6A  56                push si
00003C6B  FFD3              call bx
00003C6D  5B                pop bx
00003C6E  5B                pop bx
00003C6F  C746FE0100        mov word [bp-0x2],0x1
00003C74  F7C70020          test di,0x2000
00003C78  7417              jz 0x3c91
00003C7A  837EFE00          cmp word [bp-0x2],byte +0x0
00003C7E  7E11              jng 0x3c91
00003C80  8B5C18            mov bx,[si+0x18]
00003C83  B80800            mov ax,0x8
00003C86  50                push ax
00003C87  56                push si
00003C88  FFD3              call bx
00003C8A  5B                pop bx
00003C8B  5B                pop bx
00003C8C  FF4EFE            dec word [bp-0x2]
00003C8F  EBE9              jmp short 0x3c7a
00003C91  8B46FC            mov ax,[bp-0x4]
00003C94  98                cbw
00003C95  884420            mov [si+0x20],al
00003C98  B90800            mov cx,0x8
00003C9B  8B56FE            mov dx,[bp-0x2]
00003C9E  D3E2              shl dx,cl
00003CA0  09FA              or dx,di
00003CA2  89D0              mov ax,dx
00003CA4  E90672            jmp word 0xaead
00003CA7  55                push bp
00003CA8  89E5              mov bp,sp
00003CAA  50                push ax
00003CAB  56                push si
00003CAC  8B7604            mov si,[bp+0x4]
00003CAF  8A4420            mov al,[si+0x20]
00003CB2  98                cbw
00003CB3  8946FE            mov [bp-0x2],ax
00003CB6  F6444A01          test byte [si+0x4a],0x1
00003CBA  740B              jz 0x3cc7
00003CBC  8B5C18            mov bx,[si+0x18]
00003CBF  FF7606            push word [bp+0x6]
00003CC2  56                push si
00003CC3  FFD3              call bx
00003CC5  5B                pop bx
00003CC6  5B                pop bx
00003CC7  8B46FE            mov ax,[bp-0x2]
00003CCA  98                cbw
00003CCB  884420            mov [si+0x20],al
00003CCE  E9DD71            jmp word 0xaeae
00003CD1  55                push bp
00003CD2  89E5              mov bp,sp
00003CD4  50                push ax
00003CD5  50                push ax
00003CD6  56                push si
00003CD7  57                push di
00003CD8  8B7604            mov si,[bp+0x4]
00003CDB  837C0600          cmp word [si+0x6],byte +0x0
00003CDF  7504              jnz 0x3ce5
00003CE1  31C0              xor ax,ax
00003CE3  EB6D              jmp short 0x3d52
00003CE5  8B7C02            mov di,[si+0x2]
00003CE8  8D5C6C            lea bx,[si+0x6c]
00003CEB  39FB              cmp bx,di
00003CED  7506              jnz 0x3cf5
00003CEF  89F7              mov di,si
00003CF1  81C76C02          add di,0x26c
00003CF5  83C7FE            add di,byte -0x2
00003CF8  F7050010          test word [di],0x1000
00003CFC  7404              jz 0x3d02
00003CFE  31C0              xor ax,ax
00003D00  EB50              jmp short 0x3d52
00003D02  807C2000          cmp byte [si+0x20],0x0
00003D06  7405              jz 0x3d0d
00003D08  56                push si
00003D09  E84900            call word 0x3d55
00003D0C  5B                pop bx
00003D0D  897C02            mov [si+0x2],di
00003D10  FF4C06            dec word [si+0x6]
00003D13  F6444A02          test byte [si+0x4a],0x2
00003D17  7436              jz 0x3d4f
00003D19  BA000F            mov dx,0xf00
00003D1C  2315              and dx,[di]
00003D1E  B90800            mov cx,0x8
00003D21  D3EA              shr dx,cl
00003D23  8956FC            mov [bp-0x4],dx
00003D26  837EFC00          cmp word [bp-0x4],byte +0x0
00003D2A  7E23              jng 0x3d4f
00003D2C  B80800            mov ax,0x8
00003D2F  50                push ax
00003D30  56                push si
00003D31  E873FF            call word 0x3ca7
00003D34  5B                pop bx
00003D35  5B                pop bx
00003D36  B82000            mov ax,0x20
00003D39  50                push ax
00003D3A  56                push si
00003D3B  E869FF            call word 0x3ca7
00003D3E  5B                pop bx
00003D3F  5B                pop bx
00003D40  B80800            mov ax,0x8
00003D43  50                push ax
00003D44  56                push si
00003D45  E85FFF            call word 0x3ca7
00003D48  5B                pop bx
00003D49  5B                pop bx
00003D4A  FF4EFC            dec word [bp-0x4]
00003D4D  EBD7              jmp short 0x3d26
00003D4F  B80100            mov ax,0x1
00003D52  E95871            jmp word 0xaead
00003D55  55                push bp
00003D56  89E5              mov bp,sp
00003D58  50                push ax
00003D59  56                push si
00003D5A  57                push di
00003D5B  8B7604            mov si,[bp+0x4]
00003D5E  C6442000          mov byte [si+0x20],0x0
00003D62  8B7C02            mov di,[si+0x2]
00003D65  8B5406            mov dx,[si+0x6]
00003D68  8956FE            mov [bp-0x2],dx
00003D6B  837EFE00          cmp word [bp-0x2],byte +0x0
00003D6F  7E1C              jng 0x3d8d
00003D71  8D5C6C            lea bx,[si+0x6c]
00003D74  39FB              cmp bx,di
00003D76  7506              jnz 0x3d7e
00003D78  89F7              mov di,si
00003D7A  81C76C02          add di,0x26c
00003D7E  F745FE0010        test word [di-0x2],0x1000
00003D83  7508              jnz 0x3d8d
00003D85  83C7FE            add di,byte -0x2
00003D88  FF4EFE            dec word [bp-0x2]
00003D8B  EBDE              jmp short 0x3d6b
00003D8D  8B56FE            mov dx,[bp-0x2]
00003D90  395406            cmp [si+0x6],dx
00003D93  7449              jz 0x3dde
00003D95  8A545B            mov dl,[si+0x5b]
00003D98  30F6              xor dh,dh
00003D9A  81CA0040          or dx,0x4000
00003D9E  52                push dx
00003D9F  56                push si
00003DA0  E8D6FD            call word 0x3b79
00003DA3  5B                pop bx
00003DA4  5B                pop bx
00003DA5  B80D00            mov ax,0xd
00003DA8  50                push ax
00003DA9  56                push si
00003DAA  E8FAFE            call word 0x3ca7
00003DAD  5B                pop bx
00003DAE  5B                pop bx
00003DAF  B80A00            mov ax,0xa
00003DB2  50                push ax
00003DB3  56                push si
00003DB4  E8F0FE            call word 0x3ca7
00003DB7  5B                pop bx
00003DB8  5B                pop bx
00003DB9  8D9C6C02          lea bx,[si+0x26c]
00003DBD  39FB              cmp bx,di
00003DBF  7505              jnz 0x3dc6
00003DC1  89F7              mov di,si
00003DC3  83C76C            add di,byte +0x6c
00003DC6  FF35              push word [di]
00003DC8  56                push si
00003DC9  E8ADFD            call word 0x3b79
00003DCC  5B                pop bx
00003DCD  5B                pop bx
00003DCE  8905              mov [di],ax
00003DD0  83C702            add di,byte +0x2
00003DD3  FF46FE            inc word [bp-0x2]
00003DD6  8B56FE            mov dx,[bp-0x2]
00003DD9  395406            cmp [si+0x6],dx
00003DDC  7FDB              jg 0x3db9
00003DDE  E9CC70            jmp word 0xaead
00003DE1  55                push bp
00003DE2  89E5              mov bp,sp
00003DE4  83EC06            sub sp,byte +0x6
00003DE7  56                push si
00003DE8  57                push di
00003DE9  8B7608            mov si,[bp+0x8]
00003DEC  8B5E0C            mov bx,[bp+0xc]
00003DEF  8B17              mov dx,[bx]
00003DF1  8956FC            mov [bp-0x4],dx
00003DF4  8B5E0E            mov bx,[bp+0xe]
00003DF7  8B17              mov dx,[bx]
00003DF9  8956FA            mov [bp-0x6],dx
00003DFC  8B5E04            mov bx,[bp+0x4]
00003DFF  8B7F1E            mov di,[bx+0x1e]
00003E02  837EFC00          cmp word [bp-0x4],byte +0x0
00003E06  7F03              jg 0x3e0b
00003E08  E9A800            jmp word 0x3eb3
00003E0B  E98A00            jmp word 0x3e98
00003E0E  4F                dec di
00003E0F  E98F00            jmp word 0x3ea1
00003E12  31FF              xor di,di
00003E14  E98A00            jmp word 0x3ea1
00003E17  8B5E04            mov bx,[bp+0x4]
00003E1A  BA0300            mov dx,0x3
00003E1D  235746            and dx,[bx+0x46]
00003E20  83FA03            cmp dx,byte +0x3
00003E23  7403              jz 0x3e28
00003E25  E97900            jmp word 0x3ea1
00003E28  837EFA02          cmp word [bp-0x6],byte +0x2
00003E2C  7D03              jnl 0x3e31
00003E2E  E98200            jmp word 0x3eb3
00003E31  C6040D            mov byte [si],0xd
00003E34  46                inc si
00003E35  39760A            cmp [bp+0xa],si
00003E38  7503              jnz 0x3e3d
00003E3A  8B7606            mov si,[bp+0x6]
00003E3D  C6040A            mov byte [si],0xa
00003E40  31FF              xor di,di
00003E42  FF4EFC            dec word [bp-0x4]
00003E45  836EFA02          sub word [bp-0x6],byte +0x2
00003E49  EB68              jmp short 0x3eb3
00003E4B  BA0700            mov dx,0x7
00003E4E  21FA              and dx,di
00003E50  83EA08            sub dx,byte +0x8
00003E53  F7DA              neg dx
00003E55  8956FE            mov [bp-0x2],dx
00003E58  8B5E04            mov bx,[bp+0x4]
00003E5B  BA0500            mov dx,0x5
00003E5E  235746            and dx,[bx+0x46]
00003E61  83FA05            cmp dx,byte +0x5
00003E64  752A              jnz 0x3e90
00003E66  8B56FE            mov dx,[bp-0x2]
00003E69  3956FA            cmp [bp-0x6],dx
00003E6C  7C45              jl 0x3eb3
00003E6E  037EFE            add di,[bp-0x2]
00003E71  FF4EFC            dec word [bp-0x4]
00003E74  8B56FA            mov dx,[bp-0x6]
00003E77  2B56FE            sub dx,[bp-0x2]
00003E7A  8956FA            mov [bp-0x6],dx
00003E7D  C60420            mov byte [si],0x20
00003E80  46                inc si
00003E81  39760A            cmp [bp+0xa],si
00003E84  7503              jnz 0x3e89
00003E86  8B7606            mov si,[bp+0x6]
00003E89  FF4EFE            dec word [bp-0x2]
00003E8C  75EF              jnz 0x3e7d
00003E8E  EB23              jmp short 0x3eb3
00003E90  037EFE            add di,[bp-0x2]
00003E93  EB0C              jmp short 0x3ea1
00003E95  47                inc di
00003E96  EB09              jmp short 0x3ea1
00003E98  8A04              mov al,[si]
00003E9A  98                cbw
00003E9B  BBFA05            mov bx,0x5fa
00003E9E  E9A36E            jmp word 0xad44
00003EA1  46                inc si
00003EA2  39760A            cmp [bp+0xa],si
00003EA5  7503              jnz 0x3eaa
00003EA7  8B7606            mov si,[bp+0x6]
00003EAA  FF4EFC            dec word [bp-0x4]
00003EAD  FF4EFA            dec word [bp-0x6]
00003EB0  E94FFF            jmp word 0x3e02
00003EB3  BA0700            mov dx,0x7
00003EB6  21FA              and dx,di
00003EB8  8B5E04            mov bx,[bp+0x4]
00003EBB  89571E            mov [bx+0x1e],dx
00003EBE  8B5E0C            mov bx,[bp+0xc]
00003EC1  8B17              mov dx,[bx]
00003EC3  2B56FC            sub dx,[bp-0x4]
00003EC6  8B5E0C            mov bx,[bp+0xc]
00003EC9  8917              mov [bx],dx
00003ECB  8B5E0E            mov bx,[bp+0xe]
00003ECE  8B17              mov dx,[bx]
00003ED0  2B56FA            sub dx,[bp-0x6]
00003ED3  8B5E0E            mov bx,[bp+0xe]
00003ED6  8917              mov [bx],dx
00003ED8  E9D26F            jmp word 0xaead
00003EDB  55                push bp
00003EDC  89E5              mov bp,sp
00003EDE  50                push ax
00003EDF  50                push ax
00003EE0  56                push si
00003EE1  8B7604            mov si,[bp+0x4]
00003EE4  837C3400          cmp word [si+0x34],byte +0x0
00003EE8  7E03              jng 0x3eed
00003EEA  E98000            jmp word 0x3f6d
00003EED  817C3A0D54        cmp word [si+0x3a],0x540d
00003EF2  745B              jz 0x3f4f
00003EF4  817C3A0B54        cmp word [si+0x3a],0x540b
00003EF9  7505              jnz 0x3f00
00003EFB  56                push si
00003EFC  E88701            call word 0x4086
00003EFF  5B                pop bx
00003F00  8A4439            mov al,[si+0x39]
00003F03  98                cbw
00003F04  89C3              mov bx,ax
00003F06  D1E3              shl bx,1
00003F08  8B9F766F          mov bx,[bx+0x6f76]
00003F0C  B90A00            mov cx,0xa
00003F0F  8B5754            mov dx,[bx+0x54]
00003F12  31DB              xor bx,bx
00003F14  E306              jcxz 0x3f1c
00003F16  D1E2              shl dx,1
00003F18  D1D3              rcl bx,1
00003F1A  E2FA              loop 0x3f16
00003F1C  03543C            add dx,[si+0x3c]
00003F1F  83D300            adc bx,byte +0x0
00003F22  8956FC            mov [bp-0x4],dx
00003F25  895EFE            mov [bp-0x2],bx
00003F28  8D5C44            lea bx,[si+0x44]
00003F2B  31D2              xor dx,dx
00003F2D  031E8446          add bx,[0x4684]
00003F31  13168646          adc dx,[0x4686]
00003F35  31C0              xor ax,ax
00003F37  50                push ax
00003F38  B82000            mov ax,0x20
00003F3B  50                push ax
00003F3C  52                push dx
00003F3D  53                push bx
00003F3E  FF76FE            push word [bp-0x2]
00003F41  FF76FC            push word [bp-0x4]
00003F44  E83ECB            call word 0xa85
00003F47  83C40C            add sp,byte +0xc
00003F4A  56                push si
00003F4B  E82200            call word 0x3f70
00003F4E  5B                pop bx
00003F4F  C7443A0000        mov word [si+0x3a],0x0
00003F54  8A4439            mov al,[si+0x39]
00003F57  98                cbw
00003F58  89C3              mov bx,ax
00003F5A  8A4438            mov al,[si+0x38]
00003F5D  98                cbw
00003F5E  31C9              xor cx,cx
00003F60  51                push cx
00003F61  53                push bx
00003F62  50                push ax
00003F63  B84300            mov ax,0x43
00003F66  50                push ax
00003F67  E8A200            call word 0x400c
00003F6A  83C408            add sp,byte +0x8
00003F6D  E93E6F            jmp word 0xaeae
00003F70  55                push bp
00003F71  89E5              mov bp,sp
00003F73  50                push ax
00003F74  50                push ax
00003F75  56                push si
00003F76  57                push di
00003F77  8B7604            mov si,[bp+0x4]
00003F7A  F6444A10          test byte [si+0x4a],0x10
00003F7E  752B              jnz 0x3fab
00003F80  8B5406            mov dx,[si+0x6]
00003F83  895408            mov [si+0x8],dx
00003F86  8956FC            mov [bp-0x4],dx
00003F89  8B7C04            mov di,[si+0x4]
00003F8C  837EFC00          cmp word [bp-0x4],byte +0x0
00003F90  7E19              jng 0x3fab
00003F92  810D0010          or word [di],0x1000
00003F96  83C702            add di,byte +0x2
00003F99  8D9C6C02          lea bx,[si+0x26c]
00003F9D  39FB              cmp bx,di
00003F9F  7505              jnz 0x3fa6
00003FA1  89F7              mov di,si
00003FA3  83C76C            add di,byte +0x6c
00003FA6  FF4EFC            dec word [bp-0x4]
00003FA9  EBE1              jmp short 0x3f8c
00003FAB  E8026B            call word 0xaab0
00003FAE  31C0              xor ax,ax
00003FB0  50                push ax
00003FB1  56                push si
00003FB2  E88F01            call word 0x4144
00003FB5  5B                pop bx
00003FB6  5B                pop bx
00003FB7  E8F86A            call word 0xaab2
00003FBA  F6444A10          test byte [si+0x4a],0x10
00003FBE  7407              jz 0x3fc7
00003FC0  C7440E0100        mov word [si+0xe],0x1
00003FC5  EB1C              jmp short 0x3fe3
00003FC7  8A5455            mov dl,[si+0x55]
00003FCA  30F6              xor dh,dh
00003FCC  89540E            mov [si+0xe],dx
00003FCF  837C0E00          cmp word [si+0xe],byte +0x0
00003FD3  750E              jnz 0x3fe3
00003FD5  8A5457            mov dl,[si+0x57]
00003FD8  30F6              xor dh,dh
00003FDA  09D2              or dx,dx
00003FDC  7E05              jng 0x3fe3
00003FDE  C7440E0100        mov word [si+0xe],0x1
00003FE3  F744440002        test word [si+0x44],0x200
00003FE8  7508              jnz 0x3ff2
00003FEA  C6442200          mov byte [si+0x22],0x0
00003FEE  C7040100          mov word [si],0x1
00003FF2  837C4E00          cmp word [si+0x4e],byte +0x0
00003FF6  750A              jnz 0x4002
00003FF8  B80100            mov ax,0x1
00003FFB  50                push ax
00003FFC  56                push si
00003FFD  E84600            call word 0x4046
00004000  5B                pop bx
00004001  5B                pop bx
00004002  8B5C3E            mov bx,[si+0x3e]
00004005  56                push si
00004006  FFD3              call bx
00004008  5B                pop bx
00004009  E9A16E            jmp word 0xaead
0000400C  55                push bp
0000400D  89E5              mov bp,sp
0000400F  83EC18            sub sp,byte +0x18
00004012  8B5604            mov dx,[bp+0x4]
00004015  8956EA            mov [bp-0x16],dx
00004018  8B5608            mov dx,[bp+0x8]
0000401B  8956EC            mov [bp-0x14],dx
0000401E  8B560A            mov dx,[bp+0xa]
00004021  8956EE            mov [bp-0x12],dx
00004024  8D46E8            lea ax,[bp-0x18]
00004027  50                push ax
00004028  FF7606            push word [bp+0x6]
0000402B  E8A76A            call word 0xaad5
0000402E  5B                pop bx
0000402F  5B                pop bx
00004030  89460A            mov [bp+0xa],ax
00004033  09C0              or ax,ax
00004035  740C              jz 0x4043
00004037  FF760A            push word [bp+0xa]
0000403A  B80E06            mov ax,0x60e
0000403D  50                push ax
0000403E  E84BCF            call word 0xf8c
00004041  5B                pop bx
00004042  5B                pop bx
00004043  E9696E            jmp word 0xaeaf
00004046  55                push bp
00004047  89E5              mov bp,sp
00004049  56                push si
0000404A  8B7604            mov si,[bp+0x4]
0000404D  807C2300          cmp byte [si+0x23],0x0
00004051  740D              jz 0x4060
00004053  8A4423            mov al,[si+0x23]
00004056  98                cbw
00004057  FF7606            push word [bp+0x6]
0000405A  50                push ax
0000405B  E848E3            call word 0x23a6
0000405E  5B                pop bx
0000405F  5B                pop bx
00004060  F6444A80          test byte [si+0x4a],0x80
00004064  751D              jnz 0x4083
00004066  31D2              xor dx,dx
00004068  895408            mov [si+0x8],dx
0000406B  895406            mov [si+0x6],dx
0000406E  8B5402            mov dx,[si+0x2]
00004071  895404            mov [si+0x4],dx
00004074  8B5C1A            mov bx,[si+0x1a]
00004077  56                push si
00004078  FFD3              call bx
0000407A  5B                pop bx
0000407B  C6442200          mov byte [si+0x22],0x0
0000407F  C7040100          mov word [si],0x1
00004083  E9286E            jmp word 0xaeae
00004086  55                push bp
00004087  89E5              mov bp,sp
00004089  56                push si
0000408A  8B7604            mov si,[bp+0x4]
0000408D  31D2              xor dx,dx
0000408F  895408            mov [si+0x8],dx
00004092  895406            mov [si+0x6],dx
00004095  8B5402            mov dx,[si+0x2]
00004098  895404            mov [si+0x4],dx
0000409B  8B5C0C            mov bx,[si+0xc]
0000409E  56                push si
0000409F  FFD3              call bx
000040A1  5B                pop bx
000040A2  E9096E            jmp word 0xaeae
000040A5  55                push bp
000040A6  89E5              mov bp,sp
000040A8  56                push si
000040A9  8B7604            mov si,[bp+0x4]
000040AC  8D5C6C            lea bx,[si+0x6c]
000040AF  895C02            mov [si+0x2],bx
000040B2  895C04            mov [si+0x4],bx
000040B5  C7440E0100        mov word [si+0xe],0x1
000040BA  B8B604            mov ax,0x4b6
000040BD  50                push ax
000040BE  8D4444            lea ax,[si+0x44]
000040C1  50                push ax
000040C2  B91000            mov cx,0x10
000040C5  E8676C            call word 0xad2f
000040C8  BAD741            mov dx,0x41d7
000040CB  895440            mov [si+0x40],dx
000040CE  89543E            mov [si+0x3e],dx
000040D1  89541A            mov [si+0x1a],dx
000040D4  89540C            mov [si+0xc],dx
000040D7  81FE9C74          cmp si,0x749c
000040DB  7307              jnc 0x40e4
000040DD  56                push si
000040DE  E8BF11            call word 0x52a0
000040E1  5B                pop bx
000040E2  EB06              jmp short 0x40ea
000040E4  81FE9C74          cmp si,0x749c
000040E8  7300              jnc 0x40ea
000040EA  E9C16D            jmp word 0xaeae
000040ED  55                push bp
000040EE  89E5              mov bp,sp
000040F0  56                push si
000040F1  C7065C6FFFFF      mov word [0x6f5c],0xffff
000040F7  C7065E6FFF7F      mov word [0x6f5e],0x7fff
000040FD  8B369C74          mov si,[0x749c]
00004101  09F6              or si,si
00004103  7434              jz 0x4139
00004105  8B5604            mov dx,[bp+0x4]
00004108  8B4E06            mov cx,[bp+0x6]
0000410B  394C12            cmp [si+0x12],cx
0000410E  7C17              jl 0x4127
00004110  7505              jnz 0x4117
00004112  395410            cmp [si+0x10],dx
00004115  7610              jna 0x4127
00004117  8B5410            mov dx,[si+0x10]
0000411A  8B4C12            mov cx,[si+0x12]
0000411D  89165C6F          mov [0x6f5c],dx
00004121  890E5E6F          mov [0x6f5e],cx
00004125  EB12              jmp short 0x4139
00004127  C7440E0000        mov word [si+0xe],0x0
0000412C  C7040100          mov word [si],0x1
00004130  8B5414            mov dx,[si+0x14]
00004133  89169C74          mov [0x749c],dx
00004137  EBC4              jmp short 0x40fd
00004139  B8F6FF            mov ax,0xfff6
0000413C  50                push ax
0000413D  E887CE            call word 0xfc7
00004140  5B                pop bx
00004141  E96A6D            jmp word 0xaeae
00004144  55                push bp
00004145  89E5              mov bp,sp
00004147  56                push si
00004148  57                push di
00004149  8B7E04            mov di,[bp+0x4]
0000414C  BE9C74            mov si,0x749c
0000414F  833C00            cmp word [si],byte +0x0
00004152  7412              jz 0x4166
00004154  393C              cmp [si],di
00004156  7507              jnz 0x415f
00004158  8B5514            mov dx,[di+0x14]
0000415B  8914              mov [si],dx
0000415D  EB07              jmp short 0x4166
0000415F  8B34              mov si,[si]
00004161  83C614            add si,byte +0x14
00004164  EBE9              jmp short 0x414f
00004166  837E0600          cmp word [bp+0x6],byte +0x0
0000416A  7468              jz 0x41d4
0000416C  E8D6E7            call word 0x2945
0000416F  52                push dx
00004170  50                push ax
00004171  B80600            mov ax,0x6
00004174  8A5557            mov dl,[di+0x57]
00004177  30F6              xor dh,dh
00004179  F7E2              mul dx
0000417B  99                cwd
0000417C  59                pop cx
0000417D  5B                pop bx
0000417E  01C1              add cx,ax
00004180  11D3              adc bx,dx
00004182  894D10            mov [di+0x10],cx
00004185  895D12            mov [di+0x12],bx
00004188  BE9C74            mov si,0x749c
0000418B  833C00            cmp word [si],byte +0x0
0000418E  741B              jz 0x41ab
00004190  8B1C              mov bx,[si]
00004192  8B5510            mov dx,[di+0x10]
00004195  8B4D12            mov cx,[di+0x12]
00004198  394F12            cmp [bx+0x12],cx
0000419B  7F0E              jg 0x41ab
0000419D  7505              jnz 0x41a4
0000419F  395710            cmp [bx+0x10],dx
000041A2  7307              jnc 0x41ab
000041A4  8B34              mov si,[si]
000041A6  83C614            add si,byte +0x14
000041A9  EBE0              jmp short 0x418b
000041AB  8B14              mov dx,[si]
000041AD  895514            mov [di+0x14],dx
000041B0  893C              mov [si],di
000041B2  8B165C6F          mov dx,[0x6f5c]
000041B6  8B0E5E6F          mov cx,[0x6f5e]
000041BA  394D12            cmp [di+0x12],cx
000041BD  7F15              jg 0x41d4
000041BF  7505              jnz 0x41c6
000041C1  395510            cmp [di+0x10],dx
000041C4  730E              jnc 0x41d4
000041C6  8B5510            mov dx,[di+0x10]
000041C9  8B4D12            mov cx,[di+0x12]
000041CC  89165C6F          mov [0x6f5c],dx
000041D0  890E5E6F          mov [0x6f5e],cx
000041D4  E9D66C            jmp word 0xaead
000041D7  55                push bp
000041D8  89E5              mov bp,sp
000041DA  E9D26C            jmp word 0xaeaf
000041DD  55                push bp
000041DE  89E5              mov bp,sp
000041E0  83EC08            sub sp,byte +0x8
000041E3  56                push si
000041E4  57                push di
000041E5  837E0435          cmp word [bp+0x4],byte +0x35
000041E9  750D              jnz 0x41f8
000041EB  833E5A2300        cmp word [0x235a],byte +0x0
000041F0  7406              jz 0x41f8
000041F2  B82F00            mov ax,0x2f
000041F5  E99400            jmp word 0x428c
000041F8  B80C00            mov ax,0xc
000041FB  F76604            mul word [bp+0x4]
000041FE  052806            add ax,0x628
00004201  8946F8            mov [bp-0x8],ax
00004204  8B3E6C23          mov di,[0x236c]
00004208  8B1E606F          mov bx,[0x6f60]
0000420C  D1E3              shl bx,1
0000420E  8B977423          mov dx,[bx+0x2374]
00004212  8956FA            mov [bp-0x6],dx
00004215  F6C202            test dl,0x2
00004218  7415              jz 0x422f
0000421A  837E0447          cmp word [bp+0x4],byte +0x47
0000421E  7C0F              jl 0x422f
00004220  837E0453          cmp word [bp+0x4],byte +0x53
00004224  7F09              jg 0x422f
00004226  31DB              xor bx,bx
00004228  09FF              or di,di
0000422A  7501              jnz 0x422d
0000422C  43                inc bx
0000422D  89DF              mov di,bx
0000422F  F646FA04          test byte [bp-0x6],0x4
00004233  7412              jz 0x4247
00004235  8B5EF8            mov bx,[bp-0x8]
00004238  F7070080          test word [bx],0x8000
0000423C  7409              jz 0x4247
0000423E  31C0              xor ax,ax
00004240  09FF              or di,di
00004242  7501              jnz 0x4245
00004244  40                inc ax
00004245  89C7              mov di,ax
00004247  833E602300        cmp word [0x2360],byte +0x0
0000424C  741D              jz 0x426b
0000424E  BE0200            mov si,0x2
00004251  833E662300        cmp word [0x2366],byte +0x0
00004256  7507              jnz 0x425f
00004258  833E5E2300        cmp word [0x235e],byte +0x0
0000425D  7403              jz 0x4262
0000425F  BE0300            mov si,0x3
00004262  09FF              or di,di
00004264  7418              jz 0x427e
00004266  BE0400            mov si,0x4
00004269  EB13              jmp short 0x427e
0000426B  31F6              xor si,si
0000426D  09FF              or di,di
0000426F  7403              jz 0x4274
00004271  BE0100            mov si,0x1
00004274  833E662300        cmp word [0x2366],byte +0x0
00004279  7403              jz 0x427e
0000427B  BE0500            mov si,0x5
0000427E  89F3              mov bx,si
00004280  D1E3              shl bx,1
00004282  035EF8            add bx,[bp-0x8]
00004285  BAFF7F            mov dx,0x7fff
00004288  2317              and dx,[bx]
0000428A  89D0              mov ax,dx
0000428C  E91E6C            jmp word 0xaead
0000428F  55                push bp
00004290  89E5              mov bp,sp
00004292  50                push ax
00004293  E8FF03            call word 0x4695
00004296  8946FE            mov [bp-0x2],ax
00004299  833E582320        cmp word [0x2358],byte +0x20
0000429E  7D34              jnl 0x42d4
000042A0  98                cbw
000042A1  8B1E280C          mov bx,[0xc28]
000042A5  FF06280C          inc word [0xc28]
000042A9  8807              mov [bx],al
000042AB  813E280C5823      cmp word [0xc28],0x2358
000042B1  7506              jnz 0x42b9
000042B3  C706280C3823      mov word [0xc28],0x2338
000042B9  FF065823          inc word [0x2358]
000042BD  B86C02            mov ax,0x26c
000042C0  F726606F          mul word [0x6f60]
000042C4  89C3              mov bx,ax
000042C6  C787C46F0100      mov word [bx+0x6fc4],0x1
000042CC  31C0              xor ax,ax
000042CE  A35C6F            mov [0x6f5c],ax
000042D1  A35E6F            mov [0x6f5e],ax
000042D4  B80100            mov ax,0x1
000042D7  E9D56B            jmp word 0xaeaf
000042DA  55                push bp
000042DB  89E5              mov bp,sp
000042DD  50                push ax
000042DE  50                push ax
000042DF  56                push si
000042E0  57                push di
000042E1  B86C02            mov ax,0x26c
000042E4  F726606F          mul word [0x6f60]
000042E8  05C46F            add ax,0x6fc4
000042EB  894604            mov [bp+0x4],ax
000042EE  833E582300        cmp word [0x2358],byte +0x0
000042F3  7F03              jg 0x42f8
000042F5  E9D900            jmp word 0x43d1
000042F8  8B1E2A0C          mov bx,[0xc2a]
000042FC  FF062A0C          inc word [0xc2a]
00004300  8A07              mov al,[bx]
00004302  98                cbw
00004303  89C7              mov di,ax
00004305  813E2A0C5823      cmp word [0xc2a],0x2358
0000430B  7506              jnz 0x4313
0000430D  C7062A0C3823      mov word [0xc2a],0x2338
00004313  E89A67            call word 0xaab0
00004316  FF0E5823          dec word [0x2358]
0000431A  E89567            call word 0xaab2
0000431D  57                push di
0000431E  E8F702            call word 0x4618
00004321  5B                pop bx
00004322  09C0              or ax,ax
00004324  75C8              jnz 0x42ee
00004326  57                push di
00004327  E8AA00            call word 0x43d4
0000432A  5B                pop bx
0000432B  89C6              mov si,ax
0000432D  81FEFF00          cmp si,0xff
00004331  7718              ja 0x434b
00004333  89F2              mov dx,si
00004335  8856FD            mov [bp-0x3],dl
00004338  B80100            mov ax,0x1
0000433B  50                push ax
0000433C  8D46FD            lea ax,[bp-0x3]
0000433F  50                push ax
00004340  FF7604            push word [bp+0x4]
00004343  E8E6F5            call word 0x392c
00004346  83C406            add sp,byte +0x6
00004349  EBA3              jmp short 0x42ee
0000434B  81FE0101          cmp si,0x101
0000434F  7231              jc 0x4382
00004351  81FE0C01          cmp si,0x10c
00004355  772B              ja 0x4382
00004357  C646FD1B          mov byte [bp-0x3],0x1b
0000435B  C646FE5B          mov byte [bp-0x2],0x5b
0000435F  89F2              mov dx,si
00004361  81EA0101          sub dx,0x101
00004365  89D3              mov bx,dx
00004367  8A8F2C0C          mov cl,[bx+0xc2c]
0000436B  884EFF            mov [bp-0x1],cl
0000436E  B80300            mov ax,0x3
00004371  50                push ax
00004372  8D46FD            lea ax,[bp-0x3]
00004375  50                push ax
00004376  FF7604            push word [bp+0x4]
00004379  E8B0F5            call word 0x392c
0000437C  83C406            add sp,byte +0x6
0000437F  E96CFF            jmp word 0x42ee
00004382  81FE0508          cmp si,0x805
00004386  7510              jnz 0x4398
00004388  8B16606F          mov dx,[0x6f60]
0000438C  4A                dec dx
0000438D  52                push dx
0000438E  E8E711            call word 0x5578
00004391  5B                pop bx
00004392  E8A601            call word 0x453b
00004395  E956FF            jmp word 0x42ee
00004398  81FE0608          cmp si,0x806
0000439C  7510              jnz 0x43ae
0000439E  8B16606F          mov dx,[0x6f60]
000043A2  42                inc dx
000043A3  52                push dx
000043A4  E8D111            call word 0x5578
000043A7  5B                pop bx
000043A8  E89001            call word 0x453b
000043AB  E940FF            jmp word 0x42ee
000043AE  81FE1008          cmp si,0x810
000043B2  7303              jnc 0x43b7
000043B4  E937FF            jmp word 0x42ee
000043B7  81FE1B08          cmp si,0x81b
000043BB  7603              jna 0x43c0
000043BD  E92EFF            jmp word 0x42ee
000043C0  89F2              mov dx,si
000043C2  81EA1008          sub dx,0x810
000043C6  52                push dx
000043C7  E8AE11            call word 0x5578
000043CA  5B                pop bx
000043CB  E86D01            call word 0x453b
000043CE  E91DFF            jmp word 0x42ee
000043D1  E9D96A            jmp word 0xaead
000043D4  55                push bp
000043D5  89E5              mov bp,sp
000043D7  83EC06            sub sp,byte +0x6
000043DA  56                push si
000043DB  57                push di
000043DC  833E662300        cmp word [0x2366],byte +0x0
000043E1  7438              jz 0x441b
000043E3  833E602300        cmp word [0x2360],byte +0x0
000043E8  7431              jz 0x441b
000043EA  837E0453          cmp word [bp+0x4],byte +0x53
000043EE  7406              jz 0x43f6
000043F0  837E0452          cmp word [bp+0x4],byte +0x52
000043F4  7525              jnz 0x441b
000043F6  FF06380C          inc word [0xc38]
000043FA  833E380C03        cmp word [0xc38],byte +0x3
000043FF  7507              jnz 0x4408
00004401  31C0              xor ax,ax
00004403  50                push ax
00004404  E8C702            call word 0x46ce
00004407  5B                pop bx
00004408  B80600            mov ax,0x6
0000440B  50                push ax
0000440C  B80200            mov ax,0x2
0000440F  50                push ax
00004410  E893DF            call word 0x23a6
00004413  5B                pop bx
00004414  5B                pop bx
00004415  B8FFFF            mov ax,0xffff
00004418  E91D01            jmp word 0x4538
0000441B  BA8000            mov dx,0x80
0000441E  235604            and dx,[bp+0x4]
00004421  31C0              xor ax,ax
00004423  09D2              or dx,dx
00004425  7501              jnz 0x4428
00004427  40                inc ax
00004428  89C7              mov di,ax
0000442A  8166047F00        and word [bp+0x4],0x7f
0000442F  FF7604            push word [bp+0x4]
00004432  E8A8FD            call word 0x41dd
00004435  5B                pop bx
00004436  8946FE            mov [bp-0x2],ax
00004439  8B165A23          mov dx,[0x235a]
0000443D  8956FA            mov [bp-0x6],dx
00004440  C7065A230000      mov word [0x235a],0x0
00004446  E9E300            jmp word 0x452c
00004449  57                push di
0000444A  837EFA00          cmp word [bp-0x6],byte +0x0
0000444E  7405              jz 0x4455
00004450  B86423            mov ax,0x2364
00004453  EB03              jmp short 0x4458
00004455  B86223            mov ax,0x2362
00004458  89C3              mov bx,ax
0000445A  5A                pop dx
0000445B  8917              mov [bx],dx
0000445D  8B166423          mov dx,[0x2364]
00004461  0B166223          or dx,[0x2362]
00004465  89166623          mov [0x2366],dx
00004469  E9C900            jmp word 0x4535
0000446C  57                push di
0000446D  837E0436          cmp word [bp+0x4],byte +0x36
00004471  7505              jnz 0x4478
00004473  B86A23            mov ax,0x236a
00004476  EB03              jmp short 0x447b
00004478  B86823            mov ax,0x2368
0000447B  89C3              mov bx,ax
0000447D  5A                pop dx
0000447E  8917              mov [bx],dx
00004480  8B166A23          mov dx,[0x236a]
00004484  0B166823          or dx,[0x2368]
00004488  89166C23          mov [0x236c],dx
0000448C  E9A600            jmp word 0x4535
0000448F  57                push di
00004490  837EFA00          cmp word [bp-0x6],byte +0x0
00004494  7405              jz 0x449b
00004496  B85E23            mov ax,0x235e
00004499  EB03              jmp short 0x449e
0000449B  B85C23            mov ax,0x235c
0000449E  89C3              mov bx,ax
000044A0  5A                pop dx
000044A1  8917              mov [bx],dx
000044A3  8B165E23          mov dx,[0x235e]
000044A7  0B165C23          or dx,[0x235c]
000044AB  89166023          mov [0x2360],dx
000044AF  E98300            jmp word 0x4535
000044B2  393E7023          cmp [0x2370],di
000044B6  7D16              jnl 0x44ce
000044B8  8B1E606F          mov bx,[0x6f60]
000044BC  D1E3              shl bx,1
000044BE  81C37423          add bx,0x2374
000044C2  89DE              mov si,bx
000044C4  BA0400            mov dx,0x4
000044C7  3317              xor dx,[bx]
000044C9  8914              mov [si],dx
000044CB  E86D00            call word 0x453b
000044CE  893E7023          mov [0x2370],di
000044D2  EB61              jmp short 0x4535
000044D4  393E6E23          cmp [0x236e],di
000044D8  7D16              jnl 0x44f0
000044DA  8B1E606F          mov bx,[0x6f60]
000044DE  D1E3              shl bx,1
000044E0  81C37423          add bx,0x2374
000044E4  89DE              mov si,bx
000044E6  BA0200            mov dx,0x2
000044E9  3317              xor dx,[bx]
000044EB  8914              mov [si],dx
000044ED  E84B00            call word 0x453b
000044F0  893E6E23          mov [0x236e],di
000044F4  EB3F              jmp short 0x4535
000044F6  393E7223          cmp [0x2372],di
000044FA  7D16              jnl 0x4512
000044FC  8B1E606F          mov bx,[0x6f60]
00004500  D1E3              shl bx,1
00004502  81C37423          add bx,0x2374
00004506  89DE              mov si,bx
00004508  BA0100            mov dx,0x1
0000450B  3317              xor dx,[bx]
0000450D  8914              mov [si],dx
0000450F  E82900            call word 0x453b
00004512  893E7223          mov [0x2372],di
00004516  EB1D              jmp short 0x4535
00004518  C7065A230100      mov word [0x235a],0x1
0000451E  B8FFFF            mov ax,0xffff
00004521  EB15              jmp short 0x4538
00004523  09FF              or di,di
00004525  740E              jz 0x4535
00004527  8B46FE            mov ax,[bp-0x2]
0000452A  EB0C              jmp short 0x4538
0000452C  BB3A0C            mov bx,0xc3a
0000452F  8B46FE            mov ax,[bp-0x2]
00004532  E93368            jmp word 0xad68
00004535  B8FFFF            mov ax,0xffff
00004538  E97269            jmp word 0xaead
0000453B  55                push bp
0000453C  89E5              mov bp,sp
0000453E  833E7C4600        cmp word [0x467c],byte +0x0
00004543  742C              jz 0x4571
00004545  E82C00            call word 0x4574
00004548  B8ED00            mov ax,0xed
0000454B  50                push ax
0000454C  B86000            mov ax,0x60
0000454F  50                push ax
00004550  E86165            call word 0xaab4
00004553  5B                pop bx
00004554  5B                pop bx
00004555  E84C00            call word 0x45a4
00004558  E81900            call word 0x4574
0000455B  8B1E606F          mov bx,[0x6f60]
0000455F  D1E3              shl bx,1
00004561  FFB77423          push word [bx+0x2374]
00004565  B86000            mov ax,0x60
00004568  50                push ax
00004569  E84865            call word 0xaab4
0000456C  5B                pop bx
0000456D  5B                pop bx
0000456E  E83300            call word 0x45a4
00004571  E93B69            jmp word 0xaeaf
00004574  55                push bp
00004575  89E5              mov bp,sp
00004577  50                push ax
00004578  50                push ax
00004579  56                push si
0000457A  BE0110            mov si,0x1001
0000457D  4E                dec si
0000457E  741F              jz 0x459f
00004580  B86400            mov ax,0x64
00004583  50                push ax
00004584  E81E65            call word 0xaaa5
00004587  5B                pop bx
00004588  8946FC            mov [bp-0x4],ax
0000458B  A803              test al,0x3
0000458D  7410              jz 0x459f
0000458F  F646FC01          test byte [bp-0x4],0x1
00004593  74E8              jz 0x457d
00004595  B86000            mov ax,0x60
00004598  50                push ax
00004599  E80965            call word 0xaaa5
0000459C  5B                pop bx
0000459D  EBDE              jmp short 0x457d
0000459F  89F0              mov ax,si
000045A1  E90A69            jmp word 0xaeae
000045A4  55                push bp
000045A5  89E5              mov bp,sp
000045A7  56                push si
000045A8  BE0110            mov si,0x1001
000045AB  4E                dec si
000045AC  740D              jz 0x45bb
000045AE  B86000            mov ax,0x60
000045B1  50                push ax
000045B2  E8F064            call word 0xaaa5
000045B5  5B                pop bx
000045B6  3DFA00            cmp ax,0xfa
000045B9  75F0              jnz 0x45ab
000045BB  89F0              mov ax,si
000045BD  E9EE68            jmp word 0xaeae
000045C0  55                push bp
000045C1  89E5              mov bp,sp
000045C3  8B5E04            mov bx,[bp+0x4]
000045C6  C7470ADA42        mov word [bx+0xa],0x42da
000045CB  E86DFF            call word 0x453b
000045CE  E8C400            call word 0x4695
000045D1  B88F42            mov ax,0x428f
000045D4  50                push ax
000045D5  B80100            mov ax,0x1
000045D8  50                push ax
000045D9  B87823            mov ax,0x2378
000045DC  50                push ax
000045DD  E89611            call word 0x5776
000045E0  83C406            add sp,byte +0x6
000045E3  B87823            mov ax,0x2378
000045E6  50                push ax
000045E7  E831C4            call word 0xa1b
000045EA  5B                pop bx
000045EB  E9C168            jmp word 0xaeaf
000045EE  55                push bp
000045EF  89E5              mov bp,sp
000045F1  BA2806            mov dx,0x628
000045F4  31C9              xor cx,cx
000045F6  03168446          add dx,[0x4684]
000045FA  130E8646          adc cx,[0x4686]
000045FE  31C0              xor ax,ax
00004600  50                push ax
00004601  B80006            mov ax,0x600
00004604  50                push ax
00004605  51                push cx
00004606  52                push dx
00004607  FF7606            push word [bp+0x6]
0000460A  FF7604            push word [bp+0x4]
0000460D  E875C4            call word 0xa85
00004610  83C40C            add sp,byte +0xc
00004613  31C0              xor ax,ax
00004615  E99768            jmp word 0xaeaf
00004618  55                push bp
00004619  89E5              mov bp,sp
0000461B  56                push si
0000461C  F6460480          test byte [bp+0x4],0x80
00004620  7404              jz 0x4626
00004622  31C0              xor ax,ax
00004624  EB6C              jmp short 0x4692
00004626  B80C00            mov ax,0xc
00004629  F76604            mul word [bp+0x4]
0000462C  89C3              mov bx,ax
0000462E  8BB72806          mov si,[bx+0x628]
00004632  81FE1001          cmp si,0x110
00004636  7206              jc 0x463e
00004638  81FE1B01          cmp si,0x11b
0000463C  7644              jna 0x4682
0000463E  31C0              xor ax,ax
00004640  EB50              jmp short 0x4692
00004642  E83612            call word 0x587b
00004645  EB48              jmp short 0x468f
00004647  E89B13            call word 0x59e5
0000464A  EB43              jmp short 0x468f
0000464C  E8670E            call word 0x54b6
0000464F  EB3E              jmp short 0x468f
00004651  B80300            mov ax,0x3
00004654  50                push ax
00004655  B8C46F            mov ax,0x6fc4
00004658  50                push ax
00004659  E8EAF9            call word 0x4046
0000465C  5B                pop bx
0000465D  5B                pop bx
0000465E  EB2F              jmp short 0x468f
00004660  B80200            mov ax,0x2
00004663  50                push ax
00004664  B8C46F            mov ax,0x6fc4
00004667  50                push ax
00004668  E8DBF9            call word 0x4046
0000466B  5B                pop bx
0000466C  5B                pop bx
0000466D  EB20              jmp short 0x468f
0000466F  B80900            mov ax,0x9
00004672  50                push ax
00004673  B8C46F            mov ax,0x6fc4
00004676  50                push ax
00004677  E8CCF9            call word 0x4046
0000467A  5B                pop bx
0000467B  5B                pop bx
0000467C  EB11              jmp short 0x468f
0000467E  31C0              xor ax,ax
00004680  EB10              jmp short 0x4692
00004682  FF7604            push word [bp+0x4]
00004685  E855FB            call word 0x41dd
00004688  5B                pop bx
00004689  BB5A0C            mov bx,0xc5a
0000468C  E9D966            jmp word 0xad68
0000468F  B80100            mov ax,0x1
00004692  E91968            jmp word 0xaeae
00004695  55                push bp
00004696  89E5              mov bp,sp
00004698  50                push ax
00004699  56                push si
0000469A  B86000            mov ax,0x60
0000469D  50                push ax
0000469E  E80464            call word 0xaaa5
000046A1  5B                pop bx
000046A2  8946FE            mov [bp-0x2],ax
000046A5  B86100            mov ax,0x61
000046A8  50                push ax
000046A9  E8F963            call word 0xaaa5
000046AC  5B                pop bx
000046AD  89C6              mov si,ax
000046AF  BA8000            mov dx,0x80
000046B2  09F2              or dx,si
000046B4  52                push dx
000046B5  B86100            mov ax,0x61
000046B8  50                push ax
000046B9  E8F863            call word 0xaab4
000046BC  5B                pop bx
000046BD  5B                pop bx
000046BE  56                push si
000046BF  B86100            mov ax,0x61
000046C2  50                push ax
000046C3  E8EE63            call word 0xaab4
000046C6  5B                pop bx
000046C7  5B                pop bx
000046C8  8B46FE            mov ax,[bp-0x2]
000046CB  E9E067            jmp word 0xaeae
000046CE  55                push bp
000046CF  89E5              mov bp,sp
000046D1  83EC06            sub sp,byte +0x6
000046D4  56                push si
000046D5  57                push di
000046D6  8B7604            mov si,[bp+0x4]
000046D9  B8FFFF            mov ax,0xffff
000046DC  50                push ax
000046DD  B82100            mov ax,0x21
000046E0  50                push ax
000046E1  E8D063            call word 0xaab4
000046E4  5B                pop bx
000046E5  5B                pop bx
000046E6  E8F90D            call word 0x54e2
000046E9  E88425            call word 0x6c70
000046EC  E830E5            call word 0x2c1f
000046EF  E85B5C            call word 0xa34d
000046F2  09F6              or si,si
000046F4  7512              jnz 0x4708
000046F6  B8C20C            mov ax,0xcc2
000046F9  50                push ax
000046FA  E8375D            call word 0xa434
000046FD  5B                pop bx
000046FE  833EF24500        cmp word [0x45f2],byte +0x0
00004703  7503              jnz 0x4708
00004705  BE0200            mov si,0x2
00004708  83FE02            cmp si,byte +0x2
0000470B  753D              jnz 0x474a
0000470D  B8960C            mov ax,0xc96
00004710  50                push ax
00004711  E8205D            call word 0xa434
00004714  5B                pop bx
00004715  E87DFF            call word 0x4695
00004718  E87AFF            call word 0x4695
0000471B  8946FE            mov [bp-0x2],ax
0000471E  B80100            mov ax,0x1
00004721  50                push ax
00004722  B8A086            mov ax,0x86a0
00004725  50                push ax
00004726  E821E5            call word 0x2c4a
00004729  5B                pop bx
0000472A  5B                pop bx
0000472B  E867FF            call word 0x4695
0000472E  89C7              mov di,ax
00004730  397EFE            cmp [bp-0x2],di
00004733  74E9              jz 0x471e
00004735  83FF01            cmp di,byte +0x1
00004738  740D              jz 0x4747
0000473A  57                push di
0000473B  E8DAFE            call word 0x4618
0000473E  5B                pop bx
0000473F  E853FF            call word 0x4695
00004742  8946FE            mov [bp-0x2],ax
00004745  EBD7              jmp short 0x471e
00004747  BE0100            mov si,0x1
0000474A  83FE01            cmp si,byte +0x1
0000474D  7508              jnz 0x4757
0000474F  B88A0C            mov ax,0xc8a
00004752  50                push ax
00004753  E8DE5C            call word 0xa434
00004756  5B                pop bx
00004757  833EF24500        cmp word [0x45f2],byte +0x0
0000475C  7503              jnz 0x4761
0000475E  E98200            jmp word 0x47e3
00004761  83FE04            cmp si,byte +0x4
00004764  7503              jnz 0x4769
00004766  E97A00            jmp word 0x47e3
00004769  31C0              xor ax,ax
0000476B  50                push ax
0000476C  E8010F            call word 0x5670
0000476F  5B                pop bx
00004770  31C0              xor ax,ax
00004772  50                push ax
00004773  B82100            mov ax,0x21
00004776  50                push ax
00004777  E83A63            call word 0xaab4
0000477A  5B                pop bx
0000477B  5B                pop bx
0000477C  31C0              xor ax,ax
0000477E  50                push ax
0000477F  B8A100            mov ax,0xa1
00004782  50                push ax
00004783  E82E63            call word 0xaab4
00004786  5B                pop bx
00004787  5B                pop bx
00004788  09F6              or si,si
0000478A  7526              jnz 0x47b2
0000478C  BA880C            mov dx,0xc88
0000478F  31C9              xor cx,cx
00004791  03168446          add dx,[0x4684]
00004795  130E8646          adc cx,[0x4686]
00004799  31C0              xor ax,ax
0000479B  50                push ax
0000479C  B80200            mov ax,0x2
0000479F  50                push ax
000047A0  FF367A46          push word [0x467a]
000047A4  FF367846          push word [0x4678]
000047A8  51                push cx
000047A9  52                push dx
000047AA  E8D8C2            call word 0xa85
000047AD  83C40C            add sp,byte +0xc
000047B0  EB29              jmp short 0x47db
000047B2  83FE01            cmp si,byte +0x1
000047B5  7524              jnz 0x47db
000047B7  BA7C0C            mov dx,0xc7c
000047BA  31C9              xor cx,cx
000047BC  03168446          add dx,[0x4684]
000047C0  130E8646          adc cx,[0x4686]
000047C4  31C0              xor ax,ax
000047C6  50                push ax
000047C7  B80B00            mov ax,0xb
000047CA  50                push ax
000047CB  FF367A46          push word [0x467a]
000047CF  FF367846          push word [0x4678]
000047D3  51                push cx
000047D4  52                push dx
000047D5  E8ADC2            call word 0xa85
000047D8  83C40C            add sp,byte +0xc
000047DB  B8C007            mov ax,0x7c0
000047DE  50                push ax
000047DF  E811C4            call word 0xbf3
000047E2  5B                pop bx
000047E3  BA7A0C            mov dx,0xc7a
000047E6  31C9              xor cx,cx
000047E8  03168446          add dx,[0x4684]
000047EC  130E8646          adc cx,[0x4686]
000047F0  31C0              xor ax,ax
000047F2  50                push ax
000047F3  B80200            mov ax,0x2
000047F6  50                push ax
000047F7  31C0              xor ax,ax
000047F9  50                push ax
000047FA  B87204            mov ax,0x472
000047FD  50                push ax
000047FE  51                push cx
000047FF  52                push dx
00004800  E882C2            call word 0xa85
00004803  83C40C            add sp,byte +0xc
00004806  B80F0B            mov ax,0xb0f
00004809  50                push ax
0000480A  E8E6C3            call word 0xbf3
0000480D  5B                pop bx
0000480E  E99C66            jmp word 0xaead
00004811  55                push bp
00004812  89E5              mov bp,sp
00004814  83EC4A            sub sp,byte +0x4a
00004817  56                push si
00004818  57                push di
00004819  8B7604            mov si,[bp+0x4]
0000481C  8B5442            mov dx,[si+0x42]
0000481F  8956B6            mov [bp-0x4a],dx
00004822  8B5434            mov dx,[si+0x34]
00004825  8956FE            mov [bp-0x2],dx
00004828  09D2              or dx,dx
0000482A  7503              jnz 0x482f
0000482C  E91801            jmp word 0x4947
0000482F  807C2200          cmp byte [si+0x22],0x0
00004833  7403              jz 0x4838
00004835  E90F01            jmp word 0x4947
00004838  837EFE40          cmp word [bp-0x2],byte +0x40
0000483C  7605              jna 0x4843
0000483E  C746FE4000        mov word [bp-0x2],0x40
00004843  8A4430            mov al,[si+0x30]
00004846  98                cbw
00004847  89C3              mov bx,ax
00004849  D1E3              shl bx,1
0000484B  8B9F766F          mov bx,[bx+0x6f76]
0000484F  B90A00            mov cx,0xa
00004852  8B5754            mov dx,[bx+0x54]
00004855  31DB              xor bx,bx
00004857  E306              jcxz 0x485f
00004859  D1E2              shl dx,1
0000485B  D1D3              rcl bx,1
0000485D  E2FA              loop 0x4859
0000485F  035432            add dx,[si+0x32]
00004862  83D300            adc bx,byte +0x0
00004865  8956B8            mov [bp-0x48],dx
00004868  895EBA            mov [bp-0x46],bx
0000486B  8B46FE            mov ax,[bp-0x2]
0000486E  99                cwd
0000486F  8D5EBC            lea bx,[bp-0x44]
00004872  31C9              xor cx,cx
00004874  031E8446          add bx,[0x4684]
00004878  130E8646          adc cx,[0x4686]
0000487C  52                push dx
0000487D  50                push ax
0000487E  51                push cx
0000487F  53                push bx
00004880  FF76BA            push word [bp-0x46]
00004883  FF76B8            push word [bp-0x48]
00004886  E8FCC1            call word 0xa85
00004889  83C40C            add sp,byte +0xc
0000488C  8D7EBC            lea di,[bp-0x44]
0000488F  8B56FE            mov dx,[bp-0x2]
00004892  015432            add [si+0x32],dx
00004895  8B56FE            mov dx,[bp-0x2]
00004898  015436            add [si+0x36],dx
0000489B  8B5434            mov dx,[si+0x34]
0000489E  2B56FE            sub dx,[bp-0x2]
000048A1  895434            mov [si+0x34],dx
000048A4  8A05              mov al,[di]
000048A6  98                cbw
000048A7  3D2000            cmp ax,0x20
000048AA  721D              jc 0x48c9
000048AC  8B5EB6            mov bx,[bp-0x4a]
000048AF  8A4715            mov al,[bx+0x15]
000048B2  98                cbw
000048B3  09C0              or ax,ax
000048B5  7F12              jg 0x48c9
000048B7  8B5EB6            mov bx,[bp-0x4a]
000048BA  8B168A23          mov dx,[0x238a]
000048BE  395702            cmp [bx+0x2],dx
000048C1  7306              jnc 0x48c9
000048C3  837F0650          cmp word [bx+0x6],byte +0x50
000048C7  720F              jc 0x48d8
000048C9  8A05              mov al,[di]
000048CB  47                inc di
000048CC  98                cbw
000048CD  50                push ax
000048CE  FF76B6            push word [bp-0x4a]
000048D1  E89200            call word 0x4966
000048D4  5B                pop bx
000048D5  5B                pop bx
000048D6  EB29              jmp short 0x4901
000048D8  8A05              mov al,[di]
000048DA  47                inc di
000048DB  8B5EB6            mov bx,[bp-0x4a]
000048DE  30E4              xor ah,ah
000048E0  0B4710            or ax,[bx+0x10]
000048E3  50                push ax
000048E4  83C322            add bx,byte +0x22
000048E7  53                push bx
000048E8  8B5EB6            mov bx,[bp-0x4a]
000048EB  8B5706            mov dx,[bx+0x6]
000048EE  89D1              mov cx,dx
000048F0  41                inc cx
000048F1  894F06            mov [bx+0x6],cx
000048F4  5B                pop bx
000048F5  D1E2              shl dx,1
000048F7  01D3              add bx,dx
000048F9  8F07              pop word [bx]
000048FB  8B5EB6            mov bx,[bp-0x4a]
000048FE  FF4702            inc word [bx+0x2]
00004901  FF4EFE            dec word [bp-0x2]
00004904  759E              jnz 0x48a4
00004906  8B5434            mov dx,[si+0x34]
00004909  8956FE            mov [bp-0x2],dx
0000490C  09D2              or dx,dx
0000490E  7409              jz 0x4919
00004910  807C2200          cmp byte [si+0x22],0x0
00004914  7503              jnz 0x4919
00004916  E91FFF            jmp word 0x4838
00004919  FF76B6            push word [bp-0x4a]
0000491C  E88502            call word 0x4ba4
0000491F  5B                pop bx
00004920  837C3400          cmp word [si+0x34],byte +0x0
00004924  7521              jnz 0x4947
00004926  8A4430            mov al,[si+0x30]
00004929  98                cbw
0000492A  89C3              mov bx,ax
0000492C  8A442F            mov al,[si+0x2f]
0000492F  98                cbw
00004930  89C1              mov cx,ax
00004932  8A442E            mov al,[si+0x2e]
00004935  98                cbw
00004936  FF7436            push word [si+0x36]
00004939  53                push bx
0000493A  51                push cx
0000493B  50                push ax
0000493C  E8CDF6            call word 0x400c
0000493F  83C408            add sp,byte +0x8
00004942  C744360000        mov word [si+0x36],0x0
00004947  E96365            jmp word 0xaead
0000494A  55                push bp
0000494B  89E5              mov bp,sp
0000494D  56                push si
0000494E  57                push di
0000494F  8B7604            mov si,[bp+0x4]
00004952  8B7C42            mov di,[si+0x42]
00004955  FF7606            push word [bp+0x6]
00004958  57                push di
00004959  E80A00            call word 0x4966
0000495C  5B                pop bx
0000495D  5B                pop bx
0000495E  57                push di
0000495F  E84202            call word 0x4ba4
00004962  5B                pop bx
00004963  E94765            jmp word 0xaead
00004966  55                push bp
00004967  89E5              mov bp,sp
00004969  56                push si
0000496A  8B7604            mov si,[bp+0x4]
0000496D  8A4415            mov al,[si+0x15]
00004970  98                cbw
00004971  09C0              or ax,ax
00004973  7F03              jg 0x4978
00004975  E90501            jmp word 0x4a7d
00004978  FF7606            push word [bp+0x6]
0000497B  56                push si
0000497C  E8B802            call word 0x4c37
0000497F  5B                pop bx
00004980  5B                pop bx
00004981  E90201            jmp word 0x4a86
00004984  56                push si
00004985  E81C02            call word 0x4ba4
00004988  5B                pop bx
00004989  E87B08            call word 0x5207
0000498C  E9F700            jmp word 0x4a86
0000498F  FF4C02            dec word [si+0x2]
00004992  7D0C              jnl 0x49a0
00004994  FF4C04            dec word [si+0x4]
00004997  7C07              jl 0x49a0
00004999  8B168A23          mov dx,[0x238a]
0000499D  015402            add [si+0x2],dx
000049A0  56                push si
000049A1  E80002            call word 0x4ba4
000049A4  5B                pop bx
000049A5  E9DE00            jmp word 0x4a86
000049A8  8B1C              mov bx,[si]
000049AA  BA0300            mov dx,0x3
000049AD  235746            and dx,[bx+0x46]
000049B0  83FA03            cmp dx,byte +0x3
000049B3  7505              jnz 0x49ba
000049B5  C744020000        mov word [si+0x2],0x0
000049BA  8B168C23          mov dx,[0x238c]
000049BE  4A                dec dx
000049BF  395404            cmp [si+0x4],dx
000049C2  750B              jnz 0x49cf
000049C4  31C0              xor ax,ax
000049C6  50                push ax
000049C7  56                push si
000049C8  E8BE00            call word 0x4a89
000049CB  5B                pop bx
000049CC  5B                pop bx
000049CD  EB03              jmp short 0x49d2
000049CF  FF4404            inc word [si+0x4]
000049D2  56                push si
000049D3  E8CE01            call word 0x4ba4
000049D6  5B                pop bx
000049D7  E9AC00            jmp word 0x4a86
000049DA  C744020000        mov word [si+0x2],0x0
000049DF  56                push si
000049E0  E8C101            call word 0x4ba4
000049E3  5B                pop bx
000049E4  E99F00            jmp word 0x4a86
000049E7  BA0800            mov dx,0x8
000049EA  035402            add dx,[si+0x2]
000049ED  81E2F8FF          and dx,0xfff8
000049F1  895402            mov [si+0x2],dx
000049F4  39168A23          cmp [0x238a],dx
000049F8  731F              jnc 0x4a19
000049FA  2B168A23          sub dx,[0x238a]
000049FE  895402            mov [si+0x2],dx
00004A01  8B168C23          mov dx,[0x238c]
00004A05  4A                dec dx
00004A06  395404            cmp [si+0x4],dx
00004A09  750B              jnz 0x4a16
00004A0B  31C0              xor ax,ax
00004A0D  50                push ax
00004A0E  56                push si
00004A0F  E87700            call word 0x4a89
00004A12  5B                pop bx
00004A13  5B                pop bx
00004A14  EB03              jmp short 0x4a19
00004A16  FF4404            inc word [si+0x4]
00004A19  56                push si
00004A1A  E88701            call word 0x4ba4
00004A1D  5B                pop bx
00004A1E  EB66              jmp short 0x4a86
00004A20  56                push si
00004A21  E88001            call word 0x4ba4
00004A24  5B                pop bx
00004A25  C6441501          mov byte [si+0x15],0x1
00004A29  EB5B              jmp short 0x4a86
00004A2B  8B168A23          mov dx,[0x238a]
00004A2F  395402            cmp [si+0x2],dx
00004A32  7222              jc 0x4a56
00004A34  8B168C23          mov dx,[0x238c]
00004A38  4A                dec dx
00004A39  395404            cmp [si+0x4],dx
00004A3C  750B              jnz 0x4a49
00004A3E  31C0              xor ax,ax
00004A40  50                push ax
00004A41  56                push si
00004A42  E84400            call word 0x4a89
00004A45  5B                pop bx
00004A46  5B                pop bx
00004A47  EB03              jmp short 0x4a4c
00004A49  FF4404            inc word [si+0x4]
00004A4C  C744020000        mov word [si+0x2],0x0
00004A51  56                push si
00004A52  E84F01            call word 0x4ba4
00004A55  5B                pop bx
00004A56  837C0650          cmp word [si+0x6],byte +0x50
00004A5A  7505              jnz 0x4a61
00004A5C  56                push si
00004A5D  E84401            call word 0x4ba4
00004A60  5B                pop bx
00004A61  8B5606            mov dx,[bp+0x6]
00004A64  30F6              xor dh,dh
00004A66  0B5410            or dx,[si+0x10]
00004A69  8B4406            mov ax,[si+0x6]
00004A6C  FF4406            inc word [si+0x6]
00004A6F  8D5C22            lea bx,[si+0x22]
00004A72  D1E0              shl ax,1
00004A74  01C3              add bx,ax
00004A76  8917              mov [bx],dx
00004A78  FF4402            inc word [si+0x2]
00004A7B  EB09              jmp short 0x4a86
00004A7D  BBE60C            mov bx,0xce6
00004A80  8B4606            mov ax,[bp+0x6]
00004A83  E9E262            jmp word 0xad68
00004A86  E92564            jmp word 0xaeae
00004A89  55                push bp
00004A8A  89E5              mov bp,sp
00004A8C  50                push ax
00004A8D  50                push ax
00004A8E  56                push si
00004A8F  57                push di
00004A90  8B7604            mov si,[bp+0x4]
00004A93  56                push si
00004A94  E80D01            call word 0x4ba4
00004A97  5B                pop bx
00004A98  8B168E23          mov dx,[0x238e]
00004A9C  2B168A23          sub dx,[0x238a]
00004AA0  89D7              mov di,dx
00004AA2  837E0600          cmp word [bp+0x6],byte +0x0
00004AA6  7568              jnz 0x4b10
00004AA8  833E842300        cmp word [0x2384],byte +0x0
00004AAD  7414              jz 0x4ac3
00004AAF  8B5408            mov dx,[si+0x8]
00004AB2  8B0E8A23          mov cx,[0x238a]
00004AB6  01D1              add cx,dx
00004AB8  57                push di
00004AB9  52                push dx
00004ABA  51                push cx
00004ABB  E89FC0            call word 0xb5d
00004ABE  83C406            add sp,byte +0x6
00004AC1  EB3F              jmp short 0x4b02
00004AC3  833E822300        cmp word [0x2382],byte +0x0
00004AC8  752A              jnz 0x4af4
00004ACA  8B168E23          mov dx,[0x238e]
00004ACE  03540C            add dx,[si+0xc]
00004AD1  03168A23          add dx,[0x238a]
00004AD5  39540A            cmp [si+0xa],dx
00004AD8  771A              ja 0x4af4
00004ADA  8B168A23          mov dx,[0x238a]
00004ADE  03540C            add dx,[si+0xc]
00004AE1  57                push di
00004AE2  FF7408            push word [si+0x8]
00004AE5  52                push dx
00004AE6  E874C0            call word 0xb5d
00004AE9  83C406            add sp,byte +0x6
00004AEC  8B5408            mov dx,[si+0x8]
00004AEF  89540C            mov [si+0xc],dx
00004AF2  EB0E              jmp short 0x4b02
00004AF4  8B168A23          mov dx,[0x238a]
00004AF8  03540C            add dx,[si+0xc]
00004AFB  23161C61          and dx,[0x611c]
00004AFF  89540C            mov [si+0xc],dx
00004B02  89FA              mov dx,di
00004B04  03540C            add dx,[si+0xc]
00004B07  23161C61          and dx,[0x611c]
00004B0B  8956FE            mov [bp-0x2],dx
00004B0E  EB63              jmp short 0x4b73
00004B10  833E842300        cmp word [0x2384],byte +0x0
00004B15  7414              jz 0x4b2b
00004B17  8B168A23          mov dx,[0x238a]
00004B1B  035408            add dx,[si+0x8]
00004B1E  57                push di
00004B1F  52                push dx
00004B20  FF7408            push word [si+0x8]
00004B23  E837C0            call word 0xb5d
00004B26  83C406            add sp,byte +0x6
00004B29  EB42              jmp short 0x4b6d
00004B2B  833E822300        cmp word [0x2382],byte +0x0
00004B30  752D              jnz 0x4b5f
00004B32  8B168A23          mov dx,[0x238a]
00004B36  035408            add dx,[si+0x8]
00004B39  39540C            cmp [si+0xc],dx
00004B3C  7321              jnc 0x4b5f
00004B3E  8B540A            mov dx,[si+0xa]
00004B41  2B168E23          sub dx,[0x238e]
00004B45  8956FC            mov [bp-0x4],dx
00004B48  03168A23          add dx,[0x238a]
00004B4C  57                push di
00004B4D  52                push dx
00004B4E  FF740C            push word [si+0xc]
00004B51  E809C0            call word 0xb5d
00004B54  83C406            add sp,byte +0x6
00004B57  8B56FC            mov dx,[bp-0x4]
00004B5A  89540C            mov [si+0xc],dx
00004B5D  EB0E              jmp short 0x4b6d
00004B5F  8B540C            mov dx,[si+0xc]
00004B62  2B168A23          sub dx,[0x238a]
00004B66  23161C61          and dx,[0x611c]
00004B6A  89540C            mov [si+0xc],dx
00004B6D  8B540C            mov dx,[si+0xc]
00004B70  8956FE            mov [bp-0x2],dx
00004B73  8B5412            mov dx,[si+0x12]
00004B76  8916D20C          mov [0xcd2],dx
00004B7A  FF368A23          push word [0x238a]
00004B7E  FF76FE            push word [bp-0x2]
00004B81  31C0              xor ax,ax
00004B83  50                push ax
00004B84  E88DBF            call word 0xb14
00004B87  83C406            add sp,byte +0x6
00004B8A  39361425          cmp [0x2514],si
00004B8E  750C              jnz 0x4b9c
00004B90  FF740C            push word [si+0xc]
00004B93  B80C00            mov ax,0xc
00004B96  50                push ax
00004B97  E81C06            call word 0x51b6
00004B9A  5B                pop bx
00004B9B  5B                pop bx
00004B9C  56                push si
00004B9D  E80400            call word 0x4ba4
00004BA0  5B                pop bx
00004BA1  E90963            jmp word 0xaead
00004BA4  55                push bp
00004BA5  89E5              mov bp,sp
00004BA7  50                push ax
00004BA8  50                push ax
00004BA9  56                push si
00004BAA  57                push di
00004BAB  8B7604            mov si,[bp+0x4]
00004BAE  8B14              mov dx,[si]
00004BB0  8956FC            mov [bp-0x4],dx
00004BB3  837C0600          cmp word [si+0x6],byte +0x0
00004BB7  7E25              jng 0x4bde
00004BB9  FF7406            push word [si+0x6]
00004BBC  FF740E            push word [si+0xe]
00004BBF  8D4422            lea ax,[si+0x22]
00004BC2  50                push ax
00004BC3  E84EBF            call word 0xb14
00004BC6  83C406            add sp,byte +0x6
00004BC9  C744060000        mov word [si+0x6],0x0
00004BCE  8B5EFC            mov bx,[bp-0x4]
00004BD1  8B5402            mov dx,[si+0x2]
00004BD4  89571E            mov [bx+0x1e],dx
00004BD7  8B5EFC            mov bx,[bp-0x4]
00004BDA  C6472001          mov byte [bx+0x20],0x1
00004BDE  837C0200          cmp word [si+0x2],byte +0x0
00004BE2  7D05              jnl 0x4be9
00004BE4  C744020000        mov word [si+0x2],0x0
00004BE9  8B168A23          mov dx,[0x238a]
00004BED  395402            cmp [si+0x2],dx
00004BF0  7603              jna 0x4bf5
00004BF2  895402            mov [si+0x2],dx
00004BF5  837C0400          cmp word [si+0x4],byte +0x0
00004BF9  7D05              jnl 0x4c00
00004BFB  C744040000        mov word [si+0x4],0x0
00004C00  8B168C23          mov dx,[0x238c]
00004C04  395404            cmp [si+0x4],dx
00004C07  7204              jc 0x4c0d
00004C09  4A                dec dx
00004C0A  895404            mov [si+0x4],dx
00004C0D  8B4404            mov ax,[si+0x4]
00004C10  F7268A23          mul word [0x238a]
00004C14  03440C            add ax,[si+0xc]
00004C17  034402            add ax,[si+0x2]
00004C1A  89C7              mov di,ax
00004C1C  397C0E            cmp [si+0xe],di
00004C1F  7413              jz 0x4c34
00004C21  39361425          cmp [0x2514],si
00004C25  750A              jnz 0x4c31
00004C27  57                push di
00004C28  B80E00            mov ax,0xe
00004C2B  50                push ax
00004C2C  E88705            call word 0x51b6
00004C2F  5B                pop bx
00004C30  5B                pop bx
00004C31  897C0E            mov [si+0xe],di
00004C34  E97662            jmp word 0xaead
00004C37  55                push bp
00004C38  89E5              mov bp,sp
00004C3A  56                push si
00004C3B  8B7604            mov si,[bp+0x4]
00004C3E  E99800            jmp word 0x4cd9
00004C41  C6441600          mov byte [si+0x16],0x0
00004C45  8D5C22            lea bx,[si+0x22]
00004C48  895C18            mov [si+0x18],bx
00004C4B  834418FE          add word [si+0x18],byte -0x2
00004C4F  8B5C18            mov bx,[si+0x18]
00004C52  C7070000          mov word [bx],0x0
00004C56  8D5C1A            lea bx,[si+0x1a]
00004C59  395C18            cmp [si+0x18],bx
00004C5C  77ED              ja 0x4c4b
00004C5E  EB20              jmp short 0x4c80
00004C60  8A4E06            mov cl,[bp+0x6]
00004C63  884C16            mov [si+0x16],cl
00004C66  C6441502          mov byte [si+0x15],0x2
00004C6A  E97600            jmp word 0x4ce3
00004C6D  8A4606            mov al,[bp+0x6]
00004C70  98                cbw
00004C71  50                push ax
00004C72  56                push si
00004C73  E87000            call word 0x4ce6
00004C76  5B                pop bx
00004C77  5B                pop bx
00004C78  EB69              jmp short 0x4ce3
00004C7A  C6441500          mov byte [si+0x15],0x0
00004C7E  EB63              jmp short 0x4ce3
00004C80  8A4606            mov al,[bp+0x6]
00004C83  98                cbw
00004C84  BB0E0D            mov bx,0xd0e
00004C87  E9DE60            jmp word 0xad68
00004C8A  8A4606            mov al,[bp+0x6]
00004C8D  98                cbw
00004C8E  3D3000            cmp ax,0x30
00004C91  7C25              jl 0x4cb8
00004C93  98                cbw
00004C94  3D3900            cmp ax,0x39
00004C97  7F1F              jg 0x4cb8
00004C99  8D5C22            lea bx,[si+0x22]
00004C9C  395C18            cmp [si+0x18],bx
00004C9F  7342              jnc 0x4ce3
00004CA1  8B5C18            mov bx,[si+0x18]
00004CA4  B80A00            mov ax,0xa
00004CA7  F727              mul word [bx]
00004CA9  89C1              mov cx,ax
00004CAB  8A4606            mov al,[bp+0x6]
00004CAE  98                cbw
00004CAF  2D3000            sub ax,0x30
00004CB2  01C8              add ax,cx
00004CB4  8907              mov [bx],ax
00004CB6  EB2B              jmp short 0x4ce3
00004CB8  807E063B          cmp byte [bp+0x6],0x3b
00004CBC  750E              jnz 0x4ccc
00004CBE  8D5C22            lea bx,[si+0x22]
00004CC1  395C18            cmp [si+0x18],bx
00004CC4  731D              jnc 0x4ce3
00004CC6  83441802          add word [si+0x18],byte +0x2
00004CCA  EB17              jmp short 0x4ce3
00004CCC  8A4606            mov al,[bp+0x6]
00004CCF  98                cbw
00004CD0  50                push ax
00004CD1  56                push si
00004CD2  E81100            call word 0x4ce6
00004CD5  5B                pop bx
00004CD6  5B                pop bx
00004CD7  EB0A              jmp short 0x4ce3
00004CD9  8A4415            mov al,[si+0x15]
00004CDC  98                cbw
00004CDD  BB1A0D            mov bx,0xd1a
00004CE0  E96160            jmp word 0xad44
00004CE3  E9C861            jmp word 0xaeae
00004CE6  55                push bp
00004CE7  89E5              mov bp,sp
00004CE9  83EC0C            sub sp,byte +0xc
00004CEC  56                push si
00004CED  57                push di
00004CEE  8B7604            mov si,[bp+0x4]
00004CF1  56                push si
00004CF2  E8AFFE            call word 0x4ba4
00004CF5  5B                pop bx
00004CF6  807C1600          cmp byte [si+0x16],0x0
00004CFA  752B              jnz 0x4d27
00004CFC  EB1D              jmp short 0x4d1b
00004CFE  837C0400          cmp word [si+0x4],byte +0x0
00004D02  750C              jnz 0x4d10
00004D04  B80100            mov ax,0x1
00004D07  50                push ax
00004D08  56                push si
00004D09  E87DFD            call word 0x4a89
00004D0C  5B                pop bx
00004D0D  5B                pop bx
00004D0E  EB03              jmp short 0x4d13
00004D10  FF4C04            dec word [si+0x4]
00004D13  56                push si
00004D14  E88DFE            call word 0x4ba4
00004D17  5B                pop bx
00004D18  E99404            jmp word 0x51af
00004D1B  8A4606            mov al,[bp+0x6]
00004D1E  98                cbw
00004D1F  3D4D00            cmp ax,0x4d
00004D22  74DA              jz 0x4cfe
00004D24  E98804            jmp word 0x51af
00004D27  807C165B          cmp byte [si+0x16],0x5b
00004D2B  7403              jz 0x4d30
00004D2D  E97F04            jmp word 0x51af
00004D30  8B541A            mov dx,[si+0x1a]
00004D33  8956FE            mov [bp-0x2],dx
00004D36  E96C04            jmp word 0x51a5
00004D39  837EFE00          cmp word [bp-0x2],byte +0x0
00004D3D  7505              jnz 0x4d44
00004D3F  B80100            mov ax,0x1
00004D42  EB03              jmp short 0x4d47
00004D44  8B46FE            mov ax,[bp-0x2]
00004D47  89C7              mov di,ax
00004D49  8B5404            mov dx,[si+0x4]
00004D4C  29FA              sub dx,di
00004D4E  895404            mov [si+0x4],dx
00004D51  56                push si
00004D52  E84FFE            call word 0x4ba4
00004D55  5B                pop bx
00004D56  E95604            jmp word 0x51af
00004D59  837EFE00          cmp word [bp-0x2],byte +0x0
00004D5D  7505              jnz 0x4d64
00004D5F  B80100            mov ax,0x1
00004D62  EB03              jmp short 0x4d67
00004D64  8B46FE            mov ax,[bp-0x2]
00004D67  89C7              mov di,ax
00004D69  017C04            add [si+0x4],di
00004D6C  56                push si
00004D6D  E834FE            call word 0x4ba4
00004D70  5B                pop bx
00004D71  E93B04            jmp word 0x51af
00004D74  837EFE00          cmp word [bp-0x2],byte +0x0
00004D78  7505              jnz 0x4d7f
00004D7A  B80100            mov ax,0x1
00004D7D  EB03              jmp short 0x4d82
00004D7F  8B46FE            mov ax,[bp-0x2]
00004D82  89C7              mov di,ax
00004D84  017C02            add [si+0x2],di
00004D87  56                push si
00004D88  E819FE            call word 0x4ba4
00004D8B  5B                pop bx
00004D8C  E92004            jmp word 0x51af
00004D8F  837EFE00          cmp word [bp-0x2],byte +0x0
00004D93  7505              jnz 0x4d9a
00004D95  B80100            mov ax,0x1
00004D98  EB03              jmp short 0x4d9d
00004D9A  8B46FE            mov ax,[bp-0x2]
00004D9D  89C7              mov di,ax
00004D9F  8B5402            mov dx,[si+0x2]
00004DA2  29FA              sub dx,di
00004DA4  895402            mov [si+0x2],dx
00004DA7  56                push si
00004DA8  E8F9FD            call word 0x4ba4
00004DAB  5B                pop bx
00004DAC  E90004            jmp word 0x51af
00004DAF  8B541A            mov dx,[si+0x1a]
00004DB2  4A                dec dx
00004DB3  895404            mov [si+0x4],dx
00004DB6  8B541C            mov dx,[si+0x1c]
00004DB9  4A                dec dx
00004DBA  895402            mov [si+0x2],dx
00004DBD  56                push si
00004DBE  E8E3FD            call word 0x4ba4
00004DC1  5B                pop bx
00004DC2  E9EA03            jmp word 0x51af
00004DC5  8B540E            mov dx,[si+0xe]
00004DC8  2B540C            sub dx,[si+0xc]
00004DCB  2B168E23          sub dx,[0x238e]
00004DCF  F7DA              neg dx
00004DD1  8956F6            mov [bp-0xa],dx
00004DD4  8B540E            mov dx,[si+0xe]
00004DD7  8956F8            mov [bp-0x8],dx
00004DDA  EB36              jmp short 0x4e12
00004DDC  8B540E            mov dx,[si+0xe]
00004DDF  2B540C            sub dx,[si+0xc]
00004DE2  8956F6            mov [bp-0xa],dx
00004DE5  8B540C            mov dx,[si+0xc]
00004DE8  8956F8            mov [bp-0x8],dx
00004DEB  EB25              jmp short 0x4e12
00004DED  8B168E23          mov dx,[0x238e]
00004DF1  8956F6            mov [bp-0xa],dx
00004DF4  8B540C            mov dx,[si+0xc]
00004DF7  8956F8            mov [bp-0x8],dx
00004DFA  EB16              jmp short 0x4e12
00004DFC  C746F60000        mov word [bp-0xa],0x0
00004E01  8B540C            mov dx,[si+0xc]
00004E04  8956F8            mov [bp-0x8],dx
00004E07  EB09              jmp short 0x4e12
00004E09  BB240D            mov bx,0xd24
00004E0C  8B46FE            mov ax,[bp-0x2]
00004E0F  E9325F            jmp word 0xad44
00004E12  8B5412            mov dx,[si+0x12]
00004E15  8916D20C          mov [0xcd2],dx
00004E19  FF76F6            push word [bp-0xa]
00004E1C  FF76F8            push word [bp-0x8]
00004E1F  31C0              xor ax,ax
00004E21  50                push ax
00004E22  E8EFBC            call word 0xb14
00004E25  83C406            add sp,byte +0x6
00004E28  E98403            jmp word 0x51af
00004E2B  8B168A23          mov dx,[0x238a]
00004E2F  2B5402            sub dx,[si+0x2]
00004E32  8956F6            mov [bp-0xa],dx
00004E35  8B540E            mov dx,[si+0xe]
00004E38  8956F8            mov [bp-0x8],dx
00004E3B  EB39              jmp short 0x4e76
00004E3D  8B5402            mov dx,[si+0x2]
00004E40  8956F6            mov [bp-0xa],dx
00004E43  8B540E            mov dx,[si+0xe]
00004E46  2B5402            sub dx,[si+0x2]
00004E49  8956F8            mov [bp-0x8],dx
00004E4C  EB28              jmp short 0x4e76
00004E4E  8B168A23          mov dx,[0x238a]
00004E52  8956F6            mov [bp-0xa],dx
00004E55  8B540E            mov dx,[si+0xe]
00004E58  2B5402            sub dx,[si+0x2]
00004E5B  8956F8            mov [bp-0x8],dx
00004E5E  EB16              jmp short 0x4e76
00004E60  C746F60000        mov word [bp-0xa],0x0
00004E65  8B540E            mov dx,[si+0xe]
00004E68  8956F8            mov [bp-0x8],dx
00004E6B  EB09              jmp short 0x4e76
00004E6D  BB300D            mov bx,0xd30
00004E70  8B46FE            mov ax,[bp-0x2]
00004E73  E9CE5E            jmp word 0xad44
00004E76  8B5412            mov dx,[si+0x12]
00004E79  8916D20C          mov [0xcd2],dx
00004E7D  FF76F6            push word [bp-0xa]
00004E80  FF76F8            push word [bp-0x8]
00004E83  31C0              xor ax,ax
00004E85  50                push ax
00004E86  E88BBC            call word 0xb14
00004E89  83C406            add sp,byte +0x6
00004E8C  E92003            jmp word 0x51af
00004E8F  8B7EFE            mov di,[bp-0x2]
00004E92  09FF              or di,di
00004E94  7F03              jg 0x4e99
00004E96  BF0100            mov di,0x1
00004E99  8B168C23          mov dx,[0x238c]
00004E9D  2B5404            sub dx,[si+0x4]
00004EA0  39FA              cmp dx,di
00004EA2  7309              jnc 0x4ead
00004EA4  8B168C23          mov dx,[0x238c]
00004EA8  2B5404            sub dx,[si+0x4]
00004EAB  89D7              mov di,dx
00004EAD  8B4404            mov ax,[si+0x4]
00004EB0  F7268A23          mul word [0x238a]
00004EB4  03440C            add ax,[si+0xc]
00004EB7  8946FA            mov [bp-0x6],ax
00004EBA  89F8              mov ax,di
00004EBC  F7268A23          mul word [0x238a]
00004EC0  0346FA            add ax,[bp-0x6]
00004EC3  8946F8            mov [bp-0x8],ax
00004EC6  8B168C23          mov dx,[0x238c]
00004ECA  2B5404            sub dx,[si+0x4]
00004ECD  29FA              sub dx,di
00004ECF  89D0              mov ax,dx
00004ED1  F7268A23          mul word [0x238a]
00004ED5  8946F6            mov [bp-0xa],ax
00004ED8  50                push ax
00004ED9  FF76F8            push word [bp-0x8]
00004EDC  FF76FA            push word [bp-0x6]
00004EDF  E87BBC            call word 0xb5d
00004EE2  83C406            add sp,byte +0x6
00004EE5  8B5412            mov dx,[si+0x12]
00004EE8  8916D20C          mov [0xcd2],dx
00004EEC  89F8              mov ax,di
00004EEE  F7268A23          mul word [0x238a]
00004EF2  50                push ax
00004EF3  FF76FA            push word [bp-0x6]
00004EF6  31C0              xor ax,ax
00004EF8  50                push ax
00004EF9  E818BC            call word 0xb14
00004EFC  83C406            add sp,byte +0x6
00004EFF  E9AD02            jmp word 0x51af
00004F02  8B7EFE            mov di,[bp-0x2]
00004F05  09FF              or di,di
00004F07  7F03              jg 0x4f0c
00004F09  BF0100            mov di,0x1
00004F0C  8B168C23          mov dx,[0x238c]
00004F10  2B5404            sub dx,[si+0x4]
00004F13  39FA              cmp dx,di
00004F15  7309              jnc 0x4f20
00004F17  8B168C23          mov dx,[0x238c]
00004F1B  2B5404            sub dx,[si+0x4]
00004F1E  89D7              mov di,dx
00004F20  8B4404            mov ax,[si+0x4]
00004F23  F7268A23          mul word [0x238a]
00004F27  03440C            add ax,[si+0xc]
00004F2A  8946F8            mov [bp-0x8],ax
00004F2D  89F8              mov ax,di
00004F2F  F7268A23          mul word [0x238a]
00004F33  0346F8            add ax,[bp-0x8]
00004F36  8946FA            mov [bp-0x6],ax
00004F39  8B168C23          mov dx,[0x238c]
00004F3D  2B5404            sub dx,[si+0x4]
00004F40  29FA              sub dx,di
00004F42  89D0              mov ax,dx
00004F44  F7268A23          mul word [0x238a]
00004F48  8946F6            mov [bp-0xa],ax
00004F4B  50                push ax
00004F4C  FF76F8            push word [bp-0x8]
00004F4F  FF76FA            push word [bp-0x6]
00004F52  E808BC            call word 0xb5d
00004F55  83C406            add sp,byte +0x6
00004F58  8B5412            mov dx,[si+0x12]
00004F5B  8916D20C          mov [0xcd2],dx
00004F5F  89F8              mov ax,di
00004F61  F7268A23          mul word [0x238a]
00004F65  8B56F6            mov dx,[bp-0xa]
00004F68  0356F8            add dx,[bp-0x8]
00004F6B  50                push ax
00004F6C  52                push dx
00004F6D  31C0              xor ax,ax
00004F6F  50                push ax
00004F70  E8A1BB            call word 0xb14
00004F73  83C406            add sp,byte +0x6
00004F76  E93602            jmp word 0x51af
00004F79  8B7EFE            mov di,[bp-0x2]
00004F7C  09FF              or di,di
00004F7E  7F03              jg 0x4f83
00004F80  BF0100            mov di,0x1
00004F83  8B168A23          mov dx,[0x238a]
00004F87  2B5402            sub dx,[si+0x2]
00004F8A  39FA              cmp dx,di
00004F8C  7309              jnc 0x4f97
00004F8E  8B168A23          mov dx,[0x238a]
00004F92  2B5402            sub dx,[si+0x2]
00004F95  89D7              mov di,dx
00004F97  8B540E            mov dx,[si+0xe]
00004F9A  8956FA            mov [bp-0x6],dx
00004F9D  01FA              add dx,di
00004F9F  8956F8            mov [bp-0x8],dx
00004FA2  8B168A23          mov dx,[0x238a]
00004FA6  2B5402            sub dx,[si+0x2]
00004FA9  29FA              sub dx,di
00004FAB  8956F6            mov [bp-0xa],dx
00004FAE  52                push dx
00004FAF  FF76F8            push word [bp-0x8]
00004FB2  FF76FA            push word [bp-0x6]
00004FB5  E8A5BB            call word 0xb5d
00004FB8  83C406            add sp,byte +0x6
00004FBB  8B5412            mov dx,[si+0x12]
00004FBE  8916D20C          mov [0xcd2],dx
00004FC2  57                push di
00004FC3  FF76FA            push word [bp-0x6]
00004FC6  31C0              xor ax,ax
00004FC8  50                push ax
00004FC9  E848BB            call word 0xb14
00004FCC  83C406            add sp,byte +0x6
00004FCF  E9DD01            jmp word 0x51af
00004FD2  8B7EFE            mov di,[bp-0x2]
00004FD5  09FF              or di,di
00004FD7  7F03              jg 0x4fdc
00004FD9  BF0100            mov di,0x1
00004FDC  8B168A23          mov dx,[0x238a]
00004FE0  2B5402            sub dx,[si+0x2]
00004FE3  39FA              cmp dx,di
00004FE5  7309              jnc 0x4ff0
00004FE7  8B168A23          mov dx,[0x238a]
00004FEB  2B5402            sub dx,[si+0x2]
00004FEE  89D7              mov di,dx
00004FF0  8B540E            mov dx,[si+0xe]
00004FF3  8956F8            mov [bp-0x8],dx
00004FF6  01FA              add dx,di
00004FF8  8956FA            mov [bp-0x6],dx
00004FFB  8B168A23          mov dx,[0x238a]
00004FFF  2B5402            sub dx,[si+0x2]
00005002  29FA              sub dx,di
00005004  8956F6            mov [bp-0xa],dx
00005007  52                push dx
00005008  FF76F8            push word [bp-0x8]
0000500B  FF76FA            push word [bp-0x6]
0000500E  E84CBB            call word 0xb5d
00005011  83C406            add sp,byte +0x6
00005014  8B5412            mov dx,[si+0x12]
00005017  8916D20C          mov [0xcd2],dx
0000501B  8B56F6            mov dx,[bp-0xa]
0000501E  0356F8            add dx,[bp-0x8]
00005021  57                push di
00005022  52                push dx
00005023  31C0              xor ax,ax
00005025  50                push ax
00005026  E8EBBA            call word 0xb14
00005029  83C406            add sp,byte +0x6
0000502C  E98001            jmp word 0x51af
0000502F  8D5C1A            lea bx,[si+0x1a]
00005032  895EF4            mov [bp-0xc],bx
00005035  8B56F4            mov dx,[bp-0xc]
00005038  395418            cmp [si+0x18],dx
0000503B  7303              jnc 0x5040
0000503D  E96F01            jmp word 0x51af
00005040  8D5C22            lea bx,[si+0x22]
00005043  395EF4            cmp [bp-0xc],bx
00005046  7203              jc 0x504b
00005048  E96401            jmp word 0x51af
0000504B  807C1400          cmp byte [si+0x14],0x0
0000504F  7503              jnz 0x5054
00005051  E91001            jmp word 0x5164
00005054  BA0070            mov dx,0x7000
00005057  235410            and dx,[si+0x10]
0000505A  B90400            mov cx,0x4
0000505D  D3EA              shr dx,cl
0000505F  B90007            mov cx,0x700
00005062  234C10            and cx,[si+0x10]
00005065  52                push dx
00005066  51                push cx
00005067  B90400            mov cx,0x4
0000506A  5A                pop dx
0000506B  D3E2              shl dx,cl
0000506D  59                pop cx
0000506E  09CA              or dx,cx
00005070  B90088            mov cx,0x8800
00005073  234C10            and cx,[si+0x10]
00005076  09D1              or cx,dx
00005078  894C10            mov [si+0x10],cx
0000507B  E9E600            jmp word 0x5164
0000507E  BA0007            mov dx,0x700
00005081  895412            mov [si+0x12],dx
00005084  895410            mov [si+0x10],dx
00005087  C6441400          mov byte [si+0x14],0x0
0000508B  E9E300            jmp word 0x5171
0000508E  814C100008        or word [si+0x10],0x800
00005093  E9DB00            jmp word 0x5171
00005096  813E8023D403      cmp word [0x2380],0x3d4
0000509C  7508              jnz 0x50a6
0000509E  816410FFBB        and word [si+0x10],0xbbff
000050A3  E9CB00            jmp word 0x5171
000050A6  816410FF99        and word [si+0x10],0x99ff
000050AB  E9C300            jmp word 0x5171
000050AE  814C100080        or word [si+0x10],0x8000
000050B3  E9BB00            jmp word 0x5171
000050B6  C6441401          mov byte [si+0x14],0x1
000050BA  E9B400            jmp word 0x5171
000050BD  83FF27            cmp di,byte +0x27
000050C0  7503              jnz 0x50c5
000050C2  BF2500            mov di,0x25
000050C5  83FF31            cmp di,byte +0x31
000050C8  7503              jnz 0x50cd
000050CA  BF2800            mov di,0x28
000050CD  813E8023D403      cmp word [0x2380],0x3d4
000050D3  7403              jz 0x50d8
000050D5  E99900            jmp word 0x5171
000050D8  83FF1E            cmp di,byte +0x1e
000050DB  7C41              jl 0x511e
000050DD  83FF25            cmp di,byte +0x25
000050E0  7F3C              jg 0x511e
000050E2  89FA              mov dx,di
000050E4  83EA1E            sub dx,byte +0x1e
000050E7  89D3              mov bx,dx
000050E9  D1E3              shl bx,1
000050EB  B90800            mov cx,0x8
000050EE  8B97D60C          mov dx,[bx+0xcd6]
000050F2  D3E2              shl dx,cl
000050F4  B9FFF8            mov cx,0xf8ff
000050F7  234C10            and cx,[si+0x10]
000050FA  09D1              or cx,dx
000050FC  894C10            mov [si+0x10],cx
000050FF  89FA              mov dx,di
00005101  83EA1E            sub dx,byte +0x1e
00005104  89D3              mov bx,dx
00005106  D1E3              shl bx,1
00005108  B90800            mov cx,0x8
0000510B  8B97D60C          mov dx,[bx+0xcd6]
0000510F  D3E2              shl dx,cl
00005111  B9FFF8            mov cx,0xf8ff
00005114  234C12            and cx,[si+0x12]
00005117  09D1              or cx,dx
00005119  894C12            mov [si+0x12],cx
0000511C  EB53              jmp short 0x5171
0000511E  83FF28            cmp di,byte +0x28
00005121  7C4E              jl 0x5171
00005123  83FF2F            cmp di,byte +0x2f
00005126  7F49              jg 0x5171
00005128  89FA              mov dx,di
0000512A  83EA28            sub dx,byte +0x28
0000512D  89D3              mov bx,dx
0000512F  D1E3              shl bx,1
00005131  B90C00            mov cx,0xc
00005134  8B97D60C          mov dx,[bx+0xcd6]
00005138  D3E2              shl dx,cl
0000513A  B9FF8F            mov cx,0x8fff
0000513D  234C10            and cx,[si+0x10]
00005140  09D1              or cx,dx
00005142  894C10            mov [si+0x10],cx
00005145  89FA              mov dx,di
00005147  83EA28            sub dx,byte +0x28
0000514A  89D3              mov bx,dx
0000514C  D1E3              shl bx,1
0000514E  B90C00            mov cx,0xc
00005151  8B97D60C          mov dx,[bx+0xcd6]
00005155  D3E2              shl dx,cl
00005157  B9FF8F            mov cx,0x8fff
0000515A  234C12            and cx,[si+0x12]
0000515D  09D1              or cx,dx
0000515F  894C12            mov [si+0x12],cx
00005162  EB0D              jmp short 0x5171
00005164  8B5EF4            mov bx,[bp-0xc]
00005167  8B3F              mov di,[bx]
00005169  BB3C0D            mov bx,0xd3c
0000516C  89F8              mov ax,di
0000516E  E9D35B            jmp word 0xad44
00005171  807C1400          cmp byte [si+0x14],0x0
00005175  7427              jz 0x519e
00005177  BA0070            mov dx,0x7000
0000517A  235410            and dx,[si+0x10]
0000517D  B90400            mov cx,0x4
00005180  D3EA              shr dx,cl
00005182  B90007            mov cx,0x700
00005185  234C10            and cx,[si+0x10]
00005188  52                push dx
00005189  51                push cx
0000518A  B90400            mov cx,0x4
0000518D  5A                pop dx
0000518E  D3E2              shl dx,cl
00005190  59                pop cx
00005191  09CA              or dx,cx
00005193  B90088            mov cx,0x8800
00005196  234C10            and cx,[si+0x10]
00005199  09D1              or cx,dx
0000519B  894C10            mov [si+0x10],cx
0000519E  8346F402          add word [bp-0xc],byte +0x2
000051A2  E990FE            jmp word 0x5035
000051A5  8A4606            mov al,[bp+0x6]
000051A8  98                cbw
000051A9  BB520D            mov bx,0xd52
000051AC  E9B95B            jmp word 0xad68
000051AF  C6441500          mov byte [si+0x15],0x0
000051B3  E9F75C            jmp word 0xaead
000051B6  55                push bp
000051B7  89E5              mov bp,sp
000051B9  E8F458            call word 0xaab0
000051BC  FF7604            push word [bp+0x4]
000051BF  FF368023          push word [0x2380]
000051C3  E8EE58            call word 0xaab4
000051C6  5B                pop bx
000051C7  5B                pop bx
000051C8  B90800            mov cx,0x8
000051CB  8B5606            mov dx,[bp+0x6]
000051CE  D3EA              shr dx,cl
000051D0  8B0E8023          mov cx,[0x2380]
000051D4  41                inc cx
000051D5  31C0              xor ax,ax
000051D7  88D0              mov al,dl
000051D9  50                push ax
000051DA  51                push cx
000051DB  E8D658            call word 0xaab4
000051DE  5B                pop bx
000051DF  5B                pop bx
000051E0  8B5604            mov dx,[bp+0x4]
000051E3  42                inc dx
000051E4  52                push dx
000051E5  FF368023          push word [0x2380]
000051E9  E8C858            call word 0xaab4
000051EC  5B                pop bx
000051ED  5B                pop bx
000051EE  8B5606            mov dx,[bp+0x6]
000051F1  8B0E8023          mov cx,[0x2380]
000051F5  41                inc cx
000051F6  31C0              xor ax,ax
000051F8  88D0              mov al,dl
000051FA  50                push ax
000051FB  51                push cx
000051FC  E8B558            call word 0xaab4
000051FF  5B                pop bx
00005200  5B                pop bx
00005201  E8AE58            call word 0xaab2
00005204  E9A85C            jmp word 0xaeaf
00005207  55                push bp
00005208  89E5              mov bp,sp
0000520A  833E862300        cmp word [0x2386],byte +0x0
0000520F  7548              jnz 0x5259
00005211  B8B600            mov ax,0xb6
00005214  50                push ax
00005215  B84300            mov ax,0x43
00005218  50                push ax
00005219  E89858            call word 0xaab4
0000521C  5B                pop bx
0000521D  5B                pop bx
0000521E  B83300            mov ax,0x33
00005221  50                push ax
00005222  B84200            mov ax,0x42
00005225  50                push ax
00005226  E88B58            call word 0xaab4
00005229  5B                pop bx
0000522A  5B                pop bx
0000522B  B80500            mov ax,0x5
0000522E  50                push ax
0000522F  B84200            mov ax,0x42
00005232  50                push ax
00005233  E87E58            call word 0xaab4
00005236  5B                pop bx
00005237  5B                pop bx
00005238  E87558            call word 0xaab0
0000523B  B86100            mov ax,0x61
0000523E  50                push ax
0000523F  E86358            call word 0xaaa5
00005242  5B                pop bx
00005243  0D0300            or ax,0x3
00005246  50                push ax
00005247  B86100            mov ax,0x61
0000524A  50                push ax
0000524B  E86658            call word 0xaab4
0000524E  5B                pop bx
0000524F  5B                pop bx
00005250  E85F58            call word 0xaab2
00005253  C70686230100      mov word [0x2386],0x1
00005259  B87952            mov ax,0x5279
0000525C  50                push ax
0000525D  E8E5D6            call word 0x2945
00005260  050300            add ax,0x3
00005263  83D200            adc dx,byte +0x0
00005266  52                push dx
00005267  50                push ax
00005268  B8F6FF            mov ax,0xfff6
0000526B  50                push ax
0000526C  B81625            mov ax,0x2516
0000526F  50                push ax
00005270  E8D0D5            call word 0x2843
00005273  83C40A            add sp,byte +0xa
00005276  E9365C            jmp word 0xaeaf
00005279  55                push bp
0000527A  89E5              mov bp,sp
0000527C  E83158            call word 0xaab0
0000527F  B86100            mov ax,0x61
00005282  50                push ax
00005283  E81F58            call word 0xaaa5
00005286  5B                pop bx
00005287  25FCFF            and ax,0xfffc
0000528A  50                push ax
0000528B  B86100            mov ax,0x61
0000528E  50                push ax
0000528F  E82258            call word 0xaab4
00005292  5B                pop bx
00005293  5B                pop bx
00005294  C70686230000      mov word [0x2386],0x0
0000529A  E81558            call word 0xaab2
0000529D  E90F5C            jmp word 0xaeaf
000052A0  55                push bp
000052A1  89E5              mov bp,sp
000052A3  83EC12            sub sp,byte +0x12
000052A6  56                push si
000052A7  57                push di
000052A8  8B7E04            mov di,[bp+0x4]
000052AB  89F8              mov ax,di
000052AD  2DC46F            sub ax,0x6fc4
000052B0  B96C02            mov cx,0x26c
000052B3  99                cwd
000052B4  F7F9              idiv cx
000052B6  8946F0            mov [bp-0x10],ax
000052B9  3906D40C          cmp [0xcd4],ax
000052BD  7F03              jg 0x52c2
000052BF  E9C101            jmp word 0x5483
000052C2  B9C200            mov cx,0xc2
000052C5  F7E1              mul cx
000052C7  059023            add ax,0x2390
000052CA  89C6              mov si,ax
000052CC  893C              mov [si],di
000052CE  897542            mov [di+0x42],si
000052D1  57                push di
000052D2  E8EBF2            call word 0x45c0
000052D5  5B                pop bx
000052D6  C745161148        mov word [di+0x16],0x4811
000052DB  C745184A49        mov word [di+0x18],0x494a
000052E0  C7453E4256        mov word [di+0x3e],0x5642
000052E5  8D5EF8            lea bx,[bp-0x8]
000052E8  31D2              xor dx,dx
000052EA  031E8446          add bx,[0x4684]
000052EE  13168646          adc dx,[0x4686]
000052F2  31C0              xor ax,ax
000052F4  50                push ax
000052F5  B80200            mov ax,0x2
000052F8  50                push ax
000052F9  52                push dx
000052FA  53                push bx
000052FB  31C0              xor ax,ax
000052FD  50                push ax
000052FE  B84A04            mov ax,0x44a
00005301  50                push ax
00005302  E880B7            call word 0xa85
00005305  83C40C            add sp,byte +0xc
00005308  8D5EF6            lea bx,[bp-0xa]
0000530B  31D2              xor dx,dx
0000530D  031E8446          add bx,[0x4684]
00005311  13168646          adc dx,[0x4686]
00005315  31C0              xor ax,ax
00005317  50                push ax
00005318  B80200            mov ax,0x2
0000531B  50                push ax
0000531C  52                push dx
0000531D  53                push bx
0000531E  31C0              xor ax,ax
00005320  50                push ax
00005321  B86304            mov ax,0x463
00005324  50                push ax
00005325  E85DB7            call word 0xa85
00005328  83C40C            add sp,byte +0xc
0000532B  8D5EF3            lea bx,[bp-0xd]
0000532E  31D2              xor dx,dx
00005330  031E8446          add bx,[0x4684]
00005334  13168646          adc dx,[0x4686]
00005338  31C0              xor ax,ax
0000533A  50                push ax
0000533B  B80100            mov ax,0x1
0000533E  50                push ax
0000533F  52                push dx
00005340  53                push bx
00005341  31C0              xor ax,ax
00005343  50                push ax
00005344  B88404            mov ax,0x484
00005347  50                push ax
00005348  E83AB7            call word 0xa85
0000534B  83C40C            add sp,byte +0xc
0000534E  8D5EF4            lea bx,[bp-0xc]
00005351  31D2              xor dx,dx
00005353  031E8446          add bx,[0x4684]
00005357  13168646          adc dx,[0x4686]
0000535B  31C0              xor ax,ax
0000535D  50                push ax
0000535E  B80200            mov ax,0x2
00005361  50                push ax
00005362  52                push dx
00005363  53                push bx
00005364  31C0              xor ax,ax
00005366  50                push ax
00005367  B88504            mov ax,0x485
0000536A  50                push ax
0000536B  E817B7            call word 0xa85
0000536E  83C40C            add sp,byte +0xc
00005371  8B56F6            mov dx,[bp-0xa]
00005374  89168023          mov [0x2380],dx
00005378  8B56F8            mov dx,[bp-0x8]
0000537B  89168A23          mov [0x238a],dx
0000537F  8B56F4            mov dx,[bp-0xc]
00005382  89168823          mov [0x2388],dx
00005386  833E824600        cmp word [0x4682],byte +0x0
0000538B  740A              jz 0x5397
0000538D  8A56F3            mov dl,[bp-0xd]
00005390  30F6              xor dh,dh
00005392  42                inc dx
00005393  89D0              mov ax,dx
00005395  EB03              jmp short 0x539a
00005397  B81900            mov ax,0x19
0000539A  A38C23            mov [0x238c],ax
0000539D  813E8023D403      cmp word [0x2380],0x3d4
000053A3  7512              jnz 0x53b7
000053A5  C746FA0080        mov word [bp-0x6],0x8000
000053AA  C746FC0B00        mov word [bp-0x4],0xb
000053AF  C70618610040      mov word [0x6118],0x4000
000053B5  EB10              jmp short 0x53c7
000053B7  C746FA0000        mov word [bp-0x6],0x0
000053BC  C746FC0B00        mov word [bp-0x4],0xb
000053C1  C70618610010      mov word [0x6118],0x1000
000053C7  833E824600        cmp word [0x4682],byte +0x0
000053CC  7406              jz 0x53d4
000053CE  C70618610080      mov word [0x6118],0x8000
000053D4  31C0              xor ax,ax
000053D6  833E824600        cmp word [0x4682],byte +0x0
000053DB  7501              jnz 0x53de
000053DD  40                inc ax
000053DE  A38223            mov [0x2382],ax
000053E1  FF76FC            push word [bp-0x4]
000053E4  FF76FA            push word [bp-0x6]
000053E7  B81A61            mov ax,0x611a
000053EA  50                push ax
000053EB  B81E61            mov ax,0x611e
000053EE  50                push ax
000053EF  E81AB3            call word 0x70c
000053F2  83C408            add sp,byte +0x8
000053F5  8B161861          mov dx,[0x6118]
000053F9  D1EA              shr dx,1
000053FB  89161861          mov [0x6118],dx
000053FF  83EA01            sub dx,byte +0x1
00005402  89161C61          mov [0x611c],dx
00005406  A18C23            mov ax,[0x238c]
00005409  F7268A23          mul word [0x238a]
0000540D  A38E23            mov [0x238e],ax
00005410  A11861            mov ax,[0x6118]
00005413  31D2              xor dx,dx
00005415  F7368E23          div word [0x238e]
00005419  A3D40C            mov [0xcd4],ax
0000541C  3D0200            cmp ax,0x2
0000541F  7E06              jng 0x5427
00005421  C706D40C0200      mov word [0xcd4],0x2
00005427  833ED40C01        cmp word [0xcd4],byte +0x1
0000542C  7E06              jng 0x5434
0000542E  C70682230000      mov word [0x2382],0x0
00005434  A11861            mov ax,[0x6118]
00005437  31D2              xor dx,dx
00005439  F736D40C          div word [0xcd4]
0000543D  8946EE            mov [bp-0x12],ax
00005440  8B46F0            mov ax,[bp-0x10]
00005443  F766EE            mul word [bp-0x12]
00005446  894408            mov [si+0x8],ax
00005449  0346EE            add ax,[bp-0x12]
0000544C  89440A            mov [si+0xa],ax
0000544F  8B5408            mov dx,[si+0x8]
00005452  89540C            mov [si+0xc],dx
00005455  89540E            mov [si+0xe],dx
00005458  BA0007            mov dx,0x700
0000545B  895412            mov [si+0x12],dx
0000545E  895410            mov [si+0x10],dx
00005461  C706D20C0007      mov word [0xcd2],0x700
00005467  FF368E23          push word [0x238e]
0000546B  FF7408            push word [si+0x8]
0000546E  31C0              xor ax,ax
00005470  50                push ax
00005471  E8A0B6            call word 0xb14
00005474  83C406            add sp,byte +0x6
00005477  31C0              xor ax,ax
00005479  50                push ax
0000547A  E8FB00            call word 0x5578
0000547D  5B                pop bx
0000547E  57                push di
0000547F  E8C001            call word 0x5642
00005482  5B                pop bx
00005483  E9275A            jmp word 0xaead
00005486  55                push bp
00005487  89E5              mov bp,sp
00005489  837E0400          cmp word [bp+0x4],byte +0x0
0000548D  741C              jz 0x54ab
0000548F  837E040A          cmp word [bp+0x4],byte +0xa
00005493  7508              jnz 0x549d
00005495  B80D00            mov ax,0xd
00005498  50                push ax
00005499  E8EAFF            call word 0x5486
0000549C  5B                pop bx
0000549D  FF7604            push word [bp+0x4]
000054A0  B89023            mov ax,0x2390
000054A3  50                push ax
000054A4  E8BFF4            call word 0x4966
000054A7  5B                pop bx
000054A8  5B                pop bx
000054A9  EB08              jmp short 0x54b3
000054AB  B89023            mov ax,0x2390
000054AE  50                push ax
000054AF  E8F2F6            call word 0x4ba4
000054B2  5B                pop bx
000054B3  E9F959            jmp word 0xaeaf
000054B6  55                push bp
000054B7  89E5              mov bp,sp
000054B9  E84700            call word 0x5503
000054BC  31C0              xor ax,ax
000054BE  833E842300        cmp word [0x2384],byte +0x0
000054C3  7501              jnz 0x54c6
000054C5  40                inc ax
000054C6  A38423            mov [0x2384],ax
000054C9  09C0              or ax,ax
000054CB  7405              jz 0x54d2
000054CD  B88C0D            mov ax,0xd8c
000054D0  EB03              jmp short 0x54d5
000054D2  B8860D            mov ax,0xd86
000054D5  50                push ax
000054D6  B8920D            mov ax,0xd92
000054D9  50                push ax
000054DA  E8574F            call word 0xa434
000054DD  5B                pop bx
000054DE  5B                pop bx
000054DF  E9CD59            jmp word 0xaeaf
000054E2  55                push bp
000054E3  89E5              mov bp,sp
000054E5  E81B00            call word 0x5503
000054E8  C70684230100      mov word [0x2384],0x1
000054EE  31C0              xor ax,ax
000054F0  50                push ax
000054F1  E88400            call word 0x5578
000054F4  5B                pop bx
000054F5  BA0007            mov dx,0x700
000054F8  8916A223          mov [0x23a2],dx
000054FC  8916A023          mov [0x23a0],dx
00005500  E9AC59            jmp word 0xaeaf
00005503  55                push bp
00005504  89E5              mov bp,sp
00005506  50                push ax
00005507  56                push si
00005508  57                push di
00005509  C746FE0000        mov word [bp-0x2],0x0
0000550E  8B16D40C          mov dx,[0xcd4]
00005512  3956FE            cmp [bp-0x2],dx
00005515  7D56              jnl 0x556d
00005517  B8C200            mov ax,0xc2
0000551A  F766FE            mul word [bp-0x2]
0000551D  059023            add ax,0x2390
00005520  89C6              mov si,ax
00005522  8B5408            mov dx,[si+0x8]
00005525  39540C            cmp [si+0xc],dx
00005528  7639              jna 0x5563
0000552A  8B161861          mov dx,[0x6118]
0000552E  2B168E23          sub dx,[0x238e]
00005532  89D7              mov di,dx
00005534  8B540C            mov dx,[si+0xc]
00005537  2B5408            sub dx,[si+0x8]
0000553A  39FA              cmp dx,di
0000553C  7308              jnc 0x5546
0000553E  8B540C            mov dx,[si+0xc]
00005541  2B5408            sub dx,[si+0x8]
00005544  89D7              mov di,dx
00005546  8B540C            mov dx,[si+0xc]
00005549  29FA              sub dx,di
0000554B  FF368E23          push word [0x238e]
0000554F  52                push dx
00005550  FF740C            push word [si+0xc]
00005553  E807B6            call word 0xb5d
00005556  83C406            add sp,byte +0x6
00005559  8B540C            mov dx,[si+0xc]
0000555C  29FA              sub dx,di
0000555E  89540C            mov [si+0xc],dx
00005561  EBBF              jmp short 0x5522
00005563  56                push si
00005564  E83DF6            call word 0x4ba4
00005567  5B                pop bx
00005568  FF46FE            inc word [bp-0x2]
0000556B  EBA1              jmp short 0x550e
0000556D  FF36606F          push word [0x6f60]
00005571  E80400            call word 0x5578
00005574  5B                pop bx
00005575  E93559            jmp word 0xaead
00005578  55                push bp
00005579  89E5              mov bp,sp
0000557B  56                push si
0000557C  8B7604            mov si,[bp+0x4]
0000557F  09F6              or si,si
00005581  7C35              jl 0x55b8
00005583  3936D40C          cmp [0xcd4],si
00005587  7E2F              jng 0x55b8
00005589  8936606F          mov [0x6f60],si
0000558D  B8C200            mov ax,0xc2
00005590  F7E6              mul si
00005592  89C3              mov bx,ax
00005594  81C39023          add bx,0x2390
00005598  891E1425          mov [0x2514],bx
0000559C  FF770C            push word [bx+0xc]
0000559F  B80C00            mov ax,0xc
000055A2  50                push ax
000055A3  E810FC            call word 0x51b6
000055A6  5B                pop bx
000055A7  5B                pop bx
000055A8  8B1E1425          mov bx,[0x2514]
000055AC  FF770E            push word [bx+0xe]
000055AF  B80E00            mov ax,0xe
000055B2  50                push ax
000055B3  E800FC            call word 0x51b6
000055B6  5B                pop bx
000055B7  5B                pop bx
000055B8  E9F358            jmp word 0xaeae
000055BB  55                push bp
000055BC  89E5              mov bp,sp
000055BE  813E8023D403      cmp word [0x2380],0x3d4
000055C4  7505              jnz 0x55cb
000055C6  B80E00            mov ax,0xe
000055C9  EB03              jmp short 0x55ce
000055CB  B80A00            mov ax,0xa
000055CE  A2E50D            mov [0xde5],al
000055D1  833E824600        cmp word [0x4682],byte +0x0
000055D6  7505              jnz 0x55dd
000055D8  B8E7FF            mov ax,0xffe7
000055DB  EB32              jmp short 0x560f
000055DD  E8D054            call word 0xaab0
000055E0  B8AE0D            mov ax,0xdae
000055E3  50                push ax
000055E4  E82B00            call word 0x5612
000055E7  5B                pop bx
000055E8  31C0              xor ax,ax
000055EA  50                push ax
000055EB  B80020            mov ax,0x2000
000055EE  50                push ax
000055EF  B80A00            mov ax,0xa
000055F2  50                push ax
000055F3  31C0              xor ax,ax
000055F5  50                push ax
000055F6  FF7606            push word [bp+0x6]
000055F9  FF7604            push word [bp+0x4]
000055FC  E886B4            call word 0xa85
000055FF  83C40C            add sp,byte +0xc
00005602  B8CA0D            mov ax,0xdca
00005605  50                push ax
00005606  E80900            call word 0x5612
00005609  5B                pop bx
0000560A  E8A554            call word 0xaab2
0000560D  31C0              xor ax,ax
0000560F  E99D58            jmp word 0xaeaf
00005612  55                push bp
00005613  89E5              mov bp,sp
00005615  56                push si
00005616  57                push di
00005617  8B7604            mov si,[bp+0x4]
0000561A  BF0700            mov di,0x7
0000561D  31C0              xor ax,ax
0000561F  8A4402            mov al,[si+0x2]
00005622  50                push ax
00005623  FF34              push word [si]
00005625  E88C54            call word 0xaab4
00005628  5B                pop bx
00005629  5B                pop bx
0000562A  8B14              mov dx,[si]
0000562C  42                inc dx
0000562D  31C0              xor ax,ax
0000562F  8A4403            mov al,[si+0x3]
00005632  50                push ax
00005633  52                push dx
00005634  E87D54            call word 0xaab4
00005637  5B                pop bx
00005638  5B                pop bx
00005639  83C604            add si,byte +0x4
0000563C  4F                dec di
0000563D  7FDE              jg 0x561d
0000563F  E96B58            jmp word 0xaead
00005642  55                push bp
00005643  89E5              mov bp,sp
00005645  56                push si
00005646  8B7604            mov si,[bp+0x4]
00005649  8B168C23          mov dx,[0x238c]
0000564D  895464            mov [si+0x64],dx
00005650  8B168A23          mov dx,[0x238a]
00005654  895466            mov [si+0x66],dx
00005657  B90300            mov cx,0x3
0000565A  8B168A23          mov dx,[0x238a]
0000565E  D3E2              shl dx,cl
00005660  895468            mov [si+0x68],dx
00005663  A18C23            mov ax,[0x238c]
00005666  F7268823          mul word [0x2388]
0000566A  89446A            mov [si+0x6a],ax
0000566D  E93E58            jmp word 0xaeae
00005670  55                push bp
00005671  89E5              mov bp,sp
00005673  56                push si
00005674  E83954            call word 0xaab0
00005677  833E424600        cmp word [0x4642],byte +0x0
0000567C  7503              jnz 0x5681
0000567E  E9CD00            jmp word 0x574e
00005681  833E724600        cmp word [0x4672],byte +0x0
00005686  7405              jz 0x568d
00005688  B81900            mov ax,0x19
0000568B  EB03              jmp short 0x5690
0000568D  B81100            mov ax,0x11
00005690  50                push ax
00005691  B82000            mov ax,0x20
00005694  50                push ax
00005695  E81C54            call word 0xaab4
00005698  5B                pop bx
00005699  5B                pop bx
0000569A  837E0400          cmp word [bp+0x4],byte +0x0
0000569E  7405              jz 0x56a5
000056A0  B85000            mov ax,0x50
000056A3  EB03              jmp short 0x56a8
000056A5  B80800            mov ax,0x8
000056A8  50                push ax
000056A9  B82100            mov ax,0x21
000056AC  50                push ax
000056AD  E80454            call word 0xaab4
000056B0  5B                pop bx
000056B1  5B                pop bx
000056B2  B80400            mov ax,0x4
000056B5  50                push ax
000056B6  B82100            mov ax,0x21
000056B9  50                push ax
000056BA  E8F753            call word 0xaab4
000056BD  5B                pop bx
000056BE  5B                pop bx
000056BF  B80100            mov ax,0x1
000056C2  50                push ax
000056C3  B82100            mov ax,0x21
000056C6  50                push ax
000056C7  E8EA53            call word 0xaab4
000056CA  5B                pop bx
000056CB  5B                pop bx
000056CC  B8FBFF            mov ax,0xfffb
000056CF  50                push ax
000056D0  B82100            mov ax,0x21
000056D3  50                push ax
000056D4  E8DD53            call word 0xaab4
000056D7  5B                pop bx
000056D8  5B                pop bx
000056D9  833E724600        cmp word [0x4672],byte +0x0
000056DE  7405              jz 0x56e5
000056E0  B81900            mov ax,0x19
000056E3  EB03              jmp short 0x56e8
000056E5  B81100            mov ax,0x11
000056E8  50                push ax
000056E9  B8A000            mov ax,0xa0
000056EC  50                push ax
000056ED  E8C453            call word 0xaab4
000056F0  5B                pop bx
000056F1  5B                pop bx
000056F2  837E0400          cmp word [bp+0x4],byte +0x0
000056F6  7405              jz 0x56fd
000056F8  B87000            mov ax,0x70
000056FB  EB03              jmp short 0x5700
000056FD  B87000            mov ax,0x70
00005700  50                push ax
00005701  B8A100            mov ax,0xa1
00005704  50                push ax
00005705  E8AC53            call word 0xaab4
00005708  5B                pop bx
00005709  5B                pop bx
0000570A  B80200            mov ax,0x2
0000570D  50                push ax
0000570E  B8A100            mov ax,0xa1
00005711  50                push ax
00005712  E89F53            call word 0xaab4
00005715  5B                pop bx
00005716  5B                pop bx
00005717  B80100            mov ax,0x1
0000571A  50                push ax
0000571B  B8A100            mov ax,0xa1
0000571E  50                push ax
0000571F  E89253            call word 0xaab4
00005722  5B                pop bx
00005723  5B                pop bx
00005724  B8FFFF            mov ax,0xffff
00005727  50                push ax
00005728  B8A100            mov ax,0xa1
0000572B  50                push ax
0000572C  E88553            call word 0xaab4
0000572F  5B                pop bx
00005730  5B                pop bx
00005731  31C0              xor ax,ax
00005733  50                push ax
00005734  B82000            mov ax,0x20
00005737  50                push ax
00005738  31C0              xor ax,ax
0000573A  50                push ax
0000573B  B84001            mov ax,0x140
0000573E  50                push ax
0000573F  31C0              xor ax,ax
00005741  50                push ax
00005742  B82000            mov ax,0x20
00005745  50                push ax
00005746  E83CB3            call word 0xa85
00005749  83C40C            add sp,byte +0xc
0000574C  EB25              jmp short 0x5773
0000574E  31F6              xor si,si
00005750  83FE08            cmp si,byte +0x8
00005753  7D11              jnl 0x5766
00005755  89F3              mov bx,si
00005757  D1E3              shl bx,1
00005759  FFB7E60D          push word [bx+0xde6]
0000575D  56                push si
0000575E  E8CB00            call word 0x582c
00005761  5B                pop bx
00005762  5B                pop bx
00005763  46                inc si
00005764  EBEA              jmp short 0x5750
00005766  B8C001            mov ax,0x1c0
00005769  50                push ax
0000576A  B82000            mov ax,0x20
0000576D  50                push ax
0000576E  E8BB00            call word 0x582c
00005771  5B                pop bx
00005772  5B                pop bx
00005773  E93857            jmp word 0xaeae
00005776  55                push bp
00005777  89E5              mov bp,sp
00005779  50                push ax
0000577A  56                push si
0000577B  57                push di
0000577C  8B7E04            mov di,[bp+0x4]
0000577F  837E0610          cmp word [bp+0x6],byte +0x10
00005783  720C              jc 0x5791
00005785  FF7606            push word [bp+0x6]
00005788  B8300E            mov ax,0xe30
0000578B  50                push ax
0000578C  E8FDB7            call word 0xf8c
0000578F  5B                pop bx
00005790  5B                pop bx
00005791  8B5E06            mov bx,[bp+0x6]
00005794  D1E3              shl bx,1
00005796  8DB7FC45          lea si,[bx+0x45fc]
0000579A  C746FE0100        mov word [bp-0x2],0x1
0000579F  833C00            cmp word [si],byte +0x0
000057A2  740B              jz 0x57af
000057A4  393C              cmp [si],di
000057A6  743D              jz 0x57e5
000057A8  8B34              mov si,[si]
000057AA  D166FE            shl word [bp-0x2],1
000057AD  EBF0              jmp short 0x579f
000057AF  837EFE00          cmp word [bp-0x2],byte +0x0
000057B3  750C              jnz 0x57c1
000057B5  FF7606            push word [bp+0x6]
000057B8  B8160E            mov ax,0xe16
000057BB  50                push ax
000057BC  E8CDB7            call word 0xf8c
000057BF  5B                pop bx
000057C0  5B                pop bx
000057C1  C7050000          mov word [di],0x0
000057C5  8B5608            mov dx,[bp+0x8]
000057C8  895502            mov [di+0x2],dx
000057CB  8B5606            mov dx,[bp+0x6]
000057CE  895504            mov [di+0x4],dx
000057D1  8B56FE            mov dx,[bp-0x2]
000057D4  895506            mov [di+0x6],dx
000057D7  893C              mov [si],di
000057D9  8B4E06            mov cx,[bp+0x6]
000057DC  BA0100            mov dx,0x1
000057DF  D3E2              shl dx,cl
000057E1  09162061          or [0x6120],dx
000057E5  E9C556            jmp word 0xaead
000057E8  55                push bp
000057E9  89E5              mov bp,sp
000057EB  56                push si
000057EC  57                push di
000057ED  8B7E04            mov di,[bp+0x4]
000057F0  09FF              or di,di
000057F2  7435              jz 0x5829
000057F4  8B5D04            mov bx,[di+0x4]
000057F7  D1E3              shl bx,1
000057F9  81C31C46          add bx,0x461c
000057FD  89DE              mov si,bx
000057FF  8B5506            mov dx,[di+0x6]
00005802  0B17              or dx,[bx]
00005804  8914              mov [si],dx
00005806  8B5D02            mov bx,[di+0x2]
00005809  57                push di
0000580A  FFD3              call bx
0000580C  5B                pop bx
0000580D  09C0              or ax,ax
0000580F  7414              jz 0x5825
00005811  8B5D04            mov bx,[di+0x4]
00005814  D1E3              shl bx,1
00005816  81C31C46          add bx,0x461c
0000581A  89DE              mov si,bx
0000581C  8B5506            mov dx,[di+0x6]
0000581F  F7D2              not dx
00005821  2317              and dx,[bx]
00005823  8914              mov [si],dx
00005825  8B3D              mov di,[di]
00005827  EBC7              jmp short 0x57f0
00005829  E98156            jmp word 0xaead
0000582C  55                push bp
0000582D  89E5              mov bp,sp
0000582F  50                push ax
00005830  50                push ax
00005831  8B5606            mov dx,[bp+0x6]
00005834  8956FC            mov [bp-0x4],dx
00005837  B90400            mov cx,0x4
0000583A  8B167446          mov dx,[0x4674]
0000583E  8B1E7646          mov bx,[0x4676]
00005842  E306              jcxz 0x584a
00005844  D1EB              shr bx,1
00005846  D1DA              rcr dx,1
00005848  E2FA              loop 0x5844
0000584A  8956FE            mov [bp-0x2],dx
0000584D  8B4604            mov ax,[bp+0x4]
00005850  99                cwd
00005851  D1E0              shl ax,1
00005853  D1D2              rcl dx,1
00005855  D1E0              shl ax,1
00005857  D1D2              rcl dx,1
00005859  8D5EFC            lea bx,[bp-0x4]
0000585C  31C9              xor cx,cx
0000585E  031E8446          add bx,[0x4684]
00005862  130E8646          adc cx,[0x4686]
00005866  FF36500E          push word [0xe50]
0000586A  FF36520E          push word [0xe52]
0000586E  52                push dx
0000586F  50                push ax
00005870  51                push cx
00005871  53                push bx
00005872  E810B2            call word 0xa85
00005875  83C40C            add sp,byte +0xc
00005878  E93456            jmp word 0xaeaf
0000587B  55                push bp
0000587C  89E5              mov bp,sp
0000587E  83EC0A            sub sp,byte +0xa
00005881  56                push si
00005882  57                push di
00005883  31FF              xor di,di
00005885  B8B20E            mov ax,0xeb2
00005888  50                push ax
00005889  E8A84B            call word 0xa434
0000588C  5B                pop bx
0000588D  8B36540E          mov si,[0xe54]
00005891  81FEEE60          cmp si,0x60ee
00005895  7203              jc 0x589a
00005897  E93101            jmp word 0x59cb
0000589A  837C6000          cmp word [si+0x60],byte +0x0
0000589E  7503              jnz 0x58a3
000058A0  E92101            jmp word 0x59c4
000058A3  47                inc di
000058A4  83FF14            cmp di,byte +0x14
000058A7  7E03              jng 0x58ac
000058A9  E91F01            jmp word 0x59cb
000058AC  8B544E            mov dx,[si+0x4e]
000058AF  8956FA            mov [bp-0x6],dx
000058B2  8B5454            mov dx,[si+0x54]
000058B5  8956F8            mov [bp-0x8],dx
000058B8  8B545C            mov dx,[si+0x5c]
000058BB  03545A            add dx,[si+0x5a]
000058BE  2B56F8            sub dx,[bp-0x8]
000058C1  035450            add dx,[si+0x50]
000058C4  8956F6            mov [bp-0xa],dx
000058C7  837C5E00          cmp word [si+0x5e],byte +0x0
000058CB  750E              jnz 0x58db
000058CD  FF7444            push word [si+0x44]
000058D0  B8AC0E            mov ax,0xeac
000058D3  50                push ax
000058D4  E85D4B            call word 0xa434
000058D7  5B                pop bx
000058D8  5B                pop bx
000058D9  EB0C              jmp short 0x58e7
000058DB  FF745E            push word [si+0x5e]
000058DE  B8A80E            mov ax,0xea8
000058E1  50                push ax
000058E2  E84F4B            call word 0xa434
000058E5  5B                pop bx
000058E6  5B                pop bx
000058E7  B90A00            mov cx,0xa
000058EA  8B56F6            mov dx,[bp-0xa]
000058ED  31DB              xor bx,bx
000058EF  E306              jcxz 0x58f7
000058F1  D1E2              shl dx,1
000058F3  D1D3              rcl bx,1
000058F5  E2FA              loop 0x58f1
000058F7  81C20002          add dx,0x200
000058FB  83D300            adc bx,byte +0x0
000058FE  53                push bx
000058FF  52                push dx
00005900  31C0              xor ax,ax
00005902  50                push ax
00005903  B80004            mov ax,0x400
00005906  50                push ax
00005907  E80B55            call word 0xae15
0000590A  B90A00            mov cx,0xa
0000590D  8B56F8            mov dx,[bp-0x8]
00005910  31DB              xor bx,bx
00005912  E306              jcxz 0x591a
00005914  D1E2              shl dx,1
00005916  D1D3              rcl bx,1
00005918  E2FA              loop 0x5914
0000591A  81C20002          add dx,0x200
0000591E  83D300            adc bx,byte +0x0
00005921  50                push ax
00005922  53                push bx
00005923  52                push dx
00005924  31C0              xor ax,ax
00005926  50                push ax
00005927  B80004            mov ax,0x400
0000592A  50                push ax
0000592B  E8E754            call word 0xae15
0000592E  B90A00            mov cx,0xa
00005931  8B56FA            mov dx,[bp-0x6]
00005934  31DB              xor bx,bx
00005936  E306              jcxz 0x593e
00005938  D1E2              shl dx,1
0000593A  D1D3              rcl bx,1
0000593C  E2FA              loop 0x5938
0000593E  81C20002          add dx,0x200
00005942  83D300            adc bx,byte +0x0
00005945  50                push ax
00005946  53                push bx
00005947  52                push dx
00005948  31C0              xor ax,ax
0000594A  50                push ax
0000594B  B80004            mov ax,0x400
0000594E  50                push ax
0000594F  E8C354            call word 0xae15
00005952  50                push ax
00005953  FF7468            push word [si+0x68]
00005956  FF7466            push word [si+0x66]
00005959  FF7464            push word [si+0x64]
0000595C  FF7462            push word [si+0x62]
0000595F  FF744A            push word [si+0x4a]
00005962  31C0              xor ax,ax
00005964  50                push ax
00005965  FF741C            push word [si+0x1c]
00005968  50                push ax
00005969  FF7416            push word [si+0x16]
0000596C  B87E0E            mov ax,0xe7e
0000596F  50                push ax
00005970  E8C14A            call word 0xa434
00005973  83C41A            add sp,byte +0x1a
00005976  F6444A04          test byte [si+0x4a],0x4
0000597A  7413              jz 0x598f
0000597C  FF747A            push word [si+0x7a]
0000597F  E80801            call word 0x5a8a
00005982  5B                pop bx
00005983  50                push ax
00005984  B8760E            mov ax,0xe76
00005987  50                push ax
00005988  E8A94A            call word 0xa434
0000598B  5B                pop bx
0000598C  5B                pop bx
0000598D  EB27              jmp short 0x59b6
0000598F  F6444A02          test byte [si+0x4a],0x2
00005993  7413              jz 0x59a8
00005995  FF747C            push word [si+0x7c]
00005998  E8EF00            call word 0x5a8a
0000599B  5B                pop bx
0000599C  50                push ax
0000599D  B86C0E            mov ax,0xe6c
000059A0  50                push ax
000059A1  E8904A            call word 0xa434
000059A4  5B                pop bx
000059A5  5B                pop bx
000059A6  EB0E              jmp short 0x59b6
000059A8  837C4A00          cmp word [si+0x4a],byte +0x0
000059AC  7508              jnz 0x59b6
000059AE  B8640E            mov ax,0xe64
000059B1  50                push ax
000059B2  E87F4A            call word 0xa434
000059B5  5B                pop bx
000059B6  8D848600          lea ax,[si+0x86]
000059BA  50                push ax
000059BB  B8600E            mov ax,0xe60
000059BE  50                push ax
000059BF  E8724A            call word 0xa434
000059C2  5B                pop bx
000059C3  5B                pop bx
000059C4  81C69600          add si,0x96
000059C8  E9C6FE            jmp word 0x5891
000059CB  81FEEE60          cmp si,0x60ee
000059CF  7505              jnz 0x59d6
000059D1  BE5248            mov si,0x4852
000059D4  EB08              jmp short 0x59de
000059D6  B8560E            mov ax,0xe56
000059D9  50                push ax
000059DA  E8574A            call word 0xa434
000059DD  5B                pop bx
000059DE  8936540E          mov [0xe54],si
000059E2  E9C854            jmp word 0xaead
000059E5  55                push bp
000059E6  89E5              mov bp,sp
000059E8  83EC06            sub sp,byte +0x6
000059EB  56                push si
000059EC  57                push di
000059ED  31FF              xor di,di
000059EF  B8440F            mov ax,0xf44
000059F2  50                push ax
000059F3  E83E4A            call word 0xa434
000059F6  5B                pop bx
000059F7  8B36FE0E          mov si,[0xefe]
000059FB  81FEEE60          cmp si,0x60ee
000059FF  736F              jnc 0x5a70
00005A01  837C6000          cmp word [si+0x60],byte +0x0
00005A05  7463              jz 0x5a6a
00005A07  47                inc di
00005A08  83FF14            cmp di,byte +0x14
00005A0B  7F63              jg 0x5a70
00005A0D  8B545C            mov dx,[si+0x5c]
00005A10  03545A            add dx,[si+0x5a]
00005A13  2B5454            sub dx,[si+0x54]
00005A16  035450            add dx,[si+0x50]
00005A19  8956FA            mov [bp-0x6],dx
00005A1C  B90A00            mov cx,0xa
00005A1F  31DB              xor bx,bx
00005A21  E306              jcxz 0x5a29
00005A23  D1E2              shl dx,1
00005A25  D1D3              rcl bx,1
00005A27  E2FA              loop 0x5a23
00005A29  81C20002          add dx,0x200
00005A2D  83D300            adc bx,byte +0x0
00005A30  53                push bx
00005A31  52                push dx
00005A32  31C0              xor ax,ax
00005A34  50                push ax
00005A35  B80004            mov ax,0x400
00005A38  50                push ax
00005A39  E8D953            call word 0xae15
00005A3C  50                push ax
00005A3D  FF745C            push word [si+0x5c]
00005A40  FF745A            push word [si+0x5a]
00005A43  FF7458            push word [si+0x58]
00005A46  FF7456            push word [si+0x56]
00005A49  FF7454            push word [si+0x54]
00005A4C  FF7452            push word [si+0x52]
00005A4F  FF7450            push word [si+0x50]
00005A52  FF744E            push word [si+0x4e]
00005A55  FF744C            push word [si+0x4c]
00005A58  8D848600          lea ax,[si+0x86]
00005A5C  50                push ax
00005A5D  FF7444            push word [si+0x44]
00005A60  B80A0F            mov ax,0xf0a
00005A63  50                push ax
00005A64  E8CD49            call word 0xa434
00005A67  83C41A            add sp,byte +0x1a
00005A6A  81C69600          add si,0x96
00005A6E  EB8B              jmp short 0x59fb
00005A70  81FEEE60          cmp si,0x60ee
00005A74  7505              jnz 0x5a7b
00005A76  BE984D            mov si,0x4d98
00005A79  EB08              jmp short 0x5a83
00005A7B  B8000F            mov ax,0xf00
00005A7E  50                push ax
00005A7F  E8B249            call word 0xa434
00005A82  5B                pop bx
00005A83  8936FE0E          mov [0xefe],si
00005A87  E92354            jmp word 0xaead
00005A8A  55                push bp
00005A8B  89E5              mov bp,sp
00005A8D  817E04CE7A        cmp word [bp+0x4],0x7ace
00005A92  7505              jnz 0x5a99
00005A94  B88A0F            mov ax,0xf8a
00005A97  EB0D              jmp short 0x5aa6
00005A99  8B5E04            mov bx,[bp+0x4]
00005A9C  D1E3              shl bx,1
00005A9E  8B9F766F          mov bx,[bx+0x6f76]
00005AA2  8D878600          lea ax,[bx+0x86]
00005AA6  E90654            jmp word 0xaeaf
00005AA9  55                push bp
00005AAA  89E5              mov bp,sp
00005AAC  83EC14            sub sp,byte +0x14
00005AAF  56                push si
00005AB0  57                push di
00005AB1  C70646610000      mov word [0x6146],0x0
00005AB7  31F6              xor si,si
00005AB9  83FE08            cmp si,byte +0x8
00005ABC  7C03              jl 0x5ac1
00005ABE  E90801            jmp word 0x5bc9
00005AC1  89F3              mov bx,si
00005AC3  D1E3              shl bx,1
00005AC5  D1E3              shl bx,1
00005AC7  8DBF2661          lea di,[bx+0x6126]
00005ACB  31C0              xor ax,ax
00005ACD  8946F8            mov [bp-0x8],ax
00005AD0  8946FA            mov [bp-0x6],ax
00005AD3  8946FC            mov [bp-0x4],ax
00005AD6  8946FE            mov [bp-0x2],ax
00005AD9  31DB              xor bx,bx
00005ADB  89F2              mov dx,si
00005ADD  D1E2              shl dx,1
00005ADF  B8FF7F            mov ax,0x7fff
00005AE2  50                push ax
00005AE3  B8FFFF            mov ax,0xffff
00005AE6  50                push ax
00005AE7  53                push bx
00005AE8  53                push bx
00005AE9  8D46FC            lea ax,[bp-0x4]
00005AEC  50                push ax
00005AED  52                push dx
00005AEE  B8960F            mov ax,0xf96
00005AF1  50                push ax
00005AF2  B88E0F            mov ax,0xf8e
00005AF5  50                push ax
00005AF6  E8D300            call word 0x5bcc
00005AF9  83C410            add sp,byte +0x10
00005AFC  31C0              xor ax,ax
00005AFE  89F2              mov dx,si
00005B00  D1E2              shl dx,1
00005B02  42                inc dx
00005B03  BBFF7F            mov bx,0x7fff
00005B06  53                push bx
00005B07  BBFFFF            mov bx,0xffff
00005B0A  53                push bx
00005B0B  50                push ax
00005B0C  50                push ax
00005B0D  8D46F8            lea ax,[bp-0x8]
00005B10  50                push ax
00005B11  52                push dx
00005B12  B8960F            mov ax,0xf96
00005B15  50                push ax
00005B16  B88E0F            mov ax,0xf8e
00005B19  50                push ax
00005B1A  E8AF00            call word 0x5bcc
00005B1D  83C410            add sp,byte +0x10
00005B20  8B56FC            mov dx,[bp-0x4]
00005B23  8B4EFE            mov cx,[bp-0x2]
00005B26  0356F8            add dx,[bp-0x8]
00005B29  134EFA            adc cx,[bp-0x6]
00005B2C  8956F4            mov [bp-0xc],dx
00005B2F  894EF6            mov [bp-0xa],cx
00005B32  833E424600        cmp word [0x4642],byte +0x0
00005B37  740A              jz 0x5b43
00005B39  B8FF03            mov ax,0x3ff
00005B3C  50                push ax
00005B3D  B800C0            mov ax,0xc000
00005B40  50                push ax
00005B41  EB07              jmp short 0x5b4a
00005B43  B81000            mov ax,0x10
00005B46  50                push ax
00005B47  31C0              xor ax,ax
00005B49  50                push ax
00005B4A  8F46EC            pop word [bp-0x14]
00005B4D  8F46EE            pop word [bp-0x12]
00005B50  8B56EC            mov dx,[bp-0x14]
00005B53  8B4EEE            mov cx,[bp-0x12]
00005B56  394EF6            cmp [bp-0xa],cx
00005B59  720D              jc 0x5b68
00005B5B  7505              jnz 0x5b62
00005B5D  3956F4            cmp [bp-0xc],dx
00005B60  7606              jna 0x5b68
00005B62  8956F4            mov [bp-0xc],dx
00005B65  894EF6            mov [bp-0xa],cx
00005B68  8B56FC            mov dx,[bp-0x4]
00005B6B  8B4EFE            mov cx,[bp-0x2]
00005B6E  81C2FF03          add dx,0x3ff
00005B72  83D100            adc cx,byte +0x0
00005B75  81E200FC          and dx,0xfc00
00005B79  8956FC            mov [bp-0x4],dx
00005B7C  894EFE            mov [bp-0x2],cx
00005B7F  8166F400FC        and word [bp-0xc],0xfc00
00005B84  8166F6FFFF        and word [bp-0xa],0xffff
00005B89  394EF6            cmp [bp-0xa],cx
00005B8C  7C37              jl 0x5bc5
00005B8E  7505              jnz 0x5b95
00005B90  3956F4            cmp [bp-0xc],dx
00005B93  7630              jna 0x5bc5
00005B95  B90A00            mov cx,0xa
00005B98  8B5EFE            mov bx,[bp-0x2]
00005B9B  E306              jcxz 0x5ba3
00005B9D  D1FB              sar bx,1
00005B9F  D1DA              rcr dx,1
00005BA1  E2FA              loop 0x5b9d
00005BA3  8915              mov [di],dx
00005BA5  8B56F4            mov dx,[bp-0xc]
00005BA8  8B4EF6            mov cx,[bp-0xa]
00005BAB  2B56FC            sub dx,[bp-0x4]
00005BAE  1B4EFE            sbb cx,[bp-0x2]
00005BB1  51                push cx
00005BB2  B90A00            mov cx,0xa
00005BB5  5B                pop bx
00005BB6  E306              jcxz 0x5bbe
00005BB8  D1FB              sar bx,1
00005BBA  D1DA              rcr dx,1
00005BBC  E2FA              loop 0x5bb8
00005BBE  895502            mov [di+0x2],dx
00005BC1  01164661          add [0x6146],dx
00005BC5  46                inc si
00005BC6  E9F0FE            jmp word 0x5ab9
00005BC9  E9E152            jmp word 0xaead
00005BCC  55                push bp
00005BCD  89E5              mov bp,sp
00005BCF  83EC0E            sub sp,byte +0xe
00005BD2  56                push si
00005BD3  57                push di
00005BD4  8B7E06            mov di,[bp+0x6]
00005BD7  C746F60000        mov word [bp-0xa],0x0
00005BDC  FF7604            push word [bp+0x4]
00005BDF  E88DA8            call word 0x46f
00005BE2  5B                pop bx
00005BE3  89C6              mov si,ax
00005BE5  09C0              or ax,ax
00005BE7  7506              jnz 0x5bef
00005BE9  31C0              xor ax,ax
00005BEB  50                push ax
00005BEC  E92F01            jmp word 0x5d1e
00005BEF  B8BE0F            mov ax,0xfbe
00005BF2  50                push ax
00005BF3  56                push si
00005BF4  E8A44F            call word 0xab9b
00005BF7  5B                pop bx
00005BF8  5B                pop bx
00005BF9  09C0              or ax,ax
00005BFB  7507              jnz 0x5c04
00005BFD  B80100            mov ax,0x1
00005C00  50                push ax
00005C01  E91A01            jmp word 0x5d1e
00005C04  B8BA0F            mov ax,0xfba
00005C07  50                push ax
00005C08  56                push si
00005C09  E88F4F            call word 0xab9b
00005C0C  5B                pop bx
00005C0D  5B                pop bx
00005C0E  09C0              or ax,ax
00005C10  7507              jnz 0x5c19
00005C12  B80200            mov ax,0x2
00005C15  50                push ax
00005C16  E90501            jmp word 0x5d1e
00005C19  C746F20200        mov word [bp-0xe],0x2
00005C1E  803C20            cmp byte [si],0x20
00005C21  7503              jnz 0x5c26
00005C23  46                inc si
00005C24  EBF8              jmp short 0x5c1e
00005C26  803C00            cmp byte [si],0x0
00005C29  7506              jnz 0x5c31
00005C2B  FF76F2            push word [bp-0xe]
00005C2E  E9ED00            jmp word 0x5d1e
00005C31  803D00            cmp byte [di],0x0
00005C34  7503              jnz 0x5c39
00005C36  E9DF00            jmp word 0x5d18
00005C39  8A04              mov al,[si]
00005C3B  98                cbw
00005C3C  50                push ax
00005C3D  B89C0F            mov ax,0xf9c
00005C40  50                push ax
00005C41  E8274F            call word 0xab6b
00005C44  5B                pop bx
00005C45  5B                pop bx
00005C46  09C0              or ax,ax
00005C48  7456              jz 0x5ca0
00005C4A  8A05              mov al,[di]
00005C4C  98                cbw
00005C4D  50                push ax
00005C4E  B89C0F            mov ax,0xf9c
00005C51  50                push ax
00005C52  E8164F            call word 0xab6b
00005C55  5B                pop bx
00005C56  5B                pop bx
00005C57  09C0              or ax,ax
00005C59  7403              jz 0x5c5e
00005C5B  FF46F6            inc word [bp-0xa]
00005C5E  8A05              mov al,[di]
00005C60  47                inc di
00005C61  98                cbw
00005C62  89C3              mov bx,ax
00005C64  8A04              mov al,[si]
00005C66  98                cbw
00005C67  39C3              cmp bx,ax
00005C69  7501              jnz 0x5c6c
00005C6B  46                inc si
00005C6C  8A05              mov al,[di]
00005C6E  98                cbw
00005C6F  3D2000            cmp ax,0x20
00005C72  7DAA              jnl 0x5c1e
00005C74  98                cbw
00005C75  F7D8              neg ax
00005C77  01F8              add ax,di
00005C79  89C7              mov di,ax
00005C7B  EBA1              jmp short 0x5c1e
00005C7D  C746F4FFFF        mov word [bp-0xc],0xffff
00005C82  EB25              jmp short 0x5ca9
00005C84  C746F40A00        mov word [bp-0xc],0xa
00005C89  EB1E              jmp short 0x5ca9
00005C8B  C746F40800        mov word [bp-0xc],0x8
00005C90  EB17              jmp short 0x5ca9
00005C92  C746F41000        mov word [bp-0xc],0x10
00005C97  EB10              jmp short 0x5ca9
00005C99  C746F40000        mov word [bp-0xc],0x0
00005C9E  EB09              jmp short 0x5ca9
00005CA0  8A05              mov al,[di]
00005CA2  98                cbw
00005CA3  BBA20F            mov bx,0xfa2
00005CA6  E9BF50            jmp word 0xad68
00005CA9  837EF400          cmp word [bp-0xc],byte +0x0
00005CAD  7D17              jnl 0x5cc6
00005CAF  8A04              mov al,[si]
00005CB1  98                cbw
00005CB2  50                push ax
00005CB3  B89C0F            mov ax,0xf9c
00005CB6  50                push ax
00005CB7  E8B14E            call word 0xab6b
00005CBA  5B                pop bx
00005CBB  5B                pop bx
00005CBC  09C0              or ax,ax
00005CBE  7403              jz 0x5cc3
00005CC0  E95BFF            jmp word 0x5c1e
00005CC3  46                inc si
00005CC4  EBE9              jmp short 0x5caf
00005CC6  FF76F4            push word [bp-0xc]
00005CC9  8D46FC            lea ax,[bp-0x4]
00005CCC  50                push ax
00005CCD  56                push si
00005CCE  E8884A            call word 0xa759
00005CD1  83C406            add sp,byte +0x6
00005CD4  8946F8            mov [bp-0x8],ax
00005CD7  8956FA            mov [bp-0x6],dx
00005CDA  3976FC            cmp [bp-0x4],si
00005CDD  7439              jz 0x5d18
00005CDF  8B76FC            mov si,[bp-0x4]
00005CE2  8B5608            mov dx,[bp+0x8]
00005CE5  3956F6            cmp [bp-0xa],dx
00005CE8  7403              jz 0x5ced
00005CEA  E931FF            jmp word 0x5c1e
00005CED  8B56FA            mov dx,[bp-0x6]
00005CF0  39560E            cmp [bp+0xe],dx
00005CF3  7F23              jg 0x5d18
00005CF5  7505              jnz 0x5cfc
00005CF7  39460C            cmp [bp+0xc],ax
00005CFA  771C              ja 0x5d18
00005CFC  395612            cmp [bp+0x12],dx
00005CFF  7C17              jl 0x5d18
00005D01  7505              jnz 0x5d08
00005D03  394610            cmp [bp+0x10],ax
00005D06  7210              jc 0x5d18
00005D08  8B5E0A            mov bx,[bp+0xa]
00005D0B  8907              mov [bx],ax
00005D0D  895702            mov [bx+0x2],dx
00005D10  C746F20300        mov word [bp-0xe],0x3
00005D15  E906FF            jmp word 0x5c1e
00005D18  FF7604            push word [bp+0x4]
00005D1B  E80400            call word 0x5d22
00005D1E  58                pop ax
00005D1F  E98B51            jmp word 0xaead
00005D22  55                push bp
00005D23  89E5              mov bp,sp
00005D25  FF7604            push word [bp+0x4]
00005D28  E844A7            call word 0x46f
00005D2B  5B                pop bx
00005D2C  50                push ax
00005D2D  FF7604            push word [bp+0x4]
00005D30  B8C40F            mov ax,0xfc4
00005D33  50                push ax
00005D34  E8FD46            call word 0xa434
00005D37  83C406            add sp,byte +0x6
00005D3A  B80080            mov ax,0x8000
00005D3D  50                push ax
00005D3E  B8C20F            mov ax,0xfc2
00005D41  50                push ax
00005D42  E847B2            call word 0xf8c
00005D45  5B                pop bx
00005D46  5B                pop bx
00005D47  E96551            jmp word 0xaeaf
00005D4A  55                push bp
00005D4B  89E5              mov bp,sp
00005D4D  56                push si
00005D4E  57                push di
00005D4F  FF7604            push word [bp+0x4]
00005D52  E81AA7            call word 0x46f
00005D55  5B                pop bx
00005D56  89C6              mov si,ax
00005D58  FF7606            push word [bp+0x6]
00005D5B  E8554E            call word 0xabb3
00005D5E  5B                pop bx
00005D5F  89C7              mov di,ax
00005D61  09F6              or si,si
00005D63  7429              jz 0x5d8e
00005D65  57                push di
00005D66  FF7606            push word [bp+0x6]
00005D69  56                push si
00005D6A  E84C4E            call word 0xabb9
00005D6D  83C406            add sp,byte +0x6
00005D70  09C0              or ax,ax
00005D72  751A              jnz 0x5d8e
00005D74  89F3              mov bx,si
00005D76  01FB              add bx,di
00005D78  8A07              mov al,[bx]
00005D7A  98                cbw
00005D7B  50                push ax
00005D7C  B89C0F            mov ax,0xf9c
00005D7F  50                push ax
00005D80  E8E84D            call word 0xab6b
00005D83  5B                pop bx
00005D84  5B                pop bx
00005D85  09C0              or ax,ax
00005D87  7405              jz 0x5d8e
00005D89  B80100            mov ax,0x1
00005D8C  EB02              jmp short 0x5d90
00005D8E  31C0              xor ax,ax
00005D90  E91A51            jmp word 0xaead
00005D93  55                push bp
00005D94  89E5              mov bp,sp
00005D96  83EC1E            sub sp,byte +0x1e
00005D99  56                push si
00005D9A  57                push di
00005D9B  8B7604            mov si,[bp+0x4]
00005D9E  E8C200            call word 0x5e63
00005DA1  8B1EF445          mov bx,[0x45f4]
00005DA5  837F7200          cmp word [bx+0x72],byte +0x0
00005DA9  7403              jz 0x5dae
00005DAB  E853CB            call word 0x2901
00005DAE  8D46E2            lea ax,[bp-0x1e]
00005DB1  50                push ax
00005DB2  B8CE7A            mov ax,0x7ace
00005DB5  50                push ax
00005DB6  E8214D            call word 0xaada
00005DB9  5B                pop bx
00005DBA  5B                pop bx
00005DBB  8B56E2            mov dx,[bp-0x1e]
00005DBE  8956FC            mov [bp-0x4],dx
00005DC1  8B56E8            mov dx,[bp-0x18]
00005DC4  8956FA            mov [bp-0x6],dx
00005DC7  837EFC01          cmp word [bp-0x4],byte +0x1
00005DCB  746B              jz 0x5e38
00005DCD  837EFC00          cmp word [bp-0x4],byte +0x0
00005DD1  7C65              jl 0x5e38
00005DD3  8B1C              mov bx,[si]
00005DD5  FF76FC            push word [bp-0x4]
00005DD8  FFD3              call bx
00005DDA  50                push ax
00005DDB  B8FE0F            mov ax,0xffe
00005DDE  50                push ax
00005DDF  E85246            call word 0xa434
00005DE2  83C406            add sp,byte +0x6
00005DE5  EBBA              jmp short 0x5da1
00005DE7  8B5C02            mov bx,[si+0x2]
00005DEA  8D46E2            lea ax,[bp-0x1e]
00005DED  50                push ax
00005DEE  56                push si
00005DEF  FFD3              call bx
00005DF1  5B                pop bx
00005DF2  5B                pop bx
00005DF3  89C7              mov di,ax
00005DF5  EB4A              jmp short 0x5e41
00005DF7  8B5C04            mov bx,[si+0x4]
00005DFA  8D46E2            lea ax,[bp-0x1e]
00005DFD  50                push ax
00005DFE  56                push si
00005DFF  FFD3              call bx
00005E01  5B                pop bx
00005E02  5B                pop bx
00005E03  89C7              mov di,ax
00005E05  EB3A              jmp short 0x5e41
00005E07  8B5C06            mov bx,[si+0x6]
00005E0A  8D46E2            lea ax,[bp-0x1e]
00005E0D  50                push ax
00005E0E  56                push si
00005E0F  FFD3              call bx
00005E11  5B                pop bx
00005E12  5B                pop bx
00005E13  89C7              mov di,ax
00005E15  EB2A              jmp short 0x5e41
00005E17  8D46E2            lea ax,[bp-0x1e]
00005E1A  50                push ax
00005E1B  56                push si
00005E1C  E88F00            call word 0x5eae
00005E1F  5B                pop bx
00005E20  5B                pop bx
00005E21  89C7              mov di,ax
00005E23  EB1C              jmp short 0x5e41
00005E25  8D46E2            lea ax,[bp-0x1e]
00005E28  50                push ax
00005E29  56                push si
00005E2A  E81C01            call word 0x5f49
00005E2D  5B                pop bx
00005E2E  5B                pop bx
00005E2F  89C7              mov di,ax
00005E31  EB0E              jmp short 0x5e41
00005E33  BFEAFF            mov di,0xffea
00005E36  EB09              jmp short 0x5e41
00005E38  BBE80F            mov bx,0xfe8
00005E3B  8B46E4            mov ax,[bp-0x1c]
00005E3E  E9034F            jmp word 0xad44
00005E41  8B5C0C            mov bx,[si+0xc]
00005E44  FFD3              call bx
00005E46  C746E44400        mov word [bp-0x1c],0x44
00005E4B  8B56FA            mov dx,[bp-0x6]
00005E4E  8956E6            mov [bp-0x1a],dx
00005E51  897EE8            mov [bp-0x18],di
00005E54  8D46E2            lea ax,[bp-0x1e]
00005E57  50                push ax
00005E58  FF76FC            push word [bp-0x4]
00005E5B  E8774C            call word 0xaad5
00005E5E  5B                pop bx
00005E5F  5B                pop bx
00005E60  E93EFF            jmp word 0x5da1
00005E63  55                push bp
00005E64  89E5              mov bp,sp
00005E66  56                push si
00005E67  C7069E742225      mov word [0x749e],0x2522
00005E6D  BA2225            mov dx,0x2522
00005E70  31C9              xor cx,cx
00005E72  03168446          add dx,[0x4684]
00005E76  130E8646          adc cx,[0x4686]
00005E7A  8916A074          mov [0x74a0],dx
00005E7E  890EA274          mov [0x74a2],cx
00005E82  8B16A274          mov dx,[0x74a2]
00005E86  81E20000          and dx,0x0
00005E8A  31D2              xor dx,dx
00005E8C  2B16A074          sub dx,[0x74a0]
00005E90  89D6              mov si,dx
00005E92  81FA0002          cmp dx,0x200
00005E96  7313              jnc 0x5eab
00005E98  89F2              mov dx,si
00005E9A  03169E74          add dx,[0x749e]
00005E9E  89169E74          mov [0x749e],dx
00005EA2  0136A074          add [0x74a0],si
00005EA6  8316A27400        adc word [0x74a2],byte +0x0
00005EAB  E90050            jmp word 0xaeae
00005EAE  55                push bp
00005EAF  89E5              mov bp,sp
00005EB1  83EC0C            sub sp,byte +0xc
00005EB4  56                push si
00005EB5  57                push di
00005EB6  8B7606            mov si,[bp+0x6]
00005EB9  837C0800          cmp word [si+0x8],byte +0x0
00005EBD  7D06              jnl 0x5ec5
00005EBF  B8EAFF            mov ax,0xffea
00005EC2  E98100            jmp word 0x5f46
00005EC5  FF7408            push word [si+0x8]
00005EC8  FF7412            push word [si+0x12]
00005ECB  FF7406            push word [si+0x6]
00005ECE  E882C6            call word 0x2553
00005ED1  83C406            add sp,byte +0x6
00005ED4  8946F4            mov [bp-0xc],ax
00005ED7  8956F6            mov [bp-0xa],dx
00005EDA  09C2              or dx,ax
00005EDC  7505              jnz 0x5ee3
00005EDE  B8F2FF            mov ax,0xfff2
00005EE1  EB63              jmp short 0x5f46
00005EE3  8B5E04            mov bx,[bp+0x4]
00005EE6  8B5F08            mov bx,[bx+0x8]
00005EE9  FF7404            push word [si+0x4]
00005EEC  FFD3              call bx
00005EEE  5B                pop bx
00005EEF  09C0              or ax,ax
00005EF1  7505              jnz 0x5ef8
00005EF3  B8FAFF            mov ax,0xfffa
00005EF6  EB4E              jmp short 0x5f46
00005EF8  837C0203          cmp word [si+0x2],byte +0x3
00005EFC  7505              jnz 0x5f03
00005EFE  B80900            mov ax,0x9
00005F01  EB03              jmp short 0x5f06
00005F03  B80800            mov ax,0x8
00005F06  8946F8            mov [bp-0x8],ax
00005F09  8B5412            mov dx,[si+0x12]
00005F0C  8956FC            mov [bp-0x4],dx
00005F0F  8B5408            mov dx,[si+0x8]
00005F12  8956FE            mov [bp-0x2],dx
00005F15  8B5E04            mov bx,[bp+0x4]
00005F18  8B5F0A            mov bx,[bx+0xa]
00005F1B  B80100            mov ax,0x1
00005F1E  50                push ax
00005F1F  8D46FC            lea ax,[bp-0x4]
00005F22  50                push ax
00005F23  FF740C            push word [si+0xc]
00005F26  FF740A            push word [si+0xa]
00005F29  FF76F8            push word [bp-0x8]
00005F2C  FF7406            push word [si+0x6]
00005F2F  FFD3              call bx
00005F31  83C40C            add sp,byte +0xc
00005F34  89C7              mov di,ax
00005F36  09FF              or di,di
00005F38  750A              jnz 0x5f44
00005F3A  8B5408            mov dx,[si+0x8]
00005F3D  2B56FE            sub dx,[bp-0x2]
00005F40  89D0              mov ax,dx
00005F42  EB02              jmp short 0x5f46
00005F44  89F8              mov ax,di
00005F46  E9644F            jmp word 0xaead
00005F49  55                push bp
00005F4A  89E5              mov bp,sp
00005F4C  83EC10            sub sp,byte +0x10
00005F4F  56                push si
00005F50  57                push di
00005F51  8B7606            mov si,[bp+0x6]
00005F54  8B7C08            mov di,[si+0x8]
00005F57  833C00            cmp word [si],byte +0x0
00005F5A  7D08              jnl 0x5f64
00005F5C  8B5412            mov dx,[si+0x12]
00005F5F  8956FE            mov [bp-0x2],dx
00005F62  EB63              jmp short 0x5fc7
00005F64  83FF28            cmp di,byte +0x28
00005F67  7603              jna 0x5f6c
00005F69  BF2800            mov di,0x28
00005F6C  B90200            mov cx,0x2
00005F6F  89FA              mov dx,di
00005F71  D3E2              shl dx,cl
00005F73  8956F4            mov [bp-0xc],dx
00005F76  52                push dx
00005F77  FF7412            push word [si+0x12]
00005F7A  FF34              push word [si]
00005F7C  E8D4C5            call word 0x2553
00005F7F  83C406            add sp,byte +0x6
00005F82  8946F6            mov [bp-0xa],ax
00005F85  8956F8            mov [bp-0x8],dx
00005F88  09C2              or dx,ax
00005F8A  750B              jnz 0x5f97
00005F8C  FF34              push word [si]
00005F8E  B81810            mov ax,0x1018
00005F91  50                push ax
00005F92  E8F7AF            call word 0xf8c
00005F95  5B                pop bx
00005F96  5B                pop bx
00005F97  BA2229            mov dx,0x2922
00005F9A  31C9              xor cx,cx
00005F9C  03168446          add dx,[0x4684]
00005FA0  130E8646          adc cx,[0x4686]
00005FA4  8956FA            mov [bp-0x6],dx
00005FA7  894EFC            mov [bp-0x4],cx
00005FAA  31C0              xor ax,ax
00005FAC  50                push ax
00005FAD  FF76F4            push word [bp-0xc]
00005FB0  FF76FC            push word [bp-0x4]
00005FB3  FF76FA            push word [bp-0x6]
00005FB6  FF76F8            push word [bp-0x8]
00005FB9  FF76F6            push word [bp-0xa]
00005FBC  E8C6AA            call word 0xa85
00005FBF  83C40C            add sp,byte +0xc
00005FC2  C746FE2229        mov word [bp-0x2],0x2922
00005FC7  8B5E04            mov bx,[bp+0x4]
00005FCA  8B5F08            mov bx,[bx+0x8]
00005FCD  FF7404            push word [si+0x4]
00005FD0  FFD3              call bx
00005FD2  5B                pop bx
00005FD3  09C0              or ax,ax
00005FD5  7505              jnz 0x5fdc
00005FD7  B8FAFF            mov ax,0xfffa
00005FDA  EB3E              jmp short 0x601a
00005FDC  8B5E04            mov bx,[bp+0x4]
00005FDF  8B5F0A            mov bx,[bx+0xa]
00005FE2  57                push di
00005FE3  FF76FE            push word [bp-0x2]
00005FE6  FF740C            push word [si+0xc]
00005FE9  FF740A            push word [si+0xa]
00005FEC  FF7402            push word [si+0x2]
00005FEF  FF7406            push word [si+0x6]
00005FF2  FFD3              call bx
00005FF4  83C40C            add sp,byte +0xc
00005FF7  8946F0            mov [bp-0x10],ax
00005FFA  833C00            cmp word [si],byte +0x0
00005FFD  7C18              jl 0x6017
00005FFF  31C0              xor ax,ax
00006001  50                push ax
00006002  FF76F4            push word [bp-0xc]
00006005  FF76F8            push word [bp-0x8]
00006008  FF76F6            push word [bp-0xa]
0000600B  FF76FC            push word [bp-0x4]
0000600E  FF76FA            push word [bp-0x6]
00006011  E871AA            call word 0xa85
00006014  83C40C            add sp,byte +0xc
00006017  8B46F0            mov ax,[bp-0x10]
0000601A  E9904E            jmp word 0xaead
0000601D  55                push bp
0000601E  89E5              mov bp,sp
00006020  8B1EF445          mov bx,[0x45f4]
00006024  BA0A00            mov dx,0xa
00006027  035744            add dx,[bx+0x44]
0000602A  B80C00            mov ax,0xc
0000602D  F7E2              mul dx
0000602F  89C3              mov bx,ax
00006031  8D87D200          lea ax,[bx+0xd2]
00006035  E9774E            jmp word 0xaeaf
00006038  55                push bp
00006039  89E5              mov bp,sp
0000603B  EB13              jmp short 0x6050
0000603D  B8EDFF            mov ax,0xffed
00006040  EB1B              jmp short 0x605d
00006042  31C0              xor ax,ax
00006044  EB17              jmp short 0x605d
00006046  B8E7FF            mov ax,0xffe7
00006049  EB12              jmp short 0x605d
0000604B  B8FBFF            mov ax,0xfffb
0000604E  EB0D              jmp short 0x605d
00006050  8B5E06            mov bx,[bp+0x6]
00006053  FF7702            push word [bx+0x2]
00006056  BB2A10            mov bx,0x102a
00006059  58                pop ax
0000605A  E9E74C            jmp word 0xad44
0000605D  E94F4E            jmp word 0xaeaf
00006060  55                push bp
00006061  89E5              mov bp,sp
00006063  31C0              xor ax,ax
00006065  E9474E            jmp word 0xaeaf
00006068  55                push bp
00006069  89E5              mov bp,sp
0000606B  E9414E            jmp word 0xaeaf
0000606E  55                push bp
0000606F  89E5              mov bp,sp
00006071  83EC10            sub sp,byte +0x10
00006074  B83610            mov ax,0x1036
00006077  50                push ax
00006078  83C4F2            add sp,byte -0xe
0000607B  89E3              mov bx,sp
0000607D  53                push bx
0000607E  FF770E            push word [bx+0xe]
00006081  B81000            mov ax,0x10
00006084  50                push ax
00006085  E8814E            call word 0xaf09
00006088  83C406            add sp,byte +0x6
0000608B  8D46F0            lea ax,[bp-0x10]
0000608E  50                push ax
0000608F  89E3              mov bx,sp
00006091  83C302            add bx,byte +0x2
00006094  53                push bx
00006095  B81000            mov ax,0x10
00006098  50                push ax
00006099  E86D4E            call word 0xaf09
0000609C  83C416            add sp,byte +0x16
0000609F  8D46F0            lea ax,[bp-0x10]
000060A2  50                push ax
000060A3  E8EDFC            call word 0x5d93
000060A6  5B                pop bx
000060A7  E9054E            jmp word 0xaeaf
000060AA  55                push bp
000060AB  89E5              mov bp,sp
000060AD  83EC20            sub sp,byte +0x20
000060B0  56                push si
000060B1  57                push di
000060B2  8B7E06            mov di,[bp+0x6]
000060B5  817D080364        cmp word [di+0x8],0x6403
000060BA  740D              jz 0x60c9
000060BC  817D080464        cmp word [di+0x8],0x6404
000060C1  7406              jz 0x60c9
000060C3  B8E7FF            mov ax,0xffe7
000060C6  E9C700            jmp word 0x6190
000060C9  8B5E04            mov bx,[bp+0x4]
000060CC  8B5F08            mov bx,[bx+0x8]
000060CF  FF7504            push word [di+0x4]
000060D2  FFD3              call bx
000060D4  5B                pop bx
000060D5  89C6              mov si,ax
000060D7  09C0              or ax,ax
000060D9  7506              jnz 0x60e1
000060DB  B8FAFF            mov ax,0xfffa
000060DE  E9AF00            jmp word 0x6190
000060E1  B81600            mov ax,0x16
000060E4  50                push ax
000060E5  FF7512            push word [di+0x12]
000060E8  FF7506            push word [di+0x6]
000060EB  E865C4            call word 0x2553
000060EE  83C406            add sp,byte +0x6
000060F1  8946FA            mov [bp-0x6],ax
000060F4  8956FC            mov [bp-0x4],dx
000060F7  09C2              or dx,ax
000060F9  7506              jnz 0x6101
000060FB  B8F2FF            mov ax,0xfff2
000060FE  E98F00            jmp word 0x6190
00006101  8D5EE0            lea bx,[bp-0x20]
00006104  31D2              xor dx,dx
00006106  031E8446          add bx,[0x4684]
0000610A  13168646          adc dx,[0x4686]
0000610E  895EF6            mov [bp-0xa],bx
00006111  8956F8            mov [bp-0x8],dx
00006114  817D080364        cmp word [di+0x8],0x6403
00006119  7534              jnz 0x614f
0000611B  31C0              xor ax,ax
0000611D  50                push ax
0000611E  B81600            mov ax,0x16
00006121  50                push ax
00006122  FF76F8            push word [bp-0x8]
00006125  FF76F6            push word [bp-0xa]
00006128  FF76FC            push word [bp-0x4]
0000612B  FF76FA            push word [bp-0x6]
0000612E  E854A9            call word 0xa85
00006131  83C40C            add sp,byte +0xc
00006134  8D46E0            lea ax,[bp-0x20]
00006137  50                push ax
00006138  56                push si
00006139  B90400            mov cx,0x4
0000613C  E8F04B            call word 0xad2f
0000613F  8D46E8            lea ax,[bp-0x18]
00006142  50                push ax
00006143  8D4408            lea ax,[si+0x8]
00006146  50                push ax
00006147  B90400            mov cx,0x4
0000614A  E8E24B            call word 0xad2f
0000614D  EB3F              jmp short 0x618e
0000614F  56                push si
00006150  8D46E0            lea ax,[bp-0x20]
00006153  50                push ax
00006154  B90400            mov cx,0x4
00006157  E8D54B            call word 0xad2f
0000615A  8D4408            lea ax,[si+0x8]
0000615D  50                push ax
0000615E  8D46E8            lea ax,[bp-0x18]
00006161  50                push ax
00006162  B90400            mov cx,0x4
00006165  E8C74B            call word 0xad2f
00006168  8B5E04            mov bx,[bp+0x4]
0000616B  8B5F0E            mov bx,[bx+0xe]
0000616E  8D46E0            lea ax,[bp-0x20]
00006171  50                push ax
00006172  FFD3              call bx
00006174  5B                pop bx
00006175  31C0              xor ax,ax
00006177  50                push ax
00006178  B81600            mov ax,0x16
0000617B  50                push ax
0000617C  FF76FC            push word [bp-0x4]
0000617F  FF76FA            push word [bp-0x6]
00006182  FF76F8            push word [bp-0x8]
00006185  FF76F6            push word [bp-0xa]
00006188  E8FAA8            call word 0xa85
0000618B  83C40C            add sp,byte +0xc
0000618E  31C0              xor ax,ax
00006190  E91A4D            jmp word 0xaead
00006193  55                push bp
00006194  89E5              mov bp,sp
00006196  83EC64            sub sp,byte +0x64
00006199  56                push si
0000619A  57                push di
0000619B  8B5E04            mov bx,[bp+0x4]
0000619E  8B5F08            mov bx,[bx+0x8]
000061A1  FF7606            push word [bp+0x6]
000061A4  FFD3              call bx
000061A6  5B                pop bx
000061A7  89C7              mov di,ax
000061A9  09C0              or ax,ax
000061AB  7503              jnz 0x61b0
000061AD  E9EB01            jmp word 0x639b
000061B0  8D5D08            lea bx,[di+0x8]
000061B3  31C0              xor ax,ax
000061B5  50                push ax
000061B6  B90800            mov cx,0x8
000061B9  E8BE4C            call word 0xae7a
000061BC  E80F48            call word 0xa9ce
000061BF  83C40A            add sp,byte +0xa
000061C2  09C0              or ax,ax
000061C4  7503              jnz 0x61c9
000061C6  E9D201            jmp word 0x639b
000061C9  89FB              mov bx,di
000061CB  B80002            mov ax,0x200
000061CE  50                push ax
000061CF  B90800            mov cx,0x8
000061D2  E8A54C            call word 0xae7a
000061D5  E87B48            call word 0xaa53
000061D8  83C40A            add sp,byte +0xa
000061DB  8946B4            mov [bp-0x4c],ax
000061DE  8956B6            mov [bp-0x4a],dx
000061E1  8D5D08            lea bx,[di+0x8]
000061E4  B80002            mov ax,0x200
000061E7  50                push ax
000061E8  B90800            mov cx,0x8
000061EB  E88C4C            call word 0xae7a
000061EE  E86248            call word 0xaa53
000061F1  83C40A            add sp,byte +0xa
000061F4  0346B4            add ax,[bp-0x4c]
000061F7  1356B6            adc dx,[bp-0x4a]
000061FA  8946B0            mov [bp-0x50],ax
000061FD  8956B2            mov [bp-0x4e],dx
00006200  31DB              xor bx,bx
00006202  8D46C0            lea ax,[bp-0x40]
00006205  50                push ax
00006206  53                push bx
00006207  53                push bx
00006208  FF7606            push word [bp+0x6]
0000620B  FF7604            push word [bp+0x4]
0000620E  E8B602            call word 0x64c7
00006211  83C40A            add sp,byte +0xa
00006214  09C0              or ax,ax
00006216  7542              jnz 0x625a
00006218  E98001            jmp word 0x639b
0000621B  83460670          add word [bp+0x6],byte +0x70
0000621F  EB42              jmp short 0x6263
00006221  8D46C0            lea ax,[bp-0x40]
00006224  50                push ax
00006225  E85303            call word 0x657b
00006228  5B                pop bx
00006229  FF4606            inc word [bp+0x6]
0000622C  EB35              jmp short 0x6263
0000622E  B90500            mov cx,0x5
00006231  8B4606            mov ax,[bp+0x6]
00006234  99                cwd
00006235  F7F9              idiv cx
00006237  8946BC            mov [bp-0x44],ax
0000623A  8B4606            mov ax,[bp+0x6]
0000623D  99                cwd
0000623E  F7F9              idiv cx
00006240  4A                dec dx
00006241  8956BA            mov [bp-0x46],dx
00006244  B90200            mov cx,0x2
00006247  8B56BC            mov dx,[bp-0x44]
0000624A  D3E2              shl dx,cl
0000624C  0356BA            add dx,[bp-0x46]
0000624F  D3E2              shl dx,cl
00006251  81C28000          add dx,0x80
00006255  895606            mov [bp+0x6],dx
00006258  EB09              jmp short 0x6263
0000625A  BB4610            mov bx,0x1046
0000625D  8B4608            mov ax,[bp+0x8]
00006260  E9E14A            jmp word 0xad44
00006263  8B5E04            mov bx,[bp+0x4]
00006266  8B5F08            mov bx,[bx+0x8]
00006269  FF7606            push word [bp+0x6]
0000626C  FFD3              call bx
0000626E  5B                pop bx
0000626F  89C7              mov di,ax
00006271  09C0              or ax,ax
00006273  7503              jnz 0x6278
00006275  E92301            jmp word 0x639b
00006278  C746BA0000        mov word [bp-0x46],0x0
0000627D  837EBA04          cmp word [bp-0x46],byte +0x4
00006281  7C03              jl 0x6286
00006283  E91501            jmp word 0x639b
00006286  8B56BA            mov dx,[bp-0x46]
00006289  8D5EC0            lea bx,[bp-0x40]
0000628C  B90400            mov cx,0x4
0000628F  D3E2              shl dx,cl
00006291  01D3              add bx,dx
00006293  89DE              mov si,bx
00006295  8B5408            mov dx,[si+0x8]
00006298  8B4C0A            mov cx,[si+0xa]
0000629B  03540C            add dx,[si+0xc]
0000629E  134C0E            adc cx,[si+0xe]
000062A1  8956AC            mov [bp-0x54],dx
000062A4  894EAE            mov [bp-0x52],cx
000062A7  394C0A            cmp [si+0xa],cx
000062AA  7213              jc 0x62bf
000062AC  7505              jnz 0x62b3
000062AE  395408            cmp [si+0x8],dx
000062B1  760C              jna 0x62bf
000062B3  8B56B0            mov dx,[bp-0x50]
000062B6  8B4EB2            mov cx,[bp-0x4e]
000062B9  8956AC            mov [bp-0x54],dx
000062BC  894EAE            mov [bp-0x52],cx
000062BF  8B56B0            mov dx,[bp-0x50]
000062C2  8B4EB2            mov cx,[bp-0x4e]
000062C5  394EAE            cmp [bp-0x52],cx
000062C8  720D              jc 0x62d7
000062CA  7505              jnz 0x62d1
000062CC  3956AC            cmp [bp-0x54],dx
000062CF  7606              jna 0x62d7
000062D1  8956AC            mov [bp-0x54],dx
000062D4  894EAE            mov [bp-0x52],cx
000062D7  8B56B4            mov dx,[bp-0x4c]
000062DA  8B4EB6            mov cx,[bp-0x4a]
000062DD  394C0A            cmp [si+0xa],cx
000062E0  770D              ja 0x62ef
000062E2  7505              jnz 0x62e9
000062E4  395408            cmp [si+0x8],dx
000062E7  7306              jnc 0x62ef
000062E9  895408            mov [si+0x8],dx
000062EC  894C0A            mov [si+0xa],cx
000062EF  8B56AC            mov dx,[bp-0x54]
000062F2  8B4EAE            mov cx,[bp-0x52]
000062F5  394C0A            cmp [si+0xa],cx
000062F8  7213              jc 0x630d
000062FA  7505              jnz 0x6301
000062FC  395408            cmp [si+0x8],dx
000062FF  760C              jna 0x630d
00006301  8B5408            mov dx,[si+0x8]
00006304  8B4C0A            mov cx,[si+0xa]
00006307  8956AC            mov [bp-0x54],dx
0000630A  894EAE            mov [bp-0x52],cx
0000630D  B80002            mov ax,0x200
00006310  50                push ax
00006311  FF740A            push word [si+0xa]
00006314  FF7408            push word [si+0x8]
00006317  8D46A4            lea ax,[bp-0x5c]
0000631A  50                push ax
0000631B  E85E47            call word 0xaa7c
0000631E  83C408            add sp,byte +0x8
00006321  50                push ax
00006322  57                push di
00006323  B90400            mov cx,0x4
00006326  E8064A            call word 0xad2f
00006329  8B56AC            mov dx,[bp-0x54]
0000632C  8B4EAE            mov cx,[bp-0x52]
0000632F  2B5408            sub dx,[si+0x8]
00006332  1B4C0A            sbb cx,[si+0xa]
00006335  B80002            mov ax,0x200
00006338  50                push ax
00006339  51                push cx
0000633A  52                push dx
0000633B  8D469C            lea ax,[bp-0x64]
0000633E  50                push ax
0000633F  E83A47            call word 0xaa7c
00006342  83C408            add sp,byte +0x8
00006345  50                push ax
00006346  8D4508            lea ax,[di+0x8]
00006349  50                push ax
0000634A  B90400            mov cx,0x4
0000634D  E8DF49            call word 0xad2f
00006350  837E0801          cmp word [bp+0x8],byte +0x1
00006354  753C              jnz 0x6392
00006356  807C0481          cmp byte [si+0x4],0x81
0000635A  7514              jnz 0x6370
0000635C  8B56BA            mov dx,[bp-0x46]
0000635F  035606            add dx,[bp+0x6]
00006362  B80200            mov ax,0x2
00006365  50                push ax
00006366  52                push dx
00006367  FF7604            push word [bp+0x4]
0000636A  E826FE            call word 0x6193
0000636D  83C406            add sp,byte +0x6
00006370  807C0405          cmp byte [si+0x4],0x5
00006374  7406              jz 0x637c
00006376  807C040F          cmp byte [si+0x4],0xf
0000637A  7516              jnz 0x6392
0000637C  8B56BA            mov dx,[bp-0x46]
0000637F  035606            add dx,[bp+0x6]
00006382  FF740A            push word [si+0xa]
00006385  FF7408            push word [si+0x8]
00006388  52                push dx
00006389  FF7604            push word [bp+0x4]
0000638C  E80F00            call word 0x639e
0000638F  83C408            add sp,byte +0x8
00006392  FF46BA            inc word [bp-0x46]
00006395  83C710            add di,byte +0x10
00006398  E9E2FE            jmp word 0x627d
0000639B  E90F4B            jmp word 0xaead
0000639E  55                push bp
0000639F  89E5              mov bp,sp
000063A1  83EC62            sub sp,byte +0x62
000063A4  56                push si
000063A5  57                push di
000063A6  B90500            mov cx,0x5
000063A9  8B4606            mov ax,[bp+0x6]
000063AC  99                cwd
000063AD  F7F9              idiv cx
000063AF  8946BA            mov [bp-0x46],ax
000063B2  8B4606            mov ax,[bp+0x6]
000063B5  99                cwd
000063B6  F7F9              idiv cx
000063B8  4A                dec dx
000063B9  89D7              mov di,dx
000063BB  B90200            mov cx,0x2
000063BE  8B56BA            mov dx,[bp-0x46]
000063C1  D3E2              shl dx,cl
000063C3  01FA              add dx,di
000063C5  D3E2              shl dx,cl
000063C7  81C28000          add dx,0x80
000063CB  8956BC            mov [bp-0x44],dx
000063CE  31C0              xor ax,ax
000063D0  8946B2            mov [bp-0x4e],ax
000063D3  8946B4            mov [bp-0x4c],ax
000063D6  8D46C0            lea ax,[bp-0x40]
000063D9  50                push ax
000063DA  FF76B4            push word [bp-0x4c]
000063DD  FF76B2            push word [bp-0x4e]
000063E0  FF7606            push word [bp+0x6]
000063E3  FF7604            push word [bp+0x4]
000063E6  E8DE00            call word 0x64c7
000063E9  83C40A            add sp,byte +0xa
000063EC  09C0              or ax,ax
000063EE  7503              jnz 0x63f3
000063F0  E9D100            jmp word 0x64c4
000063F3  8D46C0            lea ax,[bp-0x40]
000063F6  50                push ax
000063F7  E88101            call word 0x657b
000063FA  5B                pop bx
000063FB  31C0              xor ax,ax
000063FD  8946AE            mov [bp-0x52],ax
00006400  8946B0            mov [bp-0x50],ax
00006403  31FF              xor di,di
00006405  83FF04            cmp di,byte +0x4
00006408  7C03              jl 0x640d
0000640A  E9A400            jmp word 0x64b1
0000640D  89FA              mov dx,di
0000640F  8D5EC0            lea bx,[bp-0x40]
00006412  B90400            mov cx,0x4
00006415  D3E2              shl dx,cl
00006417  01D3              add bx,dx
00006419  89DE              mov si,bx
0000641B  807C0405          cmp byte [si+0x4],0x5
0000641F  7406              jz 0x6427
00006421  807C040F          cmp byte [si+0x4],0xf
00006425  750F              jnz 0x6436
00006427  8B5408            mov dx,[si+0x8]
0000642A  8B4C0A            mov cx,[si+0xa]
0000642D  8956AE            mov [bp-0x52],dx
00006430  894EB0            mov [bp-0x50],cx
00006433  E97700            jmp word 0x64ad
00006436  807C0400          cmp byte [si+0x4],0x0
0000643A  7471              jz 0x64ad
0000643C  8B5E04            mov bx,[bp+0x4]
0000643F  8B5F08            mov bx,[bx+0x8]
00006442  FF76BC            push word [bp-0x44]
00006445  FFD3              call bx
00006447  5B                pop bx
00006448  8946B6            mov [bp-0x4a],ax
0000644B  09C0              or ax,ax
0000644D  7475              jz 0x64c4
0000644F  8B5608            mov dx,[bp+0x8]
00006452  8B4E0A            mov cx,[bp+0xa]
00006455  0356B2            add dx,[bp-0x4e]
00006458  134EB4            adc cx,[bp-0x4c]
0000645B  035408            add dx,[si+0x8]
0000645E  134C0A            adc cx,[si+0xa]
00006461  B80002            mov ax,0x200
00006464  50                push ax
00006465  51                push cx
00006466  52                push dx
00006467  8D46A6            lea ax,[bp-0x5a]
0000646A  50                push ax
0000646B  E80E46            call word 0xaa7c
0000646E  83C408            add sp,byte +0x8
00006471  50                push ax
00006472  FF76B6            push word [bp-0x4a]
00006475  B90400            mov cx,0x4
00006478  E8B448            call word 0xad2f
0000647B  B80002            mov ax,0x200
0000647E  50                push ax
0000647F  FF740E            push word [si+0xe]
00006482  FF740C            push word [si+0xc]
00006485  8D469E            lea ax,[bp-0x62]
00006488  50                push ax
00006489  E8F045            call word 0xaa7c
0000648C  83C408            add sp,byte +0x8
0000648F  8B5EB6            mov bx,[bp-0x4a]
00006492  50                push ax
00006493  83C308            add bx,byte +0x8
00006496  53                push bx
00006497  B90400            mov cx,0x4
0000649A  E89248            call word 0xad2f
0000649D  FF46BC            inc word [bp-0x44]
000064A0  B90400            mov cx,0x4
000064A3  8B46BC            mov ax,[bp-0x44]
000064A6  99                cwd
000064A7  F7F9              idiv cx
000064A9  09D2              or dx,dx
000064AB  7417              jz 0x64c4
000064AD  47                inc di
000064AE  E954FF            jmp word 0x6405
000064B1  8B56AE            mov dx,[bp-0x52]
000064B4  8B4EB0            mov cx,[bp-0x50]
000064B7  8956B2            mov [bp-0x4e],dx
000064BA  894EB4            mov [bp-0x4c],cx
000064BD  09D1              or cx,dx
000064BF  7403              jz 0x64c4
000064C1  E912FF            jmp word 0x63d6
000064C4  E9E649            jmp word 0xaead
000064C7  55                push bp
000064C8  89E5              mov bp,sp
000064CA  83EC0A            sub sp,byte +0xa
000064CD  8B1EF445          mov bx,[0x45f4]
000064D1  8B5744            mov dx,[bx+0x44]
000064D4  8956F6            mov [bp-0xa],dx
000064D7  B90900            mov cx,0x9
000064DA  8B5608            mov dx,[bp+0x8]
000064DD  8B5E0A            mov bx,[bp+0xa]
000064E0  E306              jcxz 0x64e8
000064E2  D1E2              shl dx,1
000064E4  D1D3              rcl bx,1
000064E6  E2FA              loop 0x64e2
000064E8  8956F8            mov [bp-0x8],dx
000064EB  895EFA            mov [bp-0x6],bx
000064EE  8B169E74          mov dx,[0x749e]
000064F2  8956FC            mov [bp-0x4],dx
000064F5  C746FE0002        mov word [bp-0x2],0x200
000064FA  8B5E04            mov bx,[bp+0x4]
000064FD  8B5F08            mov bx,[bx+0x8]
00006500  FF7606            push word [bp+0x6]
00006503  FFD3              call bx
00006505  5B                pop bx
00006506  09C0              or ax,ax
00006508  7420              jz 0x652a
0000650A  8B5E04            mov bx,[bp+0x4]
0000650D  8B5F0A            mov bx,[bx+0xa]
00006510  B80100            mov ax,0x1
00006513  50                push ax
00006514  8D46FC            lea ax,[bp-0x4]
00006517  50                push ax
00006518  FF76FA            push word [bp-0x6]
0000651B  FF76F8            push word [bp-0x8]
0000651E  B80900            mov ax,0x9
00006521  50                push ax
00006522  FF76F6            push word [bp-0xa]
00006525  FFD3              call bx
00006527  83C40C            add sp,byte +0xc
0000652A  837EFE00          cmp word [bp-0x2],byte +0x0
0000652E  7415              jz 0x6545
00006530  8B5E04            mov bx,[bp+0x4]
00006533  8B1F              mov bx,[bx]
00006535  FFD3              call bx
00006537  50                push ax
00006538  B85210            mov ax,0x1052
0000653B  50                push ax
0000653C  E8F53E            call word 0xa434
0000653F  5B                pop bx
00006540  5B                pop bx
00006541  31C0              xor ax,ax
00006543  EB33              jmp short 0x6578
00006545  8B1E9E74          mov bx,[0x749e]
00006549  80BFFE0155        cmp byte [bx+0x1fe],0x55
0000654E  750B              jnz 0x655b
00006550  8B1E9E74          mov bx,[0x749e]
00006554  80BFFF01AA        cmp byte [bx+0x1ff],0xaa
00006559  7404              jz 0x655f
0000655B  31C0              xor ax,ax
0000655D  EB19              jmp short 0x6578
0000655F  8B1E9E74          mov bx,[0x749e]
00006563  B84000            mov ax,0x40
00006566  50                push ax
00006567  81C3BE01          add bx,0x1be
0000656B  53                push bx
0000656C  FF760C            push word [bp+0xc]
0000656F  E8BF45            call word 0xab31
00006572  83C406            add sp,byte +0x6
00006575  B80100            mov ax,0x1
00006578  E93449            jmp word 0xaeaf
0000657B  55                push bp
0000657C  89E5              mov bp,sp
0000657E  83EC12            sub sp,byte +0x12
00006581  56                push si
00006582  57                push di
00006583  BF0400            mov di,0x4
00006586  8B7604            mov si,[bp+0x4]
00006589  8B5E04            mov bx,[bp+0x4]
0000658C  83C330            add bx,byte +0x30
0000658F  39F3              cmp bx,si
00006591  7647              jna 0x65da
00006593  807C0400          cmp byte [si+0x4],0x0
00006597  7418              jz 0x65b1
00006599  8B5418            mov dx,[si+0x18]
0000659C  8B4C1A            mov cx,[si+0x1a]
0000659F  394C0A            cmp [si+0xa],cx
000065A2  7231              jc 0x65d5
000065A4  7505              jnz 0x65ab
000065A6  395408            cmp [si+0x8],dx
000065A9  762A              jna 0x65d5
000065AB  807C1400          cmp byte [si+0x14],0x0
000065AF  7424              jz 0x65d5
000065B1  56                push si
000065B2  8D46EE            lea ax,[bp-0x12]
000065B5  50                push ax
000065B6  B90800            mov cx,0x8
000065B9  E87347            call word 0xad2f
000065BC  8D4410            lea ax,[si+0x10]
000065BF  50                push ax
000065C0  56                push si
000065C1  B90800            mov cx,0x8
000065C4  E86847            call word 0xad2f
000065C7  8D46EE            lea ax,[bp-0x12]
000065CA  50                push ax
000065CB  8D4410            lea ax,[si+0x10]
000065CE  50                push ax
000065CF  B90800            mov cx,0x8
000065D2  E85A47            call word 0xad2f
000065D5  83C610            add si,byte +0x10
000065D8  EBAF              jmp short 0x6589
000065DA  4F                dec di
000065DB  7FA9              jg 0x6586
000065DD  E9CD48            jmp word 0xaead
000065E0  55                push bp
000065E1  89E5              mov bp,sp
000065E3  56                push si
000065E4  BEC229            mov si,0x29c2
000065E7  81FE962A          cmp si,0x2a96
000065EB  7311              jnc 0x65fe
000065ED  C704FFFF          mov word [si],0xffff
000065F1  C6440B64          mov byte [si+0xb],0x64
000065F5  C6440CFF          mov byte [si+0xc],0xff
000065F9  83C66A            add si,byte +0x6a
000065FC  EBE9              jmp short 0x65e7
000065FE  B8726F            mov ax,0x6f72
00006601  50                push ax
00006602  B80600            mov ax,0x6
00006605  50                push ax
00006606  B8A82A            mov ax,0x2aa8
00006609  50                push ax
0000660A  E869F1            call word 0x5776
0000660D  83C406            add sp,byte +0x6
00006610  B8A82A            mov ax,0x2aa8
00006613  50                push ax
00006614  E804A4            call word 0xa1b
00006617  5B                pop bx
00006618  B8B610            mov ax,0x10b6
0000661B  50                push ax
0000661C  E874F7            call word 0x5d93
0000661F  5B                pop bx
00006620  E98B48            jmp word 0xaeae
00006623  55                push bp
00006624  89E5              mov bp,sp
00006626  83EC08            sub sp,byte +0x8
00006629  56                push si
0000662A  8B7604            mov si,[bp+0x4]
0000662D  89369C2A          mov [0x2a9c],si
00006631  BA03FF            mov dx,0xff03
00006634  21F2              and dx,si
00006636  89169A2A          mov [0x2a9a],dx
0000663A  833E9A2A02        cmp word [0x2a9a],byte +0x2
0000663F  7205              jc 0x6646
00006641  31C0              xor ax,ax
00006643  E99C00            jmp word 0x66e2
00006646  B86A00            mov ax,0x6a
00006649  F7269A2A          mul word [0x2a9a]
0000664D  89C3              mov bx,ax
0000664F  81C3C229          add bx,0x29c2
00006653  891E9E2A          mov [0x2a9e],bx
00006657  83C31A            add bx,byte +0x1a
0000665A  891EBC2A          mov [0x2abc],bx
0000665E  8B1E9E2A          mov bx,[0x2a9e]
00006662  8A570B            mov dl,[bx+0xb]
00006665  30F6              xor dh,dh
00006667  83FA07            cmp dx,byte +0x7
0000666A  7D4E              jnl 0x66ba
0000666C  8B1E9E2A          mov bx,[0x2a9e]
00006670  8A5F0B            mov bl,[bx+0xb]
00006673  30FF              xor bh,bh
00006675  B90300            mov cx,0x3
00006678  D3E3              shl bx,cl
0000667A  81C37210          add bx,0x1072
0000667E  891EA02A          mov [0x2aa0],bx
00006682  8A17              mov dl,[bx]
00006684  30F6              xor dh,dh
00006686  8916A42A          mov [0x2aa4],dx
0000668A  8B1EA02A          mov bx,[0x2aa0]
0000668E  D1E2              shl dx,1
00006690  89D0              mov ax,dx
00006692  8A5701            mov dl,[bx+0x1]
00006695  30F6              xor dh,dh
00006697  F7E2              mul dx
00006699  BB0002            mov bx,0x200
0000669C  53                push bx
0000669D  31DB              xor bx,bx
0000669F  53                push bx
000066A0  50                push ax
000066A1  8D46F8            lea ax,[bp-0x8]
000066A4  50                push ax
000066A5  E8D443            call word 0xaa7c
000066A8  83C408            add sp,byte +0x8
000066AB  8B1E9E2A          mov bx,[0x2a9e]
000066AF  50                push ax
000066B0  83C322            add bx,byte +0x22
000066B3  53                push bx
000066B4  B90400            mov cx,0x4
000066B7  E87546            call word 0xad2f
000066BA  81E67C00          and si,0x7c
000066BE  83FE70            cmp si,byte +0x70
000066C1  7C1C              jl 0x66df
000066C3  8B1E9E2A          mov bx,[0x2a9e]
000066C7  89F2              mov dx,si
000066C9  83EA70            sub dx,byte +0x70
000066CC  B90200            mov cx,0x2
000066CF  D3FA              sar dx,cl
000066D1  83C32A            add bx,byte +0x2a
000066D4  B90400            mov cx,0x4
000066D7  D3E2              shl dx,cl
000066D9  01D3              add bx,dx
000066DB  891EBC2A          mov [0x2abc],bx
000066DF  A1BC2A            mov ax,[0x2abc]
000066E2  E9C947            jmp word 0xaeae
000066E5  55                push bp
000066E6  89E5              mov bp,sp
000066E8  BA3000            mov dx,0x30
000066EB  03169A2A          add dx,[0x2a9a]
000066EF  8816C810          mov [0x10c8],dl
000066F3  B8C610            mov ax,0x10c6
000066F6  E9B647            jmp word 0xaeaf
000066F9  55                push bp
000066FA  89E5              mov bp,sp
000066FC  8B1E9E2A          mov bx,[0x2a9e]
00006700  8B169A2A          mov dx,[0x2a9a]
00006704  895718            mov [bx+0x18],dx
00006707  B8426C            mov ax,0x6c42
0000670A  50                push ax
0000670B  E837C2            call word 0x2945
0000670E  05B400            add ax,0xb4
00006711  83D200            adc dx,byte +0x0
00006714  8B1E9E2A          mov bx,[0x2a9e]
00006718  52                push dx
00006719  50                push ax
0000671A  B8FBFF            mov ax,0xfffb
0000671D  50                push ax
0000671E  83C30E            add bx,byte +0xe
00006721  53                push bx
00006722  E81EC1            call word 0x2843
00006725  83C40A            add sp,byte +0xa
00006728  8B1E9E2A          mov bx,[0x2a9e]
0000672C  C74706FFFF        mov word [bx+0x6],0xffff
00006731  E97B47            jmp word 0xaeaf
00006734  55                push bp
00006735  89E5              mov bp,sp
00006737  83EC50            sub sp,byte +0x50
0000673A  56                push si
0000673B  57                push di
0000673C  8B7E0C            mov di,[bp+0xc]
0000673F  8B169E2A          mov dx,[0x2a9e]
00006743  8956FE            mov [bp-0x2],dx
00006746  8B5E0E            mov bx,[bp+0xe]
00006749  D1E3              shl bx,1
0000674B  D1E3              shl bx,1
0000674D  01FB              add bx,di
0000674F  895EFA            mov [bp-0x6],bx
00006752  8B1EBC2A          mov bx,[0x2abc]
00006756  83C308            add bx,byte +0x8
00006759  B90800            mov cx,0x8
0000675C  E81B47            call word 0xae7a
0000675F  E8B642            call word 0xaa18
00006762  83C408            add sp,byte +0x8
00006765  8946E8            mov [bp-0x18],ax
00006768  8956EA            mov [bp-0x16],dx
0000676B  8B5E04            mov bx,[bp+0x4]
0000676E  D1E3              shl bx,1
00006770  8B9F766F          mov bx,[bx+0x6f76]
00006774  B90A00            mov cx,0xa
00006777  8B5754            mov dx,[bx+0x54]
0000677A  31DB              xor bx,bx
0000677C  E306              jcxz 0x6784
0000677E  D1E2              shl dx,1
00006780  D1D3              rcl bx,1
00006782  E2FA              loop 0x677e
00006784  8956B8            mov [bp-0x48],dx
00006787  895EBA            mov [bp-0x46],bx
0000678A  8B5608            mov dx,[bp+0x8]
0000678D  81E2FF01          and dx,0x1ff
00006791  81CA0000          or dx,0x0
00006795  7406              jz 0x679d
00006797  B8EAFF            mov ax,0xffea
0000679A  E98603            jmp word 0x6b23
0000679D  C746F60000        mov word [bp-0xa],0x0
000067A2  837E0E00          cmp word [bp+0xe],byte +0x0
000067A6  7503              jnz 0x67ab
000067A8  E97603            jmp word 0x6b21
000067AB  31F6              xor si,si
000067AD  897EFC            mov [bp-0x4],di
000067B0  8B56FA            mov dx,[bp-0x6]
000067B3  3956FC            cmp [bp-0x4],dx
000067B6  730C              jnc 0x67c4
000067B8  8B5EFC            mov bx,[bp-0x4]
000067BB  037702            add si,[bx+0x2]
000067BE  8346FC04          add word [bp-0x4],byte +0x4
000067C2  EBEC              jmp short 0x67b0
000067C4  8B56E8            mov dx,[bp-0x18]
000067C7  8B4EEA            mov cx,[bp-0x16]
000067CA  394E0A            cmp [bp+0xa],cx
000067CD  720C              jc 0x67db
000067CF  7505              jnz 0x67d6
000067D1  395608            cmp [bp+0x8],dx
000067D4  7205              jc 0x67db
000067D6  31C0              xor ax,ax
000067D8  E94803            jmp word 0x6b23
000067DB  89F2              mov dx,si
000067DD  31C9              xor cx,cx
000067DF  035608            add dx,[bp+0x8]
000067E2  134E0A            adc cx,[bp+0xa]
000067E5  394EEA            cmp [bp-0x16],cx
000067E8  7715              ja 0x67ff
000067EA  7505              jnz 0x67f1
000067EC  3956E8            cmp [bp-0x18],dx
000067EF  730E              jnc 0x67ff
000067F1  8B56E8            mov dx,[bp-0x18]
000067F4  8B4EEA            mov cx,[bp-0x16]
000067F7  2B5608            sub dx,[bp+0x8]
000067FA  1B4E0A            sbb cx,[bp+0xa]
000067FD  89D6              mov si,dx
000067FF  8B1EBC2A          mov bx,[0x2abc]
00006803  B80002            mov ax,0x200
00006806  50                push ax
00006807  FF760A            push word [bp+0xa]
0000680A  FF7608            push word [bp+0x8]
0000680D  B90800            mov cx,0x8
00006810  E86746            call word 0xae7a
00006813  8D46B0            lea ax,[bp-0x50]
00006816  50                push ax
00006817  E84B41            call word 0xa965
0000681A  83C40E            add sp,byte +0xe
0000681D  89C3              mov bx,ax
0000681F  B90800            mov cx,0x8
00006822  E85546            call word 0xae7a
00006825  E82B42            call word 0xaa53
00006828  83C40A            add sp,byte +0xa
0000682B  8946F4            mov [bp-0xc],ax
0000682E  F7C6FF01          test si,0x1ff
00006832  7406              jz 0x683a
00006834  B8EAFF            mov ax,0xffea
00006837  E9E902            jmp word 0x6b23
0000683A  F6069C2A80        test byte [0x2a9c],0x80
0000683F  745E              jz 0x689f
00006841  837E0608          cmp word [bp+0x6],byte +0x8
00006845  7406              jz 0x684d
00006847  B8FBFF            mov ax,0xfffb
0000684A  E9D602            jmp word 0x6b23
0000684D  817D020C02        cmp word [di+0x2],0x20c
00006852  7306              jnc 0x685a
00006854  B8EAFF            mov ax,0xffea
00006857  E9C902            jmp word 0x6b23
0000685A  BABE2A            mov dx,0x2abe
0000685D  31C9              xor cx,cx
0000685F  03168446          add dx,[0x4684]
00006863  130E8646          adc cx,[0x4686]
00006867  8B1D              mov bx,[di]
00006869  31C0              xor ax,ax
0000686B  035EB8            add bx,[bp-0x48]
0000686E  1346BA            adc ax,[bp-0x46]
00006871  81C30002          add bx,0x200
00006875  150000            adc ax,0x0
00006878  FF36CA10          push word [0x10ca]
0000687C  FF36CC10          push word [0x10cc]
00006880  51                push cx
00006881  52                push dx
00006882  50                push ax
00006883  53                push bx
00006884  E8FEA1            call word 0xa85
00006887  83C40C            add sp,byte +0xc
0000688A  803EC22A00        cmp byte [0x2ac2],0x0
0000688F  7506              jnz 0x6897
00006891  B8FBFF            mov ax,0xfffb
00006894  E98C02            jmp word 0x6b23
00006897  BA0002            mov dx,0x200
0000689A  89D6              mov si,dx
0000689C  895502            mov [di+0x2],dx
0000689F  837EF600          cmp word [bp-0xa],byte +0x0
000068A3  7E03              jng 0x68a8
000068A5  BE0002            mov si,0x200
000068A8  8B16A42A          mov dx,[0x2aa4]
000068AC  D1E2              shl dx,1
000068AE  89D1              mov cx,dx
000068B0  8B46F4            mov ax,[bp-0xc]
000068B3  31D2              xor dx,dx
000068B5  F7F1              div cx
000068B7  8B5EFE            mov bx,[bp-0x2]
000068BA  894704            mov [bx+0x4],ax
000068BD  8B1EA02A          mov bx,[0x2aa0]
000068C1  31C0              xor ax,ax
000068C3  8A4702            mov al,[bx+0x2]
000068C6  50                push ax
000068C7  8B5EFE            mov bx,[bp-0x2]
000068CA  58                pop ax
000068CB  F76704            mul word [bx+0x4]
000068CE  894702            mov [bx+0x2],ax
000068D1  8B16A42A          mov dx,[0x2aa4]
000068D5  D1E2              shl dx,1
000068D7  89D1              mov cx,dx
000068D9  8B46F4            mov ax,[bp-0xc]
000068DC  31D2              xor dx,dx
000068DE  F7F1              div cx
000068E0  89D0              mov ax,dx
000068E2  31D2              xor dx,dx
000068E4  F736A42A          div word [0x2aa4]
000068E8  8B5EFE            mov bx,[bp-0x2]
000068EB  894708            mov [bx+0x8],ax
000068EE  8D5EC2            lea bx,[bp-0x3e]
000068F1  895EC0            mov [bp-0x40],bx
000068F4  8D5EE6            lea bx,[bp-0x1a]
000068F7  395EC0            cmp [bp-0x40],bx
000068FA  730D              jnc 0x6909
000068FC  8B5EC0            mov bx,[bp-0x40]
000068FF  C7070000          mov word [bx],0x0
00006903  8346C002          add word [bp-0x40],byte +0x2
00006907  EBEB              jmp short 0x68f4
00006909  C746F00000        mov word [bp-0x10],0x0
0000690E  897EFC            mov [bp-0x4],di
00006911  8B46F4            mov ax,[bp-0xc]
00006914  31D2              xor dx,dx
00006916  F736A42A          div word [0x2aa4]
0000691A  8956EC            mov [bp-0x14],dx
0000691D  8B5EFC            mov bx,[bp-0x4]
00006920  8B17              mov dx,[bx]
00006922  8956E6            mov [bp-0x1a],dx
00006925  8B5702            mov dx,[bx+0x2]
00006928  8956EE            mov [bp-0x12],dx
0000692B  F7C2FF01          test dx,0x1ff
0000692F  7406              jz 0x6937
00006931  B8EAFF            mov ax,0xffea
00006934  E9EC01            jmp word 0x6b23
00006937  837EEE00          cmp word [bp-0x12],byte +0x0
0000693B  7434              jz 0x6971
0000693D  8B56EC            mov dx,[bp-0x14]
00006940  89D1              mov cx,dx
00006942  41                inc cx
00006943  894EEC            mov [bp-0x14],cx
00006946  8D5EC2            lea bx,[bp-0x3e]
00006949  D1E2              shl dx,1
0000694B  01D3              add bx,dx
0000694D  8B56E6            mov dx,[bp-0x1a]
00006950  8917              mov [bx],dx
00006952  816EEE0002        sub word [bp-0x12],0x200
00006957  8146E60002        add word [bp-0x1a],0x200
0000695C  8146F00002        add word [bp-0x10],0x200
00006961  8B16A42A          mov dx,[0x2aa4]
00006965  3956EC            cmp [bp-0x14],dx
00006968  740D              jz 0x6977
0000696A  3976F0            cmp [bp-0x10],si
0000696D  75C8              jnz 0x6937
0000696F  EB06              jmp short 0x6977
00006971  8346FC04          add word [bp-0x4],byte +0x4
00006975  EBA6              jmp short 0x691d
00006977  833E982A00        cmp word [0x2a98],byte +0x0
0000697C  7403              jz 0x6981
0000697E  E82F07            call word 0x70b0
00006981  E82D02            call word 0x6bb1
00006984  8B16A22A          mov dx,[0x2aa2]
00006988  3916A02A          cmp [0x2aa0],dx
0000698C  743A              jz 0x69c8
0000698E  C646BD03          mov byte [bp-0x43],0x3
00006992  8B1EA02A          mov bx,[0x2aa0]
00006996  8A4F07            mov cl,[bx+0x7]
00006999  884EBE            mov [bp-0x42],cl
0000699C  C646BF02          mov byte [bp-0x41],0x2
000069A0  B80300            mov ax,0x3
000069A3  50                push ax
000069A4  8D46BD            lea ax,[bp-0x43]
000069A7  50                push ax
000069A8  E8DD05            call word 0x6f88
000069AB  5B                pop bx
000069AC  5B                pop bx
000069AD  8B1EA02A          mov bx,[0x2aa0]
000069B1  31C0              xor ax,ax
000069B3  8A4704            mov al,[bx+0x4]
000069B6  50                push ax
000069B7  B8F703            mov ax,0x3f7
000069BA  50                push ax
000069BB  E8F640            call word 0xaab4
000069BE  5B                pop bx
000069BF  5B                pop bx
000069C0  8B16A02A          mov dx,[0x2aa0]
000069C4  8916A22A          mov [0x2aa2],dx
000069C8  E8B802            call word 0x6c83
000069CB  8946F8            mov [bp-0x8],ax
000069CE  8B5EFE            mov bx,[bp-0x2]
000069D1  837F06FF          cmp word [bx+0x6],byte -0x1
000069D5  750C              jnz 0x69e3
000069D7  817EF0000C        cmp word [bp-0x10],0xc00
000069DC  7305              jnc 0x69e3
000069DE  C747060000        mov word [bx+0x6],0x0
000069E3  31F6              xor si,si
000069E5  3976F0            cmp [bp-0x10],si
000069E8  7703              ja 0x69ed
000069EA  E9FA00            jmp word 0x6ae7
000069ED  8B5EFE            mov bx,[bp-0x2]
000069F0  837F06FF          cmp word [bx+0x6],byte -0x1
000069F4  7513              jnz 0x6a09
000069F6  837EF800          cmp word [bp-0x8],byte +0x0
000069FA  750D              jnz 0x6a09
000069FC  E88007            call word 0x717f
000069FF  09C0              or ax,ax
00006A01  7406              jz 0x6a09
00006A03  E87907            call word 0x717f
00006A06  8946F8            mov [bp-0x8],ax
00006A09  837EF800          cmp word [bp-0x8],byte +0x0
00006A0D  752F              jnz 0x6a3e
00006A0F  8B5EFE            mov bx,[bp-0x2]
00006A12  8B16A42A          mov dx,[0x2aa4]
00006A16  395706            cmp [bx+0x6],dx
00006A19  7205              jc 0x6a20
00006A1B  C747060000        mov word [bx+0x6],0x0
00006A20  8B5EFE            mov bx,[bp-0x2]
00006A23  8B5706            mov dx,[bx+0x6]
00006A26  8D5EC2            lea bx,[bp-0x3e]
00006A29  D1E2              shl dx,1
00006A2B  01D3              add bx,dx
00006A2D  895EC0            mov [bp-0x40],bx
00006A30  833F00            cmp word [bx],byte +0x0
00006A33  7509              jnz 0x6a3e
00006A35  8B5EFE            mov bx,[bp-0x2]
00006A38  83470601          add word [bx+0x6],byte +0x1
00006A3C  EBD1              jmp short 0x6a0f
00006A3E  837EF800          cmp word [bp-0x8],byte +0x0
00006A42  752A              jnz 0x6a6e
00006A44  837E0608          cmp word [bp+0x6],byte +0x8
00006A48  7524              jnz 0x6a6e
00006A4A  8B5EC0            mov bx,[bp-0x40]
00006A4D  8B17              mov dx,[bx]
00006A4F  31C9              xor cx,cx
00006A51  0356B8            add dx,[bp-0x48]
00006A54  134EBA            adc cx,[bp-0x46]
00006A57  31C0              xor ax,ax
00006A59  50                push ax
00006A5A  B80002            mov ax,0x200
00006A5D  50                push ax
00006A5E  FF36A274          push word [0x74a2]
00006A62  FF36A074          push word [0x74a0]
00006A66  51                push cx
00006A67  52                push dx
00006A68  E81AA0            call word 0xa85
00006A6B  83C40C            add sp,byte +0xc
00006A6E  837EF800          cmp word [bp-0x8],byte +0x0
00006A72  7511              jnz 0x6a85
00006A74  FF7606            push word [bp+0x6]
00006A77  E8AC00            call word 0x6b26
00006A7A  5B                pop bx
00006A7B  FF7606            push word [bp+0x6]
00006A7E  E8E702            call word 0x6d68
00006A81  5B                pop bx
00006A82  8946F8            mov [bp-0x8],ax
00006A85  837EF800          cmp word [bp-0x8],byte +0x0
00006A89  752A              jnz 0x6ab5
00006A8B  837E0609          cmp word [bp+0x6],byte +0x9
00006A8F  7524              jnz 0x6ab5
00006A91  8B5EC0            mov bx,[bp-0x40]
00006A94  8B17              mov dx,[bx]
00006A96  31C9              xor cx,cx
00006A98  0356B8            add dx,[bp-0x48]
00006A9B  134EBA            adc cx,[bp-0x46]
00006A9E  31C0              xor ax,ax
00006AA0  50                push ax
00006AA1  B80002            mov ax,0x200
00006AA4  50                push ax
00006AA5  51                push cx
00006AA6  52                push dx
00006AA7  FF36A274          push word [0x74a2]
00006AAB  FF36A074          push word [0x74a0]
00006AAF  E8D39F            call word 0xa85
00006AB2  83C40C            add sp,byte +0xc
00006AB5  837EF800          cmp word [bp-0x8],byte +0x0
00006AB9  7425              jz 0x6ae0
00006ABB  837EF8F9          cmp word [bp-0x8],byte -0x7
00006ABF  7E09              jng 0x6aca
00006AC1  FF46F6            inc word [bp-0xa]
00006AC4  837EF606          cmp word [bp-0xa],byte +0x6
00006AC8  7505              jnz 0x6acf
00006ACA  B8FBFF            mov ax,0xfffb
00006ACD  EB54              jmp short 0x6b23
00006ACF  837EF603          cmp word [bp-0xa],byte +0x3
00006AD3  7507              jnz 0x6adc
00006AD5  8B5EFE            mov bx,[bp-0x2]
00006AD8  C6470A00          mov byte [bx+0xa],0x0
00006ADC  31F6              xor si,si
00006ADE  EB07              jmp short 0x6ae7
00006AE0  81C60002          add si,0x200
00006AE4  E9FEFE            jmp word 0x69e5
00006AE7  017608            add [bp+0x8],si
00006AEA  83560A00          adc word [bp+0xa],byte +0x0
00006AEE  397502            cmp [di+0x2],si
00006AF1  760D              jna 0x6b00
00006AF3  0135              add [di],si
00006AF5  8B5502            mov dx,[di+0x2]
00006AF8  29F2              sub dx,si
00006AFA  895502            mov [di+0x2],dx
00006AFD  E9A2FC            jmp word 0x67a2
00006B00  89F2              mov dx,si
00006B02  2B5502            sub dx,[di+0x2]
00006B05  89D6              mov si,dx
00006B07  8B5502            mov dx,[di+0x2]
00006B0A  0115              add [di],dx
00006B0C  C745020000        mov word [di+0x2],0x0
00006B11  09F6              or si,si
00006B13  7504              jnz 0x6b19
00006B15  31C0              xor ax,ax
00006B17  EB0A              jmp short 0x6b23
00006B19  83C704            add di,byte +0x4
00006B1C  FF4E0E            dec word [bp+0xe]
00006B1F  EBCD              jmp short 0x6aee
00006B21  31C0              xor ax,ax
00006B23  E98743            jmp word 0xaead
00006B26  55                push bp
00006B27  89E5              mov bp,sp
00006B29  B80600            mov ax,0x6
00006B2C  50                push ax
00006B2D  B80A00            mov ax,0xa
00006B30  50                push ax
00006B31  E8803F            call word 0xaab4
00006B34  5B                pop bx
00006B35  5B                pop bx
00006B36  31C0              xor ax,ax
00006B38  50                push ax
00006B39  B80C00            mov ax,0xc
00006B3C  50                push ax
00006B3D  E8743F            call word 0xaab4
00006B40  5B                pop bx
00006B41  5B                pop bx
00006B42  837E0408          cmp word [bp+0x4],byte +0x8
00006B46  7505              jnz 0x6b4d
00006B48  B84A00            mov ax,0x4a
00006B4B  EB03              jmp short 0x6b50
00006B4D  B84600            mov ax,0x46
00006B50  50                push ax
00006B51  B80B00            mov ax,0xb
00006B54  50                push ax
00006B55  E85C3F            call word 0xaab4
00006B58  5B                pop bx
00006B59  5B                pop bx
00006B5A  FF36A074          push word [0x74a0]
00006B5E  B80400            mov ax,0x4
00006B61  50                push ax
00006B62  E84F3F            call word 0xaab4
00006B65  5B                pop bx
00006B66  5B                pop bx
00006B67  B90800            mov cx,0x8
00006B6A  8B16A074          mov dx,[0x74a0]
00006B6E  D3EA              shr dx,cl
00006B70  52                push dx
00006B71  B80400            mov ax,0x4
00006B74  50                push ax
00006B75  E83C3F            call word 0xaab4
00006B78  5B                pop bx
00006B79  5B                pop bx
00006B7A  FF36A274          push word [0x74a2]
00006B7E  B88100            mov ax,0x81
00006B81  50                push ax
00006B82  E82F3F            call word 0xaab4
00006B85  5B                pop bx
00006B86  5B                pop bx
00006B87  B8FF01            mov ax,0x1ff
00006B8A  50                push ax
00006B8B  B80500            mov ax,0x5
00006B8E  50                push ax
00006B8F  E8223F            call word 0xaab4
00006B92  5B                pop bx
00006B93  5B                pop bx
00006B94  B80100            mov ax,0x1
00006B97  50                push ax
00006B98  B80500            mov ax,0x5
00006B9B  50                push ax
00006B9C  E8153F            call word 0xaab4
00006B9F  5B                pop bx
00006BA0  5B                pop bx
00006BA1  B80200            mov ax,0x2
00006BA4  50                push ax
00006BA5  B80A00            mov ax,0xa
00006BA8  50                push ax
00006BA9  E8083F            call word 0xaab4
00006BAC  5B                pop bx
00006BAD  5B                pop bx
00006BAE  E9FE42            jmp word 0xaeaf
00006BB1  55                push bp
00006BB2  89E5              mov bp,sp
00006BB4  83EC1C            sub sp,byte +0x1c
00006BB7  56                push si
00006BB8  8B0E9A2A          mov cx,[0x2a9a]
00006BBC  BA0100            mov dx,0x1
00006BBF  D3E2              shl dx,cl
00006BC1  89D6              mov si,dx
00006BC3  89F2              mov dx,si
00006BC5  2316962A          and dx,[0x2a96]
00006BC9  8956FC            mov [bp-0x4],dx
00006BCC  8B16962A          mov dx,[0x2a96]
00006BD0  09F2              or dx,si
00006BD2  8916962A          mov [0x2a96],dx
00006BD6  B90400            mov cx,0x4
00006BD9  D3E2              shl dx,cl
00006BDB  81CA0C00          or dx,0xc
00006BDF  0B169A2A          or dx,[0x2a9a]
00006BE3  52                push dx
00006BE4  B8F203            mov ax,0x3f2
00006BE7  50                push ax
00006BE8  E8C93E            call word 0xaab4
00006BEB  5B                pop bx
00006BEC  5B                pop bx
00006BED  837EFC00          cmp word [bp-0x4],byte +0x0
00006BF1  754C              jnz 0x6c3f
00006BF3  B86471            mov ax,0x7164
00006BF6  50                push ax
00006BF7  E84BBD            call word 0x2945
00006BFA  8B1EA02A          mov bx,[0x2aa0]
00006BFE  52                push dx
00006BFF  50                push ax
00006C00  8A4705            mov al,[bx+0x5]
00006C03  30E4              xor ah,ah
00006C05  99                cwd
00006C06  59                pop cx
00006C07  5B                pop bx
00006C08  01C1              add cx,ax
00006C0A  11D3              adc bx,dx
00006C0C  53                push bx
00006C0D  51                push cx
00006C0E  B8FDFF            mov ax,0xfffd
00006C11  50                push ax
00006C12  B8B02A            mov ax,0x2ab0
00006C15  50                push ax
00006C16  E82ABC            call word 0x2843
00006C19  83C40A            add sp,byte +0xa
00006C1C  C706A62A0100      mov word [0x2aa6],0x1
00006C22  8D46E4            lea ax,[bp-0x1c]
00006C25  50                push ax
00006C26  B8FFFF            mov ax,0xffff
00006C29  50                push ax
00006C2A  E8AD3E            call word 0xaada
00006C2D  5B                pop bx
00006C2E  5B                pop bx
00006C2F  833EA62A01        cmp word [0x2aa6],byte +0x1
00006C34  74EC              jz 0x6c22
00006C36  8B1E9E2A          mov bx,[0x2a9e]
00006C3A  C74706FFFF        mov word [bx+0x6],0xffff
00006C3F  E96C42            jmp word 0xaeae
00006C42  55                push bp
00006C43  89E5              mov bp,sp
00006C45  8B5E04            mov bx,[bp+0x4]
00006C48  8B4F0A            mov cx,[bx+0xa]
00006C4B  BA0100            mov dx,0x1
00006C4E  D3E2              shl dx,cl
00006C50  F7D2              not dx
00006C52  2316962A          and dx,[0x2a96]
00006C56  8916962A          mov [0x2a96],dx
00006C5A  B90400            mov cx,0x4
00006C5D  D3E2              shl dx,cl
00006C5F  81CA0C00          or dx,0xc
00006C63  52                push dx
00006C64  B8F203            mov ax,0x3f2
00006C67  50                push ax
00006C68  E8493E            call word 0xaab4
00006C6B  5B                pop bx
00006C6C  5B                pop bx
00006C6D  E93F42            jmp word 0xaeaf
00006C70  55                push bp
00006C71  89E5              mov bp,sp
00006C73  B80C00            mov ax,0xc
00006C76  50                push ax
00006C77  B8F203            mov ax,0x3f2
00006C7A  50                push ax
00006C7B  E8363E            call word 0xaab4
00006C7E  5B                pop bx
00006C7F  5B                pop bx
00006C80  E92C42            jmp word 0xaeaf
00006C83  55                push bp
00006C84  89E5              mov bp,sp
00006C86  83EC20            sub sp,byte +0x20
00006C89  56                push si
00006C8A  8B369E2A          mov si,[0x2a9e]
00006C8E  807C0A00          cmp byte [si+0xa],0x0
00006C92  750D              jnz 0x6ca1
00006C94  E89203            call word 0x7029
00006C97  09C0              or ax,ax
00006C99  7406              jz 0x6ca1
00006C9B  B8FFFF            mov ax,0xffff
00006C9E  E9C400            jmp word 0x6d65
00006CA1  8B5402            mov dx,[si+0x2]
00006CA4  3914              cmp [si],dx
00006CA6  7505              jnz 0x6cad
00006CA8  31C0              xor ax,ax
00006CAA  E9B800            jmp word 0x6d65
00006CAD  C646E10F          mov byte [bp-0x1f],0xf
00006CB1  B90200            mov cx,0x2
00006CB4  8B5408            mov dx,[si+0x8]
00006CB7  D3E2              shl dx,cl
00006CB9  0B169A2A          or dx,[0x2a9a]
00006CBD  8856E2            mov [bp-0x1e],dl
00006CC0  8B5402            mov dx,[si+0x2]
00006CC3  8856E3            mov [bp-0x1d],dl
00006CC6  B80300            mov ax,0x3
00006CC9  50                push ax
00006CCA  8D46E1            lea ax,[bp-0x1f]
00006CCD  50                push ax
00006CCE  E8B702            call word 0x6f88
00006CD1  5B                pop bx
00006CD2  5B                pop bx
00006CD3  09C0              or ax,ax
00006CD5  7406              jz 0x6cdd
00006CD7  B8FFFF            mov ax,0xffff
00006CDA  E98800            jmp word 0x6d65
00006CDD  E85304            call word 0x7133
00006CE0  09C0              or ax,ax
00006CE2  7406              jz 0x6cea
00006CE4  B8F8FF            mov ax,0xfff8
00006CE7  E97B00            jmp word 0x6d65
00006CEA  B80800            mov ax,0x8
00006CED  50                push ax
00006CEE  E8E802            call word 0x6fd9
00006CF1  5B                pop bx
00006CF2  E8F901            call word 0x6eee
00006CF5  8946FC            mov [bp-0x4],ax
00006CF8  09C0              or ax,ax
00006CFA  751A              jnz 0x6d16
00006CFC  8A16CA2A          mov dl,[0x2aca]
00006D00  30F6              xor dh,dh
00006D02  81E2F800          and dx,0xf8
00006D06  83FA20            cmp dx,byte +0x20
00006D09  750B              jnz 0x6d16
00006D0B  8A16CB2A          mov dl,[0x2acb]
00006D0F  30F6              xor dh,dh
00006D11  395402            cmp [si+0x2],dx
00006D14  7405              jz 0x6d1b
00006D16  B8FFFF            mov ax,0xffff
00006D19  EB4A              jmp short 0x6d65
00006D1B  F6069C2A80        test byte [0x2a9c],0x80
00006D20  7437              jz 0x6d59
00006D22  B86471            mov ax,0x7164
00006D25  50                push ax
00006D26  E81CBC            call word 0x2945
00006D29  050200            add ax,0x2
00006D2C  83D200            adc dx,byte +0x0
00006D2F  52                push dx
00006D30  50                push ax
00006D31  B8FDFF            mov ax,0xfffd
00006D34  50                push ax
00006D35  B8B02A            mov ax,0x2ab0
00006D38  50                push ax
00006D39  E807BB            call word 0x2843
00006D3C  83C40A            add sp,byte +0xa
00006D3F  C706A62A0100      mov word [0x2aa6],0x1
00006D45  8D46E4            lea ax,[bp-0x1c]
00006D48  50                push ax
00006D49  B8FFFF            mov ax,0xffff
00006D4C  50                push ax
00006D4D  E88A3D            call word 0xaada
00006D50  5B                pop bx
00006D51  5B                pop bx
00006D52  833EA62A01        cmp word [0x2aa6],byte +0x1
00006D57  74EC              jz 0x6d45
00006D59  8B5402            mov dx,[si+0x2]
00006D5C  8914              mov [si],dx
00006D5E  C74406FFFF        mov word [si+0x6],0xffff
00006D63  31C0              xor ax,ax
00006D65  E94641            jmp word 0xaeae
00006D68  55                push bp
00006D69  89E5              mov bp,sp
00006D6B  83EC10            sub sp,byte +0x10
00006D6E  56                push si
00006D6F  57                push di
00006D70  8B369E2A          mov si,[0x2a9e]
00006D74  807C0A00          cmp byte [si+0xa],0x0
00006D78  7506              jnz 0x6d80
00006D7A  B8FEFF            mov ax,0xfffe
00006D7D  E96B01            jmp word 0x6eeb
00006D80  8B0E9A2A          mov cx,[0x2a9a]
00006D84  BA0100            mov dx,0x1
00006D87  D3E2              shl dx,cl
00006D89  8516962A          test [0x2a96],dx
00006D8D  7506              jnz 0x6d95
00006D8F  B8FEFF            mov ax,0xfffe
00006D92  E95601            jmp word 0x6eeb
00006D95  F6069C2A80        test byte [0x2a9c],0x80
00006D9A  7446              jz 0x6de2
00006D9C  C646F14D          mov byte [bp-0xf],0x4d
00006DA0  B90200            mov cx,0x2
00006DA3  8B5408            mov dx,[si+0x8]
00006DA6  D3E2              shl dx,cl
00006DA8  0B169A2A          or dx,[0x2a9a]
00006DAC  8856F2            mov [bp-0xe],dl
00006DAF  8A0EC12A          mov cl,[0x2ac1]
00006DB3  884EF3            mov [bp-0xd],cl
00006DB6  8A0EC22A          mov cl,[0x2ac2]
00006DBA  884EF4            mov [bp-0xc],cl
00006DBD  8A0EC52A          mov cl,[0x2ac5]
00006DC1  884EF5            mov [bp-0xb],cl
00006DC4  8A0EC62A          mov cl,[0x2ac6]
00006DC8  884EF6            mov [bp-0xa],cl
00006DCB  B80600            mov ax,0x6
00006DCE  50                push ax
00006DCF  8D46F1            lea ax,[bp-0xf]
00006DD2  50                push ax
00006DD3  E8B201            call word 0x6f88
00006DD6  5B                pop bx
00006DD7  5B                pop bx
00006DD8  09C0              or ax,ax
00006DDA  7469              jz 0x6e45
00006DDC  B8FEFF            mov ax,0xfffe
00006DDF  E90901            jmp word 0x6eeb
00006DE2  837E0408          cmp word [bp+0x4],byte +0x8
00006DE6  7505              jnz 0x6ded
00006DE8  B8C500            mov ax,0xc5
00006DEB  EB03              jmp short 0x6df0
00006DED  B8E600            mov ax,0xe6
00006DF0  8846F1            mov [bp-0xf],al
00006DF3  B90200            mov cx,0x2
00006DF6  8B5408            mov dx,[si+0x8]
00006DF9  D3E2              shl dx,cl
00006DFB  0B169A2A          or dx,[0x2a9a]
00006DFF  8856F2            mov [bp-0xe],dl
00006E02  8B5404            mov dx,[si+0x4]
00006E05  8856F3            mov [bp-0xd],dl
00006E08  8B5408            mov dx,[si+0x8]
00006E0B  8856F4            mov [bp-0xc],dl
00006E0E  8B5406            mov dx,[si+0x6]
00006E11  42                inc dx
00006E12  8856F5            mov [bp-0xb],dl
00006E15  C646F602          mov byte [bp-0xa],0x2
00006E19  8B16A42A          mov dx,[0x2aa4]
00006E1D  8856F7            mov [bp-0x9],dl
00006E20  8B1EA02A          mov bx,[0x2aa0]
00006E24  8A4F06            mov cl,[bx+0x6]
00006E27  884EF8            mov [bp-0x8],cl
00006E2A  C646F9FF          mov byte [bp-0x7],0xff
00006E2E  B80900            mov ax,0x9
00006E31  50                push ax
00006E32  8D46F1            lea ax,[bp-0xf]
00006E35  50                push ax
00006E36  E84F01            call word 0x6f88
00006E39  5B                pop bx
00006E3A  5B                pop bx
00006E3B  09C0              or ax,ax
00006E3D  7406              jz 0x6e45
00006E3F  B8FEFF            mov ax,0xfffe
00006E42  E9A600            jmp word 0x6eeb
00006E45  E8EB02            call word 0x7133
00006E48  09C0              or ax,ax
00006E4A  7406              jz 0x6e52
00006E4C  B8F8FF            mov ax,0xfff8
00006E4F  E99900            jmp word 0x6eeb
00006E52  E89900            call word 0x6eee
00006E55  8946FC            mov [bp-0x4],ax
00006E58  09C0              or ax,ax
00006E5A  7403              jz 0x6e5f
00006E5C  E98C00            jmp word 0x6eeb
00006E5F  F606CB2A02        test byte [0x2acb],0x2
00006E64  7413              jz 0x6e79
00006E66  E87CF8            call word 0x66e5
00006E69  50                push ax
00006E6A  B8CE10            mov ax,0x10ce
00006E6D  50                push ax
00006E6E  E8C335            call word 0xa434
00006E71  5B                pop bx
00006E72  5B                pop bx
00006E73  B8F9FF            mov ax,0xfff9
00006E76  E97200            jmp word 0x6eeb
00006E79  F606CA2AF8        test byte [0x2aca],0xf8
00006E7E  7405              jz 0x6e85
00006E80  B8FEFF            mov ax,0xfffe
00006E83  EB66              jmp short 0x6eeb
00006E85  8A16CC2A          mov dl,[0x2acc]
00006E89  30F6              xor dh,dh
00006E8B  8A0ECB2A          mov cl,[0x2acb]
00006E8F  30ED              xor ch,ch
00006E91  09CA              or dx,cx
00006E93  7405              jz 0x6e9a
00006E95  B8FEFF            mov ax,0xfffe
00006E98  EB51              jmp short 0x6eeb
00006E9A  F6069C2A80        test byte [0x2a9c],0x80
00006E9F  7404              jz 0x6ea5
00006EA1  31C0              xor ax,ax
00006EA3  EB46              jmp short 0x6eeb
00006EA5  8A16CD2A          mov dl,[0x2acd]
00006EA9  30F6              xor dh,dh
00006EAB  2B5404            sub dx,[si+0x4]
00006EAE  D1E2              shl dx,1
00006EB0  89D0              mov ax,dx
00006EB2  F726A42A          mul word [0x2aa4]
00006EB6  89C7              mov di,ax
00006EB8  8A16CE2A          mov dl,[0x2ace]
00006EBC  30F6              xor dh,dh
00006EBE  2B5408            sub dx,[si+0x8]
00006EC1  89D0              mov ax,dx
00006EC3  F726A42A          mul word [0x2aa4]
00006EC7  01C7              add di,ax
00006EC9  8A16CF2A          mov dl,[0x2acf]
00006ECD  30F6              xor dh,dh
00006ECF  4A                dec dx
00006ED0  2B5406            sub dx,[si+0x6]
00006ED3  01D7              add di,dx
00006ED5  83FF01            cmp di,byte +0x1
00006ED8  7405              jz 0x6edf
00006EDA  B8FEFF            mov ax,0xfffe
00006EDD  EB0C              jmp short 0x6eeb
00006EDF  8A16CF2A          mov dl,[0x2acf]
00006EE3  30F6              xor dh,dh
00006EE5  4A                dec dx
00006EE6  895406            mov [si+0x6],dx
00006EE9  31C0              xor ax,ax
00006EEB  E9BF3F            jmp word 0xaead
00006EEE  55                push bp
00006EEF  89E5              mov bp,sp
00006EF1  83EC0A            sub sp,byte +0xa
00006EF4  56                push si
00006EF5  57                push di
00006EF6  31F6              xor si,si
00006EF8  8D46F6            lea ax,[bp-0xa]
00006EFB  50                push ax
00006EFC  E870BD            call word 0x2c6f
00006EFF  5B                pop bx
00006F00  B8F403            mov ax,0x3f4
00006F03  50                push ax
00006F04  E89E3B            call word 0xaaa5
00006F07  5B                pop bx
00006F08  25D000            and ax,0xd0
00006F0B  89C7              mov di,ax
00006F0D  81FFD000          cmp di,0xd0
00006F11  7525              jnz 0x6f38
00006F13  83FE07            cmp si,byte +0x7
00006F16  7D46              jnl 0x6f5e
00006F18  B8F503            mov ax,0x3f5
00006F1B  50                push ax
00006F1C  E8863B            call word 0xaaa5
00006F1F  5B                pop bx
00006F20  89F2              mov dx,si
00006F22  42                inc dx
00006F23  31DB              xor bx,bx
00006F25  88C3              mov bl,al
00006F27  53                push bx
00006F28  B8CA2A            mov ax,0x2aca
00006F2B  50                push ax
00006F2C  56                push si
00006F2D  89D6              mov si,dx
00006F2F  5A                pop dx
00006F30  5B                pop bx
00006F31  01D3              add bx,dx
00006F33  5A                pop dx
00006F34  8817              mov [bx],dl
00006F36  EB12              jmp short 0x6f4a
00006F38  81FF8000          cmp di,0x80
00006F3C  750C              jnz 0x6f4a
00006F3E  B8A82A            mov ax,0x2aa8
00006F41  50                push ax
00006F42  E8D69A            call word 0xa1b
00006F45  5B                pop bx
00006F46  31C0              xor ax,ax
00006F48  EB25              jmp short 0x6f6f
00006F4A  8D46F6            lea ax,[bp-0xa]
00006F4D  50                push ax
00006F4E  E836BD            call word 0x2c87
00006F51  5B                pop bx
00006F52  83FA07            cmp dx,byte +0x7
00006F55  72A9              jc 0x6f00
00006F57  7505              jnz 0x6f5e
00006F59  3D20A1            cmp ax,0xa120
00006F5C  72A2              jc 0x6f00
00006F5E  C706982A0100      mov word [0x2a98],0x1
00006F64  B8A82A            mov ax,0x2aa8
00006F67  50                push ax
00006F68  E8B09A            call word 0xa1b
00006F6B  5B                pop bx
00006F6C  B8FDFF            mov ax,0xfffd
00006F6F  E93B3F            jmp word 0xaead
00006F72  55                push bp
00006F73  89E5              mov bp,sp
00006F75  C706A62A0000      mov word [0x2aa6],0x0
00006F7B  B8FBFF            mov ax,0xfffb
00006F7E  50                push ax
00006F7F  E845A0            call word 0xfc7
00006F82  5B                pop bx
00006F83  31C0              xor ax,ax
00006F85  E9273F            jmp word 0xaeaf
00006F88  55                push bp
00006F89  89E5              mov bp,sp
00006F8B  B86471            mov ax,0x7164
00006F8E  50                push ax
00006F8F  E8B3B9            call word 0x2945
00006F92  057800            add ax,0x78
00006F95  83D200            adc dx,byte +0x0
00006F98  52                push dx
00006F99  50                push ax
00006F9A  B8FDFF            mov ax,0xfffd
00006F9D  50                push ax
00006F9E  B8B02A            mov ax,0x2ab0
00006FA1  50                push ax
00006FA2  E89EB8            call word 0x2843
00006FA5  83C40A            add sp,byte +0xa
00006FA8  C706A62A0100      mov word [0x2aa6],0x1
00006FAE  837E0600          cmp word [bp+0x6],byte +0x0
00006FB2  7E14              jng 0x6fc8
00006FB4  8B5E04            mov bx,[bp+0x4]
00006FB7  FF4604            inc word [bp+0x4]
00006FBA  31C0              xor ax,ax
00006FBC  8A07              mov al,[bx]
00006FBE  50                push ax
00006FBF  E81700            call word 0x6fd9
00006FC2  5B                pop bx
00006FC3  FF4E06            dec word [bp+0x6]
00006FC6  EBE6              jmp short 0x6fae
00006FC8  833E982A00        cmp word [0x2a98],byte +0x0
00006FCD  7405              jz 0x6fd4
00006FCF  B8FAFF            mov ax,0xfffa
00006FD2  EB02              jmp short 0x6fd6
00006FD4  31C0              xor ax,ax
00006FD6  E9D63E            jmp word 0xaeaf
00006FD9  55                push bp
00006FDA  89E5              mov bp,sp
00006FDC  83EC06            sub sp,byte +0x6
00006FDF  833E982A00        cmp word [0x2a98],byte +0x0
00006FE4  7540              jnz 0x7026
00006FE6  8D46FA            lea ax,[bp-0x6]
00006FE9  50                push ax
00006FEA  E882BC            call word 0x2c6f
00006FED  5B                pop bx
00006FEE  B8F403            mov ax,0x3f4
00006FF1  50                push ax
00006FF2  E8B03A            call word 0xaaa5
00006FF5  5B                pop bx
00006FF6  25C000            and ax,0xc0
00006FF9  3D8000            cmp ax,0x80
00006FFC  741C              jz 0x701a
00006FFE  8D46FA            lea ax,[bp-0x6]
00007001  50                push ax
00007002  E882BC            call word 0x2c87
00007005  5B                pop bx
00007006  83FA07            cmp dx,byte +0x7
00007009  72E3              jc 0x6fee
0000700B  7505              jnz 0x7012
0000700D  3D20A1            cmp ax,0xa120
00007010  72DC              jc 0x6fee
00007012  C706982A0100      mov word [0x2a98],0x1
00007018  EB0C              jmp short 0x7026
0000701A  FF7604            push word [bp+0x4]
0000701D  B8F503            mov ax,0x3f5
00007020  50                push ax
00007021  E8903A            call word 0xaab4
00007024  5B                pop bx
00007025  5B                pop bx
00007026  E9863E            jmp word 0xaeaf
00007029  55                push bp
0000702A  89E5              mov bp,sp
0000702C  83EC06            sub sp,byte +0x6
0000702F  56                push si
00007030  8B369E2A          mov si,[0x2a9e]
00007034  C646FA07          mov byte [bp-0x6],0x7
00007038  8B169A2A          mov dx,[0x2a9a]
0000703C  8856FB            mov [bp-0x5],dl
0000703F  B80200            mov ax,0x2
00007042  50                push ax
00007043  8D46FA            lea ax,[bp-0x6]
00007046  50                push ax
00007047  E83EFF            call word 0x6f88
0000704A  5B                pop bx
0000704B  5B                pop bx
0000704C  09C0              or ax,ax
0000704E  7405              jz 0x7055
00007050  B8FFFF            mov ax,0xffff
00007053  EB58              jmp short 0x70ad
00007055  E8DB00            call word 0x7133
00007058  09C0              or ax,ax
0000705A  7405              jz 0x7061
0000705C  B8F8FF            mov ax,0xfff8
0000705F  EB4C              jmp short 0x70ad
00007061  B80800            mov ax,0x8
00007064  50                push ax
00007065  E871FF            call word 0x6fd9
00007068  5B                pop bx
00007069  E882FE            call word 0x6eee
0000706C  8946FC            mov [bp-0x4],ax
0000706F  C704FFFF          mov word [si],0xffff
00007073  C74406FFFF        mov word [si+0x6],0xffff
00007078  837EFC00          cmp word [bp-0x4],byte +0x0
0000707C  7516              jnz 0x7094
0000707E  8A16CA2A          mov dl,[0x2aca]
00007082  30F6              xor dh,dh
00007084  81E2F800          and dx,0xf8
00007088  83FA20            cmp dx,byte +0x20
0000708B  7507              jnz 0x7094
0000708D  803ECB2A00        cmp byte [0x2acb],0x0
00007092  740B              jz 0x709f
00007094  C706982A0100      mov word [0x2a98],0x1
0000709A  B8FBFF            mov ax,0xfffb
0000709D  EB0E              jmp short 0x70ad
0000709F  C6440A01          mov byte [si+0xa],0x1
000070A3  8A16CB2A          mov dl,[0x2acb]
000070A7  30F6              xor dh,dh
000070A9  8914              mov [si],dx
000070AB  31C0              xor ax,ax
000070AD  E9FE3D            jmp word 0xaeae
000070B0  55                push bp
000070B1  89E5              mov bp,sp
000070B3  83EC1A            sub sp,byte +0x1a
000070B6  56                push si
000070B7  C706982A0000      mov word [0x2a98],0x0
000070BD  31C0              xor ax,ax
000070BF  50                push ax
000070C0  50                push ax
000070C1  E8C4FE            call word 0x6f88
000070C4  5B                pop bx
000070C5  5B                pop bx
000070C6  E8E739            call word 0xaab0
000070C9  C706962A0000      mov word [0x2a96],0x0
000070CF  31C0              xor ax,ax
000070D1  50                push ax
000070D2  B8F203            mov ax,0x3f2
000070D5  50                push ax
000070D6  E8DB39            call word 0xaab4
000070D9  5B                pop bx
000070DA  5B                pop bx
000070DB  B80C00            mov ax,0xc
000070DE  50                push ax
000070DF  B8F203            mov ax,0x3f2
000070E2  50                push ax
000070E3  E8CE39            call word 0xaab4
000070E6  5B                pop bx
000070E7  5B                pop bx
000070E8  E8C739            call word 0xaab2
000070EB  8D46E6            lea ax,[bp-0x1a]
000070EE  50                push ax
000070EF  B8FFFF            mov ax,0xffff
000070F2  50                push ax
000070F3  E8E439            call word 0xaada
000070F6  5B                pop bx
000070F7  5B                pop bx
000070F8  833EA62A01        cmp word [0x2aa6],byte +0x1
000070FD  74EC              jz 0x70eb
000070FF  31F6              xor si,si
00007101  83FE04            cmp si,byte +0x4
00007104  7D0E              jnl 0x7114
00007106  B80800            mov ax,0x8
00007109  50                push ax
0000710A  E8CCFE            call word 0x6fd9
0000710D  5B                pop bx
0000710E  E8DDFD            call word 0x6eee
00007111  46                inc si
00007112  EBED              jmp short 0x7101
00007114  31F6              xor si,si
00007116  83FE02            cmp si,byte +0x2
00007119  7D0F              jnl 0x712a
0000711B  B86A00            mov ax,0x6a
0000711E  F7E6              mul si
00007120  89C3              mov bx,ax
00007122  C687CC2900        mov byte [bx+0x29cc],0x0
00007127  46                inc si
00007128  EBEC              jmp short 0x7116
0000712A  C706A22A0000      mov word [0x2aa2],0x0
00007130  E97B3D            jmp word 0xaeae
00007133  55                push bp
00007134  89E5              mov bp,sp
00007136  83EC18            sub sp,byte +0x18
00007139  8D46E8            lea ax,[bp-0x18]
0000713C  50                push ax
0000713D  B8FFFF            mov ax,0xffff
00007140  50                push ax
00007141  E89639            call word 0xaada
00007144  5B                pop bx
00007145  5B                pop bx
00007146  833EA62A01        cmp word [0x2aa6],byte +0x1
0000714B  74EC              jz 0x7139
0000714D  833EA62A02        cmp word [0x2aa6],byte +0x2
00007152  750B              jnz 0x715f
00007154  C706982A0100      mov word [0x2a98],0x1
0000715A  B8F8FF            mov ax,0xfff8
0000715D  EB02              jmp short 0x7161
0000715F  31C0              xor ax,ax
00007161  E94B3D            jmp word 0xaeaf
00007164  55                push bp
00007165  89E5              mov bp,sp
00007167  833EA62A01        cmp word [0x2aa6],byte +0x1
0000716C  750E              jnz 0x717c
0000716E  C706A62A0200      mov word [0x2aa6],0x2
00007174  B8FBFF            mov ax,0xfffb
00007177  50                push ax
00007178  E84C9E            call word 0xfc7
0000717B  5B                pop bx
0000717C  E9303D            jmp word 0xaeaf
0000717F  55                push bp
00007180  89E5              mov bp,sp
00007182  83EC06            sub sp,byte +0x6
00007185  56                push si
00007186  57                push di
00007187  8B369E2A          mov si,[0x2a9e]
0000718B  807C0A00          cmp byte [si+0xa],0x0
0000718F  7506              jnz 0x7197
00007191  B8FCFF            mov ax,0xfffc
00007194  E98300            jmp word 0x721a
00007197  8B0E9A2A          mov cx,[0x2a9a]
0000719B  BA0100            mov dx,0x1
0000719E  D3E2              shl dx,cl
000071A0  8516962A          test [0x2a96],dx
000071A4  7506              jnz 0x71ac
000071A6  B8FCFF            mov ax,0xfffc
000071A9  E96E00            jmp word 0x721a
000071AC  C646FA4A          mov byte [bp-0x6],0x4a
000071B0  B90200            mov cx,0x2
000071B3  8B5408            mov dx,[si+0x8]
000071B6  D3E2              shl dx,cl
000071B8  0B169A2A          or dx,[0x2a9a]
000071BC  8856FB            mov [bp-0x5],dl
000071BF  B80200            mov ax,0x2
000071C2  50                push ax
000071C3  8D46FA            lea ax,[bp-0x6]
000071C6  50                push ax
000071C7  E8BEFD            call word 0x6f88
000071CA  5B                pop bx
000071CB  5B                pop bx
000071CC  09C0              or ax,ax
000071CE  7405              jz 0x71d5
000071D0  B8FCFF            mov ax,0xfffc
000071D3  EB45              jmp short 0x721a
000071D5  E85BFF            call word 0x7133
000071D8  09C0              or ax,ax
000071DA  7405              jz 0x71e1
000071DC  B8F8FF            mov ax,0xfff8
000071DF  EB39              jmp short 0x721a
000071E1  E80AFD            call word 0x6eee
000071E4  89C7              mov di,ax
000071E6  09FF              or di,di
000071E8  7404              jz 0x71ee
000071EA  89F8              mov ax,di
000071EC  EB2C              jmp short 0x721a
000071EE  F606CA2AF8        test byte [0x2aca],0xf8
000071F3  7405              jz 0x71fa
000071F5  B8FCFF            mov ax,0xfffc
000071F8  EB20              jmp short 0x721a
000071FA  8A16CC2A          mov dl,[0x2acc]
000071FE  30F6              xor dh,dh
00007200  8A0ECB2A          mov cl,[0x2acb]
00007204  30ED              xor ch,ch
00007206  09CA              or dx,cx
00007208  7405              jz 0x720f
0000720A  B8FCFF            mov ax,0xfffc
0000720D  EB0B              jmp short 0x721a
0000720F  8A16CF2A          mov dl,[0x2acf]
00007213  30F6              xor dh,dh
00007215  895406            mov [si+0x6],dx
00007218  31C0              xor ax,ax
0000721A  E9903C            jmp word 0xaead
0000721D  55                push bp
0000721E  89E5              mov bp,sp
00007220  56                push si
00007221  57                push di
00007222  8B5E06            mov bx,[bp+0x6]
00007225  FF7704            push word [bx+0x4]
00007228  E8F8F3            call word 0x6623
0000722B  5B                pop bx
0000722C  09C0              or ax,ax
0000722E  7506              jnz 0x7236
00007230  B8FAFF            mov ax,0xfffa
00007233  E9DE00            jmp word 0x7314
00007236  BA7C00            mov dx,0x7c
00007239  23169C2A          and dx,[0x2a9c]
0000723D  89D6              mov si,dx
0000723F  83FE70            cmp si,byte +0x70
00007242  7C02              jl 0x7246
00007244  31F6              xor si,si
00007246  09F6              or si,si
00007248  742B              jz 0x7275
0000724A  B90200            mov cx,0x2
0000724D  89F2              mov dx,si
0000724F  D3FA              sar dx,cl
00007251  4A                dec dx
00007252  89D6              mov si,dx
00007254  83FE07            cmp si,byte +0x7
00007257  7C06              jl 0x725f
00007259  B8FAFF            mov ax,0xfffa
0000725C  E9B500            jmp word 0x7314
0000725F  8B1E9E2A          mov bx,[0x2a9e]
00007263  89F2              mov dx,si
00007265  88570B            mov [bx+0xb],dl
00007268  FF369C2A          push word [0x2a9c]
0000726C  E8B4F3            call word 0x6623
0000726F  5B                pop bx
00007270  31C0              xor ax,ax
00007272  E99F00            jmp word 0x7314
00007275  F6069C2A80        test byte [0x2a9c],0x80
0000727A  7406              jz 0x7282
0000727C  B8FBFF            mov ax,0xfffb
0000727F  E99200            jmp word 0x7314
00007282  8B1E9E2A          mov bx,[0x2a9e]
00007286  807F0B64          cmp byte [bx+0xb],0x64
0000728A  742A              jz 0x72b6
0000728C  8B0E9A2A          mov cx,[0x2a9a]
00007290  BA0100            mov dx,0x1
00007293  D3E2              shl dx,cl
00007295  8516962A          test [0x2a96],dx
00007299  7405              jz 0x72a0
0000729B  31C0              xor ax,ax
0000729D  E97400            jmp word 0x7314
000072A0  8B1E9E2A          mov bx,[0x2a9e]
000072A4  31C0              xor ax,ax
000072A6  8A470B            mov al,[bx+0xb]
000072A9  50                push ax
000072AA  E86A00            call word 0x7317
000072AD  5B                pop bx
000072AE  09C0              or ax,ax
000072B0  7504              jnz 0x72b6
000072B2  31C0              xor ax,ax
000072B4  EB5E              jmp short 0x7314
000072B6  BFAA10            mov di,0x10aa
000072B9  81FFB610          cmp di,0x10b6
000072BD  734A              jnc 0x7309
000072BF  8A15              mov dl,[di]
000072C1  30F6              xor dh,dh
000072C3  89D6              mov si,dx
000072C5  8B1E9E2A          mov bx,[0x2a9e]
000072C9  89F1              mov cx,si
000072CB  BA0100            mov dx,0x1
000072CE  D3E2              shl dx,cl
000072D0  8A4F0C            mov cl,[bx+0xc]
000072D3  30ED              xor ch,ch
000072D5  85D1              test cx,dx
000072D7  742B              jz 0x7304
000072D9  56                push si
000072DA  E83A00            call word 0x7317
000072DD  5B                pop bx
000072DE  09C0              or ax,ax
000072E0  751B              jnz 0x72fd
000072E2  8B1E9E2A          mov bx,[0x2a9e]
000072E6  8A570C            mov dl,[bx+0xc]
000072E9  30F6              xor dh,dh
000072EB  8A4D01            mov cl,[di+0x1]
000072EE  30ED              xor ch,ch
000072F0  21CA              and dx,cx
000072F2  8B1E9E2A          mov bx,[0x2a9e]
000072F6  88570C            mov [bx+0xc],dl
000072F9  31C0              xor ax,ax
000072FB  EB17              jmp short 0x7314
000072FD  833EA62A02        cmp word [0x2aa6],byte +0x2
00007302  7405              jz 0x7309
00007304  83C702            add di,byte +0x2
00007307  EBB0              jmp short 0x72b9
00007309  8B1E9E2A          mov bx,[0x2a9e]
0000730D  C6470B64          mov byte [bx+0xb],0x64
00007311  B8FBFF            mov ax,0xfffb
00007314  E9963B            jmp word 0xaead
00007317  55                push bp
00007318  89E5              mov bp,sp
0000731A  83EC0A            sub sp,byte +0xa
0000731D  8B1E9E2A          mov bx,[0x2a9e]
00007321  8B5604            mov dx,[bp+0x4]
00007324  88570B            mov [bx+0xb],dl
00007327  8B5604            mov dx,[bp+0x4]
0000732A  42                inc dx
0000732B  B90200            mov cx,0x2
0000732E  D3E2              shl dx,cl
00007330  03169A2A          add dx,[0x2a9a]
00007334  8956FE            mov [bp-0x2],dx
00007337  52                push dx
00007338  E8E8F2            call word 0x6623
0000733B  5B                pop bx
0000733C  8B1EA02A          mov bx,[0x2aa0]
00007340  B90900            mov cx,0x9
00007343  8A5703            mov dl,[bx+0x3]
00007346  30F6              xor dh,dh
00007348  31DB              xor bx,bx
0000734A  E306              jcxz 0x7352
0000734C  D1E2              shl dx,1
0000734E  D1D3              rcl bx,1
00007350  E2FA              loop 0x734c
00007352  8956FA            mov [bp-0x6],dx
00007355  895EFC            mov [bp-0x4],bx
00007358  8B169E74          mov dx,[0x749e]
0000735C  8956F6            mov [bp-0xa],dx
0000735F  C746F80002        mov word [bp-0x8],0x200
00007364  B80100            mov ax,0x1
00007367  50                push ax
00007368  8D46F6            lea ax,[bp-0xa]
0000736B  50                push ax
0000736C  FF76FC            push word [bp-0x4]
0000736F  FF76FA            push word [bp-0x6]
00007372  B80900            mov ax,0x9
00007375  50                push ax
00007376  B8FBFF            mov ax,0xfffb
00007379  50                push ax
0000737A  E8B7F3            call word 0x6734
0000737D  83C40C            add sp,byte +0xc
00007380  837EF800          cmp word [bp-0x8],byte +0x0
00007384  7405              jz 0x738b
00007386  B8FBFF            mov ax,0xfffb
00007389  EB13              jmp short 0x739e
0000738B  31C0              xor ax,ax
0000738D  50                push ax
0000738E  FF369A2A          push word [0x2a9a]
00007392  B8B610            mov ax,0x10b6
00007395  50                push ax
00007396  E8FAED            call word 0x6193
00007399  83C406            add sp,byte +0x6
0000739C  31C0              xor ax,ax
0000739E  E90E3B            jmp word 0xaeaf
000073A1  55                push bp
000073A2  89E5              mov bp,sp
000073A4  8B1EA02A          mov bx,[0x2aa0]
000073A8  31C0              xor ax,ax
000073AA  8A4701            mov al,[bx+0x1]
000073AD  50                push ax
000073AE  8B5E04            mov bx,[bp+0x4]
000073B1  5A                pop dx
000073B2  895710            mov [bx+0x10],dx
000073B5  8B5E04            mov bx,[bp+0x4]
000073B8  C747120200        mov word [bx+0x12],0x2
000073BD  8B5E04            mov bx,[bp+0x4]
000073C0  8B16A42A          mov dx,[0x2aa4]
000073C4  895714            mov [bx+0x14],dx
000073C7  E9E53A            jmp word 0xaeaf
000073CA  55                push bp
000073CB  89E5              mov bp,sp
000073CD  8B1EF445          mov bx,[0x45f4]
000073D1  8B5744            mov dx,[bx+0x44]
000073D4  89169C30          mov [0x309c],dx
000073D8  E80B00            call word 0x73e6
000073DB  B8F010            mov ax,0x10f0
000073DE  50                push ax
000073DF  E8B1E9            call word 0x5d93
000073E2  5B                pop bx
000073E3  E9C93A            jmp word 0xaeaf
000073E6  55                push bp
000073E7  89E5              mov bp,sp
000073E9  83EC20            sub sp,byte +0x20
000073EC  56                push si
000073ED  57                push di
000073EE  8D5EE4            lea bx,[bp-0x1c]
000073F1  31D2              xor dx,dx
000073F3  031E8446          add bx,[0x4684]
000073F7  13168646          adc dx,[0x4686]
000073FB  895EE0            mov [bp-0x20],bx
000073FE  8956E2            mov [bp-0x1e],dx
00007401  31C0              xor ax,ax
00007403  50                push ax
00007404  B80100            mov ax,0x1
00007407  50                push ax
00007408  FF76E2            push word [bp-0x1e]
0000740B  FF76E0            push word [bp-0x20]
0000740E  31C0              xor ax,ax
00007410  50                push ax
00007411  B87504            mov ax,0x475
00007414  50                push ax
00007415  E86D96            call word 0xa85
00007418  83C40C            add sp,byte +0xc
0000741B  8A56E4            mov dl,[bp-0x1c]
0000741E  30F6              xor dh,dh
00007420  8956F6            mov [bp-0xa],dx
00007423  83FA02            cmp dx,byte +0x2
00007426  7E05              jng 0x742d
00007428  C746F60200        mov word [bp-0xa],0x2
0000742D  31FF              xor di,di
0000742F  BED22A            mov si,0x2ad2
00007432  83FF04            cmp di,byte +0x4
00007435  7C03              jl 0x743a
00007437  E9B700            jmp word 0x74f1
0000743A  397EF6            cmp [bp-0xa],di
0000743D  7F03              jg 0x7442
0000743F  E98400            jmp word 0x74c6
00007442  09FF              or di,di
00007444  7505              jnz 0x744b
00007446  B84100            mov ax,0x41
00007449  EB03              jmp short 0x744e
0000744B  B84600            mov ax,0x46
0000744E  8946FA            mov [bp-0x6],ax
00007451  8D5EFC            lea bx,[bp-0x4]
00007454  31D2              xor dx,dx
00007456  031E8446          add bx,[0x4684]
0000745A  13168646          adc dx,[0x4686]
0000745E  31C9              xor cx,cx
00007460  D1E0              shl ax,1
00007462  D1D1              rcl cx,1
00007464  D1E0              shl ax,1
00007466  D1D1              rcl cx,1
00007468  FF360011          push word [0x1100]
0000746C  FF360211          push word [0x1102]
00007470  52                push dx
00007471  53                push bx
00007472  51                push cx
00007473  50                push ax
00007474  E80E96            call word 0xa85
00007477  83C40C            add sp,byte +0xc
0000747A  B90400            mov cx,0x4
0000747D  8B56FE            mov dx,[bp-0x2]
00007480  31DB              xor bx,bx
00007482  E306              jcxz 0x748a
00007484  D1E2              shl dx,1
00007486  D1D3              rcl bx,1
00007488  E2FA              loop 0x7484
0000748A  0356FC            add dx,[bp-0x4]
0000748D  83D300            adc bx,byte +0x0
00007490  31C0              xor ax,ax
00007492  50                push ax
00007493  B81000            mov ax,0x10
00007496  50                push ax
00007497  FF76E2            push word [bp-0x1e]
0000749A  FF76E0            push word [bp-0x20]
0000749D  53                push bx
0000749E  52                push dx
0000749F  E8E395            call word 0xa85
000074A2  83C40C            add sp,byte +0xc
000074A5  8B56E4            mov dx,[bp-0x1c]
000074A8  895406            mov [si+0x6],dx
000074AB  8A56E6            mov dl,[bp-0x1a]
000074AE  30F6              xor dh,dh
000074B0  895408            mov [si+0x8],dx
000074B3  8A56F2            mov dl,[bp-0xe]
000074B6  30F6              xor dh,dh
000074B8  89540A            mov [si+0xa],dx
000074BB  B90200            mov cx,0x2
000074BE  8B56E9            mov dx,[bp-0x17]
000074C1  D3EA              shr dx,cl
000074C3  895414            mov [si+0x14],dx
000074C6  B90400            mov cx,0x4
000074C9  89FA              mov dx,di
000074CB  D3E2              shl dx,cl
000074CD  81CAA000          or dx,0xa0
000074D1  895412            mov [si+0x12],dx
000074D4  C7441600FE        mov word [si+0x16],0xfe00
000074D9  83FF02            cmp di,byte +0x2
000074DC  7D05              jnl 0x74e3
000074DE  B8F001            mov ax,0x1f0
000074E1  EB03              jmp short 0x74e6
000074E3  B87001            mov ax,0x170
000074E6  894402            mov [si+0x2],ax
000074E9  47                inc di
000074EA  81C67201          add si,0x172
000074EE  E941FF            jmp word 0x7432
000074F1  E9B939            jmp word 0xaead
000074F4  55                push bp
000074F5  89E5              mov bp,sp
000074F7  50                push ax
000074F8  50                push ax
000074F9  56                push si
000074FA  8B5E06            mov bx,[bp+0x6]
000074FD  FF7704            push word [bx+0x4]
00007500  E87D00            call word 0x7580
00007503  5B                pop bx
00007504  09C0              or ax,ax
00007506  7506              jnz 0x750e
00007508  B8FAFF            mov ax,0xfffa
0000750B  E96F00            jmp word 0x757d
0000750E  8B369A30          mov si,[0x309a]
00007512  833C00            cmp word [si],byte +0x0
00007515  7525              jnz 0x753c
00007517  E8E900            call word 0x7603
0000751A  09C0              or ax,ax
0000751C  741E              jz 0x753c
0000751E  E89403            call word 0x78b5
00007521  50                push ax
00007522  B80411            mov ax,0x1104
00007525  50                push ax
00007526  E80B2F            call word 0xa434
00007529  5B                pop bx
0000752A  5B                pop bx
0000752B  F60402            test byte [si],0x2
0000752E  7403              jz 0x7533
00007530  E83609            call word 0x7e69
00007533  C7040000          mov word [si],0x0
00007537  B8FAFF            mov ax,0xfffa
0000753A  EB41              jmp short 0x757d
0000753C  837C1800          cmp word [si+0x18],byte +0x0
00007540  7539              jnz 0x757b
00007542  F60408            test byte [si],0x8
00007545  741A              jz 0x7561
00007547  8B5E06            mov bx,[bp+0x6]
0000754A  F6470802          test byte [bx+0x8],0x2
0000754E  7405              jz 0x7555
00007550  B8F3FF            mov ax,0xfff3
00007553  EB28              jmp short 0x757d
00007555  E8DA0A            call word 0x8032
00007558  8946FC            mov [bp-0x4],ax
0000755B  09C0              or ax,ax
0000755D  7402              jz 0x7561
0000755F  EB1C              jmp short 0x757d
00007561  B80500            mov ax,0x5
00007564  F726A230          mul word [0x30a2]
00007568  BB0100            mov bx,0x1
0000756B  53                push bx
0000756C  50                push ax
0000756D  B8F010            mov ax,0x10f0
00007570  50                push ax
00007571  E81FEC            call word 0x6193
00007574  83C406            add sp,byte +0x6
00007577  83441801          add word [si+0x18],byte +0x1
0000757B  31C0              xor ax,ax
0000757D  E92E39            jmp word 0xaeae
00007580  55                push bp
00007581  89E5              mov bp,sp
00007583  56                push si
00007584  8B7604            mov si,[bp+0x4]
00007587  83FE14            cmp si,byte +0x14
0000758A  7D32              jnl 0x75be
0000758C  B90500            mov cx,0x5
0000758F  89F0              mov ax,si
00007591  99                cwd
00007592  F7F9              idiv cx
00007594  A3A230            mov [0x30a2],ax
00007597  B97201            mov cx,0x172
0000759A  F7E1              mul cx
0000759C  89C3              mov bx,ax
0000759E  81C3D22A          add bx,0x2ad2
000075A2  891E9A30          mov [0x309a],bx
000075A6  B90500            mov cx,0x5
000075A9  89F0              mov ax,si
000075AB  99                cwd
000075AC  F7F9              idiv cx
000075AE  83C322            add bx,byte +0x22
000075B1  B90400            mov cx,0x4
000075B4  D3E2              shl dx,cl
000075B6  01D3              add bx,dx
000075B8  891EA430          mov [0x30a4],bx
000075BC  EB3F              jmp short 0x75fd
000075BE  81EE8000          sub si,0x80
000075C2  83FE40            cmp si,byte +0x40
000075C5  7332              jnc 0x75f9
000075C7  B91000            mov cx,0x10
000075CA  89F0              mov ax,si
000075CC  99                cwd
000075CD  F7F9              idiv cx
000075CF  A3A230            mov [0x30a2],ax
000075D2  B97201            mov cx,0x172
000075D5  F7E1              mul cx
000075D7  89C3              mov bx,ax
000075D9  81C3D22A          add bx,0x2ad2
000075DD  891E9A30          mov [0x309a],bx
000075E1  B91000            mov cx,0x10
000075E4  89F0              mov ax,si
000075E6  99                cwd
000075E7  F7F9              idiv cx
000075E9  83C372            add bx,byte +0x72
000075EC  B90400            mov cx,0x4
000075EF  D3E2              shl dx,cl
000075F1  01D3              add bx,dx
000075F3  891EA430          mov [0x30a4],bx
000075F7  EB04              jmp short 0x75fd
000075F9  31C0              xor ax,ax
000075FB  EB03              jmp short 0x7600
000075FD  A1A430            mov ax,[0x30a4]
00007600  E9AB38            jmp word 0xaeae
00007603  55                push bp
00007604  89E5              mov bp,sp
00007606  83EC42            sub sp,byte +0x42
00007609  56                push si
0000760A  57                push di
0000760B  8B369A30          mov si,[0x309a]
0000760F  8B5412            mov dx,[si+0x12]
00007612  8856FB            mov [bp-0x5],dl
00007615  C646FCEC          mov byte [bp-0x4],0xec
00007619  8D46F6            lea ax,[bp-0xa]
0000761C  50                push ax
0000761D  E8DA07            call word 0x7dfa
00007620  5B                pop bx
00007621  09C0              or ax,ax
00007623  7403              jz 0x7628
00007625  E96C01            jmp word 0x7794
00007628  810C0400          or word [si],0x4
0000762C  B80002            mov ax,0x200
0000762F  50                push ax
00007630  FF36A274          push word [0x74a2]
00007634  FF36A074          push word [0x74a0]
00007638  FF7402            push word [si+0x2]
0000763B  E87593            call word 0x9b3
0000763E  83C408            add sp,byte +0x8
00007641  31FF              xor di,di
00007643  83FF28            cmp di,byte +0x28
00007646  7D15              jnl 0x765d
00007648  8B1E9E74          mov bx,[0x749e]
0000764C  BA0100            mov dx,0x1
0000764F  31FA              xor dx,di
00007651  01D3              add bx,dx
00007653  8A4736            mov al,[bx+0x36]
00007656  98                cbw
00007657  8843CE            mov [bp+di-0x32],al
0000765A  47                inc di
0000765B  EBE6              jmp short 0x7643
0000765D  8B1E9E74          mov bx,[0x749e]
00007661  8B169E74          mov dx,[0x749e]
00007665  83C203            add dx,byte +0x3
00007668  31C0              xor ax,ax
0000766A  8A4702            mov al,[bx+0x2]
0000766D  50                push ax
0000766E  89D3              mov bx,dx
00007670  B90800            mov cx,0x8
00007673  8A17              mov dl,[bx]
00007675  30F6              xor dh,dh
00007677  D3E2              shl dx,cl
00007679  59                pop cx
0000767A  09CA              or dx,cx
0000767C  89540C            mov [si+0xc],dx
0000767F  8B1E9E74          mov bx,[0x749e]
00007683  8B169E74          mov dx,[0x749e]
00007687  83C207            add dx,byte +0x7
0000768A  31C0              xor ax,ax
0000768C  8A4706            mov al,[bx+0x6]
0000768F  50                push ax
00007690  89D3              mov bx,dx
00007692  B90800            mov cx,0x8
00007695  8A17              mov dl,[bx]
00007697  30F6              xor dh,dh
00007699  D3E2              shl dx,cl
0000769B  59                pop cx
0000769C  09CA              or dx,cx
0000769E  89540E            mov [si+0xe],dx
000076A1  8B1E9E74          mov bx,[0x749e]
000076A5  8B169E74          mov dx,[0x749e]
000076A9  83C20D            add dx,byte +0xd
000076AC  31C0              xor ax,ax
000076AE  8A470C            mov al,[bx+0xc]
000076B1  50                push ax
000076B2  89D3              mov bx,dx
000076B4  B90800            mov cx,0x8
000076B7  8A17              mov dl,[bx]
000076B9  30F6              xor dh,dh
000076BB  D3E2              shl dx,cl
000076BD  59                pop cx
000076BE  09CA              or dx,cx
000076C0  895410            mov [si+0x10],dx
000076C3  8B440E            mov ax,[si+0xe]
000076C6  31D2              xor dx,dx
000076C8  31DB              xor bx,bx
000076CA  53                push bx
000076CB  FF740C            push word [si+0xc]
000076CE  E8BE37            call word 0xae8f
000076D1  52                push dx
000076D2  50                push ax
000076D3  8B4410            mov ax,[si+0x10]
000076D6  31D2              xor dx,dx
000076D8  E8B437            call word 0xae8f
000076DB  8946C6            mov [bp-0x3a],ax
000076DE  8956C8            mov [bp-0x38],dx
000076E1  8B1E9E74          mov bx,[0x749e]
000076E5  F6476302          test byte [bx+0x63],0x2
000076E9  7471              jz 0x775c
000076EB  837EC810          cmp word [bp-0x38],byte +0x10
000076EF  726B              jc 0x775c
000076F1  7506              jnz 0x76f9
000076F3  837EC600          cmp word [bp-0x3a],byte +0x0
000076F7  7663              jna 0x775c
000076F9  814C124000        or word [si+0x12],0x40
000076FE  8B1E9E74          mov bx,[0x749e]
00007702  8B169E74          mov dx,[0x749e]
00007706  83C279            add dx,byte +0x79
00007709  31C0              xor ax,ax
0000770B  50                push ax
0000770C  8A4778            mov al,[bx+0x78]
0000770F  50                push ax
00007710  89D3              mov bx,dx
00007712  B90800            mov cx,0x8
00007715  8A17              mov dl,[bx]
00007717  30F6              xor dh,dh
00007719  31DB              xor bx,bx
0000771B  E306              jcxz 0x7723
0000771D  D1E2              shl dx,1
0000771F  D1D3              rcl bx,1
00007721  E2FA              loop 0x771d
00007723  59                pop cx
00007724  58                pop ax
00007725  09D1              or cx,dx
00007727  09D8              or ax,bx
00007729  8B1E9E74          mov bx,[0x749e]
0000772D  8A577A            mov dl,[bx+0x7a]
00007730  30F6              xor dh,dh
00007732  81C90000          or cx,0x0
00007736  09D0              or ax,dx
00007738  8B1E9E74          mov bx,[0x749e]
0000773C  50                push ax
0000773D  51                push cx
0000773E  B91800            mov cx,0x18
00007741  8A577B            mov dl,[bx+0x7b]
00007744  30F6              xor dh,dh
00007746  31DB              xor bx,bx
00007748  E306              jcxz 0x7750
0000774A  D1E2              shl dx,1
0000774C  D1D3              rcl bx,1
0000774E  E2FA              loop 0x774a
00007750  59                pop cx
00007751  58                pop ax
00007752  09D1              or cx,dx
00007754  09D8              or ax,bx
00007756  894EC6            mov [bp-0x3a],cx
00007759  8946C8            mov [bp-0x38],ax
0000775C  837C0600          cmp word [si+0x6],byte +0x0
00007760  7403              jz 0x7765
00007762  E9BA00            jmp word 0x781f
00007765  8B540C            mov dx,[si+0xc]
00007768  895406            mov [si+0x6],dx
0000776B  8B540E            mov dx,[si+0xe]
0000776E  895408            mov [si+0x8],dx
00007771  8B5410            mov dx,[si+0x10]
00007774  89540A            mov [si+0xa],dx
00007777  817C060004        cmp word [si+0x6],0x400
0000777C  7703              ja 0x7781
0000777E  E99E00            jmp word 0x781f
00007781  B80200            mov ax,0x2
00007784  F76408            mul word [si+0x8]
00007787  894408            mov [si+0x8],ax
0000778A  8B5406            mov dx,[si+0x6]
0000778D  D1EA              shr dx,1
0000778F  895406            mov [si+0x6],dx
00007792  EBE3              jmp short 0x7777
00007794  C646FCA1          mov byte [bp-0x4],0xa1
00007798  8D46F6            lea ax,[bp-0xa]
0000779B  50                push ax
0000779C  E85B06            call word 0x7dfa
0000779F  5B                pop bx
000077A0  09C0              or ax,ax
000077A2  753F              jnz 0x77e3
000077A4  810C0800          or word [si],0x8
000077A8  B80002            mov ax,0x200
000077AB  50                push ax
000077AC  FF36A274          push word [0x74a2]
000077B0  FF36A074          push word [0x74a0]
000077B4  FF7402            push word [si+0x2]
000077B7  E8F991            call word 0x9b3
000077BA  83C408            add sp,byte +0x8
000077BD  31FF              xor di,di
000077BF  83FF28            cmp di,byte +0x28
000077C2  7D15              jnl 0x77d9
000077C4  8B1E9E74          mov bx,[0x749e]
000077C8  BA0100            mov dx,0x1
000077CB  31FA              xor dx,di
000077CD  01D3              add bx,dx
000077CF  8A4736            mov al,[bx+0x36]
000077D2  98                cbw
000077D3  8843CE            mov [bp+di-0x32],al
000077D6  47                inc di
000077D7  EBE6              jmp short 0x77bf
000077D9  31C0              xor ax,ax
000077DB  8946C6            mov [bp-0x3a],ax
000077DE  8946C8            mov [bp-0x38],ax
000077E1  EB3C              jmp short 0x781f
000077E3  837C0600          cmp word [si+0x6],byte +0x0
000077E7  7506              jnz 0x77ef
000077E9  B8FFFF            mov ax,0xffff
000077EC  E9C300            jmp word 0x78b2
000077EF  8B5406            mov dx,[si+0x6]
000077F2  89540C            mov [si+0xc],dx
000077F5  8B5408            mov dx,[si+0x8]
000077F8  89540E            mov [si+0xe],dx
000077FB  8B540A            mov dx,[si+0xa]
000077FE  895410            mov [si+0x10],dx
00007801  8B440E            mov ax,[si+0xe]
00007804  31D2              xor dx,dx
00007806  31DB              xor bx,bx
00007808  53                push bx
00007809  FF740C            push word [si+0xc]
0000780C  E88036            call word 0xae8f
0000780F  52                push dx
00007810  50                push ax
00007811  8B4410            mov ax,[si+0x10]
00007814  31D2              xor dx,dx
00007816  E87636            call word 0xae8f
00007819  8946C6            mov [bp-0x3a],ax
0000781C  8956C8            mov [bp-0x38],dx
0000781F  B80002            mov ax,0x200
00007822  50                push ax
00007823  FF76C8            push word [bp-0x38]
00007826  FF76C6            push word [bp-0x3a]
00007829  8D46BE            lea ax,[bp-0x42]
0000782C  50                push ax
0000782D  E84C32            call word 0xaa7c
00007830  83C408            add sp,byte +0x8
00007833  50                push ax
00007834  8D442A            lea ax,[si+0x2a]
00007837  50                push ax
00007838  B90400            mov cx,0x4
0000783B  E8F134            call word 0xad2f
0000783E  E88800            call word 0x78c9
00007841  09C0              or ax,ax
00007843  740C              jz 0x7851
00007845  E88100            call word 0x78c9
00007848  09C0              or ax,ax
0000784A  7405              jz 0x7851
0000784C  B8FFFF            mov ax,0xffff
0000784F  EB61              jmp short 0x78b2
00007851  E86100            call word 0x78b5
00007854  50                push ax
00007855  B82811            mov ax,0x1128
00007858  50                push ax
00007859  E8D82B            call word 0xa434
0000785C  5B                pop bx
0000785D  5B                pop bx
0000785E  F6040C            test byte [si],0xc
00007861  740F              jz 0x7872
00007863  8D46CE            lea ax,[bp-0x32]
00007866  50                push ax
00007867  B82011            mov ax,0x1120
0000786A  50                push ax
0000786B  E8C62B            call word 0xa434
0000786E  5B                pop bx
0000786F  5B                pop bx
00007870  EB13              jmp short 0x7885
00007872  FF7410            push word [si+0x10]
00007875  FF740E            push word [si+0xe]
00007878  FF740C            push word [si+0xc]
0000787B  B81611            mov ax,0x1116
0000787E  50                push ax
0000787F  E8B22B            call word 0xa434
00007882  83C408            add sp,byte +0x8
00007885  833EA23002        cmp word [0x30a2],byte +0x2
0000788A  7D05              jnl 0x7891
0000788C  B80E00            mov ax,0xe
0000788F  EB03              jmp short 0x7894
00007891  B80F00            mov ax,0xf
00007894  894404            mov [si+0x4],ax
00007897  B8BB7F            mov ax,0x7fbb
0000789A  50                push ax
0000789B  FF7404            push word [si+0x4]
0000789E  8D441A            lea ax,[si+0x1a]
000078A1  50                push ax
000078A2  E8D1DE            call word 0x5776
000078A5  83C406            add sp,byte +0x6
000078A8  8D441A            lea ax,[si+0x1a]
000078AB  50                push ax
000078AC  E86C91            call word 0xa1b
000078AF  5B                pop bx
000078B0  31C0              xor ax,ax
000078B2  E9F835            jmp word 0xaead
000078B5  55                push bp
000078B6  89E5              mov bp,sp
000078B8  BA3000            mov dx,0x30
000078BB  0316A230          add dx,[0x30a2]
000078BF  88163211          mov [0x1132],dl
000078C3  B82E11            mov ax,0x112e
000078C6  E9E635            jmp word 0xaeaf
000078C9  55                push bp
000078CA  89E5              mov bp,sp
000078CC  83EC0A            sub sp,byte +0xa
000078CF  56                push si
000078D0  8B369A30          mov si,[0x309a]
000078D4  F60402            test byte [si],0x2
000078D7  740C              jz 0x78e5
000078D9  E88D05            call word 0x7e69
000078DC  09C0              or ax,ax
000078DE  7405              jz 0x78e5
000078E0  B8FFFF            mov ax,0xffff
000078E3  EB6C              jmp short 0x7951
000078E5  F60408            test byte [si],0x8
000078E8  7561              jnz 0x794b
000078EA  8B5414            mov dx,[si+0x14]
000078ED  8856F6            mov [bp-0xa],dl
000078F0  8B5410            mov dx,[si+0x10]
000078F3  8856F7            mov [bp-0x9],dl
000078F6  8B540E            mov dx,[si+0xe]
000078F9  83EA01            sub dx,byte +0x1
000078FC  8B1E9A30          mov bx,[0x309a]
00007900  0B5712            or dx,[bx+0x12]
00007903  8856FB            mov [bp-0x5],dl
00007906  C646FC91          mov byte [bp-0x4],0x91
0000790A  8D46F6            lea ax,[bp-0xa]
0000790D  50                push ax
0000790E  E8E904            call word 0x7dfa
00007911  5B                pop bx
00007912  09C0              or ax,ax
00007914  7405              jz 0x791b
00007916  B8FFFF            mov ax,0xffff
00007919  EB36              jmp short 0x7951
0000791B  F60404            test byte [si],0x4
0000791E  752B              jnz 0x794b
00007920  C646F800          mov byte [bp-0x8],0x0
00007924  C646F900          mov byte [bp-0x7],0x0
00007928  C646FA00          mov byte [bp-0x6],0x0
0000792C  8B1E9A30          mov bx,[0x309a]
00007930  8B5712            mov dx,[bx+0x12]
00007933  8856FB            mov [bp-0x5],dl
00007936  C646FC10          mov byte [bp-0x4],0x10
0000793A  8D46F6            lea ax,[bp-0xa]
0000793D  50                push ax
0000793E  E8B904            call word 0x7dfa
00007941  5B                pop bx
00007942  09C0              or ax,ax
00007944  7405              jz 0x794b
00007946  B8FFFF            mov ax,0xffff
00007949  EB06              jmp short 0x7951
0000794B  810C0100          or word [si],0x1
0000794F  31C0              xor ax,ax
00007951  E95A35            jmp word 0xaeae
00007954  55                push bp
00007955  89E5              mov bp,sp
00007957  83EC34            sub sp,byte +0x34
0000795A  56                push si
0000795B  57                push di
0000795C  8B7E0C            mov di,[bp+0xc]
0000795F  8B369A30          mov si,[0x309a]
00007963  8B5E0E            mov bx,[bp+0xe]
00007966  D1E3              shl bx,1
00007968  D1E3              shl bx,1
0000796A  01FB              add bx,di
0000796C  895EFA            mov [bp-0x6],bx
0000796F  8B1EA430          mov bx,[0x30a4]
00007973  83C308            add bx,byte +0x8
00007976  B90800            mov cx,0x8
00007979  E8FE34            call word 0xae7a
0000797C  E89930            call word 0xaa18
0000797F  83C408            add sp,byte +0x8
00007982  8946EE            mov [bp-0x12],ax
00007985  8956F0            mov [bp-0x10],dx
00007988  8B440E            mov ax,[si+0xe]
0000798B  F76410            mul word [si+0x10]
0000798E  8946D8            mov [bp-0x28],ax
00007991  8B5E04            mov bx,[bp+0x4]
00007994  D1E3              shl bx,1
00007996  8B9F766F          mov bx,[bx+0x6f76]
0000799A  B90A00            mov cx,0xa
0000799D  8B5754            mov dx,[bx+0x54]
000079A0  31DB              xor bx,bx
000079A2  E306              jcxz 0x79aa
000079A4  D1E2              shl dx,1
000079A6  D1D3              rcl bx,1
000079A8  E2FA              loop 0x79a4
000079AA  8956D4            mov [bp-0x2c],dx
000079AD  895ED6            mov [bp-0x2a],bx
000079B0  8B1E9A30          mov bx,[0x309a]
000079B4  F60708            test byte [bx],0x8
000079B7  7419              jz 0x79d2
000079B9  FF760E            push word [bp+0xe]
000079BC  57                push di
000079BD  FF760A            push word [bp+0xa]
000079C0  FF7608            push word [bp+0x8]
000079C3  FF7606            push word [bp+0x6]
000079C6  FF7604            push word [bp+0x4]
000079C9  E89C06            call word 0x8068
000079CC  83C40C            add sp,byte +0xc
000079CF  E9C502            jmp word 0x7c97
000079D2  8B5608            mov dx,[bp+0x8]
000079D5  81E2FF01          and dx,0x1ff
000079D9  81CA0000          or dx,0x0
000079DD  7406              jz 0x79e5
000079DF  B8EAFF            mov ax,0xffea
000079E2  E9B202            jmp word 0x7c97
000079E5  C746F60000        mov word [bp-0xa],0x0
000079EA  837E0E00          cmp word [bp+0xe],byte +0x0
000079EE  7503              jnz 0x79f3
000079F0  E99C02            jmp word 0x7c8f
000079F3  C746DE0000        mov word [bp-0x22],0x0
000079F8  897EFC            mov [bp-0x4],di
000079FB  8B56FA            mov dx,[bp-0x6]
000079FE  3956FC            cmp [bp-0x4],dx
00007A01  730F              jnc 0x7a12
00007A03  8B5EFC            mov bx,[bp-0x4]
00007A06  8B5702            mov dx,[bx+0x2]
00007A09  0156DE            add [bp-0x22],dx
00007A0C  8346FC04          add word [bp-0x4],byte +0x4
00007A10  EBE9              jmp short 0x79fb
00007A12  F746DEFF01        test word [bp-0x22],0x1ff
00007A17  7406              jz 0x7a1f
00007A19  B8EAFF            mov ax,0xffea
00007A1C  E97802            jmp word 0x7c97
00007A1F  8B56EE            mov dx,[bp-0x12]
00007A22  8B4EF0            mov cx,[bp-0x10]
00007A25  394E0A            cmp [bp+0xa],cx
00007A28  720C              jc 0x7a36
00007A2A  7505              jnz 0x7a31
00007A2C  395608            cmp [bp+0x8],dx
00007A2F  7205              jc 0x7a36
00007A31  31C0              xor ax,ax
00007A33  E96102            jmp word 0x7c97
00007A36  8B56DE            mov dx,[bp-0x22]
00007A39  31C9              xor cx,cx
00007A3B  035608            add dx,[bp+0x8]
00007A3E  134E0A            adc cx,[bp+0xa]
00007A41  394EF0            cmp [bp-0x10],cx
00007A44  7716              ja 0x7a5c
00007A46  7505              jnz 0x7a4d
00007A48  3956EE            cmp [bp-0x12],dx
00007A4B  730F              jnc 0x7a5c
00007A4D  8B56EE            mov dx,[bp-0x12]
00007A50  8B4EF0            mov cx,[bp-0x10]
00007A53  2B5608            sub dx,[bp+0x8]
00007A56  1B4E0A            sbb cx,[bp+0xa]
00007A59  8956DE            mov [bp-0x22],dx
00007A5C  8B1EA430          mov bx,[0x30a4]
00007A60  B80002            mov ax,0x200
00007A63  50                push ax
00007A64  FF760A            push word [bp+0xa]
00007A67  FF7608            push word [bp+0x8]
00007A6A  B90800            mov cx,0x8
00007A6D  E80A34            call word 0xae7a
00007A70  8D46CC            lea ax,[bp-0x34]
00007A73  50                push ax
00007A74  E8EE2E            call word 0xa965
00007A77  83C40E            add sp,byte +0xe
00007A7A  89C3              mov bx,ax
00007A7C  B90800            mov cx,0x8
00007A7F  E8F833            call word 0xae7a
00007A82  E8CE2F            call word 0xaa53
00007A85  83C40A            add sp,byte +0xa
00007A88  8946F2            mov [bp-0xe],ax
00007A8B  8956F4            mov [bp-0xc],dx
00007A8E  8B56DE            mov dx,[bp-0x22]
00007A91  395416            cmp [si+0x16],dx
00007A94  7706              ja 0x7a9c
00007A96  8B5416            mov dx,[si+0x16]
00007A99  8956DE            mov [bp-0x22],dx
00007A9C  F60401            test byte [si],0x1
00007A9F  750D              jnz 0x7aae
00007AA1  E825FE            call word 0x78c9
00007AA4  09C0              or ax,ax
00007AA6  7406              jz 0x7aae
00007AA8  B8FBFF            mov ax,0xfffb
00007AAB  E9E901            jmp word 0x7c97
00007AAE  8B5414            mov dx,[si+0x14]
00007AB1  8856E6            mov [bp-0x1a],dl
00007AB4  B90900            mov cx,0x9
00007AB7  8B56DE            mov dx,[bp-0x22]
00007ABA  D3EA              shr dx,cl
00007ABC  8856E7            mov [bp-0x19],dl
00007ABF  F6441240          test byte [si+0x12],0x40
00007AC3  7451              jz 0x7b16
00007AC5  8B56F2            mov dx,[bp-0xe]
00007AC8  81E2FF00          and dx,0xff
00007ACC  8856E8            mov [bp-0x18],dl
00007ACF  B90800            mov cx,0x8
00007AD2  8B56F2            mov dx,[bp-0xe]
00007AD5  8B5EF4            mov bx,[bp-0xc]
00007AD8  E306              jcxz 0x7ae0
00007ADA  D1EB              shr bx,1
00007ADC  D1DA              rcr dx,1
00007ADE  E2FA              loop 0x7ada
00007AE0  81E2FF00          and dx,0xff
00007AE4  8856E9            mov [bp-0x17],dl
00007AE7  8B56F4            mov dx,[bp-0xc]
00007AEA  81E2FF00          and dx,0xff
00007AEE  8856EA            mov [bp-0x16],dl
00007AF1  B91800            mov cx,0x18
00007AF4  8B56F2            mov dx,[bp-0xe]
00007AF7  8B5EF4            mov bx,[bp-0xc]
00007AFA  E306              jcxz 0x7b02
00007AFC  D1EB              shr bx,1
00007AFE  D1DA              rcr dx,1
00007B00  E2FA              loop 0x7afc
00007B02  81E20F00          and dx,0xf
00007B06  8B4C12            mov cx,[si+0x12]
00007B09  31DB              xor bx,bx
00007B0B  09D1              or cx,dx
00007B0D  81CB0000          or bx,0x0
00007B11  884EEB            mov [bp-0x15],cl
00007B14  EB5F              jmp short 0x7b75
00007B16  FF76F4            push word [bp-0xc]
00007B19  FF76F2            push word [bp-0xe]
00007B1C  31C0              xor ax,ax
00007B1E  50                push ax
00007B1F  FF76D8            push word [bp-0x28]
00007B22  E8F032            call word 0xae15
00007B25  8946E4            mov [bp-0x1c],ax
00007B28  FF76F4            push word [bp-0xc]
00007B2B  FF76F2            push word [bp-0xe]
00007B2E  31C0              xor ax,ax
00007B30  50                push ax
00007B31  FF76D8            push word [bp-0x28]
00007B34  E88033            call word 0xaeb7
00007B37  52                push dx
00007B38  50                push ax
00007B39  31C0              xor ax,ax
00007B3B  50                push ax
00007B3C  FF7410            push word [si+0x10]
00007B3F  E8D332            call word 0xae15
00007B42  8946E2            mov [bp-0x1e],ax
00007B45  FF76F4            push word [bp-0xc]
00007B48  FF76F2            push word [bp-0xe]
00007B4B  31C0              xor ax,ax
00007B4D  50                push ax
00007B4E  FF7410            push word [si+0x10]
00007B51  E86333            call word 0xaeb7
00007B54  8946E0            mov [bp-0x20],ax
00007B57  40                inc ax
00007B58  8846E8            mov [bp-0x18],al
00007B5B  8B56E4            mov dx,[bp-0x1c]
00007B5E  8856E9            mov [bp-0x17],dl
00007B61  B90800            mov cx,0x8
00007B64  8B56E4            mov dx,[bp-0x1c]
00007B67  D3EA              shr dx,cl
00007B69  8856EA            mov [bp-0x16],dl
00007B6C  8B56E2            mov dx,[bp-0x1e]
00007B6F  0B5412            or dx,[si+0x12]
00007B72  8856EB            mov [bp-0x15],dl
00007B75  837E0608          cmp word [bp+0x6],byte +0x8
00007B79  7505              jnz 0x7b80
00007B7B  B83000            mov ax,0x30
00007B7E  EB03              jmp short 0x7b83
00007B80  B82000            mov ax,0x20
00007B83  8846EC            mov [bp-0x14],al
00007B86  8D46E6            lea ax,[bp-0x1a]
00007B89  50                push ax
00007B8A  E80D01            call word 0x7c9a
00007B8D  5B                pop bx
00007B8E  8946F8            mov [bp-0x8],ax
00007B91  837EF800          cmp word [bp-0x8],byte +0x0
00007B95  7403              jz 0x7b9a
00007B97  E9CF00            jmp word 0x7c69
00007B9A  837EDE00          cmp word [bp-0x22],byte +0x0
00007B9E  7503              jnz 0x7ba3
00007BA0  E9C600            jmp word 0x7c69
00007BA3  837E0609          cmp word [bp+0x6],byte +0x9
00007BA7  7530              jnz 0x7bd9
00007BA9  E88903            call word 0x7f35
00007BAC  8946F8            mov [bp-0x8],ax
00007BAF  09C0              or ax,ax
00007BB1  7426              jz 0x7bd9
00007BB3  F606A03008        test byte [0x30a0],0x8
00007BB8  7503              jnz 0x7bbd
00007BBA  E9AC00            jmp word 0x7c69
00007BBD  8B1E9A30          mov bx,[0x309a]
00007BC1  B80002            mov ax,0x200
00007BC4  50                push ax
00007BC5  FF36A274          push word [0x74a2]
00007BC9  FF36A074          push word [0x74a0]
00007BCD  FF7702            push word [bx+0x2]
00007BD0  E8E08D            call word 0x9b3
00007BD3  83C408            add sp,byte +0x8
00007BD6  E99000            jmp word 0x7c69
00007BD9  B80800            mov ax,0x8
00007BDC  50                push ax
00007BDD  50                push ax
00007BDE  E89103            call word 0x7f72
00007BE1  5B                pop bx
00007BE2  5B                pop bx
00007BE3  09C0              or ax,ax
00007BE5  7508              jnz 0x7bef
00007BE7  C746F8FFFF        mov word [bp-0x8],0xffff
00007BEC  E97A00            jmp word 0x7c69
00007BEF  837E0609          cmp word [bp+0x6],byte +0x9
00007BF3  751F              jnz 0x7c14
00007BF5  8B15              mov dx,[di]
00007BF7  31C9              xor cx,cx
00007BF9  0356D4            add dx,[bp-0x2c]
00007BFC  134ED6            adc cx,[bp-0x2a]
00007BFF  8B1E9A30          mov bx,[0x309a]
00007C03  B80002            mov ax,0x200
00007C06  50                push ax
00007C07  51                push cx
00007C08  52                push dx
00007C09  FF7702            push word [bx+0x2]
00007C0C  E8A48D            call word 0x9b3
00007C0F  83C408            add sp,byte +0x8
00007C12  EB27              jmp short 0x7c3b
00007C14  8B15              mov dx,[di]
00007C16  31C9              xor cx,cx
00007C18  0356D4            add dx,[bp-0x2c]
00007C1B  134ED6            adc cx,[bp-0x2a]
00007C1E  8B1E9A30          mov bx,[0x309a]
00007C22  B80002            mov ax,0x200
00007C25  50                push ax
00007C26  51                push cx
00007C27  52                push dx
00007C28  FF7702            push word [bx+0x2]
00007C2B  E8D18D            call word 0x9ff
00007C2E  83C408            add sp,byte +0x8
00007C31  E80103            call word 0x7f35
00007C34  8946F8            mov [bp-0x8],ax
00007C37  09C0              or ax,ax
00007C39  752E              jnz 0x7c69
00007C3B  816EDE0002        sub word [bp-0x22],0x200
00007C40  8146080002        add word [bp+0x8],0x200
00007C45  83560A00          adc word [bp+0xa],byte +0x0
00007C49  81050002          add word [di],0x200
00007C4D  8B5502            mov dx,[di+0x2]
00007C50  81EA0002          sub dx,0x200
00007C54  895502            mov [di+0x2],dx
00007C57  837D0200          cmp word [di+0x2],byte +0x0
00007C5B  7403              jz 0x7c60
00007C5D  E931FF            jmp word 0x7b91
00007C60  83C704            add di,byte +0x4
00007C63  FF4E0E            dec word [bp+0xe]
00007C66  E928FF            jmp word 0x7b91
00007C69  837EF800          cmp word [bp-0x8],byte +0x0
00007C6D  7503              jnz 0x7c72
00007C6F  E978FD            jmp word 0x79ea
00007C72  837EF8FE          cmp word [bp-0x8],byte -0x2
00007C76  740C              jz 0x7c84
00007C78  FF46F6            inc word [bp-0xa]
00007C7B  837EF604          cmp word [bp-0xa],byte +0x4
00007C7F  7403              jz 0x7c84
00007C81  E966FD            jmp word 0x79ea
00007C84  C7069E300000      mov word [0x309e],0x0
00007C8A  B8FBFF            mov ax,0xfffb
00007C8D  EB08              jmp short 0x7c97
00007C8F  C7069E300000      mov word [0x309e],0x0
00007C95  31C0              xor ax,ax
00007C97  E91332            jmp word 0xaead
00007C9A  55                push bp
00007C9B  89E5              mov bp,sp
00007C9D  50                push ax
00007C9E  56                push si
00007C9F  57                push di
00007CA0  8B7E04            mov di,[bp+0x4]
00007CA3  8B1E9A30          mov bx,[0x309a]
00007CA7  895EFE            mov [bp-0x2],bx
00007CAA  8B7702            mov si,[bx+0x2]
00007CAD  31C0              xor ax,ax
00007CAF  50                push ax
00007CB0  B88000            mov ax,0x80
00007CB3  50                push ax
00007CB4  E8BB02            call word 0x7f72
00007CB7  5B                pop bx
00007CB8  5B                pop bx
00007CB9  09C0              or ax,ax
00007CBB  7513              jnz 0x7cd0
00007CBD  E8F5FB            call word 0x78b5
00007CC0  50                push ax
00007CC1  B84A11            mov ax,0x114a
00007CC4  50                push ax
00007CC5  E86C27            call word 0xa434
00007CC8  5B                pop bx
00007CC9  5B                pop bx
00007CCA  B8FFFF            mov ax,0xffff
00007CCD  E9CF00            jmp word 0x7d9f
00007CD0  31C0              xor ax,ax
00007CD2  8A4505            mov al,[di+0x5]
00007CD5  50                push ax
00007CD6  8D4406            lea ax,[si+0x6]
00007CD9  50                push ax
00007CDA  E8D72D            call word 0xaab4
00007CDD  5B                pop bx
00007CDE  5B                pop bx
00007CDF  31C0              xor ax,ax
00007CE1  50                push ax
00007CE2  B88000            mov ax,0x80
00007CE5  50                push ax
00007CE6  E88902            call word 0x7f72
00007CE9  5B                pop bx
00007CEA  5B                pop bx
00007CEB  09C0              or ax,ax
00007CED  7513              jnz 0x7d02
00007CEF  E8C3FB            call word 0x78b5
00007CF2  50                push ax
00007CF3  B83411            mov ax,0x1134
00007CF6  50                push ax
00007CF7  E83A27            call word 0xa434
00007CFA  5B                pop bx
00007CFB  5B                pop bx
00007CFC  B8FFFF            mov ax,0xffff
00007CFF  E99D00            jmp word 0x7d9f
00007D02  B81B7E            mov ax,0x7e1b
00007D05  50                push ax
00007D06  E83CAC            call word 0x2945
00007D09  058007            add ax,0x780
00007D0C  83D200            adc dx,byte +0x0
00007D0F  52                push dx
00007D10  50                push ax
00007D11  B8FDFF            mov ax,0xfffd
00007D14  50                push ax
00007D15  B8A630            mov ax,0x30a6
00007D18  50                push ax
00007D19  E827AB            call word 0x2843
00007D1C  83C40A            add sp,byte +0xa
00007D1F  8B5EFE            mov bx,[bp-0x2]
00007D22  837F0E08          cmp word [bx+0xe],byte +0x8
00007D26  7205              jc 0x7d2d
00007D28  B80800            mov ax,0x8
00007D2B  EB02              jmp short 0x7d2f
00007D2D  31C0              xor ax,ax
00007D2F  50                push ax
00007D30  8D840602          lea ax,[si+0x206]
00007D34  50                push ax
00007D35  E87C2D            call word 0xaab4
00007D38  5B                pop bx
00007D39  5B                pop bx
00007D3A  89F2              mov dx,si
00007D3C  42                inc dx
00007D3D  31C0              xor ax,ax
00007D3F  8A05              mov al,[di]
00007D41  50                push ax
00007D42  52                push dx
00007D43  E86E2D            call word 0xaab4
00007D46  5B                pop bx
00007D47  5B                pop bx
00007D48  31C0              xor ax,ax
00007D4A  8A4501            mov al,[di+0x1]
00007D4D  50                push ax
00007D4E  8D4402            lea ax,[si+0x2]
00007D51  50                push ax
00007D52  E85F2D            call word 0xaab4
00007D55  5B                pop bx
00007D56  5B                pop bx
00007D57  31C0              xor ax,ax
00007D59  8A4502            mov al,[di+0x2]
00007D5C  50                push ax
00007D5D  8D4403            lea ax,[si+0x3]
00007D60  50                push ax
00007D61  E8502D            call word 0xaab4
00007D64  5B                pop bx
00007D65  5B                pop bx
00007D66  31C0              xor ax,ax
00007D68  8A4503            mov al,[di+0x3]
00007D6B  50                push ax
00007D6C  8D4404            lea ax,[si+0x4]
00007D6F  50                push ax
00007D70  E8412D            call word 0xaab4
00007D73  5B                pop bx
00007D74  5B                pop bx
00007D75  31C0              xor ax,ax
00007D77  8A4504            mov al,[di+0x4]
00007D7A  50                push ax
00007D7B  8D4405            lea ax,[si+0x5]
00007D7E  50                push ax
00007D7F  E8322D            call word 0xaab4
00007D82  5B                pop bx
00007D83  5B                pop bx
00007D84  C706A0300001      mov word [0x30a0],0x100
00007D8A  8A5506            mov dl,[di+0x6]
00007D8D  30F6              xor dh,dh
00007D8F  89169E30          mov [0x309e],dx
00007D93  52                push dx
00007D94  8D4407            lea ax,[si+0x7]
00007D97  50                push ax
00007D98  E8192D            call word 0xaab4
00007D9B  5B                pop bx
00007D9C  5B                pop bx
00007D9D  31C0              xor ax,ax
00007D9F  E90B31            jmp word 0xaead
00007DA2  55                push bp
00007DA3  89E5              mov bp,sp
00007DA5  56                push si
00007DA6  BED22A            mov si,0x2ad2
00007DA9  81FE9A30          cmp si,0x309a
00007DAD  730E              jnc 0x7dbd
00007DAF  810C0200          or word [si],0x2
00007DB3  8124FEFF          and word [si],0xfffe
00007DB7  81C67201          add si,0x172
00007DBB  EBEC              jmp short 0x7da9
00007DBD  E9EE30            jmp word 0xaeae
00007DC0  55                push bp
00007DC1  89E5              mov bp,sp
00007DC3  8B5E06            mov bx,[bp+0x6]
00007DC6  FF7704            push word [bx+0x4]
00007DC9  E8B4F7            call word 0x7580
00007DCC  5B                pop bx
00007DCD  09C0              or ax,ax
00007DCF  7505              jnz 0x7dd6
00007DD1  B8FAFF            mov ax,0xfffa
00007DD4  EB21              jmp short 0x7df7
00007DD6  8B1E9A30          mov bx,[0x309a]
00007DDA  8B5718            mov dx,[bx+0x18]
00007DDD  83EA01            sub dx,byte +0x1
00007DE0  895718            mov [bx+0x18],dx
00007DE3  8B1E9A30          mov bx,[0x309a]
00007DE7  837F1800          cmp word [bx+0x18],byte +0x0
00007DEB  7508              jnz 0x7df5
00007DED  F60708            test byte [bx],0x8
00007DF0  7403              jz 0x7df5
00007DF2  E86D02            call word 0x8062
00007DF5  31C0              xor ax,ax
00007DF7  E9B530            jmp word 0xaeaf
00007DFA  55                push bp
00007DFB  89E5              mov bp,sp
00007DFD  56                push si
00007DFE  FF7604            push word [bp+0x4]
00007E01  E896FE            call word 0x7c9a
00007E04  5B                pop bx
00007E05  89C6              mov si,ax
00007E07  09C0              or ax,ax
00007E09  7505              jnz 0x7e10
00007E0B  E82701            call word 0x7f35
00007E0E  89C6              mov si,ax
00007E10  C7069E300000      mov word [0x309e],0x0
00007E16  89F0              mov ax,si
00007E18  E99330            jmp word 0xaeae
00007E1B  55                push bp
00007E1C  89E5              mov bp,sp
00007E1E  56                push si
00007E1F  8B369A30          mov si,[0x309a]
00007E23  EB38              jmp short 0x7e5d
00007E25  817C160010        cmp word [si+0x16],0x1000
00007E2A  7607              jna 0x7e33
00007E2C  C744160010        mov word [si+0x16],0x1000
00007E31  EB05              jmp short 0x7e38
00007E33  C744160002        mov word [si+0x16],0x200
00007E38  FF369E30          push word [0x309e]
00007E3C  E876FA            call word 0x78b5
00007E3F  50                push ax
00007E40  B87411            mov ax,0x1174
00007E43  50                push ax
00007E44  E8ED25            call word 0xa434
00007E47  83C406            add sp,byte +0x6
00007E4A  E855FF            call word 0x7da2
00007E4D  C706A0300000      mov word [0x30a0],0x0
00007E53  FF369C30          push word [0x309c]
00007E57  E86D91            call word 0xfc7
00007E5A  5B                pop bx
00007E5B  EB09              jmp short 0x7e66
00007E5D  BB6411            mov bx,0x1164
00007E60  A19E30            mov ax,[0x309e]
00007E63  E9022F            jmp word 0xad68
00007E66  E94530            jmp word 0xaeae
00007E69  55                push bp
00007E6A  89E5              mov bp,sp
00007E6C  56                push si
00007E6D  B80700            mov ax,0x7
00007E70  50                push ax
00007E71  B820A1            mov ax,0xa120
00007E74  50                push ax
00007E75  E8D2AD            call word 0x2c4a
00007E78  5B                pop bx
00007E79  5B                pop bx
00007E7A  8B1E9A30          mov bx,[0x309a]
00007E7E  BA0602            mov dx,0x206
00007E81  035702            add dx,[bx+0x2]
00007E84  B80400            mov ax,0x4
00007E87  50                push ax
00007E88  52                push dx
00007E89  E8282C            call word 0xaab4
00007E8C  5B                pop bx
00007E8D  5B                pop bx
00007E8E  31C0              xor ax,ax
00007E90  50                push ax
00007E91  B8E803            mov ax,0x3e8
00007E94  50                push ax
00007E95  E8B2AD            call word 0x2c4a
00007E98  5B                pop bx
00007E99  5B                pop bx
00007E9A  8B1E9A30          mov bx,[0x309a]
00007E9E  BA0602            mov dx,0x206
00007EA1  035702            add dx,[bx+0x2]
00007EA4  31C0              xor ax,ax
00007EA6  50                push ax
00007EA7  52                push dx
00007EA8  E8092C            call word 0xaab4
00007EAB  5B                pop bx
00007EAC  5B                pop bx
00007EAD  31C0              xor ax,ax
00007EAF  50                push ax
00007EB0  B8E803            mov ax,0x3e8
00007EB3  50                push ax
00007EB4  E893AD            call word 0x2c4a
00007EB7  5B                pop bx
00007EB8  5B                pop bx
00007EB9  31C0              xor ax,ax
00007EBB  50                push ax
00007EBC  B88000            mov ax,0x80
00007EBF  50                push ax
00007EC0  E8AF00            call word 0x7f72
00007EC3  5B                pop bx
00007EC4  5B                pop bx
00007EC5  09C0              or ax,ax
00007EC7  7512              jnz 0x7edb
00007EC9  E8E9F9            call word 0x78b5
00007ECC  50                push ax
00007ECD  B89211            mov ax,0x1192
00007ED0  50                push ax
00007ED1  E86025            call word 0xa434
00007ED4  5B                pop bx
00007ED5  5B                pop bx
00007ED6  B8FFFF            mov ax,0xffff
00007ED9  EB21              jmp short 0x7efc
00007EDB  BED22A            mov si,0x2ad2
00007EDE  81FE9A30          cmp si,0x309a
00007EE2  7316              jnc 0x7efa
00007EE4  8B1E9A30          mov bx,[0x309a]
00007EE8  8B5702            mov dx,[bx+0x2]
00007EEB  395402            cmp [si+0x2],dx
00007EEE  7504              jnz 0x7ef4
00007EF0  8124FDFF          and word [si],0xfffd
00007EF4  81C67201          add si,0x172
00007EF8  EBE4              jmp short 0x7ede
00007EFA  31C0              xor ax,ax
00007EFC  E9AF2F            jmp word 0xaeae
00007EFF  55                push bp
00007F00  89E5              mov bp,sp
00007F02  83EC18            sub sp,byte +0x18
00007F05  8B1E9A30          mov bx,[0x309a]
00007F09  837F0400          cmp word [bx+0x4],byte +0x0
00007F0D  7417              jz 0x7f26
00007F0F  F706A0308001      test word [0x30a0],0x180
00007F15  741B              jz 0x7f32
00007F17  8D46E8            lea ax,[bp-0x18]
00007F1A  50                push ax
00007F1B  B8FFFF            mov ax,0xffff
00007F1E  50                push ax
00007F1F  E8B82B            call word 0xaada
00007F22  5B                pop bx
00007F23  5B                pop bx
00007F24  EBE9              jmp short 0x7f0f
00007F26  31C0              xor ax,ax
00007F28  50                push ax
00007F29  B88000            mov ax,0x80
00007F2C  50                push ax
00007F2D  E84200            call word 0x7f72
00007F30  5B                pop bx
00007F31  5B                pop bx
00007F32  E97A2F            jmp word 0xaeaf
00007F35  55                push bp
00007F36  89E5              mov bp,sp
00007F38  56                push si
00007F39  E8C3FF            call word 0x7eff
00007F3C  F606A030A1        test byte [0x30a0],0xa1
00007F41  7504              jnz 0x7f47
00007F43  31F6              xor si,si
00007F45  EB20              jmp short 0x7f67
00007F47  F606A03001        test byte [0x30a0],0x1
00007F4C  7416              jz 0x7f64
00007F4E  8B1E9A30          mov bx,[0x309a]
00007F52  8B5702            mov dx,[bx+0x2]
00007F55  42                inc dx
00007F56  52                push dx
00007F57  E84B2B            call word 0xaaa5
00007F5A  5B                pop bx
00007F5B  A880              test al,0x80
00007F5D  7405              jz 0x7f64
00007F5F  BEFEFF            mov si,0xfffe
00007F62  EB03              jmp short 0x7f67
00007F64  BEFFFF            mov si,0xffff
00007F67  810EA0300001      or word [0x30a0],0x100
00007F6D  89F0              mov ax,si
00007F6F  E93C2F            jmp word 0xaeae
00007F72  55                push bp
00007F73  89E5              mov bp,sp
00007F75  83EC06            sub sp,byte +0x6
00007F78  8D46FA            lea ax,[bp-0x6]
00007F7B  50                push ax
00007F7C  E8F0AC            call word 0x2c6f
00007F7F  5B                pop bx
00007F80  8B1E9A30          mov bx,[0x309a]
00007F84  BA0700            mov dx,0x7
00007F87  035702            add dx,[bx+0x2]
00007F8A  52                push dx
00007F8B  E8172B            call word 0xaaa5
00007F8E  5B                pop bx
00007F8F  A3A030            mov [0x30a0],ax
00007F92  234604            and ax,[bp+0x4]
00007F95  394606            cmp [bp+0x6],ax
00007F98  7505              jnz 0x7f9f
00007F9A  B80100            mov ax,0x1
00007F9D  EB19              jmp short 0x7fb8
00007F9F  8D46FA            lea ax,[bp-0x6]
00007FA2  50                push ax
00007FA3  E8E1AC            call word 0x2c87
00007FA6  5B                pop bx
00007FA7  83FA4C            cmp dx,byte +0x4c
00007FAA  72D4              jc 0x7f80
00007FAC  7505              jnz 0x7fb3
00007FAE  3D404B            cmp ax,0x4b40
00007FB1  72CD              jc 0x7f80
00007FB3  E8ECFD            call word 0x7da2
00007FB6  31C0              xor ax,ax
00007FB8  E9F42E            jmp word 0xaeaf
00007FBB  55                push bp
00007FBC  89E5              mov bp,sp
00007FBE  8B1E9A30          mov bx,[0x309a]
00007FC2  BA0700            mov dx,0x7
00007FC5  035702            add dx,[bx+0x2]
00007FC8  52                push dx
00007FC9  E8D92A            call word 0xaaa5
00007FCC  5B                pop bx
00007FCD  A3A030            mov [0x30a0],ax
00007FD0  FF369C30          push word [0x309c]
00007FD4  E8F08F            call word 0xfc7
00007FD7  5B                pop bx
00007FD8  B80100            mov ax,0x1
00007FDB  E9D12E            jmp word 0xaeaf
00007FDE  55                push bp
00007FDF  89E5              mov bp,sp
00007FE1  56                push si
00007FE2  57                push di
00007FE3  8B7E04            mov di,[bp+0x4]
00007FE6  8B369A30          mov si,[0x309a]
00007FEA  F60408            test byte [si],0x8
00007FED  742E              jz 0x801d
00007FEF  8D5C2A            lea bx,[si+0x2a]
00007FF2  B80002            mov ax,0x200
00007FF5  50                push ax
00007FF6  B90800            mov cx,0x8
00007FF9  E87E2E            call word 0xae7a
00007FFC  E8542A            call word 0xaa53
00007FFF  83C40A            add sp,byte +0xa
00008002  52                push dx
00008003  50                push ax
00008004  31C0              xor ax,ax
00008006  50                push ax
00008007  B80008            mov ax,0x800
0000800A  50                push ax
0000800B  E8072E            call word 0xae15
0000800E  894510            mov [di+0x10],ax
00008011  C745124000        mov word [di+0x12],0x40
00008016  C745142000        mov word [di+0x14],0x20
0000801B  EB12              jmp short 0x802f
0000801D  8B5406            mov dx,[si+0x6]
00008020  895510            mov [di+0x10],dx
00008023  8B5408            mov dx,[si+0x8]
00008026  895512            mov [di+0x12],dx
00008029  8B540A            mov dx,[si+0xa]
0000802C  895514            mov [di+0x14],dx
0000802F  E97B2E            jmp word 0xaead
00008032  55                push bp
00008033  89E5              mov bp,sp
00008035  83EC08            sub sp,byte +0x8
00008038  B80004            mov ax,0x400
0000803B  50                push ax
0000803C  B80C00            mov ax,0xc
0000803F  50                push ax
00008040  B80080            mov ax,0x8000
00008043  50                push ax
00008044  8D46F8            lea ax,[bp-0x8]
00008047  50                push ax
00008048  E8312A            call word 0xaa7c
0000804B  83C408            add sp,byte +0x8
0000804E  8B1E9A30          mov bx,[0x309a]
00008052  50                push ax
00008053  83C32A            add bx,byte +0x2a
00008056  53                push bx
00008057  B90400            mov cx,0x4
0000805A  E8D22C            call word 0xad2f
0000805D  31C0              xor ax,ax
0000805F  E94D2E            jmp word 0xaeaf
00008062  55                push bp
00008063  89E5              mov bp,sp
00008065  E9472E            jmp word 0xaeaf
00008068  55                push bp
00008069  89E5              mov bp,sp
0000806B  83EC3E            sub sp,byte +0x3e
0000806E  56                push si
0000806F  57                push di
00008070  8B169A30          mov dx,[0x309a]
00008074  8956FE            mov [bp-0x2],dx
00008077  8B5E0E            mov bx,[bp+0xe]
0000807A  D1E3              shl bx,1
0000807C  D1E3              shl bx,1
0000807E  035E0C            add bx,[bp+0xc]
00008081  895EFA            mov [bp-0x6],bx
00008084  8B1EA430          mov bx,[0x30a4]
00008088  83C308            add bx,byte +0x8
0000808B  B90800            mov cx,0x8
0000808E  E8E92D            call word 0xae7a
00008091  E88429            call word 0xaa18
00008094  83C408            add sp,byte +0x8
00008097  8946E4            mov [bp-0x1c],ax
0000809A  8956E6            mov [bp-0x1a],dx
0000809D  8B5E04            mov bx,[bp+0x4]
000080A0  D1E3              shl bx,1
000080A2  8B9F766F          mov bx,[bx+0x6f76]
000080A6  B90A00            mov cx,0xa
000080A9  8B5754            mov dx,[bx+0x54]
000080AC  31DB              xor bx,bx
000080AE  E306              jcxz 0x80b6
000080B0  D1E2              shl dx,1
000080B2  D1D3              rcl bx,1
000080B4  E2FA              loop 0x80b0
000080B6  8956D6            mov [bp-0x2a],dx
000080B9  895ED8            mov [bp-0x28],bx
000080BC  31D2              xor dx,dx
000080BE  8956F4            mov [bp-0xc],dx
000080C1  8956F6            mov [bp-0xa],dx
000080C4  837E0E00          cmp word [bp+0xe],byte +0x0
000080C8  7503              jnz 0x80cd
000080CA  E9BB02            jmp word 0x8388
000080CD  837EF400          cmp word [bp-0xc],byte +0x0
000080D1  7403              jz 0x80d6
000080D3  E9B202            jmp word 0x8388
000080D6  8B1EA430          mov bx,[0x30a4]
000080DA  FF760A            push word [bp+0xa]
000080DD  FF7608            push word [bp+0x8]
000080E0  B90800            mov cx,0x8
000080E3  E8942D            call word 0xae7a
000080E6  8D46C2            lea ax,[bp-0x3e]
000080E9  50                push ax
000080EA  E87828            call word 0xa965
000080ED  83C40E            add sp,byte +0xe
000080F0  50                push ax
000080F1  8D46EC            lea ax,[bp-0x14]
000080F4  50                push ax
000080F5  B90400            mov cx,0x4
000080F8  E8342C            call word 0xad2f
000080FB  8D5EEC            lea bx,[bp-0x14]
000080FE  B80008            mov ax,0x800
00008101  50                push ax
00008102  B90800            mov cx,0x8
00008105  E8722D            call word 0xae7a
00008108  E84829            call word 0xaa53
0000810B  83C40A            add sp,byte +0xa
0000810E  8946E8            mov [bp-0x18],ax
00008111  8956EA            mov [bp-0x16],dx
00008114  8D5EEC            lea bx,[bp-0x14]
00008117  B80008            mov ax,0x800
0000811A  50                push ax
0000811B  B90800            mov cx,0x8
0000811E  E8592D            call word 0xae7a
00008121  E85029            call word 0xaa74
00008124  83C40A            add sp,byte +0xa
00008127  8946DC            mov [bp-0x24],ax
0000812A  31D2              xor dx,dx
0000812C  89D7              mov di,dx
0000812E  8956E2            mov [bp-0x1e],dx
00008131  8B560C            mov dx,[bp+0xc]
00008134  8956FC            mov [bp-0x4],dx
00008137  8B56FA            mov dx,[bp-0x6]
0000813A  3956FC            cmp [bp-0x4],dx
0000813D  7325              jnc 0x8164
0000813F  8B5EFC            mov bx,[bp-0x4]
00008142  8B5702            mov dx,[bx+0x2]
00008145  0156E2            add [bp-0x1e],dx
00008148  8B56E2            mov dx,[bp-0x1e]
0000814B  0356DC            add dx,[bp-0x24]
0000814E  B90008            mov cx,0x800
00008151  89D0              mov ax,dx
00008153  31D2              xor dx,dx
00008155  F7F1              div cx
00008157  09D2              or dx,dx
00008159  7503              jnz 0x815e
0000815B  8B7EE2            mov di,[bp-0x1e]
0000815E  8346FC04          add word [bp-0x4],byte +0x4
00008162  EBD3              jmp short 0x8137
00008164  09FF              or di,di
00008166  7403              jz 0x816b
00008168  897EE2            mov [bp-0x1e],di
0000816B  8B56E2            mov dx,[bp-0x1e]
0000816E  0B56DC            or dx,[bp-0x24]
00008171  F6C201            test dl,0x1
00008174  7406              jz 0x817c
00008176  B8EAFF            mov ax,0xffea
00008179  E91402            jmp word 0x8390
0000817C  8B56E4            mov dx,[bp-0x1c]
0000817F  8B4EE6            mov cx,[bp-0x1a]
00008182  394E0A            cmp [bp+0xa],cx
00008185  720C              jc 0x8193
00008187  7505              jnz 0x818e
00008189  395608            cmp [bp+0x8],dx
0000818C  7205              jc 0x8193
0000818E  31C0              xor ax,ax
00008190  E9FD01            jmp word 0x8390
00008193  8B56E2            mov dx,[bp-0x1e]
00008196  31C9              xor cx,cx
00008198  035608            add dx,[bp+0x8]
0000819B  134E0A            adc cx,[bp+0xa]
0000819E  394EE6            cmp [bp-0x1a],cx
000081A1  7716              ja 0x81b9
000081A3  7505              jnz 0x81aa
000081A5  3956E4            cmp [bp-0x1c],dx
000081A8  730F              jnc 0x81b9
000081AA  8B56E4            mov dx,[bp-0x1c]
000081AD  8B4EE6            mov cx,[bp-0x1a]
000081B0  2B5608            sub dx,[bp+0x8]
000081B3  1B4E0A            sbb cx,[bp+0xa]
000081B6  8956E2            mov [bp-0x1e],dx
000081B9  8B56E2            mov dx,[bp-0x1e]
000081BC  0356DC            add dx,[bp-0x24]
000081BF  81C2FF07          add dx,0x7ff
000081C3  B90008            mov cx,0x800
000081C6  89D0              mov ax,dx
000081C8  31D2              xor dx,dx
000081CA  F7F1              div cx
000081CC  8946E0            mov [bp-0x20],ax
000081CF  8B5EFE            mov bx,[bp-0x2]
000081D2  F60701            test byte [bx],0x1
000081D5  750D              jnz 0x81e4
000081D7  E8EFF6            call word 0x78c9
000081DA  09C0              or ax,ax
000081DC  7406              jz 0x81e4
000081DE  B8FBFF            mov ax,0xfffb
000081E1  E9AC01            jmp word 0x8390
000081E4  C646CA28          mov byte [bp-0x36],0x28
000081E8  C646CB00          mov byte [bp-0x35],0x0
000081EC  B91800            mov cx,0x18
000081EF  8B56E8            mov dx,[bp-0x18]
000081F2  8B5EEA            mov bx,[bp-0x16]
000081F5  E306              jcxz 0x81fd
000081F7  D1EB              shr bx,1
000081F9  D1DA              rcr dx,1
000081FB  E2FA              loop 0x81f7
000081FD  81E2FF00          and dx,0xff
00008201  8856CC            mov [bp-0x34],dl
00008204  8B56EA            mov dx,[bp-0x16]
00008207  81E2FF00          and dx,0xff
0000820B  8856CD            mov [bp-0x33],dl
0000820E  B90800            mov cx,0x8
00008211  8B56E8            mov dx,[bp-0x18]
00008214  8B5EEA            mov bx,[bp-0x16]
00008217  E306              jcxz 0x821f
00008219  D1EB              shr bx,1
0000821B  D1DA              rcr dx,1
0000821D  E2FA              loop 0x8219
0000821F  81E2FF00          and dx,0xff
00008223  8856CE            mov [bp-0x32],dl
00008226  8B56E8            mov dx,[bp-0x18]
00008229  81E2FF00          and dx,0xff
0000822D  8856CF            mov [bp-0x31],dl
00008230  B90800            mov cx,0x8
00008233  8B56E0            mov dx,[bp-0x20]
00008236  D3EA              shr dx,cl
00008238  8856D1            mov [bp-0x2f],dl
0000823B  8B56E0            mov dx,[bp-0x20]
0000823E  8856D2            mov [bp-0x2e],dl
00008241  C646D300          mov byte [bp-0x2d],0x0
00008245  C646D400          mov byte [bp-0x2c],0x0
00008249  C646D500          mov byte [bp-0x2b],0x0
0000824D  B80008            mov ax,0x800
00008250  F766E0            mul word [bp-0x20]
00008253  50                push ax
00008254  8D46CA            lea ax,[bp-0x36]
00008257  50                push ax
00008258  E83801            call word 0x8393
0000825B  5B                pop bx
0000825C  5B                pop bx
0000825D  8946F8            mov [bp-0x8],ax
00008260  09C0              or ax,ax
00008262  7403              jz 0x8267
00008264  E90A01            jmp word 0x8371
00008267  E82802            call word 0x8492
0000826A  8946F8            mov [bp-0x8],ax
0000826D  09C0              or ax,ax
0000826F  7F03              jg 0x8274
00008271  E9F400            jmp word 0x8368
00008274  8B7EF8            mov di,[bp-0x8]
00008277  837EDC00          cmp word [bp-0x24],byte +0x0
0000827B  743C              jz 0x82b9
0000827D  09FF              or di,di
0000827F  7438              jz 0x82b9
00008281  8B76DC            mov si,[bp-0x24]
00008284  39FE              cmp si,di
00008286  7602              jna 0x828a
00008288  89FE              mov si,di
0000828A  81FE0002          cmp si,0x200
0000828E  7603              jna 0x8293
00008290  BE0002            mov si,0x200
00008293  8B1E9A30          mov bx,[0x309a]
00008297  56                push si
00008298  FF36A274          push word [0x74a2]
0000829C  FF36A074          push word [0x74a0]
000082A0  FF7702            push word [bx+0x2]
000082A3  E80D87            call word 0x9b3
000082A6  83C408            add sp,byte +0x8
000082A9  8B56DC            mov dx,[bp-0x24]
000082AC  29F2              sub dx,si
000082AE  8956DC            mov [bp-0x24],dx
000082B1  89FA              mov dx,di
000082B3  29F2              sub dx,si
000082B5  89D7              mov di,dx
000082B7  EBBE              jmp short 0x8277
000082B9  837EE200          cmp word [bp-0x1e],byte +0x0
000082BD  7503              jnz 0x82c2
000082BF  E97600            jmp word 0x8338
000082C2  09FF              or di,di
000082C4  7472              jz 0x8338
000082C6  8B76E2            mov si,[bp-0x1e]
000082C9  39FE              cmp si,di
000082CB  7602              jna 0x82cf
000082CD  89FE              mov si,di
000082CF  8B5E0C            mov bx,[bp+0xc]
000082D2  397702            cmp [bx+0x2],si
000082D5  7303              jnc 0x82da
000082D7  8B7702            mov si,[bx+0x2]
000082DA  8B5E0C            mov bx,[bp+0xc]
000082DD  8B17              mov dx,[bx]
000082DF  31C9              xor cx,cx
000082E1  0356D6            add dx,[bp-0x2a]
000082E4  134ED8            adc cx,[bp-0x28]
000082E7  8B1E9A30          mov bx,[0x309a]
000082EB  56                push si
000082EC  51                push cx
000082ED  52                push dx
000082EE  FF7702            push word [bx+0x2]
000082F1  E8BF86            call word 0x9b3
000082F4  83C408            add sp,byte +0x8
000082F7  017608            add [bp+0x8],si
000082FA  83560A00          adc word [bp+0xa],byte +0x0
000082FE  8B56E2            mov dx,[bp-0x1e]
00008301  29F2              sub dx,si
00008303  8956E2            mov [bp-0x1e],dx
00008306  89FA              mov dx,di
00008308  29F2              sub dx,si
0000830A  89D7              mov di,dx
0000830C  8B5E0C            mov bx,[bp+0xc]
0000830F  0137              add [bx],si
00008311  C746F40000        mov word [bp-0xc],0x0
00008316  8B5E0C            mov bx,[bp+0xc]
00008319  8B5702            mov dx,[bx+0x2]
0000831C  29F2              sub dx,si
0000831E  895702            mov [bx+0x2],dx
00008321  8B5E0C            mov bx,[bp+0xc]
00008324  837F0200          cmp word [bx+0x2],byte +0x0
00008328  758F              jnz 0x82b9
0000832A  83460C04          add word [bp+0xc],byte +0x4
0000832E  FF4E0E            dec word [bp+0xe]
00008331  C746F40100        mov word [bp-0xc],0x1
00008336  EB81              jmp short 0x82b9
00008338  09FF              or di,di
0000833A  7503              jnz 0x833f
0000833C  E928FF            jmp word 0x8267
0000833F  89FE              mov si,di
00008341  81FE0002          cmp si,0x200
00008345  7603              jna 0x834a
00008347  BE0002            mov si,0x200
0000834A  8B1E9A30          mov bx,[0x309a]
0000834E  56                push si
0000834F  FF36A274          push word [0x74a2]
00008353  FF36A074          push word [0x74a0]
00008357  FF7702            push word [bx+0x2]
0000835A  E85686            call word 0x9b3
0000835D  83C408            add sp,byte +0x8
00008360  89FA              mov dx,di
00008362  29F2              sub dx,si
00008364  89D7              mov di,dx
00008366  EBD0              jmp short 0x8338
00008368  837EF800          cmp word [bp-0x8],byte +0x0
0000836C  7C03              jl 0x8371
0000836E  E953FD            jmp word 0x80c4
00008371  FF46F6            inc word [bp-0xa]
00008374  837EF604          cmp word [bp-0xa],byte +0x4
00008378  7403              jz 0x837d
0000837A  E947FD            jmp word 0x80c4
0000837D  C7069E300000      mov word [0x309e],0x0
00008383  B8FBFF            mov ax,0xfffb
00008386  EB08              jmp short 0x8390
00008388  C7069E300000      mov word [0x309e],0x0
0000838E  31C0              xor ax,ax
00008390  E91A2B            jmp word 0xaead
00008393  55                push bp
00008394  89E5              mov bp,sp
00008396  83EC1A            sub sp,byte +0x1a
00008399  56                push si
0000839A  8B369A30          mov si,[0x309a]
0000839E  BA0600            mov dx,0x6
000083A1  035402            add dx,[si+0x2]
000083A4  FF7412            push word [si+0x12]
000083A7  52                push dx
000083A8  E80927            call word 0xaab4
000083AB  5B                pop bx
000083AC  5B                pop bx
000083AD  31C0              xor ax,ax
000083AF  50                push ax
000083B0  B88800            mov ax,0x88
000083B3  50                push ax
000083B4  E8BBFB            call word 0x7f72
000083B7  5B                pop bx
000083B8  5B                pop bx
000083B9  09C0              or ax,ax
000083BB  7513              jnz 0x83d0
000083BD  E8F5F4            call word 0x78b5
000083C0  50                push ax
000083C1  B81C12            mov ax,0x121c
000083C4  50                push ax
000083C5  E86C20            call word 0xa434
000083C8  5B                pop bx
000083C9  5B                pop bx
000083CA  B8FFFF            mov ax,0xffff
000083CD  E9BF00            jmp word 0x848f
000083D0  B81B7E            mov ax,0x7e1b
000083D3  50                push ax
000083D4  E86EA5            call word 0x2945
000083D7  058007            add ax,0x780
000083DA  83D200            adc dx,byte +0x0
000083DD  52                push dx
000083DE  50                push ax
000083DF  B8FDFF            mov ax,0xfffd
000083E2  50                push ax
000083E3  B8A630            mov ax,0x30a6
000083E6  50                push ax
000083E7  E859A4            call word 0x2843
000083EA  83C40A            add sp,byte +0xa
000083ED  8B5402            mov dx,[si+0x2]
000083F0  42                inc dx
000083F1  31C0              xor ax,ax
000083F3  50                push ax
000083F4  52                push dx
000083F5  E8BC26            call word 0xaab4
000083F8  5B                pop bx
000083F9  5B                pop bx
000083FA  BA0200            mov dx,0x2
000083FD  035402            add dx,[si+0x2]
00008400  31C0              xor ax,ax
00008402  50                push ax
00008403  52                push dx
00008404  E8AD26            call word 0xaab4
00008407  5B                pop bx
00008408  5B                pop bx
00008409  BA0300            mov dx,0x3
0000840C  035402            add dx,[si+0x2]
0000840F  31C0              xor ax,ax
00008411  50                push ax
00008412  52                push dx
00008413  E89E26            call word 0xaab4
00008416  5B                pop bx
00008417  5B                pop bx
00008418  8B5606            mov dx,[bp+0x6]
0000841B  B90400            mov cx,0x4
0000841E  034C02            add cx,[si+0x2]
00008421  31C0              xor ax,ax
00008423  88D0              mov al,dl
00008425  50                push ax
00008426  51                push cx
00008427  E88A26            call word 0xaab4
0000842A  5B                pop bx
0000842B  5B                pop bx
0000842C  B90800            mov cx,0x8
0000842F  8B5606            mov dx,[bp+0x6]
00008432  D3EA              shr dx,cl
00008434  B90500            mov cx,0x5
00008437  034C02            add cx,[si+0x2]
0000843A  31C0              xor ax,ax
0000843C  88D0              mov al,dl
0000843E  50                push ax
0000843F  51                push cx
00008440  E87126            call word 0xaab4
00008443  5B                pop bx
00008444  5B                pop bx
00008445  BAA000            mov dx,0xa0
00008448  89169E30          mov [0x309e],dx
0000844C  B90700            mov cx,0x7
0000844F  034C02            add cx,[si+0x2]
00008452  52                push dx
00008453  51                push cx
00008454  E85D26            call word 0xaab4
00008457  5B                pop bx
00008458  5B                pop bx
00008459  B80800            mov ax,0x8
0000845C  50                push ax
0000845D  B88800            mov ax,0x88
00008460  50                push ax
00008461  E80EFB            call word 0x7f72
00008464  5B                pop bx
00008465  5B                pop bx
00008466  09C0              or ax,ax
00008468  750D              jnz 0x8477
0000846A  B8FE11            mov ax,0x11fe
0000846D  50                push ax
0000846E  E8C31F            call word 0xa434
00008471  5B                pop bx
00008472  B8FFFF            mov ax,0xffff
00008475  EB18              jmp short 0x848f
00008477  810EA0300001      or word [0x30a0],0x100
0000847D  B80C00            mov ax,0xc
00008480  50                push ax
00008481  FF7604            push word [bp+0x4]
00008484  FF7402            push word [si+0x2]
00008487  E83626            call word 0xaac0
0000848A  83C406            add sp,byte +0x6
0000848D  31C0              xor ax,ax
0000848F  E91C2A            jmp word 0xaeae
00008492  55                push bp
00008493  89E5              mov bp,sp
00008495  83EC0C            sub sp,byte +0xc
00008498  56                push si
00008499  57                push di
0000849A  8B169A30          mov dx,[0x309a]
0000849E  8956FE            mov [bp-0x2],dx
000084A1  E85BFA            call word 0x7eff
000084A4  8B5EFE            mov bx,[bp-0x2]
000084A7  8B5702            mov dx,[bx+0x2]
000084AA  42                inc dx
000084AB  52                push dx
000084AC  E8F625            call word 0xaaa5
000084AF  5B                pop bx
000084B0  8946FC            mov [bp-0x4],ax
000084B3  8B5EFE            mov bx,[bp-0x2]
000084B6  BA0400            mov dx,0x4
000084B9  035702            add dx,[bx+0x2]
000084BC  52                push dx
000084BD  E8E525            call word 0xaaa5
000084C0  5B                pop bx
000084C1  89C6              mov si,ax
000084C3  8B5EFE            mov bx,[bp-0x2]
000084C6  BA0500            mov dx,0x5
000084C9  035702            add dx,[bx+0x2]
000084CC  52                push dx
000084CD  E8D525            call word 0xaaa5
000084D0  5B                pop bx
000084D1  B90800            mov cx,0x8
000084D4  D3E0              shl ax,cl
000084D6  09C6              or si,ax
000084D8  8B5EFE            mov bx,[bp-0x2]
000084DB  BA0200            mov dx,0x2
000084DE  035702            add dx,[bx+0x2]
000084E1  52                push dx
000084E2  E8C025            call word 0xaaa5
000084E5  5B                pop bx
000084E6  8946F8            mov [bp-0x8],ax
000084E9  F606A03081        test byte [0x30a0],0x81
000084EE  7405              jz 0x84f5
000084F0  B8FFFF            mov ax,0xffff
000084F3  EB40              jmp short 0x8535
000084F5  BA0800            mov dx,0x8
000084F8  2316A030          and dx,[0x30a0]
000084FC  B90300            mov cx,0x3
000084FF  234EF8            and cx,[bp-0x8]
00008502  09D1              or cx,dx
00008504  894EF4            mov [bp-0xc],cx
00008507  EB1B              jmp short 0x8524
00008509  31FF              xor di,di
0000850B  EB20              jmp short 0x852d
0000850D  BFFFFF            mov di,0xffff
00008510  EB1B              jmp short 0x852d
00008512  BFFFFF            mov di,0xffff
00008515  EB16              jmp short 0x852d
00008517  89F7              mov di,si
00008519  EB12              jmp short 0x852d
0000851B  89F7              mov di,si
0000851D  EB0E              jmp short 0x852d
0000851F  BFFFFF            mov di,0xffff
00008522  EB09              jmp short 0x852d
00008524  BB3212            mov bx,0x1232
00008527  8B46F4            mov ax,[bp-0xc]
0000852A  E91728            jmp word 0xad44
0000852D  810EA0300001      or word [0x30a0],0x100
00008533  89F8              mov ax,di
00008535  E97529            jmp word 0xaead
00008538  55                push bp
00008539  89E5              mov bp,sp
0000853B  B80413            mov ax,0x1304
0000853E  50                push ax
0000853F  E851D8            call word 0x5d93
00008542  5B                pop bx
00008543  E96929            jmp word 0xaeaf
00008546  55                push bp
00008547  89E5              mov bp,sp
00008549  56                push si
0000854A  8B7604            mov si,[bp+0x4]
0000854D  83FE14            cmp si,byte +0x14
00008550  7D32              jnl 0x8584
00008552  B90500            mov cx,0x5
00008555  89F0              mov ax,si
00008557  99                cwd
00008558  F7F9              idiv cx
0000855A  A31C36            mov [0x361c],ax
0000855D  B95A01            mov cx,0x15a
00008560  F7E1              mul cx
00008562  89C3              mov bx,ax
00008564  81C3B230          add bx,0x30b2
00008568  891E1A36          mov [0x361a],bx
0000856C  B90500            mov cx,0x5
0000856F  89F0              mov ax,si
00008571  99                cwd
00008572  F7F9              idiv cx
00008574  83C30A            add bx,byte +0xa
00008577  B90400            mov cx,0x4
0000857A  D3E2              shl dx,cl
0000857C  01D3              add bx,dx
0000857E  891E1E36          mov [0x361e],bx
00008582  EB3F              jmp short 0x85c3
00008584  81EE8000          sub si,0x80
00008588  83FE40            cmp si,byte +0x40
0000858B  7332              jnc 0x85bf
0000858D  B91000            mov cx,0x10
00008590  89F0              mov ax,si
00008592  99                cwd
00008593  F7F9              idiv cx
00008595  A31C36            mov [0x361c],ax
00008598  B95A01            mov cx,0x15a
0000859B  F7E1              mul cx
0000859D  89C3              mov bx,ax
0000859F  81C3B230          add bx,0x30b2
000085A3  891E1A36          mov [0x361a],bx
000085A7  B91000            mov cx,0x10
000085AA  89F0              mov ax,si
000085AC  99                cwd
000085AD  F7F9              idiv cx
000085AF  83C35A            add bx,byte +0x5a
000085B2  B90400            mov cx,0x4
000085B5  D3E2              shl dx,cl
000085B7  01D3              add bx,dx
000085B9  891E1E36          mov [0x361e],bx
000085BD  EB04              jmp short 0x85c3
000085BF  31C0              xor ax,ax
000085C1  EB11              jmp short 0x85d4
000085C3  8B160213          mov dx,[0x1302]
000085C7  39161C36          cmp [0x361c],dx
000085CB  7D05              jnl 0x85d2
000085CD  A11E36            mov ax,[0x361e]
000085D0  EB02              jmp short 0x85d4
000085D2  31C0              xor ax,ax
000085D4  E9D728            jmp word 0xaeae
000085D7  55                push bp
000085D8  89E5              mov bp,sp
000085DA  BA3000            mov dx,0x30
000085DD  03161C36          add dx,[0x361c]
000085E1  88161A13          mov [0x131a],dl
000085E5  B81413            mov ax,0x1314
000085E8  E9C428            jmp word 0xaeaf
000085EB  55                push bp
000085EC  89E5              mov bp,sp
000085EE  83EC2A            sub sp,byte +0x2a
000085F1  56                push si
000085F2  57                push di
000085F3  8B7E0C            mov di,[bp+0xc]
000085F6  8B161A36          mov dx,[0x361a]
000085FA  8956FE            mov [bp-0x2],dx
000085FD  8B5E0E            mov bx,[bp+0xe]
00008600  D1E3              shl bx,1
00008602  D1E3              shl bx,1
00008604  01FB              add bx,di
00008606  895EFA            mov [bp-0x6],bx
00008609  8B1E1E36          mov bx,[0x361e]
0000860D  83C308            add bx,byte +0x8
00008610  B90800            mov cx,0x8
00008613  E86428            call word 0xae7a
00008616  E8FF23            call word 0xaa18
00008619  83C408            add sp,byte +0x8
0000861C  8946EA            mov [bp-0x16],ax
0000861F  8956EC            mov [bp-0x14],dx
00008622  8B5EFE            mov bx,[bp-0x2]
00008625  FF7702            push word [bx+0x2]
00008628  58                pop ax
00008629  F76704            mul word [bx+0x4]
0000862C  8946E8            mov [bp-0x18],ax
0000862F  8B5E04            mov bx,[bp+0x4]
00008632  D1E3              shl bx,1
00008634  8B9F766F          mov bx,[bx+0x6f76]
00008638  B90A00            mov cx,0xa
0000863B  8B5754            mov dx,[bx+0x54]
0000863E  31DB              xor bx,bx
00008640  E306              jcxz 0x8648
00008642  D1E2              shl dx,1
00008644  D1D3              rcl bx,1
00008646  E2FA              loop 0x8642
00008648  8956E4            mov [bp-0x1c],dx
0000864B  895EE6            mov [bp-0x1a],bx
0000864E  8B5608            mov dx,[bp+0x8]
00008651  81E2FF01          and dx,0x1ff
00008655  81CA0000          or dx,0x0
00008659  7406              jz 0x8661
0000865B  B8EAFF            mov ax,0xffea
0000865E  E96103            jmp word 0x89c2
00008661  C746F80000        mov word [bp-0x8],0x0
00008666  837E0E00          cmp word [bp+0xe],byte +0x0
0000866A  7503              jnz 0x866f
0000866C  E95103            jmp word 0x89c0
0000866F  31F6              xor si,si
00008671  897EFC            mov [bp-0x4],di
00008674  8B56FA            mov dx,[bp-0x6]
00008677  3956FC            cmp [bp-0x4],dx
0000867A  7323              jnc 0x869f
0000867C  8B5EFC            mov bx,[bp-0x4]
0000867F  89F2              mov dx,si
00008681  035702            add dx,[bx+0x2]
00008684  81FA0002          cmp dx,0x200
00008688  7609              jna 0x8693
0000868A  09F6              or si,si
0000868C  7511              jnz 0x869f
0000868E  BE0002            mov si,0x200
00008691  EB0C              jmp short 0x869f
00008693  8B5EFC            mov bx,[bp-0x4]
00008696  037702            add si,[bx+0x2]
00008699  8346FC04          add word [bp-0x4],byte +0x4
0000869D  EBD5              jmp short 0x8674
0000869F  F7C6FF01          test si,0x1ff
000086A3  7406              jz 0x86ab
000086A5  B8EAFF            mov ax,0xffea
000086A8  E91703            jmp word 0x89c2
000086AB  8B56EA            mov dx,[bp-0x16]
000086AE  8B4EEC            mov cx,[bp-0x14]
000086B1  394E0A            cmp [bp+0xa],cx
000086B4  720C              jc 0x86c2
000086B6  7505              jnz 0x86bd
000086B8  395608            cmp [bp+0x8],dx
000086BB  7205              jc 0x86c2
000086BD  31C0              xor ax,ax
000086BF  E90003            jmp word 0x89c2
000086C2  89F2              mov dx,si
000086C4  31C9              xor cx,cx
000086C6  035608            add dx,[bp+0x8]
000086C9  134E0A            adc cx,[bp+0xa]
000086CC  394EEC            cmp [bp-0x14],cx
000086CF  7715              ja 0x86e6
000086D1  7505              jnz 0x86d8
000086D3  3956EA            cmp [bp-0x16],dx
000086D6  730E              jnc 0x86e6
000086D8  8B56EA            mov dx,[bp-0x16]
000086DB  8B4EEC            mov cx,[bp-0x14]
000086DE  2B5608            sub dx,[bp+0x8]
000086E1  1B4E0A            sbb cx,[bp+0xa]
000086E4  89D6              mov si,dx
000086E6  8B1E1E36          mov bx,[0x361e]
000086EA  B80002            mov ax,0x200
000086ED  50                push ax
000086EE  FF760A            push word [bp+0xa]
000086F1  FF7608            push word [bp+0x8]
000086F4  B90800            mov cx,0x8
000086F7  E88027            call word 0xae7a
000086FA  8D46DC            lea ax,[bp-0x24]
000086FD  50                push ax
000086FE  E86422            call word 0xa965
00008701  83C40E            add sp,byte +0xe
00008704  89C3              mov bx,ax
00008706  B90800            mov cx,0x8
00008709  E86E27            call word 0xae7a
0000870C  E84423            call word 0xaa53
0000870F  83C40A            add sp,byte +0xa
00008712  8946EE            mov [bp-0x12],ax
00008715  8956F0            mov [bp-0x10],dx
00008718  837EF800          cmp word [bp-0x8],byte +0x0
0000871C  7E03              jng 0x8721
0000871E  BE0002            mov si,0x200
00008721  837E0608          cmp word [bp+0x6],byte +0x8
00008725  7559              jnz 0x8780
00008727  C746F40000        mov word [bp-0xc],0x0
0000872C  897EFC            mov [bp-0x4],di
0000872F  3976F4            cmp [bp-0xc],si
00008732  734C              jnc 0x8780
00008734  8B5502            mov dx,[di+0x2]
00008737  8956F2            mov [bp-0xe],dx
0000873A  0356F4            add dx,[bp-0xc]
0000873D  39F2              cmp dx,si
0000873F  7608              jna 0x8749
00008741  89F2              mov dx,si
00008743  2B56F4            sub dx,[bp-0xc]
00008746  8956F2            mov [bp-0xe],dx
00008749  8B56F4            mov dx,[bp-0xc]
0000874C  31C9              xor cx,cx
0000874E  0316A074          add dx,[0x74a0]
00008752  130EA274          adc cx,[0x74a2]
00008756  8B5EFC            mov bx,[bp-0x4]
00008759  8B1F              mov bx,[bx]
0000875B  31C0              xor ax,ax
0000875D  035EE4            add bx,[bp-0x1c]
00008760  1346E6            adc ax,[bp-0x1a]
00008763  FF361C13          push word [0x131c]
00008767  FF76F2            push word [bp-0xe]
0000876A  51                push cx
0000876B  52                push dx
0000876C  50                push ax
0000876D  53                push bx
0000876E  E81483            call word 0xa85
00008771  83C40C            add sp,byte +0xc
00008774  8B56F2            mov dx,[bp-0xe]
00008777  0156F4            add [bp-0xc],dx
0000877A  8346FC04          add word [bp-0x4],byte +0x4
0000877E  EBAF              jmp short 0x872f
00008780  8B5EFE            mov bx,[bp-0x2]
00008783  837F0800          cmp word [bx+0x8],byte +0x0
00008787  7503              jnz 0x878c
00008789  E9B500            jmp word 0x8841
0000878C  C606EE6013        mov byte [0x60ee],0x13
00008791  837E0608          cmp word [bp+0x6],byte +0x8
00008795  7505              jnz 0x879c
00008797  B80043            mov ax,0x4300
0000879A  EB03              jmp short 0x879f
0000879C  B80042            mov ax,0x4200
0000879F  A3FA60            mov [0x60fa],ax
000087A2  BA8000            mov dx,0x80
000087A5  03161C36          add dx,[0x361c]
000087A9  88160661          mov [0x6106],dl
000087AD  BA3E36            mov dx,0x363e
000087B0  31C9              xor cx,cx
000087B2  03168446          add dx,[0x4684]
000087B6  130E8646          adc cx,[0x4686]
000087BA  51                push cx
000087BB  52                push dx
000087BC  31C0              xor ax,ax
000087BE  50                push ax
000087BF  B81000            mov ax,0x10
000087C2  50                push ax
000087C3  E8F126            call word 0xaeb7
000087C6  A30A61            mov [0x610a],ax
000087C9  BA3E36            mov dx,0x363e
000087CC  31C9              xor cx,cx
000087CE  03168446          add dx,[0x4684]
000087D2  130E8646          adc cx,[0x4686]
000087D6  51                push cx
000087D7  B90400            mov cx,0x4
000087DA  5B                pop bx
000087DB  E306              jcxz 0x87e3
000087DD  D1EB              shr bx,1
000087DF  D1DA              rcr dx,1
000087E1  E2FA              loop 0x87dd
000087E3  8916F660          mov [0x60f6],dx
000087E7  C6063E3610        mov byte [0x363e],0x10
000087EC  C6063F3600        mov byte [0x363f],0x0
000087F1  B90900            mov cx,0x9
000087F4  89F2              mov dx,si
000087F6  D3EA              shr dx,cl
000087F8  89164036          mov [0x3640],dx
000087FC  FF36A274          push word [0x74a2]
00008800  FF36A074          push word [0x74a0]
00008804  31C0              xor ax,ax
00008806  50                push ax
00008807  B81000            mov ax,0x10
0000880A  50                push ax
0000880B  E8A926            call word 0xaeb7
0000880E  A34236            mov [0x3642],ax
00008811  B90400            mov cx,0x4
00008814  8B16A074          mov dx,[0x74a0]
00008818  8B1EA274          mov bx,[0x74a2]
0000881C  E306              jcxz 0x8824
0000881E  D1EB              shr bx,1
00008820  D1DA              rcr dx,1
00008822  E2FA              loop 0x881e
00008824  89164436          mov [0x3644],dx
00008828  8B56EE            mov dx,[bp-0x12]
0000882B  8B4EF0            mov cx,[bp-0x10]
0000882E  89164636          mov [0x3646],dx
00008832  890E4836          mov [0x3648],cx
00008836  31C0              xor ax,ax
00008838  A34A36            mov [0x364a],ax
0000883B  A34C36            mov [0x364c],ax
0000883E  E9C500            jmp word 0x8906
00008841  FF76F0            push word [bp-0x10]
00008844  FF76EE            push word [bp-0x12]
00008847  31C0              xor ax,ax
00008849  50                push ax
0000884A  FF76E8            push word [bp-0x18]
0000884D  E8C525            call word 0xae15
00008850  8946DA            mov [bp-0x26],ax
00008853  8B5EFE            mov bx,[bp-0x2]
00008856  FF76F0            push word [bp-0x10]
00008859  FF76EE            push word [bp-0x12]
0000885C  31C0              xor ax,ax
0000885E  50                push ax
0000885F  FF7704            push word [bx+0x4]
00008862  E85226            call word 0xaeb7
00008865  050100            add ax,0x1
00008868  83D200            adc dx,byte +0x0
0000886B  8946D8            mov [bp-0x28],ax
0000886E  FF76F0            push word [bp-0x10]
00008871  FF76EE            push word [bp-0x12]
00008874  31C0              xor ax,ax
00008876  50                push ax
00008877  FF76E8            push word [bp-0x18]
0000887A  E83A26            call word 0xaeb7
0000887D  8B5EFE            mov bx,[bp-0x2]
00008880  52                push dx
00008881  50                push ax
00008882  31C0              xor ax,ax
00008884  50                push ax
00008885  FF7704            push word [bx+0x4]
00008888  E88A25            call word 0xae15
0000888B  8946D6            mov [bp-0x2a],ax
0000888E  C606EE6013        mov byte [0x60ee],0x13
00008893  837E0608          cmp word [bp+0x6],byte +0x8
00008897  7505              jnz 0x889e
00008899  B80300            mov ax,0x3
0000889C  EB03              jmp short 0x88a1
0000889E  B80200            mov ax,0x2
000088A1  A2FB60            mov [0x60fb],al
000088A4  B90900            mov cx,0x9
000088A7  89F2              mov dx,si
000088A9  D3EA              shr dx,cl
000088AB  8816FA60          mov [0x60fa],dl
000088AF  FF36A274          push word [0x74a2]
000088B3  FF36A074          push word [0x74a0]
000088B7  31C0              xor ax,ax
000088B9  50                push ax
000088BA  B81000            mov ax,0x10
000088BD  50                push ax
000088BE  E8F625            call word 0xaeb7
000088C1  A3FE60            mov [0x60fe],ax
000088C4  B90400            mov cx,0x4
000088C7  8B16A074          mov dx,[0x74a0]
000088CB  8B1EA274          mov bx,[0x74a2]
000088CF  E306              jcxz 0x88d7
000088D1  D1EB              shr bx,1
000088D3  D1DA              rcr dx,1
000088D5  E2FA              loop 0x88d1
000088D7  8916F860          mov [0x60f8],dx
000088DB  8B56DA            mov dx,[bp-0x26]
000088DE  88160361          mov [0x6103],dl
000088E2  BA0003            mov dx,0x300
000088E5  2356DA            and dx,[bp-0x26]
000088E8  B90200            mov cx,0x2
000088EB  D3EA              shr dx,cl
000088ED  0B56D8            or dx,[bp-0x28]
000088F0  88160261          mov [0x6102],dl
000088F4  8B56D6            mov dx,[bp-0x2a]
000088F7  88160761          mov [0x6107],dl
000088FB  BA8000            mov dx,0x80
000088FE  03161C36          add dx,[0x361c]
00008902  88160661          mov [0x6106],dl
00008906  B8D507            mov ax,0x7d5
00008909  50                push ax
0000890A  E8E682            call word 0xbf3
0000890D  5B                pop bx
0000890E  F606EE6001        test byte [0x60ee],0x1
00008913  7412              jz 0x8927
00008915  FF46F8            inc word [bp-0x8]
00008918  837EF802          cmp word [bp-0x8],byte +0x2
0000891C  7403              jz 0x8921
0000891E  E945FD            jmp word 0x8666
00008921  B8FBFF            mov ax,0xfffb
00008924  E99B00            jmp word 0x89c2
00008927  837E0609          cmp word [bp+0x6],byte +0x9
0000892B  7559              jnz 0x8986
0000892D  C746F40000        mov word [bp-0xc],0x0
00008932  897EFC            mov [bp-0x4],di
00008935  3976F4            cmp [bp-0xc],si
00008938  734C              jnc 0x8986
0000893A  8B5502            mov dx,[di+0x2]
0000893D  8956F2            mov [bp-0xe],dx
00008940  0356F4            add dx,[bp-0xc]
00008943  39F2              cmp dx,si
00008945  7608              jna 0x894f
00008947  89F2              mov dx,si
00008949  2B56F4            sub dx,[bp-0xc]
0000894C  8956F2            mov [bp-0xe],dx
0000894F  8B5EFC            mov bx,[bp-0x4]
00008952  8B17              mov dx,[bx]
00008954  31C9              xor cx,cx
00008956  0356E4            add dx,[bp-0x1c]
00008959  134EE6            adc cx,[bp-0x1a]
0000895C  8B5EF4            mov bx,[bp-0xc]
0000895F  31C0              xor ax,ax
00008961  031EA074          add bx,[0x74a0]
00008965  1306A274          adc ax,[0x74a2]
00008969  FF361E13          push word [0x131e]
0000896D  FF76F2            push word [bp-0xe]
00008970  51                push cx
00008971  52                push dx
00008972  50                push ax
00008973  53                push bx
00008974  E80E81            call word 0xa85
00008977  83C40C            add sp,byte +0xc
0000897A  8B56F2            mov dx,[bp-0xe]
0000897D  0156F4            add [bp-0xc],dx
00008980  8346FC04          add word [bp-0x4],byte +0x4
00008984  EBAF              jmp short 0x8935
00008986  017608            add [bp+0x8],si
00008989  83560A00          adc word [bp+0xa],byte +0x0
0000898D  397502            cmp [di+0x2],si
00008990  760D              jna 0x899f
00008992  0135              add [di],si
00008994  8B5502            mov dx,[di+0x2]
00008997  29F2              sub dx,si
00008999  895502            mov [di+0x2],dx
0000899C  E9C7FC            jmp word 0x8666
0000899F  89F2              mov dx,si
000089A1  2B5502            sub dx,[di+0x2]
000089A4  89D6              mov si,dx
000089A6  8B5502            mov dx,[di+0x2]
000089A9  0115              add [di],dx
000089AB  C745020000        mov word [di+0x2],0x0
000089B0  09F6              or si,si
000089B2  7504              jnz 0x89b8
000089B4  31C0              xor ax,ax
000089B6  EB0A              jmp short 0x89c2
000089B8  83C704            add di,byte +0x4
000089BB  FF4E0E            dec word [bp+0xe]
000089BE  EBCD              jmp short 0x898d
000089C0  31C0              xor ax,ax
000089C2  E9E824            jmp word 0xaead
000089C5  55                push bp
000089C6  89E5              mov bp,sp
000089C8  833E201300        cmp word [0x1320],byte +0x0
000089CD  7509              jnz 0x89d8
000089CF  E86D00            call word 0x8a3f
000089D2  C70620130100      mov word [0x1320],0x1
000089D8  8B5E06            mov bx,[bp+0x6]
000089DB  FF7704            push word [bx+0x4]
000089DE  E865FB            call word 0x8546
000089E1  5B                pop bx
000089E2  09C0              or ax,ax
000089E4  7505              jnz 0x89eb
000089E6  B8FAFF            mov ax,0xfffa
000089E9  EB29              jmp short 0x8a14
000089EB  8B1E1A36          mov bx,[0x361a]
000089EF  8B5706            mov dx,[bx+0x6]
000089F2  89D1              mov cx,dx
000089F4  41                inc cx
000089F5  894F06            mov [bx+0x6],cx
000089F8  09D2              or dx,dx
000089FA  7516              jnz 0x8a12
000089FC  B80500            mov ax,0x5
000089FF  F7261C36          mul word [0x361c]
00008A03  BB0100            mov bx,0x1
00008A06  53                push bx
00008A07  50                push ax
00008A08  B80413            mov ax,0x1304
00008A0B  50                push ax
00008A0C  E884D7            call word 0x6193
00008A0F  83C406            add sp,byte +0x6
00008A12  31C0              xor ax,ax
00008A14  E99824            jmp word 0xaeaf
00008A17  55                push bp
00008A18  89E5              mov bp,sp
00008A1A  8B5E06            mov bx,[bp+0x6]
00008A1D  FF7704            push word [bx+0x4]
00008A20  E823FB            call word 0x8546
00008A23  5B                pop bx
00008A24  09C0              or ax,ax
00008A26  7505              jnz 0x8a2d
00008A28  B8FAFF            mov ax,0xfffa
00008A2B  EB0F              jmp short 0x8a3c
00008A2D  8B1E1A36          mov bx,[0x361a]
00008A31  8B5706            mov dx,[bx+0x6]
00008A34  83EA01            sub dx,byte +0x1
00008A37  895706            mov [bx+0x6],dx
00008A3A  31C0              xor ax,ax
00008A3C  E97024            jmp word 0xaeaf
00008A3F  55                push bp
00008A40  89E5              mov bp,sp
00008A42  83EC10            sub sp,byte +0x10
00008A45  56                push si
00008A46  57                push di
00008A47  31FF              xor di,di
00008A49  393E0213          cmp [0x1302],di
00008A4D  7F03              jg 0x8a52
00008A4F  E9BF01            jmp word 0x8c11
00008A52  B80500            mov ax,0x5
00008A55  F7E7              mul di
00008A57  50                push ax
00008A58  E8EBFA            call word 0x8546
00008A5B  5B                pop bx
00008A5C  8B361A36          mov si,[0x361a]
00008A60  C606EE6013        mov byte [0x60ee],0x13
00008A65  C606FB6008        mov byte [0x60fb],0x8
00008A6A  8D9D8000          lea bx,[di+0x80]
00008A6E  881E0661          mov [0x6106],bl
00008A72  B8D507            mov ax,0x7d5
00008A75  50                push ax
00008A76  E87A81            call word 0xbf3
00008A79  5B                pop bx
00008A7A  F606EE6001        test byte [0x60ee],0x1
00008A7F  7507              jnz 0x8a88
00008A81  A00661            mov al,[0x6106]
00008A84  30E4              xor ah,ah
00008A86  EB02              jmp short 0x8a8a
00008A88  89F8              mov ax,di
00008A8A  A30213            mov [0x1302],ax
00008A8D  3D0400            cmp ax,0x4
00008A90  7E06              jng 0x8a98
00008A92  C70602130400      mov word [0x1302],0x4
00008A98  393E0213          cmp [0x1302],di
00008A9C  7F03              jg 0x8aa1
00008A9E  E97001            jmp word 0x8c11
00008AA1  8A160761          mov dl,[0x6107]
00008AA5  30F6              xor dh,dh
00008AA7  42                inc dx
00008AA8  895402            mov [si+0x2],dx
00008AAB  8A160261          mov dl,[0x6102]
00008AAF  30F6              xor dh,dh
00008AB1  81E23F00          and dx,0x3f
00008AB5  895404            mov [si+0x4],dx
00008AB8  8A160261          mov dl,[0x6102]
00008ABC  30F6              xor dh,dh
00008ABE  81E2C000          and dx,0xc0
00008AC2  B90200            mov cx,0x2
00008AC5  D3E2              shl dx,cl
00008AC7  8A0E0361          mov cl,[0x6103]
00008ACB  30ED              xor ch,ch
00008ACD  09D1              or cx,dx
00008ACF  41                inc cx
00008AD0  890C              mov [si],cx
00008AD2  8B4402            mov ax,[si+0x2]
00008AD5  31D2              xor dx,dx
00008AD7  31DB              xor bx,bx
00008AD9  53                push bx
00008ADA  51                push cx
00008ADB  E8B123            call word 0xae8f
00008ADE  52                push dx
00008ADF  50                push ax
00008AE0  8B4404            mov ax,[si+0x4]
00008AE3  31D2              xor dx,dx
00008AE5  E8A723            call word 0xae8f
00008AE8  8946F8            mov [bp-0x8],ax
00008AEB  8956FA            mov [bp-0x6],dx
00008AEE  C606EE6013        mov byte [0x60ee],0x13
00008AF3  C606FB6041        mov byte [0x60fb],0x41
00008AF8  C706FE60AA55      mov word [0x60fe],0x55aa
00008AFE  8D9D8000          lea bx,[di+0x80]
00008B02  881E0661          mov [0x6106],bl
00008B06  833E7C4600        cmp word [0x467c],byte +0x0
00008B0B  7408              jz 0x8b15
00008B0D  B8D507            mov ax,0x7d5
00008B10  50                push ax
00008B11  E8DF80            call word 0xbf3
00008B14  5B                pop bx
00008B15  F606EE6001        test byte [0x60ee],0x1
00008B1A  7403              jz 0x8b1f
00008B1C  E99D00            jmp word 0x8bbc
00008B1F  813EFE6055AA      cmp word [0x60fe],0xaa55
00008B25  7403              jz 0x8b2a
00008B27  E99200            jmp word 0x8bbc
00008B2A  F606026101        test byte [0x6102],0x1
00008B2F  7503              jnz 0x8b34
00008B31  E98800            jmp word 0x8bbc
00008B34  C606EE6013        mov byte [0x60ee],0x13
00008B39  C606FB6048        mov byte [0x60fb],0x48
00008B3E  8D9D8000          lea bx,[di+0x80]
00008B42  881E0661          mov [0x6106],bl
00008B46  BA2036            mov dx,0x3620
00008B49  31C9              xor cx,cx
00008B4B  03168446          add dx,[0x4684]
00008B4F  130E8646          adc cx,[0x4686]
00008B53  51                push cx
00008B54  52                push dx
00008B55  31C0              xor ax,ax
00008B57  50                push ax
00008B58  B81000            mov ax,0x10
00008B5B  50                push ax
00008B5C  E85823            call word 0xaeb7
00008B5F  A30A61            mov [0x610a],ax
00008B62  BA2036            mov dx,0x3620
00008B65  31C9              xor cx,cx
00008B67  03168446          add dx,[0x4684]
00008B6B  130E8646          adc cx,[0x4686]
00008B6F  51                push cx
00008B70  B90400            mov cx,0x4
00008B73  5B                pop bx
00008B74  E306              jcxz 0x8b7c
00008B76  D1EB              shr bx,1
00008B78  D1DA              rcr dx,1
00008B7A  E2FA              loop 0x8b76
00008B7C  8916F660          mov [0x60f6],dx
00008B80  C70620361E00      mov word [0x3620],0x1e
00008B86  B8D507            mov ax,0x7d5
00008B89  50                push ax
00008B8A  E86680            call word 0xbf3
00008B8D  5B                pop bx
00008B8E  F606EE6001        test byte [0x60ee],0x1
00008B93  7527              jnz 0x8bbc
00008B95  C744080100        mov word [si+0x8],0x1
00008B9A  8B163036          mov dx,[0x3630]
00008B9E  8B0E3236          mov cx,[0x3632]
00008BA2  8956F8            mov [bp-0x8],dx
00008BA5  894EFA            mov [bp-0x6],cx
00008BA8  8B163636          mov dx,[0x3636]
00008BAC  0B163436          or dx,[0x3634]
00008BB0  740A              jz 0x8bbc
00008BB2  C746F8FFFF        mov word [bp-0x8],0xffff
00008BB7  C746FAFFFF        mov word [bp-0x6],0xffff
00008BBC  837C0800          cmp word [si+0x8],byte +0x0
00008BC0  7416              jz 0x8bd8
00008BC2  FF76FA            push word [bp-0x6]
00008BC5  FF76F8            push word [bp-0x8]
00008BC8  E80CFA            call word 0x85d7
00008BCB  50                push ax
00008BCC  B85413            mov ax,0x1354
00008BCF  50                push ax
00008BD0  E86118            call word 0xa434
00008BD3  83C408            add sp,byte +0x8
00008BD6  EB16              jmp short 0x8bee
00008BD8  FF7404            push word [si+0x4]
00008BDB  FF7402            push word [si+0x2]
00008BDE  FF34              push word [si]
00008BE0  E8F4F9            call word 0x85d7
00008BE3  50                push ax
00008BE4  B82213            mov ax,0x1322
00008BE7  50                push ax
00008BE8  E84918            call word 0xa434
00008BEB  83C40A            add sp,byte +0xa
00008BEE  B80002            mov ax,0x200
00008BF1  50                push ax
00008BF2  FF76FA            push word [bp-0x6]
00008BF5  FF76F8            push word [bp-0x8]
00008BF8  8D46F0            lea ax,[bp-0x10]
00008BFB  50                push ax
00008BFC  E87D1E            call word 0xaa7c
00008BFF  83C408            add sp,byte +0x8
00008C02  50                push ax
00008C03  8D4412            lea ax,[si+0x12]
00008C06  50                push ax
00008C07  B90400            mov cx,0x4
00008C0A  E82221            call word 0xad2f
00008C0D  47                inc di
00008C0E  E938FE            jmp word 0x8a49
00008C11  E99922            jmp word 0xaead
00008C14  55                push bp
00008C15  89E5              mov bp,sp
00008C17  8B1E1A36          mov bx,[0x361a]
00008C1B  FF37              push word [bx]
00008C1D  8B5E04            mov bx,[bp+0x4]
00008C20  5A                pop dx
00008C21  895710            mov [bx+0x10],dx
00008C24  8B1E1A36          mov bx,[0x361a]
00008C28  FF7702            push word [bx+0x2]
00008C2B  8B5E04            mov bx,[bp+0x4]
00008C2E  5A                pop dx
00008C2F  895712            mov [bx+0x12],dx
00008C32  8B1E1A36          mov bx,[0x361a]
00008C36  FF7704            push word [bx+0x4]
00008C39  8B5E04            mov bx,[bp+0x4]
00008C3C  5A                pop dx
00008C3D  895714            mov [bx+0x14],dx
00008C40  E96C22            jmp word 0xaeaf
00008C43  55                push bp
00008C44  89E5              mov bp,sp
00008C46  8B1EF445          mov bx,[0x45f4]
00008C4A  8B5744            mov dx,[bx+0x44]
00008C4D  89166813          mov [0x1368],dx
00008C51  B86A13            mov ax,0x136a
00008C54  50                push ax
00008C55  E83BD1            call word 0x5d93
00008C58  5B                pop bx
00008C59  E95322            jmp word 0xaeaf
00008C5C  55                push bp
00008C5D  89E5              mov bp,sp
00008C5F  BA3000            mov dx,0x30
00008C62  03167643          add dx,[0x4376]
00008C66  88168313          mov [0x1383],dl
00008C6A  B87A13            mov ax,0x137a
00008C6D  E93F22            jmp word 0xaeaf
00008C70  55                push bp
00008C71  89E5              mov bp,sp
00008C73  8B5E06            mov bx,[bp+0x6]
00008C76  FF7704            push word [bx+0x4]
00008C79  E88200            call word 0x8cfe
00008C7C  5B                pop bx
00008C7D  09C0              or ax,ax
00008C7F  7505              jnz 0x8c86
00008C81  B8FAFF            mov ax,0xfffa
00008C84  EB4B              jmp short 0x8cd1
00008C86  8B1E7843          mov bx,[0x4378]
00008C8A  833F00            cmp word [bx],byte +0x0
00008C8D  7508              jnz 0x8c97
00008C8F  FF367843          push word [0x4378]
00008C93  E86C03            call word 0x9002
00008C96  5B                pop bx
00008C97  8B1E7843          mov bx,[0x4378]
00008C9B  837F0200          cmp word [bx+0x2],byte +0x0
00008C9F  7405              jz 0x8ca6
00008CA1  B8FAFF            mov ax,0xfffa
00008CA4  EB2B              jmp short 0x8cd1
00008CA6  8B1E7843          mov bx,[0x4378]
00008CAA  8B973602          mov dx,[bx+0x236]
00008CAE  89D1              mov cx,dx
00008CB0  41                inc cx
00008CB1  898F3602          mov [bx+0x236],cx
00008CB5  09D2              or dx,dx
00008CB7  7516              jnz 0x8ccf
00008CB9  B80500            mov ax,0x5
00008CBC  F7267643          mul word [0x4376]
00008CC0  BB0100            mov bx,0x1
00008CC3  53                push bx
00008CC4  50                push ax
00008CC5  B86A13            mov ax,0x136a
00008CC8  50                push ax
00008CC9  E8C7D4            call word 0x6193
00008CCC  83C406            add sp,byte +0x6
00008CCF  31C0              xor ax,ax
00008CD1  E9DB21            jmp word 0xaeaf
00008CD4  55                push bp
00008CD5  89E5              mov bp,sp
00008CD7  8B5E06            mov bx,[bp+0x6]
00008CDA  FF7704            push word [bx+0x4]
00008CDD  E81E00            call word 0x8cfe
00008CE0  5B                pop bx
00008CE1  09C0              or ax,ax
00008CE3  7505              jnz 0x8cea
00008CE5  B8FAFF            mov ax,0xfffa
00008CE8  EB11              jmp short 0x8cfb
00008CEA  8B1E7843          mov bx,[0x4378]
00008CEE  8B973602          mov dx,[bx+0x236]
00008CF2  83EA01            sub dx,byte +0x1
00008CF5  89973602          mov [bx+0x236],dx
00008CF9  31C0              xor ax,ax
00008CFB  E9B121            jmp word 0xaeaf
00008CFE  55                push bp
00008CFF  89E5              mov bp,sp
00008D01  837E040A          cmp word [bp+0x4],byte +0xa
00008D05  7D35              jnl 0x8d3c
00008D07  B90500            mov cx,0x5
00008D0A  8B4604            mov ax,[bp+0x4]
00008D0D  99                cwd
00008D0E  F7F9              idiv cx
00008D10  A37643            mov [0x4376],ax
00008D13  B98802            mov cx,0x288
00008D16  F7E1              mul cx
00008D18  89C3              mov bx,ax
00008D1A  81C34E36          add bx,0x364e
00008D1E  891E7843          mov [0x4378],bx
00008D22  B90500            mov cx,0x5
00008D25  8B4604            mov ax,[bp+0x4]
00008D28  99                cwd
00008D29  F7F9              idiv cx
00008D2B  81C33802          add bx,0x238
00008D2F  B90400            mov cx,0x4
00008D32  D3E2              shl dx,cl
00008D34  01D3              add bx,dx
00008D36  891E7A43          mov [0x437a],bx
00008D3A  EB04              jmp short 0x8d40
00008D3C  31C0              xor ax,ax
00008D3E  EB11              jmp short 0x8d51
00008D40  8B1E7843          mov bx,[0x4378]
00008D44  837F0200          cmp word [bx+0x2],byte +0x0
00008D48  7404              jz 0x8d4e
00008D4A  31C0              xor ax,ax
00008D4C  EB03              jmp short 0x8d51
00008D4E  A17A43            mov ax,[0x437a]
00008D51  E95B21            jmp word 0xaeaf
00008D54  55                push bp
00008D55  89E5              mov bp,sp
00008D57  83EC3A            sub sp,byte +0x3a
00008D5A  56                push si
00008D5B  57                push di
00008D5C  8B5E0E            mov bx,[bp+0xe]
00008D5F  D1E3              shl bx,1
00008D61  D1E3              shl bx,1
00008D63  035E0C            add bx,[bp+0xc]
00008D66  895EFC            mov [bp-0x4],bx
00008D69  837E0E00          cmp word [bp+0xe],byte +0x0
00008D6D  7503              jnz 0x8d72
00008D6F  E94502            jmp word 0x8fb7
00008D72  C746EA0000        mov word [bp-0x16],0x0
00008D77  8B560C            mov dx,[bp+0xc]
00008D7A  8956FE            mov [bp-0x2],dx
00008D7D  8B56FC            mov dx,[bp-0x4]
00008D80  3956FE            cmp [bp-0x2],dx
00008D83  730F              jnc 0x8d94
00008D85  8B5EFE            mov bx,[bp-0x2]
00008D88  8B5702            mov dx,[bx+0x2]
00008D8B  0156EA            add [bp-0x16],dx
00008D8E  8346FE04          add word [bp-0x2],byte +0x4
00008D92  EBE9              jmp short 0x8d7d
00008D94  8B1E7A43          mov bx,[0x437a]
00008D98  83C308            add bx,byte +0x8
00008D9B  B90800            mov cx,0x8
00008D9E  E8D920            call word 0xae7a
00008DA1  E8741C            call word 0xaa18
00008DA4  83C408            add sp,byte +0x8
00008DA7  8946E2            mov [bp-0x1e],ax
00008DAA  8956E4            mov [bp-0x1c],dx
00008DAD  8B5608            mov dx,[bp+0x8]
00008DB0  8B4E0A            mov cx,[bp+0xa]
00008DB3  8956F0            mov [bp-0x10],dx
00008DB6  894EF2            mov [bp-0xe],cx
00008DB9  394EE4            cmp [bp-0x1c],cx
00008DBC  770C              ja 0x8dca
00008DBE  7505              jnz 0x8dc5
00008DC0  3956E2            cmp [bp-0x1e],dx
00008DC3  7705              ja 0x8dca
00008DC5  31C0              xor ax,ax
00008DC7  E9EF01            jmp word 0x8fb9
00008DCA  8B56EA            mov dx,[bp-0x16]
00008DCD  31C9              xor cx,cx
00008DCF  0356F0            add dx,[bp-0x10]
00008DD2  134EF2            adc cx,[bp-0xe]
00008DD5  394EE4            cmp [bp-0x1c],cx
00008DD8  7716              ja 0x8df0
00008DDA  7505              jnz 0x8de1
00008DDC  3956E2            cmp [bp-0x1e],dx
00008DDF  730F              jnc 0x8df0
00008DE1  8B56E2            mov dx,[bp-0x1e]
00008DE4  8B4EE4            mov cx,[bp-0x1c]
00008DE7  2B56F0            sub dx,[bp-0x10]
00008DEA  1B4EF2            sbb cx,[bp-0xe]
00008DED  8956EA            mov [bp-0x16],dx
00008DF0  8B1E7A43          mov bx,[0x437a]
00008DF4  B90800            mov cx,0x8
00008DF7  E88020            call word 0xae7a
00008DFA  E81B1C            call word 0xaa18
00008DFD  83C408            add sp,byte +0x8
00008E00  0146F0            add [bp-0x10],ax
00008E03  1156F2            adc [bp-0xe],dx
00008E06  8B1E7843          mov bx,[0x4378]
00008E0A  8B56F0            mov dx,[bp-0x10]
00008E0D  8B4EF2            mov cx,[bp-0xe]
00008E10  394F16            cmp [bx+0x16],cx
00008E13  770D              ja 0x8e22
00008E15  7505              jnz 0x8e1c
00008E17  395714            cmp [bx+0x14],dx
00008E1A  7706              ja 0x8e22
00008E1C  B8FBFF            mov ax,0xfffb
00008E1F  E99701            jmp word 0x8fb9
00008E22  8B56EA            mov dx,[bp-0x16]
00008E25  31C9              xor cx,cx
00008E27  0356F0            add dx,[bp-0x10]
00008E2A  134EF2            adc cx,[bp-0xe]
00008E2D  8B1E7843          mov bx,[0x4378]
00008E31  394F16            cmp [bx+0x16],cx
00008E34  770D              ja 0x8e43
00008E36  7505              jnz 0x8e3d
00008E38  395714            cmp [bx+0x14],dx
00008E3B  7306              jnc 0x8e43
00008E3D  B8FBFF            mov ax,0xfffb
00008E40  E97601            jmp word 0x8fb9
00008E43  31FF              xor di,di
00008E45  397EEA            cmp [bp-0x16],di
00008E48  7703              ja 0x8e4d
00008E4A  E97600            jmp word 0x8ec3
00008E4D  FF76F2            push word [bp-0xe]
00008E50  FF76F0            push word [bp-0x10]
00008E53  FF367843          push word [0x4378]
00008E57  E85B0C            call word 0x9ab5
00008E5A  83C406            add sp,byte +0x6
00008E5D  8946F4            mov [bp-0xc],ax
00008E60  8956F6            mov [bp-0xa],dx
00008E63  09FF              or di,di
00008E65  7508              jnz 0x8e6f
00008E67  8946F8            mov [bp-0x8],ax
00008E6A  8956FA            mov [bp-0x6],dx
00008E6D  EB14              jmp short 0x8e83
00008E6F  89FA              mov dx,di
00008E71  31C9              xor cx,cx
00008E73  0356F8            add dx,[bp-0x8]
00008E76  134EFA            adc cx,[bp-0x6]
00008E79  3956F4            cmp [bp-0xc],dx
00008E7C  7545              jnz 0x8ec3
00008E7E  394EF6            cmp [bp-0xa],cx
00008E81  7540              jnz 0x8ec3
00008E83  8B1E7843          mov bx,[0x4378]
00008E87  31C0              xor ax,ax
00008E89  50                push ax
00008E8A  FFB73002          push word [bx+0x230]
00008E8E  FF76F2            push word [bp-0xe]
00008E91  FF76F0            push word [bp-0x10]
00008E94  50                push ax
00008E95  FFB73002          push word [bx+0x230]
00008E99  E81B20            call word 0xaeb7
00008E9C  59                pop cx
00008E9D  5B                pop bx
00008E9E  29C1              sub cx,ax
00008EA0  19D3              sbb bx,dx
00008EA2  894EE6            mov [bp-0x1a],cx
00008EA5  01F9              add cx,di
00008EA7  394EEA            cmp [bp-0x16],cx
00008EAA  7308              jnc 0x8eb4
00008EAC  8B56EA            mov dx,[bp-0x16]
00008EAF  29FA              sub dx,di
00008EB1  8956E6            mov [bp-0x1a],dx
00008EB4  8B56E6            mov dx,[bp-0x1a]
00008EB7  0156F0            add [bp-0x10],dx
00008EBA  8356F200          adc word [bp-0xe],byte +0x0
00008EBE  037EE6            add di,[bp-0x1a]
00008EC1  EB82              jmp short 0x8e45
00008EC3  C746EC0000        mov word [bp-0x14],0x0
00008EC8  8B560C            mov dx,[bp+0xc]
00008ECB  8956FE            mov [bp-0x2],dx
00008ECE  09FF              or di,di
00008ED0  7418              jz 0x8eea
00008ED2  8B5EFE            mov bx,[bp-0x2]
00008ED5  397F02            cmp [bx+0x2],di
00008ED8  7710              ja 0x8eea
00008EDA  89FA              mov dx,di
00008EDC  2B5702            sub dx,[bx+0x2]
00008EDF  89D7              mov di,dx
00008EE1  8346FE04          add word [bp-0x2],byte +0x4
00008EE5  FF46EC            inc word [bp-0x14]
00008EE8  EBE4              jmp short 0x8ece
00008EEA  837EEC00          cmp word [bp-0x14],byte +0x0
00008EEE  7450              jz 0x8f40
00008EF0  8B5606            mov dx,[bp+0x6]
00008EF3  8956C8            mov [bp-0x38],dx
00008EF6  8B1E7843          mov bx,[0x4378]
00008EFA  8B5706            mov dx,[bx+0x6]
00008EFD  8956CA            mov [bp-0x36],dx
00008F00  8B5604            mov dx,[bp+0x4]
00008F03  8956CC            mov [bp-0x34],dx
00008F06  8B56F8            mov dx,[bp-0x8]
00008F09  8B4EFA            mov cx,[bp-0x6]
00008F0C  8956D0            mov [bp-0x30],dx
00008F0F  894ED2            mov [bp-0x2e],cx
00008F12  8B560C            mov dx,[bp+0xc]
00008F15  8956D8            mov [bp-0x28],dx
00008F18  8B56EC            mov dx,[bp-0x14]
00008F1B  8956CE            mov [bp-0x32],dx
00008F1E  8D46C6            lea ax,[bp-0x3a]
00008F21  50                push ax
00008F22  FF7704            push word [bx+0x4]
00008F25  E8B71B            call word 0xaadf
00008F28  5B                pop bx
00008F29  5B                pop bx
00008F2A  8946EE            mov [bp-0x12],ax
00008F2D  8B5E0C            mov bx,[bp+0xc]
00008F30  837F0200          cmp word [bx+0x2],byte +0x0
00008F34  7505              jnz 0x8f3b
00008F36  31C0              xor ax,ax
00008F38  E97E00            jmp word 0x8fb9
00008F3B  B8FBFF            mov ax,0xfffb
00008F3E  EB79              jmp short 0x8fb9
00008F40  8B5E0C            mov bx,[bp+0xc]
00008F43  8B17              mov dx,[bx]
00008F45  8956DE            mov [bp-0x22],dx
00008F48  897EE0            mov [bp-0x20],di
00008F4B  8B5606            mov dx,[bp+0x6]
00008F4E  8956C8            mov [bp-0x38],dx
00008F51  8B1E7843          mov bx,[0x4378]
00008F55  8B5706            mov dx,[bx+0x6]
00008F58  8956CA            mov [bp-0x36],dx
00008F5B  8B5604            mov dx,[bp+0x4]
00008F5E  8956CC            mov [bp-0x34],dx
00008F61  8B56F8            mov dx,[bp-0x8]
00008F64  8B4EFA            mov cx,[bp-0x6]
00008F67  8956D0            mov [bp-0x30],dx
00008F6A  894ED2            mov [bp-0x2e],cx
00008F6D  8D5EDE            lea bx,[bp-0x22]
00008F70  895ED8            mov [bp-0x28],bx
00008F73  C746CE0100        mov word [bp-0x32],0x1
00008F78  8B1E7843          mov bx,[0x4378]
00008F7C  8D46C6            lea ax,[bp-0x3a]
00008F7F  50                push ax
00008F80  FF7704            push word [bx+0x4]
00008F83  E8591B            call word 0xaadf
00008F86  5B                pop bx
00008F87  5B                pop bx
00008F88  8946EE            mov [bp-0x12],ax
00008F8B  837EE000          cmp word [bp-0x20],byte +0x0
00008F8F  7405              jz 0x8f96
00008F91  B8FBFF            mov ax,0xfffb
00008F94  EB23              jmp short 0x8fb9
00008F96  8B760C            mov si,[bp+0xc]
00008F99  89FA              mov dx,di
00008F9B  0314              add dx,[si]
00008F9D  8914              mov [si],dx
00008F9F  8B5E0C            mov bx,[bp+0xc]
00008FA2  83C302            add bx,byte +0x2
00008FA5  89DE              mov si,bx
00008FA7  8B17              mov dx,[bx]
00008FA9  29FA              sub dx,di
00008FAB  8914              mov [si],dx
00008FAD  017E08            add [bp+0x8],di
00008FB0  83560A00          adc word [bp+0xa],byte +0x0
00008FB4  E9B2FD            jmp word 0x8d69
00008FB7  31C0              xor ax,ax
00008FB9  E9F11E            jmp word 0xaead
00008FBC  55                push bp
00008FBD  89E5              mov bp,sp
00008FBF  8B1E7843          mov bx,[0x4378]
00008FC3  FF7716            push word [bx+0x16]
00008FC6  FF7714            push word [bx+0x14]
00008FC9  31C0              xor ax,ax
00008FCB  50                push ax
00008FCC  FFB73002          push word [bx+0x230]
00008FD0  E8421E            call word 0xae15
00008FD3  B90600            mov cx,0x6
00008FD6  E306              jcxz 0x8fde
00008FD8  D1EA              shr dx,1
00008FDA  D1D8              rcr ax,1
00008FDC  E2FA              loop 0x8fd8
00008FDE  8B5E04            mov bx,[bp+0x4]
00008FE1  894710            mov [bx+0x10],ax
00008FE4  8B5E04            mov bx,[bp+0x4]
00008FE7  C747124000        mov word [bx+0x12],0x40
00008FEC  8B1E7843          mov bx,[0x4378]
00008FF0  B90900            mov cx,0x9
00008FF3  8B973002          mov dx,[bx+0x230]
00008FF7  D3EA              shr dx,cl
00008FF9  8B5E04            mov bx,[bp+0x4]
00008FFC  895714            mov [bx+0x14],dx
00008FFF  E9AD1E            jmp word 0xaeaf
00009002  55                push bp
00009003  89E5              mov bp,sp
00009005  83EC54            sub sp,byte +0x54
00009008  56                push si
00009009  57                push di
0000900A  8B7604            mov si,[bp+0x4]
0000900D  C7040100          mov word [si],0x1
00009011  C744020100        mov word [si+0x2],0x1
00009016  8D46FC            lea ax,[bp-0x4]
00009019  50                push ax
0000901A  8D4406            lea ax,[si+0x6]
0000901D  50                push ax
0000901E  8D4404            lea ax,[si+0x4]
00009021  50                push ax
00009022  FF367643          push word [0x4376]
00009026  E8780B            call word 0x9ba1
00009029  83C408            add sp,byte +0x8
0000902C  09C0              or ax,ax
0000902E  7403              jz 0x9033
00009030  E9D804            jmp word 0x950b
00009033  56                push si
00009034  E8D704            call word 0x950e
00009037  5B                pop bx
00009038  09C0              or ax,ax
0000903A  7410              jz 0x904c
0000903C  E81DFC            call word 0x8c5c
0000903F  50                push ax
00009040  B84814            mov ax,0x1448
00009043  50                push ax
00009044  E8ED13            call word 0xa434
00009047  5B                pop bx
00009048  5B                pop bx
00009049  E9BF04            jmp word 0x950b
0000904C  31C0              xor ax,ax
0000904E  BB0002            mov bx,0x200
00009051  53                push bx
00009052  50                push ax
00009053  50                push ax
00009054  56                push si
00009055  E80505            call word 0x955d
00009058  83C408            add sp,byte +0x8
0000905B  8946FE            mov [bp-0x2],ax
0000905E  09C0              or ax,ax
00009060  7503              jnz 0x9065
00009062  E9A604            jmp word 0x950b
00009065  8B7EFE            mov di,[bp-0x2]
00009068  05FE01            add ax,0x1fe
0000906B  89C3              mov bx,ax
0000906D  803F55            cmp byte [bx],0x55
00009070  750A              jnz 0x907c
00009072  8B5EFE            mov bx,[bp-0x2]
00009075  80BFFF01AA        cmp byte [bx+0x1ff],0xaa
0000907A  7410              jz 0x908c
0000907C  E8DDFB            call word 0x8c5c
0000907F  50                push ax
00009080  B82E14            mov ax,0x142e
00009083  50                push ax
00009084  E8AD13            call word 0xa434
00009087  5B                pop bx
00009088  5B                pop bx
00009089  E97F04            jmp word 0x950b
0000908C  31C0              xor ax,ax
0000908E  8A450C            mov al,[di+0xc]
00009091  50                push ax
00009092  31C0              xor ax,ax
00009094  8A450B            mov al,[di+0xb]
00009097  50                push ax
00009098  E8F305            call word 0x968e
0000909B  5B                pop bx
0000909C  5B                pop bx
0000909D  8946CA            mov [bp-0x36],ax
000090A0  807D1002          cmp byte [di+0x10],0x2
000090A4  7417              jz 0x90bd
000090A6  31C0              xor ax,ax
000090A8  8A4510            mov al,[di+0x10]
000090AB  50                push ax
000090AC  E8ADFB            call word 0x8c5c
000090AF  50                push ax
000090B0  B80E14            mov ax,0x140e
000090B3  50                push ax
000090B4  E87D13            call word 0xa434
000090B7  83C406            add sp,byte +0x6
000090BA  E94E04            jmp word 0x950b
000090BD  C7842C020C00      mov word [si+0x22c],0xc
000090C3  31C0              xor ax,ax
000090C5  8A4517            mov al,[di+0x17]
000090C8  50                push ax
000090C9  31C0              xor ax,ax
000090CB  8A4516            mov al,[di+0x16]
000090CE  50                push ax
000090CF  E8BC05            call word 0x968e
000090D2  5B                pop bx
000090D3  5B                pop bx
000090D4  8946C6            mov [bp-0x3a],ax
000090D7  C746C80000        mov word [bp-0x38],0x0
000090DC  0D0000            or ax,0x0
000090DF  752A              jnz 0x910b
000090E1  C7842C022000      mov word [si+0x22c],0x20
000090E7  31C0              xor ax,ax
000090E9  8A4527            mov al,[di+0x27]
000090EC  50                push ax
000090ED  31C0              xor ax,ax
000090EF  8A4526            mov al,[di+0x26]
000090F2  50                push ax
000090F3  31C0              xor ax,ax
000090F5  8A4525            mov al,[di+0x25]
000090F8  50                push ax
000090F9  31C0              xor ax,ax
000090FB  8A4524            mov al,[di+0x24]
000090FE  50                push ax
000090FF  E8A505            call word 0x96a7
00009102  83C408            add sp,byte +0x8
00009105  8946C6            mov [bp-0x3a],ax
00009108  8956C8            mov [bp-0x38],dx
0000910B  8B46C6            mov ax,[bp-0x3a]
0000910E  8B56C8            mov dx,[bp-0x38]
00009111  31DB              xor bx,bx
00009113  53                push bx
00009114  FF76CA            push word [bp-0x36]
00009117  E8751D            call word 0xae8f
0000911A  8946C2            mov [bp-0x3e],ax
0000911D  8956C4            mov [bp-0x3c],dx
00009120  31C0              xor ax,ax
00009122  8A450F            mov al,[di+0xf]
00009125  50                push ax
00009126  31C0              xor ax,ax
00009128  8A450E            mov al,[di+0xe]
0000912B  50                push ax
0000912C  E85F05            call word 0x968e
0000912F  5B                pop bx
00009130  5B                pop bx
00009131  F766CA            mul word [bp-0x36]
00009134  89440C            mov [si+0xc],ax
00009137  C7440E0000        mov word [si+0xe],0x0
0000913C  31C0              xor ax,ax
0000913E  8A4512            mov al,[di+0x12]
00009141  50                push ax
00009142  31C0              xor ax,ax
00009144  8A4511            mov al,[di+0x11]
00009147  50                push ax
00009148  E84305            call word 0x968e
0000914B  5B                pop bx
0000914C  5B                pop bx
0000914D  8946CC            mov [bp-0x34],ax
00009150  B90500            mov cx,0x5
00009153  D3E0              shl ax,cl
00009155  89843402          mov [si+0x234],ax
00009159  8A4510            mov al,[di+0x10]
0000915C  30E4              xor ah,ah
0000915E  99                cwd
0000915F  52                push dx
00009160  50                push ax
00009161  8B46C2            mov ax,[bp-0x3e]
00009164  8B56C4            mov dx,[bp-0x3c]
00009167  E8251D            call word 0xae8f
0000916A  03440C            add ax,[si+0xc]
0000916D  13540E            adc dx,[si+0xe]
00009170  894408            mov [si+0x8],ax
00009173  89540A            mov [si+0xa],dx
00009176  31C0              xor ax,ax
00009178  8A452F            mov al,[di+0x2f]
0000917B  50                push ax
0000917C  31C0              xor ax,ax
0000917E  8A452E            mov al,[di+0x2e]
00009181  50                push ax
00009182  31C0              xor ax,ax
00009184  8A452D            mov al,[di+0x2d]
00009187  50                push ax
00009188  31C0              xor ax,ax
0000918A  8A452C            mov al,[di+0x2c]
0000918D  50                push ax
0000918E  E81605            call word 0x96a7
00009191  83C408            add sp,byte +0x8
00009194  8946B8            mov [bp-0x48],ax
00009197  8956BA            mov [bp-0x46],dx
0000919A  8A550D            mov dl,[di+0xd]
0000919D  30F6              xor dh,dh
0000919F  8956C0            mov [bp-0x40],dx
000091A2  31C0              xor ax,ax
000091A4  8A4514            mov al,[di+0x14]
000091A7  50                push ax
000091A8  31C0              xor ax,ax
000091AA  8A4513            mov al,[di+0x13]
000091AD  50                push ax
000091AE  E8DD04            call word 0x968e
000091B1  5B                pop bx
000091B2  5B                pop bx
000091B3  8946BC            mov [bp-0x44],ax
000091B6  C746BE0000        mov word [bp-0x42],0x0
000091BB  0D0000            or ax,0x0
000091BE  7524              jnz 0x91e4
000091C0  31C0              xor ax,ax
000091C2  8A4523            mov al,[di+0x23]
000091C5  50                push ax
000091C6  31C0              xor ax,ax
000091C8  8A4522            mov al,[di+0x22]
000091CB  50                push ax
000091CC  31C0              xor ax,ax
000091CE  8A4521            mov al,[di+0x21]
000091D1  50                push ax
000091D2  31C0              xor ax,ax
000091D4  8A4520            mov al,[di+0x20]
000091D7  50                push ax
000091D8  E8CC04            call word 0x96a7
000091DB  83C408            add sp,byte +0x8
000091DE  8946BC            mov [bp-0x44],ax
000091E1  8956BE            mov [bp-0x42],dx
000091E4  FF76BE            push word [bp-0x42]
000091E7  FF76BC            push word [bp-0x44]
000091EA  837EC000          cmp word [bp-0x40],byte +0x0
000091EE  7505              jnz 0x91f5
000091F0  B80100            mov ax,0x1
000091F3  EB03              jmp short 0x91f8
000091F5  8B46C0            mov ax,[bp-0x40]
000091F8  31DB              xor bx,bx
000091FA  53                push bx
000091FB  50                push ax
000091FC  E8161C            call word 0xae15
000091FF  894418            mov [si+0x18],ax
00009202  89541A            mov [si+0x1a],dx
00009205  8B46CA            mov ax,[bp-0x36]
00009208  F766C0            mul word [bp-0x40]
0000920B  89843002          mov [si+0x230],ax
0000920F  8B943402          mov dx,[si+0x234]
00009213  31C9              xor cx,cx
00009215  035408            add dx,[si+0x8]
00009218  134C0A            adc cx,[si+0xa]
0000921B  895410            mov [si+0x10],dx
0000921E  894C12            mov [si+0x12],cx
00009221  83BC2C020C        cmp word [si+0x22c],byte +0xc
00009226  7515              jnz 0x923d
00009228  837C1A00          cmp word [si+0x1a],byte +0x0
0000922C  720F              jc 0x923d
0000922E  7507              jnz 0x9237
00009230  817C18EE0F        cmp word [si+0x18],0xfee
00009235  7606              jna 0x923d
00009237  C7842C021000      mov word [si+0x22c],0x10
0000923D  BAFFFF            mov dx,0xffff
00009240  B9FFFF            mov cx,0xffff
00009243  2B5410            sub dx,[si+0x10]
00009246  1B4C12            sbb cx,[si+0x12]
00009249  51                push cx
0000924A  52                push dx
0000924B  31C0              xor ax,ax
0000924D  50                push ax
0000924E  FFB43002          push word [si+0x230]
00009252  E8C01B            call word 0xae15
00009255  050200            add ax,0x2
00009258  83D200            adc dx,byte +0x0
0000925B  8946B4            mov [bp-0x4c],ax
0000925E  8956B6            mov [bp-0x4a],dx
00009261  39541A            cmp [si+0x1a],dx
00009264  720D              jc 0x9273
00009266  7505              jnz 0x926d
00009268  394418            cmp [si+0x18],ax
0000926B  7606              jna 0x9273
0000926D  894418            mov [si+0x18],ax
00009270  89541A            mov [si+0x1a],dx
00009273  83BC2C0210        cmp word [si+0x22c],byte +0x10
00009278  7F0A              jg 0x9284
0000927A  31C0              xor ax,ax
0000927C  8946D2            mov [bp-0x2e],ax
0000927F  8946D4            mov [bp-0x2c],ax
00009282  EB0C              jmp short 0x9290
00009284  8B56B8            mov dx,[bp-0x48]
00009287  8B4EBA            mov cx,[bp-0x46]
0000928A  8956D2            mov [bp-0x2e],dx
0000928D  894ED4            mov [bp-0x2c],cx
00009290  8B56FC            mov dx,[bp-0x4]
00009293  8956FE            mov [bp-0x2],dx
00009296  8B5EFE            mov bx,[bp-0x2]
00009299  803F5C            cmp byte [bx],0x5c
0000929C  7405              jz 0x92a3
0000929E  803F2F            cmp byte [bx],0x2f
000092A1  7505              jnz 0x92a8
000092A3  FF46FE            inc word [bp-0x2]
000092A6  EBEE              jmp short 0x9296
000092A8  8B56FE            mov dx,[bp-0x2]
000092AB  8956FC            mov [bp-0x4],dx
000092AE  8B5EFC            mov bx,[bp-0x4]
000092B1  803F00            cmp byte [bx],0x0
000092B4  741A              jz 0x92d0
000092B6  803F5C            cmp byte [bx],0x5c
000092B9  7405              jz 0x92c0
000092BB  803F2F            cmp byte [bx],0x2f
000092BE  750B              jnz 0x92cb
000092C0  8B5EFC            mov bx,[bp-0x4]
000092C3  FF46FC            inc word [bp-0x4]
000092C6  C60700            mov byte [bx],0x0
000092C9  EB05              jmp short 0x92d0
000092CB  FF46FC            inc word [bp-0x4]
000092CE  EBDE              jmp short 0x92ae
000092D0  8D46DA            lea ax,[bp-0x26]
000092D3  50                push ax
000092D4  FF76D4            push word [bp-0x2c]
000092D7  FF76D2            push word [bp-0x2e]
000092DA  FF76FE            push word [bp-0x2]
000092DD  56                push si
000092DE  E81004            call word 0x96f1
000092E1  83C40A            add sp,byte +0xa
000092E4  8946D6            mov [bp-0x2a],ax
000092E7  09C0              or ax,ax
000092E9  7403              jz 0x92ee
000092EB  E91D02            jmp word 0x950b
000092EE  83BC2C0210        cmp word [si+0x22c],byte +0x10
000092F3  7F1B              jg 0x9310
000092F5  31C0              xor ax,ax
000092F7  8A46F5            mov al,[bp-0xb]
000092FA  50                push ax
000092FB  31C0              xor ax,ax
000092FD  8A46F4            mov al,[bp-0xc]
00009300  50                push ax
00009301  E88A03            call word 0x968e
00009304  5B                pop bx
00009305  5B                pop bx
00009306  8946D2            mov [bp-0x2e],ax
00009309  C746D40000        mov word [bp-0x2c],0x0
0000930E  EB24              jmp short 0x9334
00009310  31C0              xor ax,ax
00009312  8A46EF            mov al,[bp-0x11]
00009315  50                push ax
00009316  31C0              xor ax,ax
00009318  8A46EE            mov al,[bp-0x12]
0000931B  50                push ax
0000931C  31C0              xor ax,ax
0000931E  8A46F5            mov al,[bp-0xb]
00009321  50                push ax
00009322  31C0              xor ax,ax
00009324  8A46F4            mov al,[bp-0xc]
00009327  50                push ax
00009328  E87C03            call word 0x96a7
0000932B  83C408            add sp,byte +0x8
0000932E  8946D2            mov [bp-0x2e],ax
00009331  8956D4            mov [bp-0x2c],dx
00009334  8B5EFC            mov bx,[bp-0x4]
00009337  803F00            cmp byte [bx],0x0
0000933A  741D              jz 0x9359
0000933C  F646E510          test byte [bp-0x1b],0x10
00009340  7403              jz 0x9345
00009342  E94BFF            jmp word 0x9290
00009345  FF76FE            push word [bp-0x2]
00009348  E811F9            call word 0x8c5c
0000934B  50                push ax
0000934C  B8F013            mov ax,0x13f0
0000934F  50                push ax
00009350  E8E110            call word 0xa434
00009353  83C406            add sp,byte +0x6
00009356  E9B201            jmp word 0x950b
00009359  F646E510          test byte [bp-0x1b],0x10
0000935D  7414              jz 0x9373
0000935F  FF76FE            push word [bp-0x2]
00009362  E8F7F8            call word 0x8c5c
00009365  50                push ax
00009366  B8D813            mov ax,0x13d8
00009369  50                push ax
0000936A  E8C710            call word 0xa434
0000936D  83C406            add sp,byte +0x6
00009370  E99801            jmp word 0x950b
00009373  31C0              xor ax,ax
00009375  8A46F9            mov al,[bp-0x7]
00009378  50                push ax
00009379  31C0              xor ax,ax
0000937B  8A46F8            mov al,[bp-0x8]
0000937E  50                push ax
0000937F  31C0              xor ax,ax
00009381  8A46F7            mov al,[bp-0x9]
00009384  50                push ax
00009385  31C0              xor ax,ax
00009387  8A46F6            mov al,[bp-0xa]
0000938A  50                push ax
0000938B  E81903            call word 0x96a7
0000938E  83C408            add sp,byte +0x8
00009391  894414            mov [si+0x14],ax
00009394  895416            mov [si+0x16],dx
00009397  8B943002          mov dx,[si+0x230]
0000939B  89942002          mov [si+0x220],dx
0000939F  C78422020000      mov word [si+0x222],0x0
000093A5  B90700            mov cx,0x7
000093A8  8B942002          mov dx,[si+0x220]
000093AC  8B9C2202          mov bx,[si+0x222]
000093B0  E306              jcxz 0x93b8
000093B2  D1E2              shl dx,1
000093B4  D1D3              rcl bx,1
000093B6  E2FA              loop 0x93b2
000093B8  395C16            cmp [si+0x16],bx
000093BB  721D              jc 0x93da
000093BD  7505              jnz 0x93c4
000093BF  395414            cmp [si+0x14],dx
000093C2  7616              jna 0x93da
000093C4  8B942002          mov dx,[si+0x220]
000093C8  8B8C2202          mov cx,[si+0x222]
000093CC  D1E2              shl dx,1
000093CE  D1D1              rcl cx,1
000093D0  89942002          mov [si+0x220],dx
000093D4  898C2202          mov [si+0x222],cx
000093D8  EBCB              jmp short 0x93a5
000093DA  C746D80000        mov word [bp-0x28],0x0
000093DF  8B4ED8            mov cx,[bp-0x28]
000093E2  BA0100            mov dx,0x1
000093E5  31DB              xor bx,bx
000093E7  E306              jcxz 0x93ef
000093E9  D1E2              shl dx,1
000093EB  D1D3              rcl bx,1
000093ED  E2FA              loop 0x93e9
000093EF  399C2202          cmp [si+0x222],bx
000093F3  720D              jc 0x9402
000093F5  7506              jnz 0x93fd
000093F7  39942002          cmp [si+0x220],dx
000093FB  7605              jna 0x9402
000093FD  FF46D8            inc word [bp-0x28]
00009400  EBDD              jmp short 0x93df
00009402  8B4ED8            mov cx,[bp-0x28]
00009405  BA0100            mov dx,0x1
00009408  31DB              xor bx,bx
0000940A  E306              jcxz 0x9412
0000940C  D1E2              shl dx,1
0000940E  D1D3              rcl bx,1
00009410  E2FA              loop 0x940c
00009412  39942002          cmp [si+0x220],dx
00009416  7506              jnz 0x941e
00009418  399C2202          cmp [si+0x222],bx
0000941C  7419              jz 0x9437
0000941E  FFB42202          push word [si+0x222]
00009422  FFB42002          push word [si+0x220]
00009426  E833F8            call word 0x8c5c
00009429  50                push ax
0000942A  B8AA13            mov ax,0x13aa
0000942D  50                push ax
0000942E  E80310            call word 0xa434
00009431  83C408            add sp,byte +0x8
00009434  E9D400            jmp word 0x950b
00009437  8B56D8            mov dx,[bp-0x28]
0000943A  89942E02          mov [si+0x22e],dx
0000943E  8B942002          mov dx,[si+0x220]
00009442  8B8C2202          mov cx,[si+0x222]
00009446  83EA01            sub dx,byte +0x1
00009449  83D900            sbb cx,byte +0x0
0000944C  89942402          mov [si+0x224],dx
00009450  898C2602          mov [si+0x226],cx
00009454  C746D80000        mov word [bp-0x28],0x0
00009459  31C0              xor ax,ax
0000945B  8946CE            mov [bp-0x32],ax
0000945E  8946D0            mov [bp-0x30],ax
00009461  8B56CE            mov dx,[bp-0x32]
00009464  8B4ED0            mov cx,[bp-0x30]
00009467  394C16            cmp [si+0x16],cx
0000946A  726D              jc 0x94d9
0000946C  7505              jnz 0x9473
0000946E  395414            cmp [si+0x14],dx
00009471  7666              jna 0x94d9
00009473  8B942402          mov dx,[si+0x224]
00009477  8B8C2602          mov cx,[si+0x226]
0000947B  2356CE            and dx,[bp-0x32]
0000947E  234ED0            and cx,[bp-0x30]
00009481  09D1              or cx,dx
00009483  751D              jnz 0x94a2
00009485  8B56D8            mov dx,[bp-0x28]
00009488  89D1              mov cx,dx
0000948A  41                inc cx
0000948B  894ED8            mov [bp-0x28],cx
0000948E  8D5C1C            lea bx,[si+0x1c]
00009491  D1E2              shl dx,1
00009493  D1E2              shl dx,1
00009495  01D3              add bx,dx
00009497  8B56D2            mov dx,[bp-0x2e]
0000949A  8B4ED4            mov cx,[bp-0x2c]
0000949D  8917              mov [bx],dx
0000949F  894F02            mov [bx+0x2],cx
000094A2  8B56D4            mov dx,[bp-0x2c]
000094A5  0B56D2            or dx,[bp-0x2e]
000094A8  750F              jnz 0x94b9
000094AA  E8AFF7            call word 0x8c5c
000094AD  50                push ax
000094AE  B88613            mov ax,0x1386
000094B1  50                push ax
000094B2  E87F0F            call word 0xa434
000094B5  5B                pop bx
000094B6  5B                pop bx
000094B7  EB52              jmp short 0x950b
000094B9  FF76D4            push word [bp-0x2c]
000094BC  FF76D2            push word [bp-0x2e]
000094BF  56                push si
000094C0  E88004            call word 0x9943
000094C3  83C406            add sp,byte +0x6
000094C6  8946D2            mov [bp-0x2e],ax
000094C9  8956D4            mov [bp-0x2c],dx
000094CC  8B943002          mov dx,[si+0x230]
000094D0  0156CE            add [bp-0x32],dx
000094D3  8356D000          adc word [bp-0x30],byte +0x0
000094D7  EB88              jmp short 0x9461
000094D9  31C0              xor ax,ax
000094DB  89842802          mov [si+0x228],ax
000094DF  89842A02          mov [si+0x22a],ax
000094E3  8B541C            mov dx,[si+0x1c]
000094E6  89943202          mov [si+0x232],dx
000094EA  C744020000        mov word [si+0x2],0x0
000094EF  FF7416            push word [si+0x16]
000094F2  FF7414            push word [si+0x14]
000094F5  8D46AC            lea ax,[bp-0x54]
000094F8  50                push ax
000094F9  E83A15            call word 0xaa36
000094FC  83C406            add sp,byte +0x6
000094FF  50                push ax
00009500  8D844002          lea ax,[si+0x240]
00009504  50                push ax
00009505  B90400            mov cx,0x4
00009508  E82418            call word 0xad2f
0000950B  E99F19            jmp word 0xaead
0000950E  55                push bp
0000950F  89E5              mov bp,sp
00009511  83EC18            sub sp,byte +0x18
00009514  56                push si
00009515  C746EA0600        mov word [bp-0x16],0x6
0000951A  8B5E04            mov bx,[bp+0x4]
0000951D  8B5706            mov dx,[bx+0x6]
00009520  8956EC            mov [bp-0x14],dx
00009523  8B166813          mov dx,[0x1368]
00009527  8956EE            mov [bp-0x12],dx
0000952A  C746F00600        mov word [bp-0x10],0x6
0000952F  8D46E8            lea ax,[bp-0x18]
00009532  50                push ax
00009533  FF7704            push word [bx+0x4]
00009536  E8A615            call word 0xaadf
00009539  5B                pop bx
0000953A  5B                pop bx
0000953B  89C6              mov si,ax
0000953D  8B76EE            mov si,[bp-0x12]
00009540  09F6              or si,si
00009542  7414              jz 0x9558
00009544  56                push si
00009545  E814F7            call word 0x8c5c
00009548  50                push ax
00009549  B85C14            mov ax,0x145c
0000954C  50                push ax
0000954D  E8E40E            call word 0xa434
00009550  83C406            add sp,byte +0x6
00009553  B8FBFF            mov ax,0xfffb
00009556  EB02              jmp short 0x955a
00009558  31C0              xor ax,ax
0000955A  E95119            jmp word 0xaeae
0000955D  55                push bp
0000955E  89E5              mov bp,sp
00009560  83EC26            sub sp,byte +0x26
00009563  56                push si
00009564  57                push di
00009565  8B7E04            mov di,[bp+0x4]
00009568  B90900            mov cx,0x9
0000956B  8B5606            mov dx,[bp+0x6]
0000956E  8B5E08            mov bx,[bp+0x8]
00009571  E306              jcxz 0x9579
00009573  D1EB              shr bx,1
00009575  D1DA              rcr dx,1
00009577  E2FA              loop 0x9573
00009579  8956E4            mov [bp-0x1c],dx
0000957C  895EE6            mov [bp-0x1a],bx
0000957F  8B5606            mov dx,[bp+0x6]
00009582  81E2FF01          and dx,0x1ff
00009586  8956E2            mov [bp-0x1e],dx
00009589  31F6              xor si,si
0000958B  83FE04            cmp si,byte +0x4
0000958E  733A              jnc 0x95ca
00009590  B80602            mov ax,0x206
00009593  F7E6              mul si
00009595  89C3              mov bx,ax
00009597  39BF5E3B          cmp [bx+0x3b5e],di
0000959B  752A              jnz 0x95c7
0000959D  B80602            mov ax,0x206
000095A0  F7E6              mul si
000095A2  89C3              mov bx,ax
000095A4  8B56E4            mov dx,[bp-0x1c]
000095A7  8B4EE6            mov cx,[bp-0x1a]
000095AA  3997603B          cmp [bx+0x3b60],dx
000095AE  7517              jnz 0x95c7
000095B0  398F623B          cmp [bx+0x3b62],cx
000095B4  7511              jnz 0x95c7
000095B6  B80602            mov ax,0x206
000095B9  F7E6              mul si
000095BB  89C3              mov bx,ax
000095BD  035EE2            add bx,[bp-0x1e]
000095C0  8D87643B          lea ax,[bx+0x3b64]
000095C4  E9C400            jmp word 0x968b
000095C7  46                inc si
000095C8  EBC1              jmp short 0x958b
000095CA  8B366613          mov si,[0x1366]
000095CE  FF066613          inc word [0x1366]
000095D2  833E661304        cmp word [0x1366],byte +0x4
000095D7  7506              jnz 0x95df
000095D9  C70666130000      mov word [0x1366],0x0
000095DF  B80602            mov ax,0x206
000095E2  F7E6              mul si
000095E4  89C3              mov bx,ax
000095E6  C7875E3B0000      mov word [bx+0x3b5e],0x0
000095EC  B80602            mov ax,0x206
000095EF  F7E6              mul si
000095F1  89C3              mov bx,ax
000095F3  81C3643B          add bx,0x3b64
000095F7  895EDA            mov [bp-0x26],bx
000095FA  C746DC0002        mov word [bp-0x24],0x200
000095FF  C746EA0900        mov word [bp-0x16],0x9
00009604  8B5506            mov dx,[di+0x6]
00009607  8956EC            mov [bp-0x14],dx
0000960A  B90900            mov cx,0x9
0000960D  8B56E4            mov dx,[bp-0x1c]
00009610  8B5EE6            mov bx,[bp-0x1a]
00009613  E306              jcxz 0x961b
00009615  D1E2              shl dx,1
00009617  D1D3              rcl bx,1
00009619  E2FA              loop 0x9615
0000961B  8956F2            mov [bp-0xe],dx
0000961E  895EF4            mov [bp-0xc],bx
00009621  8B166813          mov dx,[0x1368]
00009625  8956EE            mov [bp-0x12],dx
00009628  8D5EDA            lea bx,[bp-0x26]
0000962B  895EFA            mov [bp-0x6],bx
0000962E  C746F00100        mov word [bp-0x10],0x1
00009633  8D46E8            lea ax,[bp-0x18]
00009636  50                push ax
00009637  FF7504            push word [di+0x4]
0000963A  E8A214            call word 0xaadf
0000963D  5B                pop bx
0000963E  5B                pop bx
0000963F  8946DE            mov [bp-0x22],ax
00009642  837EDC00          cmp word [bp-0x24],byte +0x0
00009646  7415              jz 0x965d
00009648  FF76EE            push word [bp-0x12]
0000964B  E80EF6            call word 0x8c5c
0000964E  50                push ax
0000964F  B87614            mov ax,0x1476
00009652  50                push ax
00009653  E8DE0D            call word 0xa434
00009656  83C406            add sp,byte +0x6
00009659  31C0              xor ax,ax
0000965B  EB2E              jmp short 0x968b
0000965D  B80602            mov ax,0x206
00009660  F7E6              mul si
00009662  89C3              mov bx,ax
00009664  89BF5E3B          mov [bx+0x3b5e],di
00009668  B80602            mov ax,0x206
0000966B  F7E6              mul si
0000966D  89C3              mov bx,ax
0000966F  8B56E4            mov dx,[bp-0x1c]
00009672  8B4EE6            mov cx,[bp-0x1a]
00009675  8997603B          mov [bx+0x3b60],dx
00009679  898F623B          mov [bx+0x3b62],cx
0000967D  B80602            mov ax,0x206
00009680  F7E6              mul si
00009682  89C3              mov bx,ax
00009684  035EE2            add bx,[bp-0x1e]
00009687  8D87643B          lea ax,[bx+0x3b64]
0000968B  E91F18            jmp word 0xaead
0000968E  55                push bp
0000968F  89E5              mov bp,sp
00009691  B90800            mov cx,0x8
00009694  8A5606            mov dl,[bp+0x6]
00009697  30F6              xor dh,dh
00009699  D3E2              shl dx,cl
0000969B  8A4E04            mov cl,[bp+0x4]
0000969E  30ED              xor ch,ch
000096A0  09D1              or cx,dx
000096A2  89C8              mov ax,cx
000096A4  E90818            jmp word 0xaeaf
000096A7  55                push bp
000096A8  89E5              mov bp,sp
000096AA  B90800            mov cx,0x8
000096AD  8A5606            mov dl,[bp+0x6]
000096B0  30F6              xor dh,dh
000096B2  31DB              xor bx,bx
000096B4  E306              jcxz 0x96bc
000096B6  D1E2              shl dx,1
000096B8  D1D3              rcl bx,1
000096BA  E2FA              loop 0x96b6
000096BC  8A4E04            mov cl,[bp+0x4]
000096BF  30ED              xor ch,ch
000096C1  09CA              or dx,cx
000096C3  81CB0000          or bx,0x0
000096C7  8A4E08            mov cl,[bp+0x8]
000096CA  30ED              xor ch,ch
000096CC  81CA0000          or dx,0x0
000096D0  09CB              or bx,cx
000096D2  53                push bx
000096D3  B91800            mov cx,0x18
000096D6  8A5E0A            mov bl,[bp+0xa]
000096D9  30FF              xor bh,bh
000096DB  31C0              xor ax,ax
000096DD  E306              jcxz 0x96e5
000096DF  D1E3              shl bx,1
000096E1  D1D0              rcl ax,1
000096E3  E2FA              loop 0x96df
000096E5  59                pop cx
000096E6  09DA              or dx,bx
000096E8  09C1              or cx,ax
000096EA  89D0              mov ax,dx
000096EC  89CA              mov dx,cx
000096EE  E9BE17            jmp word 0xaeaf
000096F1  55                push bp
000096F2  89E5              mov bp,sp
000096F4  83EC1C            sub sp,byte +0x1c
000096F7  56                push si
000096F8  57                push di
000096F9  8B7606            mov si,[bp+0x6]
000096FC  B80800            mov ax,0x8
000096FF  50                push ax
00009700  B82000            mov ax,0x20
00009703  50                push ax
00009704  8D46F6            lea ax,[bp-0xa]
00009707  50                push ax
00009708  E83714            call word 0xab42
0000970B  83C406            add sp,byte +0x6
0000970E  31FF              xor di,di
00009710  803C00            cmp byte [si],0x0
00009713  742B              jz 0x9740
00009715  803C2E            cmp byte [si],0x2e
00009718  7426              jz 0x9740
0000971A  83FF08            cmp di,byte +0x8
0000971D  7D1D              jnl 0x973c
0000971F  8A14              mov dl,[si]
00009721  30F6              xor dh,dh
00009723  83EA61            sub dx,byte +0x61
00009726  83FA19            cmp dx,byte +0x19
00009729  770C              ja 0x9737
0000972B  8A14              mov dl,[si]
0000972D  30F6              xor dh,dh
0000972F  83EA20            sub dx,byte +0x20
00009732  8853F6            mov [bp+di-0xa],dl
00009735  EB05              jmp short 0x973c
00009737  8A0C              mov cl,[si]
00009739  884BF6            mov [bp+di-0xa],cl
0000973C  47                inc di
0000973D  46                inc si
0000973E  EBD0              jmp short 0x9710
00009740  803C2E            cmp byte [si],0x2e
00009743  7501              jnz 0x9746
00009745  46                inc si
00009746  B80300            mov ax,0x3
00009749  50                push ax
0000974A  B82000            mov ax,0x20
0000974D  50                push ax
0000974E  8D46F3            lea ax,[bp-0xd]
00009751  50                push ax
00009752  E8ED13            call word 0xab42
00009755  83C406            add sp,byte +0x6
00009758  31FF              xor di,di
0000975A  803C00            cmp byte [si],0x0
0000975D  7426              jz 0x9785
0000975F  83FF03            cmp di,byte +0x3
00009762  7D1D              jnl 0x9781
00009764  8A14              mov dl,[si]
00009766  30F6              xor dh,dh
00009768  83EA61            sub dx,byte +0x61
0000976B  83FA19            cmp dx,byte +0x19
0000976E  770C              ja 0x977c
00009770  8A14              mov dl,[si]
00009772  30F6              xor dh,dh
00009774  83EA20            sub dx,byte +0x20
00009777  8853F3            mov [bp+di-0xd],dl
0000977A  EB05              jmp short 0x9781
0000977C  8A0C              mov cl,[si]
0000977E  884BF3            mov [bp+di-0xd],cl
00009781  47                inc di
00009782  46                inc si
00009783  EBD5              jmp short 0x975a
00009785  8B560A            mov dx,[bp+0xa]
00009788  0B5608            or dx,[bp+0x8]
0000978B  7403              jz 0x9790
0000978D  E9BE00            jmp word 0x984e
00009790  31C0              xor ax,ax
00009792  8946EA            mov [bp-0x16],ax
00009795  8946EC            mov [bp-0x14],ax
00009798  8B5E04            mov bx,[bp+0x4]
0000979B  8B973402          mov dx,[bx+0x234]
0000979F  837EEC00          cmp word [bp-0x14],byte +0x0
000097A3  7603              jna 0x97a8
000097A5  E98401            jmp word 0x992c
000097A8  7508              jnz 0x97b2
000097AA  3956EA            cmp [bp-0x16],dx
000097AD  7203              jc 0x97b2
000097AF  E97A01            jmp word 0x992c
000097B2  8B5708            mov dx,[bx+0x8]
000097B5  8B4F0A            mov cx,[bx+0xa]
000097B8  0356EA            add dx,[bp-0x16]
000097BB  134EEC            adc cx,[bp-0x14]
000097BE  B80002            mov ax,0x200
000097C1  50                push ax
000097C2  51                push cx
000097C3  52                push dx
000097C4  FF7604            push word [bp+0x4]
000097C7  E893FD            call word 0x955d
000097CA  83C408            add sp,byte +0x8
000097CD  89C6              mov si,ax
000097CF  09F6              or si,si
000097D1  7506              jnz 0x97d9
000097D3  B8FBFF            mov ax,0xfffb
000097D6  E96701            jmp word 0x9940
000097D9  31FF              xor di,di
000097DB  81FF0002          cmp di,0x200
000097DF  7DB7              jnl 0x9798
000097E1  8B5E04            mov bx,[bp+0x4]
000097E4  8B973402          mov dx,[bx+0x234]
000097E8  837EEC00          cmp word [bp-0x14],byte +0x0
000097EC  77AA              ja 0x9798
000097EE  7505              jnz 0x97f5
000097F0  3956EA            cmp [bp-0x16],dx
000097F3  73A3              jnc 0x9798
000097F5  89FA              mov dx,di
000097F7  01F2              add dx,si
000097F9  8956FE            mov [bp-0x2],dx
000097FC  B80800            mov ax,0x8
000097FF  50                push ax
00009800  8D46F6            lea ax,[bp-0xa]
00009803  50                push ax
00009804  FF76FE            push word [bp-0x2]
00009807  E8E712            call word 0xaaf1
0000980A  83C406            add sp,byte +0x6
0000980D  09C0              or ax,ax
0000980F  7530              jnz 0x9841
00009811  8B5EFE            mov bx,[bp-0x2]
00009814  B80300            mov ax,0x3
00009817  50                push ax
00009818  8D46F3            lea ax,[bp-0xd]
0000981B  50                push ax
0000981C  83C308            add bx,byte +0x8
0000981F  53                push bx
00009820  E8CE12            call word 0xaaf1
00009823  83C406            add sp,byte +0x6
00009826  09C0              or ax,ax
00009828  7517              jnz 0x9841
0000982A  89F3              mov bx,si
0000982C  01FB              add bx,di
0000982E  B82000            mov ax,0x20
00009831  50                push ax
00009832  53                push bx
00009833  FF760C            push word [bp+0xc]
00009836  E8F812            call word 0xab31
00009839  83C406            add sp,byte +0x6
0000983C  31C0              xor ax,ax
0000983E  E9FF00            jmp word 0x9940
00009841  8346EA20          add word [bp-0x16],byte +0x20
00009845  8356EC00          adc word [bp-0x14],byte +0x0
00009849  83C720            add di,byte +0x20
0000984C  EB8D              jmp short 0x97db
0000984E  31C0              xor ax,ax
00009850  8946EA            mov [bp-0x16],ax
00009853  8946EC            mov [bp-0x14],ax
00009856  C746E40000        mov word [bp-0x1c],0x0
0000985B  FF760A            push word [bp+0xa]
0000985E  FF7608            push word [bp+0x8]
00009861  FF7604            push word [bp+0x4]
00009864  E82202            call word 0x9a89
00009867  83C406            add sp,byte +0x6
0000986A  8946E6            mov [bp-0x1a],ax
0000986D  8956E8            mov [bp-0x18],dx
00009870  8B56E4            mov dx,[bp-0x1c]
00009873  31C9              xor cx,cx
00009875  0356E6            add dx,[bp-0x1a]
00009878  134EE8            adc cx,[bp-0x18]
0000987B  B80002            mov ax,0x200
0000987E  50                push ax
0000987F  51                push cx
00009880  52                push dx
00009881  FF7604            push word [bp+0x4]
00009884  E8D6FC            call word 0x955d
00009887  83C408            add sp,byte +0x8
0000988A  89C6              mov si,ax
0000988C  09F6              or si,si
0000988E  7506              jnz 0x9896
00009890  B8FBFF            mov ax,0xfffb
00009893  E9AA00            jmp word 0x9940
00009896  31FF              xor di,di
00009898  81FF0002          cmp di,0x200
0000989C  7D58              jnl 0x98f6
0000989E  89FA              mov dx,di
000098A0  01F2              add dx,si
000098A2  8956FE            mov [bp-0x2],dx
000098A5  B80800            mov ax,0x8
000098A8  50                push ax
000098A9  8D46F6            lea ax,[bp-0xa]
000098AC  50                push ax
000098AD  FF76FE            push word [bp-0x2]
000098B0  E83E12            call word 0xaaf1
000098B3  83C406            add sp,byte +0x6
000098B6  09C0              or ax,ax
000098B8  752F              jnz 0x98e9
000098BA  8B5EFE            mov bx,[bp-0x2]
000098BD  B80300            mov ax,0x3
000098C0  50                push ax
000098C1  8D46F3            lea ax,[bp-0xd]
000098C4  50                push ax
000098C5  83C308            add bx,byte +0x8
000098C8  53                push bx
000098C9  E82512            call word 0xaaf1
000098CC  83C406            add sp,byte +0x6
000098CF  09C0              or ax,ax
000098D1  7516              jnz 0x98e9
000098D3  89F3              mov bx,si
000098D5  01FB              add bx,di
000098D7  B82000            mov ax,0x20
000098DA  50                push ax
000098DB  53                push bx
000098DC  FF760C            push word [bp+0xc]
000098DF  E84F12            call word 0xab31
000098E2  83C406            add sp,byte +0x6
000098E5  31C0              xor ax,ax
000098E7  EB57              jmp short 0x9940
000098E9  8346EA20          add word [bp-0x16],byte +0x20
000098ED  8356EC00          adc word [bp-0x14],byte +0x0
000098F1  83C720            add di,byte +0x20
000098F4  EBA2              jmp short 0x9898
000098F6  8146E40002        add word [bp-0x1c],0x200
000098FB  8B5E04            mov bx,[bp+0x4]
000098FE  8B56E4            mov dx,[bp-0x1c]
00009901  39973002          cmp [bx+0x230],dx
00009905  7603              jna 0x990a
00009907  E966FF            jmp word 0x9870
0000990A  FF760A            push word [bp+0xa]
0000990D  FF7608            push word [bp+0x8]
00009910  FF7604            push word [bp+0x4]
00009913  E82D00            call word 0x9943
00009916  83C406            add sp,byte +0x6
00009919  894608            mov [bp+0x8],ax
0000991C  89560A            mov [bp+0xa],dx
0000991F  C746E40000        mov word [bp-0x1c],0x0
00009924  0B5608            or dx,[bp+0x8]
00009927  7403              jz 0x992c
00009929  E944FF            jmp word 0x9870
0000992C  FF7606            push word [bp+0x6]
0000992F  E82AF3            call word 0x8c5c
00009932  50                push ax
00009933  B89014            mov ax,0x1490
00009936  50                push ax
00009937  E8FA0A            call word 0xa434
0000993A  83C406            add sp,byte +0x6
0000993D  B8FEFF            mov ax,0xfffe
00009940  E96A15            jmp word 0xaead
00009943  55                push bp
00009944  89E5              mov bp,sp
00009946  50                push ax
00009947  50                push ax
00009948  56                push si
00009949  57                push di
0000994A  8B7E04            mov di,[bp+0x4]
0000994D  E90C01            jmp word 0x9a5c
00009950  B80300            mov ax,0x3
00009953  F76606            mul word [bp+0x6]
00009956  D1E8              shr ax,1
00009958  31D2              xor dx,dx
0000995A  03450C            add ax,[di+0xc]
0000995D  13550E            adc dx,[di+0xe]
00009960  BB0200            mov bx,0x2
00009963  53                push bx
00009964  52                push dx
00009965  50                push ax
00009966  57                push di
00009967  E8F3FB            call word 0x955d
0000996A  83C408            add sp,byte +0x8
0000996D  89C6              mov si,ax
0000996F  09F6              or si,si
00009971  7507              jnz 0x997a
00009973  31C0              xor ax,ax
00009975  50                push ax
00009976  50                push ax
00009977  E90A01            jmp word 0x9a84
0000997A  31C0              xor ax,ax
0000997C  8A4401            mov al,[si+0x1]
0000997F  50                push ax
00009980  31C0              xor ax,ax
00009982  8A04              mov al,[si]
00009984  50                push ax
00009985  E806FD            call word 0x968e
00009988  5B                pop bx
00009989  5B                pop bx
0000998A  8946FC            mov [bp-0x4],ax
0000998D  C746FE0000        mov word [bp-0x2],0x0
00009992  8B5606            mov dx,[bp+0x6]
00009995  81E20100          and dx,0x1
00009999  81CA0000          or dx,0x0
0000999D  750D              jnz 0x99ac
0000999F  8166FCFF0F        and word [bp-0x4],0xfff
000099A4  8166FE0000        and word [bp-0x2],0x0
000099A9  E9BA00            jmp word 0x9a66
000099AC  B90400            mov cx,0x4
000099AF  8B56FC            mov dx,[bp-0x4]
000099B2  8B5EFE            mov bx,[bp-0x2]
000099B5  E306              jcxz 0x99bd
000099B7  D1EB              shr bx,1
000099B9  D1DA              rcr dx,1
000099BB  E2FA              loop 0x99b7
000099BD  8956FC            mov [bp-0x4],dx
000099C0  895EFE            mov [bp-0x2],bx
000099C3  E9A000            jmp word 0x9a66
000099C6  8B5606            mov dx,[bp+0x6]
000099C9  8B4E08            mov cx,[bp+0x8]
000099CC  D1E2              shl dx,1
000099CE  D1D1              rcl cx,1
000099D0  03550C            add dx,[di+0xc]
000099D3  134D0E            adc cx,[di+0xe]
000099D6  B80200            mov ax,0x2
000099D9  50                push ax
000099DA  51                push cx
000099DB  52                push dx
000099DC  57                push di
000099DD  E87DFB            call word 0x955d
000099E0  83C408            add sp,byte +0x8
000099E3  89C6              mov si,ax
000099E5  09F6              or si,si
000099E7  7507              jnz 0x99f0
000099E9  31C0              xor ax,ax
000099EB  50                push ax
000099EC  50                push ax
000099ED  E99400            jmp word 0x9a84
000099F0  31C0              xor ax,ax
000099F2  8A4401            mov al,[si+0x1]
000099F5  50                push ax
000099F6  31C0              xor ax,ax
000099F8  8A04              mov al,[si]
000099FA  50                push ax
000099FB  E890FC            call word 0x968e
000099FE  5B                pop bx
000099FF  5B                pop bx
00009A00  8946FC            mov [bp-0x4],ax
00009A03  C746FE0000        mov word [bp-0x2],0x0
00009A08  EB5C              jmp short 0x9a66
00009A0A  8B5606            mov dx,[bp+0x6]
00009A0D  8B4E08            mov cx,[bp+0x8]
00009A10  D1E2              shl dx,1
00009A12  D1D1              rcl cx,1
00009A14  D1E2              shl dx,1
00009A16  D1D1              rcl cx,1
00009A18  03550C            add dx,[di+0xc]
00009A1B  134D0E            adc cx,[di+0xe]
00009A1E  B80400            mov ax,0x4
00009A21  50                push ax
00009A22  51                push cx
00009A23  52                push dx
00009A24  57                push di
00009A25  E835FB            call word 0x955d
00009A28  83C408            add sp,byte +0x8
00009A2B  89C6              mov si,ax
00009A2D  09F6              or si,si
00009A2F  7506              jnz 0x9a37
00009A31  31C0              xor ax,ax
00009A33  50                push ax
00009A34  50                push ax
00009A35  EB4D              jmp short 0x9a84
00009A37  31C0              xor ax,ax
00009A39  8A4403            mov al,[si+0x3]
00009A3C  50                push ax
00009A3D  31C0              xor ax,ax
00009A3F  8A4402            mov al,[si+0x2]
00009A42  50                push ax
00009A43  31C0              xor ax,ax
00009A45  8A4401            mov al,[si+0x1]
00009A48  50                push ax
00009A49  31C0              xor ax,ax
00009A4B  8A04              mov al,[si]
00009A4D  50                push ax
00009A4E  E856FC            call word 0x96a7
00009A51  83C408            add sp,byte +0x8
00009A54  8946FC            mov [bp-0x4],ax
00009A57  8956FE            mov [bp-0x2],dx
00009A5A  EB0A              jmp short 0x9a66
00009A5C  BBA414            mov bx,0x14a4
00009A5F  8B852C02          mov ax,[di+0x22c]
00009A63  E90213            jmp word 0xad68
00009A66  8B56FC            mov dx,[bp-0x4]
00009A69  8B4EFE            mov cx,[bp-0x2]
00009A6C  394D1A            cmp [di+0x1a],cx
00009A6F  720F              jc 0x9a80
00009A71  7505              jnz 0x9a78
00009A73  395518            cmp [di+0x18],dx
00009A76  7608              jna 0x9a80
00009A78  FF76FE            push word [bp-0x2]
00009A7B  FF76FC            push word [bp-0x4]
00009A7E  EB04              jmp short 0x9a84
00009A80  31C0              xor ax,ax
00009A82  50                push ax
00009A83  50                push ax
00009A84  58                pop ax
00009A85  5A                pop dx
00009A86  E92414            jmp word 0xaead
00009A89  55                push bp
00009A8A  89E5              mov bp,sp
00009A8C  8B5E04            mov bx,[bp+0x4]
00009A8F  8B5606            mov dx,[bp+0x6]
00009A92  8B4E08            mov cx,[bp+0x8]
00009A95  83EA02            sub dx,byte +0x2
00009A98  83D900            sbb cx,byte +0x0
00009A9B  89D0              mov ax,dx
00009A9D  89CA              mov dx,cx
00009A9F  31C9              xor cx,cx
00009AA1  51                push cx
00009AA2  FFB73002          push word [bx+0x230]
00009AA6  E8E613            call word 0xae8f
00009AA9  8B5E04            mov bx,[bp+0x4]
00009AAC  034710            add ax,[bx+0x10]
00009AAF  135712            adc dx,[bx+0x12]
00009AB2  E9FA13            jmp word 0xaeaf
00009AB5  55                push bp
00009AB6  89E5              mov bp,sp
00009AB8  83EC0A            sub sp,byte +0xa
00009ABB  56                push si
00009ABC  8B7604            mov si,[bp+0x4]
00009ABF  8B942402          mov dx,[si+0x224]
00009AC3  8B8C2602          mov cx,[si+0x226]
00009AC7  F7D1              not cx
00009AC9  F7D2              not dx
00009ACB  235606            and dx,[bp+0x6]
00009ACE  234E08            and cx,[bp+0x8]
00009AD1  8956FC            mov [bp-0x4],dx
00009AD4  894EFE            mov [bp-0x2],cx
00009AD7  8B942402          mov dx,[si+0x224]
00009ADB  8B8C2602          mov cx,[si+0x226]
00009ADF  F7D1              not cx
00009AE1  F7D2              not dx
00009AE3  23942802          and dx,[si+0x228]
00009AE7  238C2A02          and cx,[si+0x22a]
00009AEB  8956F8            mov [bp-0x8],dx
00009AEE  894EFA            mov [bp-0x6],cx
00009AF1  3956FC            cmp [bp-0x4],dx
00009AF4  7519              jnz 0x9b0f
00009AF6  394EFE            cmp [bp-0x2],cx
00009AF9  7514              jnz 0x9b0f
00009AFB  8B5606            mov dx,[bp+0x6]
00009AFE  8B4E08            mov cx,[bp+0x8]
00009B01  398C2A02          cmp [si+0x22a],cx
00009B05  7240              jc 0x9b47
00009B07  7506              jnz 0x9b0f
00009B09  39942802          cmp [si+0x228],dx
00009B0D  7638              jna 0x9b47
00009B0F  8B842E02          mov ax,[si+0x22e]
00009B13  99                cwd
00009B14  89C1              mov cx,ax
00009B16  8B56FC            mov dx,[bp-0x4]
00009B19  8B5EFE            mov bx,[bp-0x2]
00009B1C  E306              jcxz 0x9b24
00009B1E  D1EB              shr bx,1
00009B20  D1DA              rcr dx,1
00009B22  E2FA              loop 0x9b1e
00009B24  8956F6            mov [bp-0xa],dx
00009B27  8B56FC            mov dx,[bp-0x4]
00009B2A  8B4EFE            mov cx,[bp-0x2]
00009B2D  89942802          mov [si+0x228],dx
00009B31  898C2A02          mov [si+0x22a],cx
00009B35  8B56F6            mov dx,[bp-0xa]
00009B38  8D5C1C            lea bx,[si+0x1c]
00009B3B  D1E2              shl dx,1
00009B3D  D1E2              shl dx,1
00009B3F  01D3              add bx,dx
00009B41  8B17              mov dx,[bx]
00009B43  89943202          mov [si+0x232],dx
00009B47  8B943002          mov dx,[si+0x230]
00009B4B  31C9              xor cx,cx
00009B4D  03942802          add dx,[si+0x228]
00009B51  138C2A02          adc cx,[si+0x22a]
00009B55  394E08            cmp [bp+0x8],cx
00009B58  7228              jc 0x9b82
00009B5A  7505              jnz 0x9b61
00009B5C  395606            cmp [bp+0x6],dx
00009B5F  7221              jc 0x9b82
00009B61  8B943002          mov dx,[si+0x230]
00009B65  01942802          add [si+0x228],dx
00009B69  83942A0200        adc word [si+0x22a],byte +0x0
00009B6E  31C0              xor ax,ax
00009B70  50                push ax
00009B71  FFB43202          push word [si+0x232]
00009B75  56                push si
00009B76  E8CAFD            call word 0x9943
00009B79  83C406            add sp,byte +0x6
00009B7C  89843202          mov [si+0x232],ax
00009B80  EBC5              jmp short 0x9b47
00009B82  31C0              xor ax,ax
00009B84  50                push ax
00009B85  FFB43202          push word [si+0x232]
00009B89  56                push si
00009B8A  E8FCFE            call word 0x9a89
00009B8D  83C406            add sp,byte +0x6
00009B90  034606            add ax,[bp+0x6]
00009B93  135608            adc dx,[bp+0x8]
00009B96  2B842802          sub ax,[si+0x228]
00009B9A  1B942A02          sbb dx,[si+0x22a]
00009B9E  E90D13            jmp word 0xaeae
00009BA1  55                push bp
00009BA2  89E5              mov bp,sp
00009BA4  83EC12            sub sp,byte +0x12
00009BA7  56                push si
00009BA8  57                push di
00009BA9  E8B0F0            call word 0x8c5c
00009BAC  8946FE            mov [bp-0x2],ax
00009BAF  50                push ax
00009BB0  E8BC68            call word 0x46f
00009BB3  5B                pop bx
00009BB4  89C7              mov di,ax
00009BB6  09FF              or di,di
00009BB8  7517              jnz 0x9bd1
00009BBA  FF76FE            push word [bp-0x2]
00009BBD  E89CF0            call word 0x8c5c
00009BC0  50                push ax
00009BC1  B85A15            mov ax,0x155a
00009BC4  50                push ax
00009BC5  E86C08            call word 0xa434
00009BC8  83C406            add sp,byte +0x6
00009BCB  B8FDFF            mov ax,0xfffd
00009BCE  E92501            jmp word 0x9cf6
00009BD1  89FE              mov si,di
00009BD3  B83A00            mov ax,0x3a
00009BD6  50                push ax
00009BD7  56                push si
00009BD8  E8900F            call word 0xab6b
00009BDB  5B                pop bx
00009BDC  5B                pop bx
00009BDD  89C6              mov si,ax
00009BDF  31DB              xor bx,bx
00009BE1  09C0              or ax,ax
00009BE3  7401              jz 0x9be6
00009BE5  43                inc bx
00009BE6  895EF4            mov [bp-0xc],bx
00009BE9  09DB              or bx,bx
00009BEB  744E              jz 0x9c3b
00009BED  C60400            mov byte [si],0x0
00009BF0  C746F2F6FF        mov word [bp-0xe],0xfff6
00009BF5  837EF200          cmp word [bp-0xe],byte +0x0
00009BF9  7D21              jnl 0x9c1c
00009BFB  BA0A00            mov dx,0xa
00009BFE  0356F2            add dx,[bp-0xe]
00009C01  B80C00            mov ax,0xc
00009C04  F7E2              mul dx
00009C06  89C3              mov bx,ax
00009C08  81C3D200          add bx,0xd2
00009C0C  53                push bx
00009C0D  57                push di
00009C0E  E88A0F            call word 0xab9b
00009C11  5B                pop bx
00009C12  5B                pop bx
00009C13  09C0              or ax,ax
00009C15  7405              jz 0x9c1c
00009C17  FF46F2            inc word [bp-0xe]
00009C1A  EBD9              jmp short 0x9bf5
00009C1C  C6043A            mov byte [si],0x3a
00009C1F  46                inc si
00009C20  837EF200          cmp word [bp-0xe],byte +0x0
00009C24  7515              jnz 0x9c3b
00009C26  57                push di
00009C27  E832F0            call word 0x8c5c
00009C2A  50                push ax
00009C2B  B82E15            mov ax,0x152e
00009C2E  50                push ax
00009C2F  E80208            call word 0xa434
00009C32  83C406            add sp,byte +0x6
00009C35  B8EAFF            mov ax,0xffea
00009C38  E9BB00            jmp word 0x9cf6
00009C3B  837EF400          cmp word [bp-0xc],byte +0x0
00009C3F  744B              jz 0x9c8c
00009C41  31C0              xor ax,ax
00009C43  50                push ax
00009C44  8D46F8            lea ax,[bp-0x8]
00009C47  50                push ax
00009C48  56                push si
00009C49  E8280B            call word 0xa774
00009C4C  83C406            add sp,byte +0x6
00009C4F  8946EE            mov [bp-0x12],ax
00009C52  8956F0            mov [bp-0x10],dx
00009C55  83FA00            cmp dx,byte +0x0
00009C58  721C              jc 0x9c76
00009C5A  7505              jnz 0x9c61
00009C5C  3D0001            cmp ax,0x100
00009C5F  7215              jc 0x9c76
00009C61  57                push di
00009C62  E8F7EF            call word 0x8c5c
00009C65  50                push ax
00009C66  B8FC14            mov ax,0x14fc
00009C69  50                push ax
00009C6A  E8C707            call word 0xa434
00009C6D  83C406            add sp,byte +0x6
00009C70  B8EAFF            mov ax,0xffea
00009C73  E98000            jmp word 0x9cf6
00009C76  3976F8            cmp [bp-0x8],si
00009C79  7408              jz 0x9c83
00009C7B  8B5EF8            mov bx,[bp-0x8]
00009C7E  803F3A            cmp byte [bx],0x3a
00009C81  7405              jz 0x9c88
00009C83  C746F40000        mov word [bp-0xc],0x0
00009C88  8B76F8            mov si,[bp-0x8]
00009C8B  46                inc si
00009C8C  837EF400          cmp word [bp-0xc],byte +0x0
00009C90  7514              jnz 0x9ca6
00009C92  57                push di
00009C93  E8C6EF            call word 0x8c5c
00009C96  50                push ax
00009C97  B8E214            mov ax,0x14e2
00009C9A  50                push ax
00009C9B  E89607            call word 0xa434
00009C9E  83C406            add sp,byte +0x6
00009CA1  B8EAFF            mov ax,0xffea
00009CA4  EB50              jmp short 0x9cf6
00009CA6  56                push si
00009CA7  E8090F            call word 0xabb3
00009CAA  5B                pop bx
00009CAB  3DFF00            cmp ax,0xff
00009CAE  7614              jna 0x9cc4
00009CB0  57                push di
00009CB1  E8A8EF            call word 0x8c5c
00009CB4  50                push ax
00009CB5  B8C214            mov ax,0x14c2
00009CB8  50                push ax
00009CB9  E87807            call word 0xa434
00009CBC  83C406            add sp,byte +0x6
00009CBF  B8EAFF            mov ax,0xffea
00009CC2  EB32              jmp short 0x9cf6
00009CC4  56                push si
00009CC5  B87C43            mov ax,0x437c
00009CC8  50                push ax
00009CC9  E8D50E            call word 0xaba1
00009CCC  5B                pop bx
00009CCD  5B                pop bx
00009CCE  8B56F2            mov dx,[bp-0xe]
00009CD1  8B5E06            mov bx,[bp+0x6]
00009CD4  8917              mov [bx],dx
00009CD6  8B56EE            mov dx,[bp-0x12]
00009CD9  8B5E08            mov bx,[bp+0x8]
00009CDC  8917              mov [bx],dx
00009CDE  8B5E0A            mov bx,[bp+0xa]
00009CE1  C7077C43          mov word [bx],0x437c
00009CE5  57                push di
00009CE6  E873EF            call word 0x8c5c
00009CE9  50                push ax
00009CEA  B8B414            mov ax,0x14b4
00009CED  50                push ax
00009CEE  E84307            call word 0xa434
00009CF1  83C406            add sp,byte +0x6
00009CF4  31C0              xor ax,ax
00009CF6  E9B411            jmp word 0xaead
00009CF9  55                push bp
00009CFA  89E5              mov bp,sp
00009CFC  B87C15            mov ax,0x157c
00009CFF  50                push ax
00009D00  E890C0            call word 0x5d93
00009D03  5B                pop bx
00009D04  E9A811            jmp word 0xaeaf
00009D07  55                push bp
00009D08  89E5              mov bp,sp
00009D0A  837E0414          cmp word [bp+0x4],byte +0x14
00009D0E  7D34              jnl 0x9d44
00009D10  B90500            mov cx,0x5
00009D13  8B4604            mov ax,[bp+0x4]
00009D16  99                cwd
00009D17  F7F9              idiv cx
00009D19  A3EE45            mov [0x45ee],ax
00009D1C  B95C00            mov cx,0x5c
00009D1F  F7E1              mul cx
00009D21  89C3              mov bx,ax
00009D23  81C37C44          add bx,0x447c
00009D27  891EEC45          mov [0x45ec],bx
00009D2B  B90500            mov cx,0x5
00009D2E  8B4604            mov ax,[bp+0x4]
00009D31  99                cwd
00009D32  F7F9              idiv cx
00009D34  83C30C            add bx,byte +0xc
00009D37  B90400            mov cx,0x4
00009D3A  D3E2              shl dx,cl
00009D3C  01D3              add bx,dx
00009D3E  891EF045          mov [0x45f0],bx
00009D42  EB04              jmp short 0x9d48
00009D44  31C0              xor ax,ax
00009D46  EB0E              jmp short 0x9d56
00009D48  833EEE4504        cmp word [0x45ee],byte +0x4
00009D4D  7D05              jnl 0x9d54
00009D4F  A1F045            mov ax,[0x45f0]
00009D52  EB02              jmp short 0x9d56
00009D54  31C0              xor ax,ax
00009D56  E95611            jmp word 0xaeaf
00009D59  55                push bp
00009D5A  89E5              mov bp,sp
00009D5C  BA3000            mov dx,0x30
00009D5F  0316EE45          add dx,[0x45ee]
00009D63  88169515          mov [0x1595],dl
00009D67  B88C15            mov ax,0x158c
00009D6A  E94211            jmp word 0xaeaf
00009D6D  55                push bp
00009D6E  89E5              mov bp,sp
00009D70  83EC18            sub sp,byte +0x18
00009D73  56                push si
00009D74  57                push di
00009D75  8B7E0C            mov di,[bp+0xc]
00009D78  8B16EC45          mov dx,[0x45ec]
00009D7C  8956FE            mov [bp-0x2],dx
00009D7F  8B5E0E            mov bx,[bp+0xe]
00009D82  D1E3              shl bx,1
00009D84  D1E3              shl bx,1
00009D86  01FB              add bx,di
00009D88  895EFA            mov [bp-0x6],bx
00009D8B  8B1EF045          mov bx,[0x45f0]
00009D8F  83C308            add bx,byte +0x8
00009D92  B90800            mov cx,0x8
00009D95  E8E210            call word 0xae7a
00009D98  E87D0C            call word 0xaa18
00009D9B  83C408            add sp,byte +0x8
00009D9E  8946EC            mov [bp-0x14],ax
00009DA1  8956EE            mov [bp-0x12],dx
00009DA4  8B5E04            mov bx,[bp+0x4]
00009DA7  D1E3              shl bx,1
00009DA9  8B9F766F          mov bx,[bx+0x6f76]
00009DAD  B90A00            mov cx,0xa
00009DB0  8B5754            mov dx,[bx+0x54]
00009DB3  31DB              xor bx,bx
00009DB5  E306              jcxz 0x9dbd
00009DB7  D1E2              shl dx,1
00009DB9  D1D3              rcl bx,1
00009DBB  E2FA              loop 0x9db7
00009DBD  8956E8            mov [bp-0x18],dx
00009DC0  895EEA            mov [bp-0x16],bx
00009DC3  837E0E00          cmp word [bp+0xe],byte +0x0
00009DC7  7503              jnz 0x9dcc
00009DC9  E98102            jmp word 0xa04d
00009DCC  31F6              xor si,si
00009DCE  897EFC            mov [bp-0x4],di
00009DD1  8B56FA            mov dx,[bp-0x6]
00009DD4  3956FC            cmp [bp-0x4],dx
00009DD7  7323              jnc 0x9dfc
00009DD9  8B5EFC            mov bx,[bp-0x4]
00009DDC  89F2              mov dx,si
00009DDE  035702            add dx,[bx+0x2]
00009DE1  81FA0002          cmp dx,0x200
00009DE5  7609              jna 0x9df0
00009DE7  09F6              or si,si
00009DE9  7511              jnz 0x9dfc
00009DEB  BE0002            mov si,0x200
00009DEE  EB0C              jmp short 0x9dfc
00009DF0  8B5EFC            mov bx,[bp-0x4]
00009DF3  037702            add si,[bx+0x2]
00009DF6  8346FC04          add word [bp-0x4],byte +0x4
00009DFA  EBD5              jmp short 0x9dd1
00009DFC  8B5608            mov dx,[bp+0x8]
00009DFF  8B4E0A            mov cx,[bp+0xa]
00009E02  8956F0            mov [bp-0x10],dx
00009E05  894EF2            mov [bp-0xe],cx
00009E08  394EEE            cmp [bp-0x12],cx
00009E0B  770C              ja 0x9e19
00009E0D  7505              jnz 0x9e14
00009E0F  3956EC            cmp [bp-0x14],dx
00009E12  7705              ja 0x9e19
00009E14  31C0              xor ax,ax
00009E16  E93602            jmp word 0xa04f
00009E19  89F2              mov dx,si
00009E1B  31C9              xor cx,cx
00009E1D  0356F0            add dx,[bp-0x10]
00009E20  134EF2            adc cx,[bp-0xe]
00009E23  394EEE            cmp [bp-0x12],cx
00009E26  7715              ja 0x9e3d
00009E28  7505              jnz 0x9e2f
00009E2A  3956EC            cmp [bp-0x14],dx
00009E2D  730E              jnc 0x9e3d
00009E2F  8B56EC            mov dx,[bp-0x14]
00009E32  8B4EEE            mov cx,[bp-0x12]
00009E35  2B56F0            sub dx,[bp-0x10]
00009E38  1B4EF2            sbb cx,[bp-0xe]
00009E3B  89D6              mov si,dx
00009E3D  8B1EF045          mov bx,[0x45f0]
00009E41  B90800            mov cx,0x8
00009E44  E83310            call word 0xae7a
00009E47  E8CE0B            call word 0xaa18
00009E4A  83C408            add sp,byte +0x8
00009E4D  0146F0            add [bp-0x10],ax
00009E50  1156F2            adc [bp-0xe],dx
00009E53  837E0608          cmp word [bp+0x6],byte +0x8
00009E57  7559              jnz 0x9eb2
00009E59  C746F60000        mov word [bp-0xa],0x0
00009E5E  897EFC            mov [bp-0x4],di
00009E61  3976F6            cmp [bp-0xa],si
00009E64  734C              jnc 0x9eb2
00009E66  8B5502            mov dx,[di+0x2]
00009E69  8956F4            mov [bp-0xc],dx
00009E6C  0356F6            add dx,[bp-0xa]
00009E6F  39F2              cmp dx,si
00009E71  7608              jna 0x9e7b
00009E73  89F2              mov dx,si
00009E75  2B56F6            sub dx,[bp-0xa]
00009E78  8956F4            mov [bp-0xc],dx
00009E7B  8B56F6            mov dx,[bp-0xa]
00009E7E  31C9              xor cx,cx
00009E80  0316A074          add dx,[0x74a0]
00009E84  130EA274          adc cx,[0x74a2]
00009E88  8B5EFC            mov bx,[bp-0x4]
00009E8B  8B1F              mov bx,[bx]
00009E8D  31C0              xor ax,ax
00009E8F  035EE8            add bx,[bp-0x18]
00009E92  1346EA            adc ax,[bp-0x16]
00009E95  FF369815          push word [0x1598]
00009E99  FF76F4            push word [bp-0xc]
00009E9C  51                push cx
00009E9D  52                push dx
00009E9E  50                push ax
00009E9F  53                push bx
00009EA0  E8E26B            call word 0xa85
00009EA3  83C40C            add sp,byte +0xc
00009EA6  8B56F4            mov dx,[bp-0xc]
00009EA9  0156F6            add [bp-0xa],dx
00009EAC  8346FC04          add word [bp-0x4],byte +0x4
00009EB0  EBAF              jmp short 0x9e61
00009EB2  8B5EFE            mov bx,[bp-0x2]
00009EB5  8B56F0            mov dx,[bp-0x10]
00009EB8  8B4EF2            mov cx,[bp-0xe]
00009EBB  3917              cmp [bx],dx
00009EBD  7505              jnz 0x9ec4
00009EBF  394F02            cmp [bx+0x2],cx
00009EC2  7470              jz 0x9f34
00009EC4  C606EE6021        mov byte [0x60ee],0x21
00009EC9  C706FA600042      mov word [0x60fa],0x4200
00009ECF  8B5708            mov dx,[bx+0x8]
00009ED2  8916FE60          mov [0x60fe],dx
00009ED6  81E10000          and cx,0x0
00009EDA  8B56F0            mov dx,[bp-0x10]
00009EDD  89160661          mov [0x6106],dx
00009EE1  8B56F2            mov dx,[bp-0xe]
00009EE4  89160261          mov [0x6102],dx
00009EE8  B8D507            mov ax,0x7d5
00009EEB  50                push ax
00009EEC  E8046D            call word 0xbf3
00009EEF  5B                pop bx
00009EF0  F606EE6001        test byte [0x60ee],0x1
00009EF5  742F              jz 0x9f26
00009EF7  FF36FA60          push word [0x60fa]
00009EFB  E89004            call word 0xa38e
00009EFE  5B                pop bx
00009EFF  50                push ax
00009F00  FF76F2            push word [bp-0xe]
00009F03  FF76F0            push word [bp-0x10]
00009F06  E850FE            call word 0x9d59
00009F09  50                push ax
00009F0A  B89C15            mov ax,0x159c
00009F0D  50                push ax
00009F0E  E82305            call word 0xa434
00009F11  83C40A            add sp,byte +0xa
00009F14  8B5EFE            mov bx,[bp-0x2]
00009F17  C707FFFF          mov word [bx],0xffff
00009F1B  C74702FFFF        mov word [bx+0x2],0xffff
00009F20  B8FBFF            mov ax,0xfffb
00009F23  E92901            jmp word 0xa04f
00009F26  8B5EFE            mov bx,[bp-0x2]
00009F29  8B56F0            mov dx,[bp-0x10]
00009F2C  8B4EF2            mov cx,[bp-0xe]
00009F2F  8917              mov [bx],dx
00009F31  894F02            mov [bx+0x2],cx
00009F34  C606EE6021        mov byte [0x60ee],0x21
00009F39  837E0608          cmp word [bp+0x6],byte +0x8
00009F3D  7505              jnz 0x9f44
00009F3F  B84000            mov ax,0x40
00009F42  EB03              jmp short 0x9f47
00009F44  B83F00            mov ax,0x3f
00009F47  A2FB60            mov [0x60fb],al
00009F4A  8B5EFE            mov bx,[bp-0x2]
00009F4D  8B5708            mov dx,[bx+0x8]
00009F50  8916FE60          mov [0x60fe],dx
00009F54  89360261          mov [0x6102],si
00009F58  FF36A274          push word [0x74a2]
00009F5C  FF36A074          push word [0x74a0]
00009F60  31C0              xor ax,ax
00009F62  50                push ax
00009F63  B81000            mov ax,0x10
00009F66  50                push ax
00009F67  E84D0F            call word 0xaeb7
00009F6A  A30661            mov [0x6106],ax
00009F6D  B90400            mov cx,0x4
00009F70  8B16A074          mov dx,[0x74a0]
00009F74  8B1EA274          mov bx,[0x74a2]
00009F78  E306              jcxz 0x9f80
00009F7A  D1EB              shr bx,1
00009F7C  D1DA              rcr dx,1
00009F7E  E2FA              loop 0x9f7a
00009F80  8916F660          mov [0x60f6],dx
00009F84  B8D507            mov ax,0x7d5
00009F87  50                push ax
00009F88  E8686C            call word 0xbf3
00009F8B  5B                pop bx
00009F8C  F606EE6001        test byte [0x60ee],0x1
00009F91  7506              jnz 0x9f99
00009F93  3936FA60          cmp [0x60fa],si
00009F97  7412              jz 0x9fab
00009F99  8B5EFE            mov bx,[bp-0x2]
00009F9C  C707FFFF          mov word [bx],0xffff
00009FA0  C74702FFFF        mov word [bx+0x2],0xffff
00009FA5  B8FBFF            mov ax,0xfffb
00009FA8  E9A400            jmp word 0xa04f
00009FAB  8B5EFE            mov bx,[bp-0x2]
00009FAE  0137              add [bx],si
00009FB0  83570200          adc word [bx+0x2],byte +0x0
00009FB4  837E0609          cmp word [bp+0x6],byte +0x9
00009FB8  7559              jnz 0xa013
00009FBA  C746F60000        mov word [bp-0xa],0x0
00009FBF  897EFC            mov [bp-0x4],di
00009FC2  3976F6            cmp [bp-0xa],si
00009FC5  734C              jnc 0xa013
00009FC7  8B5502            mov dx,[di+0x2]
00009FCA  8956F4            mov [bp-0xc],dx
00009FCD  0356F6            add dx,[bp-0xa]
00009FD0  39F2              cmp dx,si
00009FD2  7608              jna 0x9fdc
00009FD4  89F2              mov dx,si
00009FD6  2B56F6            sub dx,[bp-0xa]
00009FD9  8956F4            mov [bp-0xc],dx
00009FDC  8B5EFC            mov bx,[bp-0x4]
00009FDF  8B17              mov dx,[bx]
00009FE1  31C9              xor cx,cx
00009FE3  0356E8            add dx,[bp-0x18]
00009FE6  134EEA            adc cx,[bp-0x16]
00009FE9  8B5EF6            mov bx,[bp-0xa]
00009FEC  31C0              xor ax,ax
00009FEE  031EA074          add bx,[0x74a0]
00009FF2  1306A274          adc ax,[0x74a2]
00009FF6  FF369A15          push word [0x159a]
00009FFA  FF76F4            push word [bp-0xc]
00009FFD  51                push cx
00009FFE  52                push dx
00009FFF  50                push ax
0000A000  53                push bx
0000A001  E8816A            call word 0xa85
0000A004  83C40C            add sp,byte +0xc
0000A007  8B56F4            mov dx,[bp-0xc]
0000A00A  0156F6            add [bp-0xa],dx
0000A00D  8346FC04          add word [bp-0x4],byte +0x4
0000A011  EBAF              jmp short 0x9fc2
0000A013  017608            add [bp+0x8],si
0000A016  83560A00          adc word [bp+0xa],byte +0x0
0000A01A  397502            cmp [di+0x2],si
0000A01D  760D              jna 0xa02c
0000A01F  0135              add [di],si
0000A021  8B5502            mov dx,[di+0x2]
0000A024  29F2              sub dx,si
0000A026  895502            mov [di+0x2],dx
0000A029  E997FD            jmp word 0x9dc3
0000A02C  89F2              mov dx,si
0000A02E  2B5502            sub dx,[di+0x2]
0000A031  89D6              mov si,dx
0000A033  8B5502            mov dx,[di+0x2]
0000A036  0115              add [di],dx
0000A038  C745020000        mov word [di+0x2],0x0
0000A03D  09F6              or si,si
0000A03F  7504              jnz 0xa045
0000A041  31C0              xor ax,ax
0000A043  EB0A              jmp short 0xa04f
0000A045  83C704            add di,byte +0x4
0000A048  FF4E0E            dec word [bp+0xe]
0000A04B  EBCD              jmp short 0xa01a
0000A04D  31C0              xor ax,ax
0000A04F  E95B0E            jmp word 0xaead
0000A052  55                push bp
0000A053  89E5              mov bp,sp
0000A055  83EC0C            sub sp,byte +0xc
0000A058  56                push si
0000A059  57                push di
0000A05A  8B5E06            mov bx,[bp+0x6]
0000A05D  FF7704            push word [bx+0x4]
0000A060  E8A4FC            call word 0x9d07
0000A063  5B                pop bx
0000A064  09C0              or ax,ax
0000A066  7506              jnz 0xa06e
0000A068  B8FAFF            mov ax,0xfffa
0000A06B  E9A302            jmp word 0xa311
0000A06E  8B36EC45          mov si,[0x45ec]
0000A072  837C0600          cmp word [si+0x6],byte +0x0
0000A076  7403              jz 0xa07b
0000A078  E96602            jmp word 0xa2e1
0000A07B  E8DBFC            call word 0x9d59
0000A07E  50                push ax
0000A07F  E8ED63            call word 0x46f
0000A082  5B                pop bx
0000A083  89C7              mov di,ax
0000A085  09C0              or ax,ax
0000A087  7518              jnz 0xa0a1
0000A089  E8CDFC            call word 0x9d59
0000A08C  50                push ax
0000A08D  E8C9FC            call word 0x9d59
0000A090  50                push ax
0000A091  B84016            mov ax,0x1640
0000A094  50                push ax
0000A095  E89C03            call word 0xa434
0000A098  83C406            add sp,byte +0x6
0000A09B  B8FBFF            mov ax,0xfffb
0000A09E  E97002            jmp word 0xa311
0000A0A1  C606EE6021        mov byte [0x60ee],0x21
0000A0A6  C706FA600030      mov word [0x60fa],0x3000
0000A0AC  B8D507            mov ax,0x7d5
0000A0AF  50                push ax
0000A0B0  E8406B            call word 0xbf3
0000A0B3  5B                pop bx
0000A0B4  8A16FA60          mov dl,[0x60fa]
0000A0B8  30F6              xor dh,dh
0000A0BA  83FA03            cmp dx,byte +0x3
0000A0BD  7D13              jnl 0xa0d2
0000A0BF  E897FC            call word 0x9d59
0000A0C2  50                push ax
0000A0C3  B82616            mov ax,0x1626
0000A0C6  50                push ax
0000A0C7  E86A03            call word 0xa434
0000A0CA  5B                pop bx
0000A0CB  5B                pop bx
0000A0CC  B8FBFF            mov ax,0xfffb
0000A0CF  E93F02            jmp word 0xa311
0000A0D2  C6440A01          mov byte [si+0xa],0x1
0000A0D6  C606EE6021        mov byte [0x60ee],0x21
0000A0DB  C706FA60223D      mov word [0x60fa],0x3d22
0000A0E1  89FA              mov dx,di
0000A0E3  31C9              xor cx,cx
0000A0E5  03168446          add dx,[0x4684]
0000A0E9  130E8646          adc cx,[0x4686]
0000A0ED  51                push cx
0000A0EE  52                push dx
0000A0EF  31C0              xor ax,ax
0000A0F1  50                push ax
0000A0F2  B81000            mov ax,0x10
0000A0F5  50                push ax
0000A0F6  E8BE0D            call word 0xaeb7
0000A0F9  A30661            mov [0x6106],ax
0000A0FC  89FA              mov dx,di
0000A0FE  31C9              xor cx,cx
0000A100  03168446          add dx,[0x4684]
0000A104  130E8646          adc cx,[0x4686]
0000A108  51                push cx
0000A109  B90400            mov cx,0x4
0000A10C  5B                pop bx
0000A10D  E306              jcxz 0xa115
0000A10F  D1EB              shr bx,1
0000A111  D1DA              rcr dx,1
0000A113  E2FA              loop 0xa10f
0000A115  8916F660          mov [0x60f6],dx
0000A119  B8D507            mov ax,0x7d5
0000A11C  50                push ax
0000A11D  E8D36A            call word 0xbf3
0000A120  5B                pop bx
0000A121  F606EE6001        test byte [0x60ee],0x1
0000A126  7456              jz 0xa17e
0000A128  833EFA6005        cmp word [0x60fa],byte +0x5
0000A12D  754F              jnz 0xa17e
0000A12F  C6440A00          mov byte [si+0xa],0x0
0000A133  C606EE6021        mov byte [0x60ee],0x21
0000A138  C706FA60403D      mov word [0x60fa],0x3d40
0000A13E  89FA              mov dx,di
0000A140  31C9              xor cx,cx
0000A142  03168446          add dx,[0x4684]
0000A146  130E8646          adc cx,[0x4686]
0000A14A  51                push cx
0000A14B  52                push dx
0000A14C  31C0              xor ax,ax
0000A14E  50                push ax
0000A14F  B81000            mov ax,0x10
0000A152  50                push ax
0000A153  E8610D            call word 0xaeb7
0000A156  A30661            mov [0x6106],ax
0000A159  89FA              mov dx,di
0000A15B  31C9              xor cx,cx
0000A15D  03168446          add dx,[0x4684]
0000A161  130E8646          adc cx,[0x4686]
0000A165  51                push cx
0000A166  B90400            mov cx,0x4
0000A169  5B                pop bx
0000A16A  E306              jcxz 0xa172
0000A16C  D1EB              shr bx,1
0000A16E  D1DA              rcr dx,1
0000A170  E2FA              loop 0xa16c
0000A172  8916F660          mov [0x60f6],dx
0000A176  B8D507            mov ax,0x7d5
0000A179  50                push ax
0000A17A  E8766A            call word 0xbf3
0000A17D  5B                pop bx
0000A17E  F606EE6001        test byte [0x60ee],0x1
0000A183  741E              jz 0xa1a3
0000A185  FF36FA60          push word [0x60fa]
0000A189  E80202            call word 0xa38e
0000A18C  5B                pop bx
0000A18D  50                push ax
0000A18E  57                push di
0000A18F  E8C7FB            call word 0x9d59
0000A192  50                push ax
0000A193  B80C16            mov ax,0x160c
0000A196  50                push ax
0000A197  E89A02            call word 0xa434
0000A19A  83C408            add sp,byte +0x8
0000A19D  B8FBFF            mov ax,0xfffb
0000A1A0  E96E01            jmp word 0xa311
0000A1A3  8B16FA60          mov dx,[0x60fa]
0000A1A7  895408            mov [si+0x8],dx
0000A1AA  C606EE6021        mov byte [0x60ee],0x21
0000A1AF  C706FA600242      mov word [0x60fa],0x4202
0000A1B5  8B5408            mov dx,[si+0x8]
0000A1B8  8916FE60          mov [0x60fe],dx
0000A1BC  C70606610000      mov word [0x6106],0x0
0000A1C2  C70602610000      mov word [0x6102],0x0
0000A1C8  B8D507            mov ax,0x7d5
0000A1CB  50                push ax
0000A1CC  E8246A            call word 0xbf3
0000A1CF  5B                pop bx
0000A1D0  F606EE6001        test byte [0x60ee],0x1
0000A1D5  7425              jz 0xa1fc
0000A1D7  FF36FA60          push word [0x60fa]
0000A1DB  E8B001            call word 0xa38e
0000A1DE  5B                pop bx
0000A1DF  50                push ax
0000A1E0  57                push di
0000A1E1  E875FB            call word 0x9d59
0000A1E4  50                push ax
0000A1E5  B8E615            mov ax,0x15e6
0000A1E8  50                push ax
0000A1E9  E84802            call word 0xa434
0000A1EC  83C408            add sp,byte +0x8
0000A1EF  FF7408            push word [si+0x8]
0000A1F2  E87A01            call word 0xa36f
0000A1F5  5B                pop bx
0000A1F6  B8FBFF            mov ax,0xfffb
0000A1F9  E91501            jmp word 0xa311
0000A1FC  31D2              xor dx,dx
0000A1FE  8B0E0661          mov cx,[0x6106]
0000A202  0B16FA60          or dx,[0x60fa]
0000A206  81C90000          or cx,0x0
0000A20A  8914              mov [si],dx
0000A20C  894C02            mov [si+0x2],cx
0000A20F  8D5C14            lea bx,[si+0x14]
0000A212  B90800            mov cx,0x8
0000A215  E8620C            call word 0xae7a
0000A218  E8FD07            call word 0xaa18
0000A21B  83C408            add sp,byte +0x8
0000A21E  3904              cmp [si],ax
0000A220  7505              jnz 0xa227
0000A222  395402            cmp [si+0x2],dx
0000A225  743D              jz 0xa264
0000A227  807C0A00          cmp byte [si+0xa],0x0
0000A22B  7405              jz 0xa232
0000A22D  B8C615            mov ax,0x15c6
0000A230  EB03              jmp short 0xa235
0000A232  B8B815            mov ax,0x15b8
0000A235  50                push ax
0000A236  FF7402            push word [si+0x2]
0000A239  FF34              push word [si]
0000A23B  57                push di
0000A23C  E81AFB            call word 0x9d59
0000A23F  50                push ax
0000A240  B8C815            mov ax,0x15c8
0000A243  50                push ax
0000A244  E8ED01            call word 0xa434
0000A247  83C40C            add sp,byte +0xc
0000A24A  FF7402            push word [si+0x2]
0000A24D  FF34              push word [si]
0000A24F  8D46F4            lea ax,[bp-0xc]
0000A252  50                push ax
0000A253  E8E007            call word 0xaa36
0000A256  83C406            add sp,byte +0x6
0000A259  50                push ax
0000A25A  8D4414            lea ax,[si+0x14]
0000A25D  50                push ax
0000A25E  B90400            mov cx,0x4
0000A261  E8CB0A            call word 0xad2f
0000A264  C606EE6021        mov byte [0x60ee],0x21
0000A269  C606FB601C        mov byte [0x60fb],0x1c
0000A26E  C606066100        mov byte [0x6106],0x0
0000A273  8A05              mov al,[di]
0000A275  98                cbw
0000A276  25DF00            and ax,0xdf
0000A279  2D4100            sub ax,0x41
0000A27C  3D1A00            cmp ax,0x1a
0000A27F  7312              jnc 0xa293
0000A281  807D013A          cmp byte [di+0x1],0x3a
0000A285  750C              jnz 0xa293
0000A287  8A05              mov al,[di]
0000A289  98                cbw
0000A28A  25DF00            and ax,0xdf
0000A28D  2D4000            sub ax,0x40
0000A290  A20661            mov [0x6106],al
0000A293  B8D507            mov ax,0x7d5
0000A296  50                push ax
0000A297  E85969            call word 0xbf3
0000A29A  5B                pop bx
0000A29B  803EFA6000        cmp byte [0x60fa],0x0
0000A2A0  7416              jz 0xa2b8
0000A2A2  8A16FA60          mov dl,[0x60fa]
0000A2A6  30F6              xor dh,dh
0000A2A8  83FA3F            cmp dx,byte +0x3f
0000A2AB  7F0B              jg 0xa2b8
0000A2AD  803D2F            cmp byte [di],0x2f
0000A2B0  750B              jnz 0xa2bd
0000A2B2  807D012F          cmp byte [di+0x1],0x2f
0000A2B6  7505              jnz 0xa2bd
0000A2B8  C606FA6020        mov byte [0x60fa],0x20
0000A2BD  B90900            mov cx,0x9
0000A2C0  8A16FA60          mov dl,[0x60fa]
0000A2C4  30F6              xor dh,dh
0000A2C6  D3E2              shl dx,cl
0000A2C8  895404            mov [si+0x4],dx
0000A2CB  B80500            mov ax,0x5
0000A2CE  F726EE45          mul word [0x45ee]
0000A2D2  BB0100            mov bx,0x1
0000A2D5  53                push bx
0000A2D6  50                push ax
0000A2D7  B87C15            mov ax,0x157c
0000A2DA  50                push ax
0000A2DB  E8B5BE            call word 0x6193
0000A2DE  83C406            add sp,byte +0x6
0000A2E1  83440601          add word [si+0x6],byte +0x1
0000A2E5  807C0A00          cmp byte [si+0xa],0x0
0000A2E9  7524              jnz 0xa30f
0000A2EB  8B5E06            mov bx,[bp+0x6]
0000A2EE  F6470802          test byte [bx+0x8],0x2
0000A2F2  741B              jz 0xa30f
0000A2F4  8B5406            mov dx,[si+0x6]
0000A2F7  83EA01            sub dx,byte +0x1
0000A2FA  895406            mov [si+0x6],dx
0000A2FD  837C0600          cmp word [si+0x6],byte +0x0
0000A301  7507              jnz 0xa30a
0000A303  FF7408            push word [si+0x8]
0000A306  E86600            call word 0xa36f
0000A309  5B                pop bx
0000A30A  B8F3FF            mov ax,0xfff3
0000A30D  EB02              jmp short 0xa311
0000A30F  31C0              xor ax,ax
0000A311  E9990B            jmp word 0xaead
0000A314  55                push bp
0000A315  89E5              mov bp,sp
0000A317  8B5E06            mov bx,[bp+0x6]
0000A31A  FF7704            push word [bx+0x4]
0000A31D  E8E7F9            call word 0x9d07
0000A320  5B                pop bx
0000A321  09C0              or ax,ax
0000A323  7505              jnz 0xa32a
0000A325  B8FAFF            mov ax,0xfffa
0000A328  EB20              jmp short 0xa34a
0000A32A  8B1EEC45          mov bx,[0x45ec]
0000A32E  8B5706            mov dx,[bx+0x6]
0000A331  83EA01            sub dx,byte +0x1
0000A334  895706            mov [bx+0x6],dx
0000A337  8B1EEC45          mov bx,[0x45ec]
0000A33B  837F0600          cmp word [bx+0x6],byte +0x0
0000A33F  7507              jnz 0xa348
0000A341  FF7708            push word [bx+0x8]
0000A344  E82800            call word 0xa36f
0000A347  5B                pop bx
0000A348  31C0              xor ax,ax
0000A34A  E9620B            jmp word 0xaeaf
0000A34D  55                push bp
0000A34E  89E5              mov bp,sp
0000A350  56                push si
0000A351  BE7C44            mov si,0x447c
0000A354  81FEEC45          cmp si,0x45ec
0000A358  7312              jnc 0xa36c
0000A35A  837C0600          cmp word [si+0x6],byte +0x0
0000A35E  7407              jz 0xa367
0000A360  FF7408            push word [si+0x8]
0000A363  E80900            call word 0xa36f
0000A366  5B                pop bx
0000A367  83C65C            add si,byte +0x5c
0000A36A  EBE8              jmp short 0xa354
0000A36C  E93F0B            jmp word 0xaeae
0000A36F  55                push bp
0000A370  89E5              mov bp,sp
0000A372  C606EE6021        mov byte [0x60ee],0x21
0000A377  C606FB603E        mov byte [0x60fb],0x3e
0000A37C  8B5604            mov dx,[bp+0x4]
0000A37F  8916FE60          mov [0x60fe],dx
0000A383  B8D507            mov ax,0x7d5
0000A386  50                push ax
0000A387  E86968            call word 0xbf3
0000A38A  5B                pop bx
0000A38B  E9210B            jmp word 0xaeaf
0000A38E  55                push bp
0000A38F  89E5              mov bp,sp
0000A391  56                push si
0000A392  57                push di
0000A393  BE6C16            mov si,0x166c
0000A396  81FE8C16          cmp si,0x168c
0000A39A  7311              jnc 0xa3ad
0000A39C  8B5604            mov dx,[bp+0x4]
0000A39F  3914              cmp [si],dx
0000A3A1  7505              jnz 0xa3a8
0000A3A3  8B4402            mov ax,[si+0x2]
0000A3A6  EB36              jmp short 0xa3de
0000A3A8  83C604            add si,byte +0x4
0000A3AB  EBE9              jmp short 0xa396
0000A3AD  BF9716            mov di,0x1697
0000A3B0  B90A00            mov cx,0xa
0000A3B3  8B4604            mov ax,[bp+0x4]
0000A3B6  31D2              xor dx,dx
0000A3B8  F7F1              div cx
0000A3BA  83C230            add dx,byte +0x30
0000A3BD  89D0              mov ax,dx
0000A3BF  98                cbw
0000A3C0  4F                dec di
0000A3C1  8805              mov [di],al
0000A3C3  8B4604            mov ax,[bp+0x4]
0000A3C6  31D2              xor dx,dx
0000A3C8  F7F1              div cx
0000A3CA  894604            mov [bp+0x4],ax
0000A3CD  09C0              or ax,ax
0000A3CF  75DF              jnz 0xa3b0
0000A3D1  57                push di
0000A3D2  B89216            mov ax,0x1692
0000A3D5  50                push ax
0000A3D6  E8C807            call word 0xaba1
0000A3D9  5B                pop bx
0000A3DA  5B                pop bx
0000A3DB  B88C16            mov ax,0x168c
0000A3DE  E9CC0A            jmp word 0xaead
0000A3E1  55                push bp
0000A3E2  89E5              mov bp,sp
0000A3E4  8B1EEC45          mov bx,[0x45ec]
0000A3E8  83C314            add bx,byte +0x14
0000A3EB  B90800            mov cx,0x8
0000A3EE  E8890A            call word 0xae7a
0000A3F1  E82406            call word 0xaa18
0000A3F4  83C408            add sp,byte +0x8
0000A3F7  8B1EEC45          mov bx,[0x45ec]
0000A3FB  52                push dx
0000A3FC  50                push ax
0000A3FD  31C0              xor ax,ax
0000A3FF  50                push ax
0000A400  FF7704            push word [bx+0x4]
0000A403  E80F0A            call word 0xae15
0000A406  B90600            mov cx,0x6
0000A409  E306              jcxz 0xa411
0000A40B  D1EA              shr dx,1
0000A40D  D1D8              rcr ax,1
0000A40F  E2FA              loop 0xa40b
0000A411  8B5E04            mov bx,[bp+0x4]
0000A414  894710            mov [bx+0x10],ax
0000A417  8B5E04            mov bx,[bp+0x4]
0000A41A  C747124000        mov word [bx+0x12],0x40
0000A41F  8B1EEC45          mov bx,[0x45ec]
0000A423  B90900            mov cx,0x9
0000A426  8B5704            mov dx,[bx+0x4]
0000A429  D3EA              shr dx,cl
0000A42B  8B5E04            mov bx,[bp+0x4]
0000A42E  895714            mov [bx+0x14],dx
0000A431  E97B0A            jmp word 0xaeaf
0000A434  55                push bp
0000A435  89E5              mov bp,sp
0000A437  83EC28            sub sp,byte +0x28
0000A43A  56                push si
0000A43B  57                push di
0000A43C  8D7E06            lea di,[bp+0x6]
0000A43F  8B5E04            mov bx,[bp+0x4]
0000A442  FF4604            inc word [bp+0x4]
0000A445  8A07              mov al,[bx]
0000A447  98                cbw
0000A448  89C6              mov si,ax
0000A44A  09C0              or ax,ax
0000A44C  7503              jnz 0xa451
0000A44E  E9E402            jmp word 0xa735
0000A451  83FE25            cmp si,byte +0x25
0000A454  7407              jz 0xa45d
0000A456  56                push si
0000A457  E82CB0            call word 0x5486
0000A45A  5B                pop bx
0000A45B  EBE2              jmp short 0xa43f
0000A45D  8B5E04            mov bx,[bp+0x4]
0000A460  FF4604            inc word [bp+0x4]
0000A463  8A07              mov al,[bx]
0000A465  98                cbw
0000A466  89C6              mov si,ax
0000A468  C746FC0100        mov word [bp-0x4],0x1
0000A46D  83FE2D            cmp si,byte +0x2d
0000A470  7510              jnz 0xa482
0000A472  C746FC0000        mov word [bp-0x4],0x0
0000A477  8B5E04            mov bx,[bp+0x4]
0000A47A  FF4604            inc word [bp+0x4]
0000A47D  8A07              mov al,[bx]
0000A47F  98                cbw
0000A480  89C6              mov si,ax
0000A482  C746F82000        mov word [bp-0x8],0x20
0000A487  83FE30            cmp si,byte +0x30
0000A48A  7510              jnz 0xa49c
0000A48C  C746F83000        mov word [bp-0x8],0x30
0000A491  8B5E04            mov bx,[bp+0x4]
0000A494  FF4604            inc word [bp+0x4]
0000A497  8A07              mov al,[bx]
0000A499  98                cbw
0000A49A  89C6              mov si,ax
0000A49C  C746F60000        mov word [bp-0xa],0x0
0000A4A1  83FE2A            cmp si,byte +0x2a
0000A4A4  7518              jnz 0xa4be
0000A4A6  8D5D02            lea bx,[di+0x2]
0000A4A9  89DF              mov di,bx
0000A4AB  8B57FE            mov dx,[bx-0x2]
0000A4AE  8956F6            mov [bp-0xa],dx
0000A4B1  8B5E04            mov bx,[bp+0x4]
0000A4B4  FF4604            inc word [bp+0x4]
0000A4B7  8A07              mov al,[bx]
0000A4B9  98                cbw
0000A4BA  89C6              mov si,ax
0000A4BC  EB2D              jmp short 0xa4eb
0000A4BE  89F2              mov dx,si
0000A4C0  83EA30            sub dx,byte +0x30
0000A4C3  83FA0A            cmp dx,byte +0xa
0000A4C6  7323              jnc 0xa4eb
0000A4C8  B80A00            mov ax,0xa
0000A4CB  F766F6            mul word [bp-0xa]
0000A4CE  89F2              mov dx,si
0000A4D0  83EA30            sub dx,byte +0x30
0000A4D3  01C2              add dx,ax
0000A4D5  8956F6            mov [bp-0xa],dx
0000A4D8  8B5E04            mov bx,[bp+0x4]
0000A4DB  FF4604            inc word [bp+0x4]
0000A4DE  8A07              mov al,[bx]
0000A4E0  98                cbw
0000A4E1  89C6              mov si,ax
0000A4E3  2D3000            sub ax,0x30
0000A4E6  3D0A00            cmp ax,0xa
0000A4E9  72DD              jc 0xa4c8
0000A4EB  C746F4FF7F        mov word [bp-0xc],0x7fff
0000A4F0  83FE2E            cmp si,byte +0x2e
0000A4F3  755A              jnz 0xa54f
0000A4F5  8B5E04            mov bx,[bp+0x4]
0000A4F8  FF4604            inc word [bp+0x4]
0000A4FB  8A07              mov al,[bx]
0000A4FD  98                cbw
0000A4FE  89C6              mov si,ax
0000A500  3D2A00            cmp ax,0x2a
0000A503  7518              jnz 0xa51d
0000A505  8D5D02            lea bx,[di+0x2]
0000A508  89DF              mov di,bx
0000A50A  8B57FE            mov dx,[bx-0x2]
0000A50D  8956F4            mov [bp-0xc],dx
0000A510  8B5E04            mov bx,[bp+0x4]
0000A513  FF4604            inc word [bp+0x4]
0000A516  8A07              mov al,[bx]
0000A518  98                cbw
0000A519  89C6              mov si,ax
0000A51B  EB32              jmp short 0xa54f
0000A51D  89F2              mov dx,si
0000A51F  83EA30            sub dx,byte +0x30
0000A522  83FA0A            cmp dx,byte +0xa
0000A525  7328              jnc 0xa54f
0000A527  C746F40000        mov word [bp-0xc],0x0
0000A52C  B80A00            mov ax,0xa
0000A52F  F766F4            mul word [bp-0xc]
0000A532  89F2              mov dx,si
0000A534  83EA30            sub dx,byte +0x30
0000A537  01C2              add dx,ax
0000A539  8956F4            mov [bp-0xc],dx
0000A53C  8B5E04            mov bx,[bp+0x4]
0000A53F  FF4604            inc word [bp+0x4]
0000A542  8A07              mov al,[bx]
0000A544  98                cbw
0000A545  89C6              mov si,ax
0000A547  2D3000            sub ax,0x30
0000A54A  3D0A00            cmp ax,0xa
0000A54D  72DD              jc 0xa52c
0000A54F  C746EE3217        mov word [bp-0x12],0x1732
0000A554  31C0              xor ax,ax
0000A556  8946E8            mov [bp-0x18],ax
0000A559  8946EA            mov [bp-0x16],ax
0000A55C  C746F00A00        mov word [bp-0x10],0xa
0000A561  C746FA0100        mov word [bp-0x6],0x1
0000A566  83FE6C            cmp si,byte +0x6c
0000A569  7405              jz 0xa570
0000A56B  83FE4C            cmp si,byte +0x4c
0000A56E  7510              jnz 0xa580
0000A570  C746FA0000        mov word [bp-0x6],0x0
0000A575  8B5E04            mov bx,[bp+0x4]
0000A578  FF4604            inc word [bp+0x4]
0000A57B  8A07              mov al,[bx]
0000A57D  98                cbw
0000A57E  89C6              mov si,ax
0000A580  09F6              or si,si
0000A582  7403              jz 0xa587
0000A584  E9A601            jmp word 0xa72d
0000A587  E9AB01            jmp word 0xa735
0000A58A  837EFA00          cmp word [bp-0x6],byte +0x0
0000A58E  750D              jnz 0xa59d
0000A590  8D5D04            lea bx,[di+0x4]
0000A593  89DF              mov di,bx
0000A595  FF77FE            push word [bx-0x2]
0000A598  FF77FC            push word [bx-0x4]
0000A59B  EB0B              jmp short 0xa5a8
0000A59D  8D5D02            lea bx,[di+0x2]
0000A5A0  89DF              mov di,bx
0000A5A2  8B47FE            mov ax,[bx-0x2]
0000A5A5  99                cwd
0000A5A6  52                push dx
0000A5A7  50                push ax
0000A5A8  5A                pop dx
0000A5A9  59                pop cx
0000A5AA  8956E8            mov [bp-0x18],dx
0000A5AD  894EEA            mov [bp-0x16],cx
0000A5B0  09C9              or cx,cx
0000A5B2  7D0B              jnl 0xa5bf
0000A5B4  F7D9              neg cx
0000A5B6  F7DA              neg dx
0000A5B8  83D900            sbb cx,byte +0x0
0000A5BB  51                push cx
0000A5BC  52                push dx
0000A5BD  EB06              jmp short 0xa5c5
0000A5BF  FF76EA            push word [bp-0x16]
0000A5C2  FF76E8            push word [bp-0x18]
0000A5C5  8F46E4            pop word [bp-0x1c]
0000A5C8  8F46E6            pop word [bp-0x1a]
0000A5CB  EB35              jmp short 0xa602
0000A5CD  C746F00800        mov word [bp-0x10],0x8
0000A5D2  EB0A              jmp short 0xa5de
0000A5D4  C746EE2017        mov word [bp-0x12],0x1720
0000A5D9  C746F01000        mov word [bp-0x10],0x10
0000A5DE  837EFA00          cmp word [bp-0x6],byte +0x0
0000A5E2  750D              jnz 0xa5f1
0000A5E4  8D5D04            lea bx,[di+0x4]
0000A5E7  89DF              mov di,bx
0000A5E9  FF77FE            push word [bx-0x2]
0000A5EC  FF77FC            push word [bx-0x4]
0000A5EF  EB0B              jmp short 0xa5fc
0000A5F1  8D5D02            lea bx,[di+0x2]
0000A5F4  89DF              mov di,bx
0000A5F6  31C0              xor ax,ax
0000A5F8  50                push ax
0000A5F9  FF77FE            push word [bx-0x2]
0000A5FC  8F46E4            pop word [bp-0x1c]
0000A5FF  8F46E6            pop word [bp-0x1a]
0000A602  8D5EE3            lea bx,[bp-0x1d]
0000A605  895EEC            mov [bp-0x14],bx
0000A608  C60700            mov byte [bx],0x0
0000A60B  8B46F0            mov ax,[bp-0x10]
0000A60E  99                cwd
0000A60F  FF76EE            push word [bp-0x12]
0000A612  FF76E6            push word [bp-0x1a]
0000A615  FF76E4            push word [bp-0x1c]
0000A618  52                push dx
0000A619  50                push ax
0000A61A  E89A08            call word 0xaeb7
0000A61D  5B                pop bx
0000A61E  01C3              add bx,ax
0000A620  31C0              xor ax,ax
0000A622  8A07              mov al,[bx]
0000A624  50                push ax
0000A625  FF4EEC            dec word [bp-0x14]
0000A628  8B5EEC            mov bx,[bp-0x14]
0000A62B  5A                pop dx
0000A62C  8817              mov [bx],dl
0000A62E  8B46F0            mov ax,[bp-0x10]
0000A631  99                cwd
0000A632  FF76E6            push word [bp-0x1a]
0000A635  FF76E4            push word [bp-0x1c]
0000A638  52                push dx
0000A639  50                push ax
0000A63A  E8D807            call word 0xae15
0000A63D  8946E4            mov [bp-0x1c],ax
0000A640  8956E6            mov [bp-0x1a],dx
0000A643  09C2              or dx,ax
0000A645  75C4              jnz 0xa60b
0000A647  EB36              jmp short 0xa67f
0000A649  8D5ED8            lea bx,[bp-0x28]
0000A64C  895EEC            mov [bp-0x14],bx
0000A64F  8D5D02            lea bx,[di+0x2]
0000A652  89DF              mov di,bx
0000A654  FF77FE            push word [bx-0x2]
0000A657  8B5EEC            mov bx,[bp-0x14]
0000A65A  5A                pop dx
0000A65B  8817              mov [bx],dl
0000A65D  C746F20100        mov word [bp-0xe],0x1
0000A662  EB38              jmp short 0xa69c
0000A664  8D5ED8            lea bx,[bp-0x28]
0000A667  895EEC            mov [bp-0x14],bx
0000A66A  C60725            mov byte [bx],0x25
0000A66D  C746F20100        mov word [bp-0xe],0x1
0000A672  EB28              jmp short 0xa69c
0000A674  8D5D02            lea bx,[di+0x2]
0000A677  89DF              mov di,bx
0000A679  8B57FE            mov dx,[bx-0x2]
0000A67C  8956EC            mov [bp-0x14],dx
0000A67F  C746F20000        mov word [bp-0xe],0x0
0000A684  8B5EEC            mov bx,[bp-0x14]
0000A687  035EF2            add bx,[bp-0xe]
0000A68A  803F00            cmp byte [bx],0x0
0000A68D  740D              jz 0xa69c
0000A68F  8B56F4            mov dx,[bp-0xc]
0000A692  3956F2            cmp [bp-0xe],dx
0000A695  7D05              jnl 0xa69c
0000A697  FF46F2            inc word [bp-0xe]
0000A69A  EBE8              jmp short 0xa684
0000A69C  8B56F6            mov dx,[bp-0xa]
0000A69F  2B56F2            sub dx,[bp-0xe]
0000A6A2  8956F6            mov [bp-0xa],dx
0000A6A5  837EEA00          cmp word [bp-0x16],byte +0x0
0000A6A9  7D03              jnl 0xa6ae
0000A6AB  FF4EF6            dec word [bp-0xa]
0000A6AE  837EF830          cmp word [bp-0x8],byte +0x30
0000A6B2  750E              jnz 0xa6c2
0000A6B4  837EEA00          cmp word [bp-0x16],byte +0x0
0000A6B8  7D08              jnl 0xa6c2
0000A6BA  B82D00            mov ax,0x2d
0000A6BD  50                push ax
0000A6BE  E8C5AD            call word 0x5486
0000A6C1  5B                pop bx
0000A6C2  837EFC01          cmp word [bp-0x4],byte +0x1
0000A6C6  7512              jnz 0xa6da
0000A6C8  837EF600          cmp word [bp-0xa],byte +0x0
0000A6CC  7E0C              jng 0xa6da
0000A6CE  FF76F8            push word [bp-0x8]
0000A6D1  E8B2AD            call word 0x5486
0000A6D4  5B                pop bx
0000A6D5  FF4EF6            dec word [bp-0xa]
0000A6D8  EBEE              jmp short 0xa6c8
0000A6DA  837EF820          cmp word [bp-0x8],byte +0x20
0000A6DE  750E              jnz 0xa6ee
0000A6E0  837EEA00          cmp word [bp-0x16],byte +0x0
0000A6E4  7D08              jnl 0xa6ee
0000A6E6  B82D00            mov ax,0x2d
0000A6E9  50                push ax
0000A6EA  E899AD            call word 0x5486
0000A6ED  5B                pop bx
0000A6EE  837EF200          cmp word [bp-0xe],byte +0x0
0000A6F2  7E14              jng 0xa708
0000A6F4  8B5EEC            mov bx,[bp-0x14]
0000A6F7  FF46EC            inc word [bp-0x14]
0000A6FA  31C0              xor ax,ax
0000A6FC  8A07              mov al,[bx]
0000A6FE  50                push ax
0000A6FF  E884AD            call word 0x5486
0000A702  5B                pop bx
0000A703  FF4EF2            dec word [bp-0xe]
0000A706  EBE6              jmp short 0xa6ee
0000A708  837EF600          cmp word [bp-0xa],byte +0x0
0000A70C  7F03              jg 0xa711
0000A70E  E92EFD            jmp word 0xa43f
0000A711  FF76F8            push word [bp-0x8]
0000A714  E86FAD            call word 0x5486
0000A717  5B                pop bx
0000A718  FF4EF6            dec word [bp-0xa]
0000A71B  EBEB              jmp short 0xa708
0000A71D  B82500            mov ax,0x25
0000A720  50                push ax
0000A721  E862AD            call word 0x5486
0000A724  5B                pop bx
0000A725  56                push si
0000A726  E85DAD            call word 0x5486
0000A729  5B                pop bx
0000A72A  E912FD            jmp word 0xa43f
0000A72D  BB4417            mov bx,0x1744
0000A730  89F0              mov ax,si
0000A732  E93306            jmp word 0xad68
0000A735  31C0              xor ax,ax
0000A737  50                push ax
0000A738  E84BAD            call word 0x5486
0000A73B  5B                pop bx
0000A73C  31C0              xor ax,ax
0000A73E  E96C07            jmp word 0xaead
0000A741  55                push bp
0000A742  89E5              mov bp,sp
0000A744  56                push si
0000A745  8B7604            mov si,[bp+0x4]
0000A748  B80A00            mov ax,0xa
0000A74B  50                push ax
0000A74C  31C0              xor ax,ax
0000A74E  50                push ax
0000A74F  56                push si
0000A750  E80600            call word 0xa759
0000A753  83C406            add sp,byte +0x6
0000A756  E95507            jmp word 0xaeae
0000A759  55                push bp
0000A75A  89E5              mov bp,sp
0000A75C  56                push si
0000A75D  8B7604            mov si,[bp+0x4]
0000A760  B80100            mov ax,0x1
0000A763  50                push ax
0000A764  FF7608            push word [bp+0x8]
0000A767  FF7606            push word [bp+0x6]
0000A76A  56                push si
0000A76B  E82000            call word 0xa78e
0000A76E  83C408            add sp,byte +0x8
0000A771  E93A07            jmp word 0xaeae
0000A774  55                push bp
0000A775  89E5              mov bp,sp
0000A777  56                push si
0000A778  8B7604            mov si,[bp+0x4]
0000A77B  31C0              xor ax,ax
0000A77D  50                push ax
0000A77E  FF7608            push word [bp+0x8]
0000A781  FF7606            push word [bp+0x6]
0000A784  56                push si
0000A785  E80600            call word 0xa78e
0000A788  83C408            add sp,byte +0x8
0000A78B  E92007            jmp word 0xaeae
0000A78E  55                push bp
0000A78F  89E5              mov bp,sp
0000A791  83EC10            sub sp,byte +0x10
0000A794  56                push si
0000A795  57                push di
0000A796  8B7604            mov si,[bp+0x4]
0000A799  31C0              xor ax,ax
0000A79B  8946FA            mov [bp-0x6],ax
0000A79E  8946FC            mov [bp-0x4],ax
0000A7A1  C746F60000        mov word [bp-0xa],0x0
0000A7A6  C746F40100        mov word [bp-0xc],0x1
0000A7AB  8976F2            mov [bp-0xe],si
0000A7AE  837E0600          cmp word [bp+0x6],byte +0x0
0000A7B2  7405              jz 0xa7b9
0000A7B4  8B5E06            mov bx,[bp+0x6]
0000A7B7  8937              mov [bx],si
0000A7B9  8A04              mov al,[si]
0000A7BB  98                cbw
0000A7BC  89C3              mov bx,ax
0000A7BE  F6876F1708        test byte [bx+0x176f],0x8
0000A7C3  7403              jz 0xa7c8
0000A7C5  46                inc si
0000A7C6  EBF1              jmp short 0xa7b9
0000A7C8  8A04              mov al,[si]
0000A7CA  98                cbw
0000A7CB  89C7              mov di,ax
0000A7CD  83FF2D            cmp di,byte +0x2d
0000A7D0  7405              jz 0xa7d7
0000A7D2  83FF2B            cmp di,byte +0x2b
0000A7D5  750B              jnz 0xa7e2
0000A7D7  83FF2D            cmp di,byte +0x2d
0000A7DA  7505              jnz 0xa7e1
0000A7DC  C746F4FFFF        mov word [bp-0xc],0xffff
0000A7E1  46                inc si
0000A7E2  8976F0            mov [bp-0x10],si
0000A7E5  837E0800          cmp word [bp+0x8],byte +0x0
0000A7E9  7526              jnz 0xa811
0000A7EB  803C30            cmp byte [si],0x30
0000A7EE  751A              jnz 0xa80a
0000A7F0  46                inc si
0000A7F1  803C78            cmp byte [si],0x78
0000A7F4  7405              jz 0xa7fb
0000A7F6  803C58            cmp byte [si],0x58
0000A7F9  7508              jnz 0xa803
0000A7FB  C746081000        mov word [bp+0x8],0x10
0000A800  46                inc si
0000A801  EB25              jmp short 0xa828
0000A803  C746080800        mov word [bp+0x8],0x8
0000A808  EB1E              jmp short 0xa828
0000A80A  C746080A00        mov word [bp+0x8],0xa
0000A80F  EB17              jmp short 0xa828
0000A811  837E0810          cmp word [bp+0x8],byte +0x10
0000A815  7511              jnz 0xa828
0000A817  803C30            cmp byte [si],0x30
0000A81A  750C              jnz 0xa828
0000A81C  46                inc si
0000A81D  803C78            cmp byte [si],0x78
0000A820  7405              jz 0xa827
0000A822  803C58            cmp byte [si],0x58
0000A825  7501              jnz 0xa828
0000A827  46                inc si
0000A828  8A04              mov al,[si]
0000A82A  98                cbw
0000A82B  89C7              mov di,ax
0000A82D  89FA              mov dx,di
0000A82F  83EA30            sub dx,byte +0x30
0000A832  83FA09            cmp dx,byte +0x9
0000A835  770A              ja 0xa841
0000A837  89FA              mov dx,di
0000A839  83EA30            sub dx,byte +0x30
0000A83C  8956FE            mov [bp-0x2],dx
0000A83F  EB26              jmp short 0xa867
0000A841  89FA              mov dx,di
0000A843  83EA61            sub dx,byte +0x61
0000A846  83FA19            cmp dx,byte +0x19
0000A849  770A              ja 0xa855
0000A84B  89FA              mov dx,di
0000A84D  83EA57            sub dx,byte +0x57
0000A850  8956FE            mov [bp-0x2],dx
0000A853  EB12              jmp short 0xa867
0000A855  89FA              mov dx,di
0000A857  83EA41            sub dx,byte +0x41
0000A85A  83FA19            cmp dx,byte +0x19
0000A85D  7755              ja 0xa8b4
0000A85F  89FA              mov dx,di
0000A861  83EA37            sub dx,byte +0x37
0000A864  8956FE            mov [bp-0x2],dx
0000A867  8B56FE            mov dx,[bp-0x2]
0000A86A  395608            cmp [bp+0x8],dx
0000A86D  7645              jna 0xa8b4
0000A86F  BAFFFF            mov dx,0xffff
0000A872  B9FFFF            mov cx,0xffff
0000A875  2B56FE            sub dx,[bp-0x2]
0000A878  83D900            sbb cx,byte +0x0
0000A87B  8B4608            mov ax,[bp+0x8]
0000A87E  51                push cx
0000A87F  52                push dx
0000A880  99                cwd
0000A881  52                push dx
0000A882  50                push ax
0000A883  E88F05            call word 0xae15
0000A886  3956FC            cmp [bp-0x4],dx
0000A889  720A              jc 0xa895
0000A88B  7505              jnz 0xa892
0000A88D  3946FA            cmp [bp-0x6],ax
0000A890  7603              jna 0xa895
0000A892  FF46F6            inc word [bp-0xa]
0000A895  8B4608            mov ax,[bp+0x8]
0000A898  99                cwd
0000A899  52                push dx
0000A89A  50                push ax
0000A89B  8B46FA            mov ax,[bp-0x6]
0000A89E  8B56FC            mov dx,[bp-0x4]
0000A8A1  E8EB05            call word 0xae8f
0000A8A4  0346FE            add ax,[bp-0x2]
0000A8A7  83D200            adc dx,byte +0x0
0000A8AA  8946FA            mov [bp-0x6],ax
0000A8AD  8956FC            mov [bp-0x4],dx
0000A8B0  46                inc si
0000A8B1  E974FF            jmp word 0xa828
0000A8B4  837E0600          cmp word [bp+0x6],byte +0x0
0000A8B8  7414              jz 0xa8ce
0000A8BA  3976F0            cmp [bp-0x10],si
0000A8BD  750A              jnz 0xa8c9
0000A8BF  8B56F2            mov dx,[bp-0xe]
0000A8C2  8B5E06            mov bx,[bp+0x6]
0000A8C5  8917              mov [bx],dx
0000A8C7  EB05              jmp short 0xa8ce
0000A8C9  8B5E06            mov bx,[bp+0x6]
0000A8CC  8937              mov [bx],si
0000A8CE  837EF600          cmp word [bp-0xa],byte +0x0
0000A8D2  7533              jnz 0xa907
0000A8D4  837E0A00          cmp word [bp+0xa],byte +0x0
0000A8D8  742D              jz 0xa907
0000A8DA  837EF400          cmp word [bp-0xc],byte +0x0
0000A8DE  7D0F              jnl 0xa8ef
0000A8E0  817EFC0080        cmp word [bp-0x4],0x8000
0000A8E5  771D              ja 0xa904
0000A8E7  7506              jnz 0xa8ef
0000A8E9  837EFA00          cmp word [bp-0x6],byte +0x0
0000A8ED  7715              ja 0xa904
0000A8EF  837EF400          cmp word [bp-0xc],byte +0x0
0000A8F3  7E12              jng 0xa907
0000A8F5  817EFCFF7F        cmp word [bp-0x4],0x7fff
0000A8FA  720B              jc 0xa907
0000A8FC  7506              jnz 0xa904
0000A8FE  837EFAFF          cmp word [bp-0x6],byte -0x1
0000A902  7603              jna 0xa907
0000A904  FF46F6            inc word [bp-0xa]
0000A907  837EF600          cmp word [bp-0xa],byte +0x0
0000A90B  742F              jz 0xa93c
0000A90D  C7066C172200      mov word [0x176c],0x22
0000A913  837E0A00          cmp word [bp+0xa],byte +0x0
0000A917  7419              jz 0xa932
0000A919  837EF400          cmp word [bp-0xc],byte +0x0
0000A91D  7D09              jnl 0xa928
0000A91F  B80080            mov ax,0x8000
0000A922  50                push ax
0000A923  31C0              xor ax,ax
0000A925  50                push ax
0000A926  EB25              jmp short 0xa94d
0000A928  B8FF7F            mov ax,0x7fff
0000A92B  50                push ax
0000A92C  B8FFFF            mov ax,0xffff
0000A92F  50                push ax
0000A930  EB1B              jmp short 0xa94d
0000A932  B8FFFF            mov ax,0xffff
0000A935  50                push ax
0000A936  B8FFFF            mov ax,0xffff
0000A939  50                push ax
0000A93A  EB11              jmp short 0xa94d
0000A93C  8B46F4            mov ax,[bp-0xc]
0000A93F  99                cwd
0000A940  52                push dx
0000A941  50                push ax
0000A942  8B46FA            mov ax,[bp-0x6]
0000A945  8B56FC            mov dx,[bp-0x4]
0000A948  E84405            call word 0xae8f
0000A94B  52                push dx
0000A94C  50                push ax
0000A94D  58                pop ax
0000A94E  5A                pop dx
0000A94F  E95B05            jmp word 0xaead
0000A952  E96C02            jmp word 0xabc1
0000A955  00E9              add cl,ch
0000A957  D6                salc
0000A958  0200              add al,[bx+si]
0000A95A  E9F802            jmp word 0xac55
0000A95D  005589            add [di-0x77],dl
0000A960  E531              in ax,0x31
0000A962  C9                leave
0000A963  EB06              jmp short 0xa96b
0000A965  55                push bp
0000A966  89E5              mov bp,sp
0000A968  8B4E10            mov cx,[bp+0x10]
0000A96B  8B5E04            mov bx,[bp+0x4]
0000A96E  8B4606            mov ax,[bp+0x6]
0000A971  03460E            add ax,[bp+0xe]
0000A974  8907              mov [bx],ax
0000A976  8B4608            mov ax,[bp+0x8]
0000A979  11C8              adc ax,cx
0000A97B  894702            mov [bx+0x2],ax
0000A97E  8B460A            mov ax,[bp+0xa]
0000A981  150000            adc ax,0x0
0000A984  894704            mov [bx+0x4],ax
0000A987  8B460C            mov ax,[bp+0xc]
0000A98A  150000            adc ax,0x0
0000A98D  894706            mov [bx+0x6],ax
0000A990  89D8              mov ax,bx
0000A992  5D                pop bp
0000A993  C3                ret
0000A994  89E3              mov bx,sp
0000A996  31C0              xor ax,ax
0000A998  8B5702            mov dx,[bx+0x2]
0000A99B  2B570A            sub dx,[bx+0xa]
0000A99E  8B5704            mov dx,[bx+0x4]
0000A9A1  1B570C            sbb dx,[bx+0xc]
0000A9A4  8B5706            mov dx,[bx+0x6]
0000A9A7  1B570E            sbb dx,[bx+0xe]
0000A9AA  8B5708            mov dx,[bx+0x8]
0000A9AD  1B5710            sbb dx,[bx+0x10]
0000A9B0  19C0              sbb ax,ax
0000A9B2  8B570A            mov dx,[bx+0xa]
0000A9B5  2B5702            sub dx,[bx+0x2]
0000A9B8  8B570C            mov dx,[bx+0xc]
0000A9BB  1B5704            sbb dx,[bx+0x4]
0000A9BE  8B570E            mov dx,[bx+0xe]
0000A9C1  1B5706            sbb dx,[bx+0x6]
0000A9C4  8B5710            mov dx,[bx+0x10]
0000A9C7  1B5708            sbb dx,[bx+0x8]
0000A9CA  150000            adc ax,0x0
0000A9CD  C3                ret
0000A9CE  89E3              mov bx,sp
0000A9D0  FF7710            push word [bx+0x10]
0000A9D3  C747100000        mov word [bx+0x10],0x0
0000A9D8  FF770E            push word [bx+0xe]
0000A9DB  C7470E0000        mov word [bx+0xe],0x0
0000A9E0  FF770C            push word [bx+0xc]
0000A9E3  C7470C0000        mov word [bx+0xc],0x0
0000A9E8  E8ABFF            call word 0xa996
0000A9EB  8F470C            pop word [bx+0xc]
0000A9EE  8F470E            pop word [bx+0xe]
0000A9F1  8F4710            pop word [bx+0x10]
0000A9F4  C3                ret
0000A9F5  89E3              mov bx,sp
0000A9F7  FF770E            push word [bx+0xe]
0000A9FA  C7470E0000        mov word [bx+0xe],0x0
0000A9FF  FF770C            push word [bx+0xc]
0000AA02  C7470C0000        mov word [bx+0xc],0x0
0000AA07  E88CFF            call word 0xa996
0000AA0A  8F470C            pop word [bx+0xc]
0000AA0D  8F470E            pop word [bx+0xe]
0000AA10  C3                ret
0000AA11  89E3              mov bx,sp
0000AA13  8B4F04            mov cx,[bx+0x4]
0000AA16  EB04              jmp short 0xaa1c
0000AA18  89E3              mov bx,sp
0000AA1A  31C9              xor cx,cx
0000AA1C  8B4702            mov ax,[bx+0x2]
0000AA1F  8B5704            mov dx,[bx+0x4]
0000AA22  0B4F06            or cx,[bx+0x6]
0000AA25  0B4F08            or cx,[bx+0x8]
0000AA28  7405              jz 0xaa2f
0000AA2A  B8FFFF            mov ax,0xffff
0000AA2D  89C2              mov dx,ax
0000AA2F  C3                ret
0000AA30  89E3              mov bx,sp
0000AA32  31D2              xor dx,dx
0000AA34  EB05              jmp short 0xaa3b
0000AA36  89E3              mov bx,sp
0000AA38  8B5706            mov dx,[bx+0x6]
0000AA3B  8B4704            mov ax,[bx+0x4]
0000AA3E  8B5F02            mov bx,[bx+0x2]
0000AA41  8907              mov [bx],ax
0000AA43  895702            mov [bx+0x2],dx
0000AA46  C747040000        mov word [bx+0x4],0x0
0000AA4B  C747060000        mov word [bx+0x6],0x0
0000AA50  89D8              mov ax,bx
0000AA52  C3                ret
0000AA53  89E3              mov bx,sp
0000AA55  31D2              xor dx,dx
0000AA57  8B4708            mov ax,[bx+0x8]
0000AA5A  F7770A            div word [bx+0xa]
0000AA5D  8B4706            mov ax,[bx+0x6]
0000AA60  F7770A            div word [bx+0xa]
0000AA63  8B4704            mov ax,[bx+0x4]
0000AA66  F7770A            div word [bx+0xa]
0000AA69  89C1              mov cx,ax
0000AA6B  8B4702            mov ax,[bx+0x2]
0000AA6E  F7770A            div word [bx+0xa]
0000AA71  87D1              xchg dx,cx
0000AA73  C3                ret
0000AA74  89E3              mov bx,sp
0000AA76  E8DCFF            call word 0xaa55
0000AA79  89C8              mov ax,cx
0000AA7B  C3                ret
0000AA7C  55                push bp
0000AA7D  89E5              mov bp,sp
0000AA7F  8B5E04            mov bx,[bp+0x4]
0000AA82  8B4606            mov ax,[bp+0x6]
0000AA85  F7660A            mul word [bp+0xa]
0000AA88  8907              mov [bx],ax
0000AA8A  895702            mov [bx+0x2],dx
0000AA8D  8B4608            mov ax,[bp+0x8]
0000AA90  F7660A            mul word [bp+0xa]
0000AA93  014702            add [bx+0x2],ax
0000AA96  83D200            adc dx,byte +0x0
0000AA99  895704            mov [bx+0x4],dx
0000AA9C  C747060000        mov word [bx+0x6],0x0
0000AAA1  89D8              mov ax,bx
0000AAA3  5D                pop bp
0000AAA4  C3                ret
0000AAA5  55                push bp
0000AAA6  89E5              mov bp,sp
0000AAA8  8B5604            mov dx,[bp+0x4]
0000AAAB  EC                in al,dx
0000AAAC  30E4              xor ah,ah
0000AAAE  5D                pop bp
0000AAAF  C3                ret
0000AAB0  FA                cli
0000AAB1  C3                ret
0000AAB2  FB                sti
0000AAB3  C3                ret
0000AAB4  55                push bp
0000AAB5  89E5              mov bp,sp
0000AAB7  8B5604            mov dx,[bp+0x4]
0000AABA  8B4606            mov ax,[bp+0x6]
0000AABD  EE                out dx,al
0000AABE  5D                pop bp
0000AABF  C3                ret
0000AAC0  55                push bp
0000AAC1  89E5              mov bp,sp
0000AAC3  FC                cld
0000AAC4  56                push si
0000AAC5  8B5604            mov dx,[bp+0x4]
0000AAC8  8B7606            mov si,[bp+0x6]
0000AACB  8B4E08            mov cx,[bp+0x8]
0000AACE  D1E9              shr cx,1
0000AAD0  F26F              repne outsw
0000AAD2  5E                pop si
0000AAD3  5D                pop bp
0000AAD4  C3                ret
0000AAD5  B90100            mov cx,0x1
0000AAD8  EB0A              jmp short 0xaae4
0000AADA  B90200            mov cx,0x2
0000AADD  EB05              jmp short 0xaae4
0000AADF  B90300            mov cx,0x3
0000AAE2  EB00              jmp short 0xaae4
0000AAE4  55                push bp
0000AAE5  89E5              mov bp,sp
0000AAE7  8B4604            mov ax,[bp+0x4]
0000AAEA  8B5E06            mov bx,[bp+0x6]
0000AAED  CD20              int 0x20
0000AAEF  5D                pop bp
0000AAF0  C3                ret
0000AAF1  FC                cld
0000AAF2  55                push bp
0000AAF3  89E5              mov bp,sp
0000AAF5  56                push si
0000AAF6  57                push di
0000AAF7  31C0              xor ax,ax
0000AAF9  8B7604            mov si,[bp+0x4]
0000AAFC  8B7E06            mov di,[bp+0x6]
0000AAFF  8B4E08            mov cx,[bp+0x8]
0000AB02  83F910            cmp cx,byte +0x10
0000AB05  7218              jc 0xab1f
0000AB07  89F2              mov dx,si
0000AB09  09FA              or dx,di
0000AB0B  80E201            and dl,0x1
0000AB0E  750F              jnz 0xab1f
0000AB10  D1F9              sar cx,1
0000AB12  10D2              adc dl,dl
0000AB14  F3A7              repe cmpsw
0000AB16  B90200            mov cx,0x2
0000AB19  29CE              sub si,cx
0000AB1B  29CF              sub di,cx
0000AB1D  00D1              add cl,dl
0000AB1F  85C9              test cx,cx
0000AB21  F3A6              repe cmpsb
0000AB23  7406              jz 0xab2b
0000AB25  7703              ja 0xab2a
0000AB27  2D0200            sub ax,0x2
0000AB2A  40                inc ax
0000AB2B  89F2              mov dx,si
0000AB2D  5F                pop di
0000AB2E  5E                pop si
0000AB2F  5D                pop bp
0000AB30  C3                ret
0000AB31  55                push bp
0000AB32  89E5              mov bp,sp
0000AB34  56                push si
0000AB35  57                push di
0000AB36  8B7E04            mov di,[bp+0x4]
0000AB39  8B7606            mov si,[bp+0x6]
0000AB3C  8B4E08            mov cx,[bp+0x8]
0000AB3F  E96801            jmp word 0xacaa
0000AB42  55                push bp
0000AB43  89E5              mov bp,sp
0000AB45  57                push di
0000AB46  8B7E04            mov di,[bp+0x4]
0000AB49  8A4606            mov al,[bp+0x6]
0000AB4C  8B4E08            mov cx,[bp+0x8]
0000AB4F  FC                cld
0000AB50  83F910            cmp cx,byte +0x10
0000AB53  720E              jc 0xab63
0000AB55  F7C70100          test di,0x1
0000AB59  7508              jnz 0xab63
0000AB5B  88C4              mov ah,al
0000AB5D  D1F9              sar cx,1
0000AB5F  F2AB              repne stosw
0000AB61  11C9              adc cx,cx
0000AB63  F2AA              repne stosb
0000AB65  8B4604            mov ax,[bp+0x4]
0000AB68  5F                pop di
0000AB69  5D                pop bp
0000AB6A  C3                ret
0000AB6B  55                push bp
0000AB6C  89E5              mov bp,sp
0000AB6E  57                push di
0000AB6F  FC                cld
0000AB70  8B7E04            mov di,[bp+0x4]
0000AB73  BA1000            mov dx,0x10
0000AB76  D1E2              shl dx,1
0000AB78  89D1              mov cx,dx
0000AB7A  30C0              xor al,al
0000AB7C  F2AE              repne scasb
0000AB7E  9C                pushfw
0000AB7F  29D1              sub cx,dx
0000AB81  F7D9              neg cx
0000AB83  29CF              sub di,cx
0000AB85  8A4606            mov al,[bp+0x6]
0000AB88  F2AE              repne scasb
0000AB8A  7408              jz 0xab94
0000AB8C  9D                popfw
0000AB8D  75E7              jnz 0xab76
0000AB8F  31C0              xor ax,ax
0000AB91  5F                pop di
0000AB92  5D                pop bp
0000AB93  C3                ret
0000AB94  58                pop ax
0000AB95  8D45FF            lea ax,[di-0x1]
0000AB98  5F                pop di
0000AB99  5D                pop bp
0000AB9A  C3                ret
0000AB9B  B9FFFF            mov cx,0xffff
0000AB9E  E93201            jmp word 0xacd3
0000ABA1  55                push bp
0000ABA2  89E5              mov bp,sp
0000ABA4  56                push si
0000ABA5  57                push di
0000ABA6  B9FFFF            mov cx,0xffff
0000ABA9  E85101            call word 0xacfd
0000ABAC  8B4604            mov ax,[bp+0x4]
0000ABAF  5F                pop di
0000ABB0  5E                pop si
0000ABB1  5D                pop bp
0000ABB2  C3                ret
0000ABB3  B9FFFF            mov cx,0xffff
0000ABB6  E95B01            jmp word 0xad14
0000ABB9  89E3              mov bx,sp
0000ABBB  8B4F06            mov cx,[bx+0x6]
0000ABBE  E91201            jmp word 0xacd3
0000ABC1  55                push bp
0000ABC2  89E5              mov bp,sp
0000ABC4  837E0611          cmp word [bp+0x6],byte +0x11
0000ABC8  760B              jna 0xabd5
0000ABCA  C7066C171600      mov word [0x176c],0x16
0000ABD0  B8FFFF            mov ax,0xffff
0000ABD3  EB1D              jmp short 0xabf2
0000ABD5  8B4606            mov ax,[bp+0x6]
0000ABD8  99                cwd
0000ABD9  89C1              mov cx,ax
0000ABDB  BA0100            mov dx,0x1
0000ABDE  31C0              xor ax,ax
0000ABE0  E306              jcxz 0xabe8
0000ABE2  D1E2              shl dx,1
0000ABE4  D1D0              rcl ax,1
0000ABE6  E2FA              loop 0xabe2
0000ABE8  8B5E04            mov bx,[bp+0x4]
0000ABEB  0917              or [bx],dx
0000ABED  094702            or [bx+0x2],ax
0000ABF0  31C0              xor ax,ax
0000ABF2  E9BA02            jmp word 0xaeaf
0000ABF5  55                push bp
0000ABF6  89E5              mov bp,sp
0000ABF8  837E0611          cmp word [bp+0x6],byte +0x11
0000ABFC  760B              jna 0xac09
0000ABFE  C7066C171600      mov word [0x176c],0x16
0000AC04  B8FFFF            mov ax,0xffff
0000AC07  EB23              jmp short 0xac2c
0000AC09  8B4606            mov ax,[bp+0x6]
0000AC0C  99                cwd
0000AC0D  89C1              mov cx,ax
0000AC0F  BA0100            mov dx,0x1
0000AC12  31DB              xor bx,bx
0000AC14  E306              jcxz 0xac1c
0000AC16  D1E2              shl dx,1
0000AC18  D1D3              rcl bx,1
0000AC1A  E2FA              loop 0xac16
0000AC1C  F7D3              not bx
0000AC1E  F7D2              not dx
0000AC20  89D9              mov cx,bx
0000AC22  8B5E04            mov bx,[bp+0x4]
0000AC25  2117              and [bx],dx
0000AC27  214F02            and [bx+0x2],cx
0000AC2A  31C0              xor ax,ax
0000AC2C  E98002            jmp word 0xaeaf
0000AC2F  55                push bp
0000AC30  89E5              mov bp,sp
0000AC32  31C0              xor ax,ax
0000AC34  8B5E04            mov bx,[bp+0x4]
0000AC37  8907              mov [bx],ax
0000AC39  894702            mov [bx+0x2],ax
0000AC3C  31C0              xor ax,ax
0000AC3E  E96E02            jmp word 0xaeaf
0000AC41  55                push bp
0000AC42  89E5              mov bp,sp
0000AC44  8B5E04            mov bx,[bp+0x4]
0000AC47  C707FFFF          mov word [bx],0xffff
0000AC4B  C747020300        mov word [bx+0x2],0x3
0000AC50  31C0              xor ax,ax
0000AC52  E95A02            jmp word 0xaeaf
0000AC55  55                push bp
0000AC56  89E5              mov bp,sp
0000AC58  837E0611          cmp word [bp+0x6],byte +0x11
0000AC5C  760B              jna 0xac69
0000AC5E  C7066C171600      mov word [0x176c],0x16
0000AC64  B8FFFF            mov ax,0xffff
0000AC67  EB28              jmp short 0xac91
0000AC69  8B4606            mov ax,[bp+0x6]
0000AC6C  99                cwd
0000AC6D  89C1              mov cx,ax
0000AC6F  BA0100            mov dx,0x1
0000AC72  31DB              xor bx,bx
0000AC74  E306              jcxz 0xac7c
0000AC76  D1E2              shl dx,1
0000AC78  D1D3              rcl bx,1
0000AC7A  E2FA              loop 0xac76
0000AC7C  53                push bx
0000AC7D  8B5E04            mov bx,[bp+0x4]
0000AC80  59                pop cx
0000AC81  2317              and dx,[bx]
0000AC83  234F02            and cx,[bx+0x2]
0000AC86  09D1              or cx,dx
0000AC88  7405              jz 0xac8f
0000AC8A  B80100            mov ax,0x1
0000AC8D  EB02              jmp short 0xac91
0000AC8F  31C0              xor ax,ax
0000AC91  E91B02            jmp word 0xaeaf
0000AC94  55                push bp
0000AC95  89E5              mov bp,sp
0000AC97  56                push si
0000AC98  57                push di
0000AC99  8B7E04            mov di,[bp+0x4]
0000AC9C  8B7606            mov si,[bp+0x6]
0000AC9F  8B4E08            mov cx,[bp+0x8]
0000ACA2  89F8              mov ax,di
0000ACA4  29F0              sub ax,si
0000ACA6  39C8              cmp ax,cx
0000ACA8  721D              jc 0xacc7
0000ACAA  FC                cld
0000ACAB  83F910            cmp cx,byte +0x10
0000ACAE  720E              jc 0xacbe
0000ACB0  89F0              mov ax,si
0000ACB2  09F8              or ax,di
0000ACB4  A801              test al,0x1
0000ACB6  7506              jnz 0xacbe
0000ACB8  D1E9              shr cx,1
0000ACBA  F2A5              repne movsw
0000ACBC  11C9              adc cx,cx
0000ACBE  F2A4              repne movsb
0000ACC0  8B4604            mov ax,[bp+0x4]
0000ACC3  5F                pop di
0000ACC4  5E                pop si
0000ACC5  5D                pop bp
0000ACC6  C3                ret
0000ACC7  FD                std
0000ACC8  01CE              add si,cx
0000ACCA  4E                dec si
0000ACCB  01CF              add di,cx
0000ACCD  4F                dec di
0000ACCE  F2A4              repne movsb
0000ACD0  FC                cld
0000ACD1  EBED              jmp short 0xacc0
0000ACD3  55                push bp
0000ACD4  89E5              mov bp,sp
0000ACD6  56                push si
0000ACD7  57                push di
0000ACD8  31C0              xor ax,ax
0000ACDA  85C9              test cx,cx
0000ACDC  741B              jz 0xacf9
0000ACDE  8B7604            mov si,[bp+0x4]
0000ACE1  8B7E06            mov di,[bp+0x6]
0000ACE4  FC                cld
0000ACE5  A6                cmpsb
0000ACE6  750B              jnz 0xacf3
0000ACE8  807CFF00          cmp byte [si-0x1],0x0
0000ACEC  740B              jz 0xacf9
0000ACEE  49                dec cx
0000ACEF  75F4              jnz 0xace5
0000ACF1  EB06              jmp short 0xacf9
0000ACF3  7703              ja 0xacf8
0000ACF5  2D0200            sub ax,0x2
0000ACF8  40                inc ax
0000ACF9  5F                pop di
0000ACFA  5E                pop si
0000ACFB  5D                pop bp
0000ACFC  C3                ret
0000ACFD  8B7E06            mov di,[bp+0x6]
0000AD00  30C0              xor al,al
0000AD02  89CA              mov dx,cx
0000AD04  FC                cld
0000AD05  F2AE              repne scasb
0000AD07  29CA              sub dx,cx
0000AD09  87CA              xchg cx,dx
0000AD0B  8B7606            mov si,[bp+0x6]
0000AD0E  8B7E04            mov di,[bp+0x4]
0000AD11  F2A4              repne movsb
0000AD13  C3                ret
0000AD14  55                push bp
0000AD15  89E5              mov bp,sp
0000AD17  57                push di
0000AD18  8B7E04            mov di,[bp+0x4]
0000AD1B  30C0              xor al,al
0000AD1D  89CA              mov dx,cx
0000AD1F  80F901            cmp cl,0x1
0000AD22  FC                cld
0000AD23  F2AE              repne scasb
0000AD25  7501              jnz 0xad28
0000AD27  41                inc cx
0000AD28  89D0              mov ax,dx
0000AD2A  29C8              sub ax,cx
0000AD2C  5F                pop di
0000AD2D  5D                pop bp
0000AD2E  C3                ret
0000AD2F  89E3              mov bx,sp
0000AD31  89F0              mov ax,si
0000AD33  89FA              mov dx,di
0000AD35  8B7F02            mov di,[bx+0x2]
0000AD38  8B7704            mov si,[bx+0x4]
0000AD3B  F2A5              repne movsw
0000AD3D  89C6              mov si,ax
0000AD3F  89D7              mov di,dx
0000AD41  C20400            ret 0x4
0000AD44  8B17              mov dx,[bx]
0000AD46  2B4702            sub ax,[bx+0x2]
0000AD49  3B4704            cmp ax,[bx+0x4]
0000AD4C  770B              ja 0xad59
0000AD4E  D1E0              shl ax,1
0000AD50  01C3              add bx,ax
0000AD52  8B5F06            mov bx,[bx+0x6]
0000AD55  85DB              test bx,bx
0000AD57  750D              jnz 0xad66
0000AD59  89D3              mov bx,dx
0000AD5B  85DB              test bx,bx
0000AD5D  7507              jnz 0xad66
0000AD5F  B81400            mov ax,0x14
0000AD62  50                push ax
0000AD63  E94A5C            jmp word 0x9b0
0000AD66  FFE3              jmp bx
0000AD68  8B17              mov dx,[bx]
0000AD6A  8B4F02            mov cx,[bx+0x2]
0000AD6D  83C304            add bx,byte +0x4
0000AD70  49                dec cx
0000AD71  7C14              jl 0xad87
0000AD73  3B07              cmp ax,[bx]
0000AD75  75F6              jnz 0xad6d
0000AD77  8B5F02            mov bx,[bx+0x2]
0000AD7A  85DB              test bx,bx
0000AD7C  7507              jnz 0xad85
0000AD7E  B81400            mov ax,0x14
0000AD81  50                push ax
0000AD82  E92B5C            jmp word 0x9b0
0000AD85  FFE3              jmp bx
0000AD87  89D3              mov bx,dx
0000AD89  EBEF              jmp short 0xad7a
0000AD8B  56                push si
0000AD8C  57                push di
0000AD8D  89E6              mov si,sp
0000AD8F  8B5C06            mov bx,[si+0x6]
0000AD92  8B4408            mov ax,[si+0x8]
0000AD95  99                cwd
0000AD96  89D7              mov di,dx
0000AD98  39C2              cmp dx,ax
0000AD9A  7533              jnz 0xadcf
0000AD9C  21D2              and dx,dx
0000AD9E  7D04              jnl 0xada4
0000ADA0  F7DB              neg bx
0000ADA2  742B              jz 0xadcf
0000ADA4  31D2              xor dx,dx
0000ADA6  8B4C0A            mov cx,[si+0xa]
0000ADA9  8B440C            mov ax,[si+0xc]
0000ADAC  21C0              and ax,ax
0000ADAE  7D08              jnl 0xadb8
0000ADB0  F7D8              neg ax
0000ADB2  F7D9              neg cx
0000ADB4  19D0              sbb ax,dx
0000ADB6  F7D7              not di
0000ADB8  F7F3              div bx
0000ADBA  91                xchg ax,cx
0000ADBB  F7F3              div bx
0000ADBD  21FF              and di,di
0000ADBF  7D07              jnl 0xadc8
0000ADC1  F7D9              neg cx
0000ADC3  F7D8              neg ax
0000ADC5  83D900            sbb cx,byte +0x0
0000ADC8  89CA              mov dx,cx
0000ADCA  5F                pop di
0000ADCB  5E                pop si
0000ADCC  C20800            ret 0x8
0000ADCF  52                push dx
0000ADD0  89C7              mov di,ax
0000ADD2  31DB              xor bx,bx
0000ADD4  21FF              and di,di
0000ADD6  7D07              jnl 0xaddf
0000ADD8  F7DF              neg di
0000ADDA  F75C06            neg word [si+0x6]
0000ADDD  19DF              sbb di,bx
0000ADDF  8B440A            mov ax,[si+0xa]
0000ADE2  8B540C            mov dx,[si+0xc]
0000ADE5  21D2              and dx,dx
0000ADE7  7D09              jnl 0xadf2
0000ADE9  F7DA              neg dx
0000ADEB  F7D8              neg ax
0000ADED  19DA              sbb dx,bx
0000ADEF  F754FE            not word [si-0x2]
0000ADF2  B91000            mov cx,0x10
0000ADF5  D1E0              shl ax,1
0000ADF7  D1D2              rcl dx,1
0000ADF9  D1D3              rcl bx,1
0000ADFB  39DF              cmp di,bx
0000ADFD  7707              ja 0xae06
0000ADFF  7209              jc 0xae0a
0000AE01  395406            cmp [si+0x6],dx
0000AE04  7604              jna 0xae0a
0000AE06  E2ED              loop 0xadf5
0000AE08  EB08              jmp short 0xae12
0000AE0A  2B5406            sub dx,[si+0x6]
0000AE0D  19FB              sbb bx,di
0000AE0F  40                inc ax
0000AE10  E2E3              loop 0xadf5
0000AE12  5F                pop di
0000AE13  EBA8              jmp short 0xadbd
0000AE15  56                push si
0000AE16  57                push di
0000AE17  89E6              mov si,sp
0000AE19  8B5C06            mov bx,[si+0x6]
0000AE1C  8B4408            mov ax,[si+0x8]
0000AE1F  09C0              or ax,ax
0000AE21  7514              jnz 0xae37
0000AE23  31D2              xor dx,dx
0000AE25  8B4C0A            mov cx,[si+0xa]
0000AE28  8B440C            mov ax,[si+0xc]
0000AE2B  F7F3              div bx
0000AE2D  91                xchg ax,cx
0000AE2E  F7F3              div bx
0000AE30  89CA              mov dx,cx
0000AE32  5F                pop di
0000AE33  5E                pop si
0000AE34  C20800            ret 0x8
0000AE37  89C7              mov di,ax
0000AE39  31DB              xor bx,bx
0000AE3B  8B440A            mov ax,[si+0xa]
0000AE3E  8B540C            mov dx,[si+0xc]
0000AE41  B91000            mov cx,0x10
0000AE44  D1E0              shl ax,1
0000AE46  D1D2              rcl dx,1
0000AE48  D1D3              rcl bx,1
0000AE4A  39DF              cmp di,bx
0000AE4C  7707              ja 0xae55
0000AE4E  7209              jc 0xae59
0000AE50  395406            cmp [si+0x6],dx
0000AE53  7604              jna 0xae59
0000AE55  E2ED              loop 0xae44
0000AE57  EBD7              jmp short 0xae30
0000AE59  2B5406            sub dx,[si+0x6]
0000AE5C  19FB              sbb bx,di
0000AE5E  40                inc ax
0000AE5F  E2E3              loop 0xae44
0000AE61  EBCD              jmp short 0xae30
0000AE63  89F2              mov dx,si
0000AE65  89DE              mov si,bx
0000AE67  5B                pop bx
0000AE68  89C8              mov ax,cx
0000AE6A  D1F9              sar cx,1
0000AE6C  7308              jnc 0xae76
0000AE6E  30E4              xor ah,ah
0000AE70  AC                lodsb
0000AE71  89D6              mov si,dx
0000AE73  50                push ax
0000AE74  FFE3              jmp bx
0000AE76  29C4              sub sp,ax
0000AE78  EB09              jmp short 0xae83
0000AE7A  89F2              mov dx,si
0000AE7C  89DE              mov si,bx
0000AE7E  5B                pop bx
0000AE7F  29CC              sub sp,cx
0000AE81  D1F9              sar cx,1
0000AE83  89F8              mov ax,di
0000AE85  89E7              mov di,sp
0000AE87  F2A5              repne movsw
0000AE89  89D6              mov si,dx
0000AE8B  89C7              mov di,ax
0000AE8D  FFE3              jmp bx
0000AE8F  89E3              mov bx,sp
0000AE91  52                push dx
0000AE92  89C1              mov cx,ax
0000AE94  F76704            mul word [bx+0x4]
0000AE97  5A                pop dx
0000AE98  50                push ax
0000AE99  89D0              mov ax,dx
0000AE9B  F76702            mul word [bx+0x2]
0000AE9E  5A                pop dx
0000AE9F  01C2              add dx,ax
0000AEA1  89C8              mov ax,cx
0000AEA3  89D1              mov cx,dx
0000AEA5  F76702            mul word [bx+0x2]
0000AEA8  01CA              add dx,cx
0000AEAA  C20400            ret 0x4
0000AEAD  5F                pop di
0000AEAE  5E                pop si
0000AEAF  89EC              mov sp,bp
0000AEB1  5D                pop bp
0000AEB2  C3                ret
0000AEB3  5E                pop si
0000AEB4  5F                pop di
0000AEB5  EBF8              jmp short 0xaeaf
0000AEB7  56                push si
0000AEB8  57                push di
0000AEB9  89E6              mov si,sp
0000AEBB  8B5C06            mov bx,[si+0x6]
0000AEBE  8B4408            mov ax,[si+0x8]
0000AEC1  09C0              or ax,ax
0000AEC3  7518              jnz 0xaedd
0000AEC5  31D2              xor dx,dx
0000AEC7  8B4C0A            mov cx,[si+0xa]
0000AECA  8B440C            mov ax,[si+0xc]
0000AECD  F7F3              div bx
0000AECF  91                xchg ax,cx
0000AED0  F7F3              div bx
0000AED2  31DB              xor bx,bx
0000AED4  89D0              mov ax,dx
0000AED6  89DA              mov dx,bx
0000AED8  5F                pop di
0000AED9  5E                pop si
0000AEDA  C20800            ret 0x8
0000AEDD  89C7              mov di,ax
0000AEDF  31DB              xor bx,bx
0000AEE1  8B440A            mov ax,[si+0xa]
0000AEE4  8B540C            mov dx,[si+0xc]
0000AEE7  B91000            mov cx,0x10
0000AEEA  D1E0              shl ax,1
0000AEEC  D1D2              rcl dx,1
0000AEEE  D1D3              rcl bx,1
0000AEF0  39DF              cmp di,bx
0000AEF2  7707              ja 0xaefb
0000AEF4  7209              jc 0xaeff
0000AEF6  395406            cmp [si+0x6],dx
0000AEF9  7604              jna 0xaeff
0000AEFB  E2ED              loop 0xaeea
0000AEFD  EBD5              jmp short 0xaed4
0000AEFF  2B5406            sub dx,[si+0x6]
0000AF02  19FB              sbb bx,di
0000AF04  40                inc ax
0000AF05  E2E3              loop 0xaeea
0000AF07  EBCB              jmp short 0xaed4
0000AF09  89E3              mov bx,sp
0000AF0B  56                push si
0000AF0C  57                push di
0000AF0D  8B4F02            mov cx,[bx+0x2]
0000AF10  8B7704            mov si,[bx+0x4]
0000AF13  8B7F06            mov di,[bx+0x6]
0000AF16  F2A4              repne movsb
0000AF18  5F                pop di
0000AF19  5E                pop si
0000AF1A  C3                ret
0000AF1B  0000              add [bx+si],al
0000AF1D  0000              add [bx+si],al
0000AF1F  00                db 0x00
