@0
MOV 1, ACC
ADD UP
MOV ACC, DOWN

@1
MOV 1, ACC
ADD UP
MOV ACC, DOWN

@2
MOV 1, ACC
ADD UP
MOV ACC, DOWN

@3
MOV 1, ACC
ADD UP
MOV ACC, DOWN

@4
L0: JRO UP
JMP K0
MOV 1, RIGHT
JMP L1
K0:
MOV 0, RIGHT
JMP L0
L1: JRO UP
JMP C1
M1: MOV 0, RIGHT
JMP L1
C1: JMP K0

@5
L0: JRO UP
JMP K0
MOV LEFT, NIL
MOV 2, DOWN
JMP L1
K0:
MOV LEFT, DOWN
JMP L0
L1: JRO UP
JMP C1
M1: MOV LEFT, DOWN
JMP L1
C1: JMP K0

@6
L0: JRO UP
JMP K0
MOV RIGHT, NIL
MOV 3, DOWN
JMP L1
K0:
MOV RIGHT, DOWN
JMP L0
L1: JRO UP
JMP C1
M1: MOV RIGHT,DOWN
JMP L1
C1: JMP K0

@7
L0: JRO UP
JMP K0
MOV 4, LEFT
JMP L1
K0:
MOV 0, LEFT
JMP L0
L1: JRO UP
JMP C1
M1: MOV 0, LEFT
JMP L1
C1: JMP K0

@8
MOV UP, RIGHT

@9
MOV UP, ACC
ADD LEFT
MOV ACC, DOWN

@10

