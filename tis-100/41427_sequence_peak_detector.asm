@0


@1
MOV UP, ACC
MOV ACC, RIGHT
MOV ACC, DOWN

@2
MOV LEFT, ACC
MOV ACC, DOWN

@3


@4


@5
MOV UP, ACC
MOV ACC, DOWN
MOV ACC, DOWN

@6
MOV UP, ACC
MOV ACC, DOWN
MOV ACC, DOWN

@7
MOV RIGHT, ACC
MOV ACC, RIGHT
MOV ACC, RIGHT

@8
MOV UP, NIL
MOV UP, LEFT
N: MOV UP, ACC
JEZ T
SUB LEFT
JLZ C
MOV UP, NIL
MOV LEFT, LEFT
JMP N
C: MOV LEFT, NIL
MOV UP, LEFT
JMP N
T: MOV UP, NIL
MOV LEFT, NIL
MOV LEFT, DOWN

@9
MOV UP, NIL
MOV UP, RIGHT
N: MOV UP, ACC
JEZ T
SUB RIGHT
JGZ C
MOV UP, NIL
MOV RIGHT, RIGHT
JMP N
C: MOV RIGHT, NIL
MOV UP, RIGHT
JMP N
T: MOV UP, NIL
MOV RIGHT, NIL
MOV RIGHT, DOWN

@10
MOV LEFT, ACC
MOV ACC, LEFT
MOV ACC, LEFT
