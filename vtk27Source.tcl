vtkRenderer r
vtkRenderWindow rw
rw AddRenderer r

#Cor do fundo a cinzento
r SetBackground 0.7 0.7 0.7

#Definir interacao com camera
package require vtkinteraction

vtkRenderWindowInteractor iren
iren SetRenderWindow rw

# Definir o estilo de interacao 
vtkInteractorStyleTrackballCamera style
iren SetInteractorStyle style

iren AddObserver UserEvent {wm deiconify .vtkInteract}

#include
source eixos.tcl



## OBJECTOS
# Esfera brilhante
vtkSphereSource Esfera_B
	Esfera_B SetCenter -15 6 0
	Esfera_B SetRadius 5
	Esfera_B SetPhiResolution 12
	Esfera_B SetThetaResolution 24


# Esfera baca
vtkSphereSource Esfera_Baca
    Esfera_Baca SetCenter 0 6 0
	Esfera_Baca SetRadius 5
	Esfera_Baca SetPhiResolution 12
	Esfera_Baca SetThetaResolution 24

# Caixa
vtkCubeSource Caixa_S
    Caixa_S SetCenter 18 3 0
    Caixa_S SetYLength 4
    Caixa_S SetXLength 15
    Caixa_S SetZLength 5

# Mesa
vtkCubeSource Mesa_S
    Mesa_S SetCenter 0 0 0
    Mesa_S SetYLength 2
    Mesa_S SetXLength 60
    Mesa_S SetZLength 25

# Pernas da mesa
vtkCubeSource Perna_S
	Perna_S SetCenter 0 0 0
	Perna_S SetXLength 2
	Perna_S SetYLength 10
	Perna_S SetZLength 2

# Plano
vtkPlaneSource Plano_S
	Plano_S SetCenter 0 0 0
	Plano_S SetNormal 0 50 0
	Plano_S SetOrigin 30 -11 12.5
	Plano_S SetPoint1 -30 -11 12.5
	Plano_S SetPoint2 30 -11 -12.5


# Câmara
vtkCamera Cam1
	Cam1 SetPosition 0 10 120
	Cam1 SetFocalPoint 0 0 0
	Cam1 SetClippingRange 1 1000
	Cam1 SetViewAngle 30






## MAPPERS
# Esfera brilhante
vtkPolyDataMapper Esfera_B_Mapper
Esfera_B_Mapper SetInput [ Esfera_B GetOutput ]

# Esfera baca
vtkPolyDataMapper Esfera_Baca_Mapper
Esfera_Baca_Mapper SetInput [ Esfera_Baca GetOutput ]

# Caixa
vtkPolyDataMapper Caixa_Mapper
Caixa_Mapper SetInput [ Caixa_S GetOutput ]

# Mesa
vtkPolyDataMapper Mesa_Mapper
Mesa_Mapper SetInput [ Mesa_S GetOutput ]

# Perna da mesa
vtkPolyDataMapper Perna_Mapper
Perna_Mapper SetInput [Perna_S GetOutput]

# Plano
vtkPolyDataMapper Plano_Mapper
Plano_Mapper SetInput [Plano_S GetOutput]



## PROPERTIES

# Propriedades da esfera brilhante Cian
vtkProperty Esfera_B_Prop
Esfera_B_Prop SetColor 0 1 1
Esfera_B_Prop SetDiffuse 0.8
Esfera_B_Prop SetSpecular 1.0
Esfera_B_Prop SetInterpolationToGouraud

# Propriedades da esfera baca Magenta
vtkProperty Esfera_Baca_Prop
Esfera_Baca_Prop SetDiffuse 0.8
Esfera_Baca_Prop SetSpecular 0.4
Esfera_Baca_Prop SetColor 1 0 1
Esfera_Baca_Prop SetInterpolationToGouraud

# Propriedades da caixa
vtkProperty Caixa_Prop
Caixa_Prop SetDiffuse 0
Caixa_Prop SetAmbient 1
Caixa_Prop SetColor 0 1 0

# Propriedades da mesa
vtkProperty Mesa_Prop
Mesa_Prop SetDiffuse 0
Mesa_Prop SetAmbient 1
Mesa_Prop SetColor 1 1 1

# Propriedades das pernas da mesa
vtkProperty PernaIE_Prop
PernaIE_Prop SetDiffuse 0
PernaIE_Prop SetAmbient 1
PernaIE_Prop SetColor 1 1 1 

