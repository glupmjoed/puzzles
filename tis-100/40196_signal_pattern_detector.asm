@0
S: MOV RIGHT, ACC
JEZ Z
MOV 1, DOWN
JMP S
Z: MOV 3, DOWN

@1
MOV UP, RIGHT
MOV UP, LEFT

@2
S: MOV LEFT, ACC
JEZ Z
MOV 1, DOWN
JMP S
Z: MOV 3, DOWN

@3
NZ: JRO UP
MOV 1, RIGHT # 0Z
JMP NZ
MOV 3, RIGHT # 1Z
Z: JRO UP
MOV 1, RIGHT # 0Z
JMP NZ
MOV 5, RIGHT # 2Z
JMP Z

@4
MOV RIGHT, DOWN
MOV LEFT, DOWN

@5
NZ: JRO UP
MOV 1, LEFT # 0Z
JMP NZ
MOV 3, LEFT # 1Z
Z: JRO UP
MOV 1, LEFT # 0Z
JMP NZ
MOV 5, LEFT # 2Z
JMP Z

@6


@7


@8
MOV UP, RIGHT

@9
NZ: JRO LEFT
MOV 0, DOWN
JMP NZ
MOV 0, DOWN
JMP Z
MOV 0, DOWN
Z: JRO LEFT
MOV 0, DOWN
JMP NZ
MOV 0, DOWN
JMP Z
MOV 1, DOWN
JMP Z

@10

