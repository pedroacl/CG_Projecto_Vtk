# Sistema de eixos

# Eixos


## EIXO XX
vtkLineSource xx
vtkPolyDataMapper xxM
vtkActor xxA
xxM SetInput [xx GetOutput]
xxA SetMapper xxM
r AddActor xxA
xx SetPoint1 0 0 0
xx SetPoint2 12 0 0
vtkProperty corx
corx SetColor 1 0 0
xxA SetProperty corx

# Legenda do eixo dos xx
vtkVectorText atextx
atextx SetText "X"
vtkPolyDataMapper textMapperx
textMapperx SetInput [atextx GetOutput]
vtkFollower textActorx
textActorx SetMapper textMapperx
textActorx SetScale 1 1 10
textActorx AddPosition 14 0 0
vtkProperty textpropx
textpropx SetColor 1 0 0
textActorx SetProperty textpropx
r AddActor textActorx


## EIXO YY
vtkLineSource yy
vtkPolyDataMapper yyM
vtkActor yyA
yyM SetInput [yy GetOutput]
yyA SetMapper yyM
r AddActor yyA
yy SetPoint1 0 0 0
yy SetPoint2 0 12 0
vtkProperty cory
cory SetColor 0 1 0
yyA SetProperty cory

# Legenda do eixo dos yy
vtkVectorText atexty
atexty SetText "Y"
vtkPolyDataMapper textMappery
textMappery SetInput [atexty GetOutput]
vtkFollower textActory
textActory SetMapper textMappery
textActory SetScale 1 1 10
textActory AddPosition 0 14 0
vtkProperty textpropy
textpropy SetColor 0 1 0
textActory SetProperty textpropy
r AddActor textActory


# EIXO ZZ
vtkLineSource zz
vtkPolyDataMapper zzM
vtkActor zzA
zzM SetInput [zz GetOutput]
zzA SetMapper zzM
r AddActor zzA
zz SetPoint1 0 0 0
zz SetPoint2 0 0 40
vtkProperty corz
corz SetColor 0 0 1
zzA SetProperty corz

# Legenda do eixo dos ZZ
vtkVectorText atextz
atextz SetText "Z"
vtkPolyDataMapper textMapperz
textMapperz SetInput [atextz GetOutput]
vtkFollower textActorz
textActorz SetMapper textMapperz
textActorz SetScale 1 1 10
textActorz AddPosition 0 0 42
vtkProperty textpropz
textpropz SetColor 0 0 1
textActorz SetProperty textpropz
r AddActor textActorz