vtkProperty PernaID_Prop
PernaID_Prop SetDiffuse 0
PernaID_Prop SetAmbient 1
PernaID_Prop SetColor 1 1 1 

vtkProperty PernaSE_Prop
PernaSE_Prop SetDiffuse 0
PernaSE_Prop SetAmbient 1
PernaSE_Prop SetColor 1 1 1

vtkProperty PernaSD_Prop
PernaSD_Prop SetDiffuse 0
PernaSD_Prop SetAmbient 1
PernaSD_Prop SetColor 1 1 1

# Propriedades do Plano
vtkProperty Plano_Prop
Plano_Prop SetDiffuse 0
Plano_Prop SetAmbient 1
Plano_Prop SetColor 0 0 1



## ACTORS
# Esfera Brilhante
vtkActor Esfera_B_A
Esfera_B_A SetMapper Esfera_B_Mapper
Esfera_B_A SetProperty Esfera_B_Prop

# Esfera Baca
vtkActor Esfera_Baca_A
Esfera_Baca_A SetMapper Esfera_Baca_Mapper
Esfera_Baca_A SetProperty Esfera_Baca_Prop

# Caixa
vtkActor Caixa_A
Caixa_A SetMapper Caixa_Mapper
Caixa_A SetProperty Caixa_Prop

# Mesa
vtkActor Mesa_A
Mesa_A SetMapper Mesa_Mapper
Mesa_A SetProperty Mesa_Prop

# Perna da mesa
vtkActor Perna_A
Perna_A SetMapper Perna_Mapper
Perna_A SetProperty Mesa_Prop

# Perna Canto-Inferior-Esquerdo
vtkActor PernaIE_A
PernaIE_A SetMapper Perna_Mapper
PernaIE_A SetProperty PernaIE_Prop

# Perna Canto-Inferior-Direito
vtkActor PernaID_A
PernaID_A SetMapper Perna_Mapper
PernaID_A SetProperty PernaID_Prop

# Perna Canto-Superior-Esquerdo
vtkActor PernaSE_A
PernaSE_A SetMapper Perna_Mapper
PernaSE_A SetProperty PernaSE_Prop

# Perna Canto-Superior-Direito
vtkActor PernaSD_A
PernaSD_A SetMapper Perna_Mapper
PernaSD_A SetProperty PernaSD_Prop

# Plano
vtkActor Plano_A
Plano_A SetMapper Plano_Mapper
Plano_A SetProperty Plano_Prop


## TRANSFORMATIONS

#Perna Canto-Inferior-Esquerdo
vtkTransform PernaIE_tr
PernaIE_tr Translate -29 -6 11.5
PernaIE_A SetUserMatrix [PernaIE_tr GetMatrix]

#Perna Canto-Inferior-Direito
vtkTransform PernaID_tr
PernaID_tr Translate 29 -6 11.5
PernaID_A SetUserMatrix [PernaID_tr GetMatrix]

#Perna Canto-Superior-Esquerdo
vtkTransform PernaSE_tr
PernaSE_tr Translate -29 -6 -11.5
PernaSE_A SetUserMatrix [PernaSE_tr GetMatrix]

#Perna Canto-Superior-Direito
vtkTransform PernaSD_tr
PernaSD_tr Translate 29 -6 -11.5
PernaSD_A SetUserMatrix [PernaSD_tr GetMatrix]




## Adição dos actors à cena

#Adiciona a mesa à cena
r AddActor Mesa_A
###Adiciona as pernas da mesa à cena
r AddActor PernaIE_A
r AddActor PernaID_A
r AddActor PernaSE_A
r AddActor PernaSD_A

#Adiciona a caixa à cena
r AddActor Caixa_A

#Adiciona a esfera baca à cena
r AddActor Esfera_Baca_A

#Adiciona a esfera brilhante à cena
r AddActor Esfera_B_A

#Adiciona o plano à cena
r AddActor Plano_A

# Adiciona uma câmara à cena
r SetActiveCamera Cam1

# Desliga a criação da luz ambiente default
r AutomaticLightCreationOff


Cam1 Elevation 40
Cam1 SetClippingRange 0.1 115
Cam1 SetParallelProjection 0

source replace_lights.tcl

rw Render



wm withdraw .








