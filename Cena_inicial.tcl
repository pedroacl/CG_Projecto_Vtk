vtkRenderer r
vtkRenderWindow rw
rw AddRenderer r

r SetBackground 0.6 0.6 0.6

# Criação da interface com o utilizador

package require vtkinteraction

vtkRenderWindowInteractor iren
iren SetRenderWindow rw

# Definir o estilo de interacção 
vtkInteractorStyleTrackballCamera style
iren SetInteractorStyle style

iren AddObserver UserEvent {wm deiconify .vtkInteract}


# Criação do sistema de eixos

source eixos.tcl

# Criação dos objectos da cena

# Pórtico

# Colunas

vtkCylinderSource Col_S
vtkPolyDataMapper Col_M
Col_M SetInput [Col_S GetOutput]
Col_S SetHeight 6
Col_S SetRadius 1.5
Col_S SetCenter 2 3 1
Col_S SetResolution 12

# Coluna Esquerda

vtkActor ColE_A
ColE_A SetMapper Col_M
vtkProperty ColE_Prop
ColE_A SetProperty ColE_Prop
r AddActor ColE_A

# Coluna Direita

vtkActor ColD_A
ColD_A SetMapper Col_M
vtkTransform ColD_tr
ColD_tr Translate 8 0 0
ColD_A SetUserMatrix [ColD_tr GetMatrix]
vtkProperty ColD_Prop
ColD_A SetProperty ColD_Prop
r AddActor ColD_A

# Capitel

vtkCubeSource Cap_S
vtkPolyDataMapper Cap_M
vtkActor Cap_A
Cap_M SetInput [Cap_S GetOutput]
Cap_S SetXLength 11
Cap_S SetYLength 1.5
Cap_S SetZLength 3
Cap_S SetCenter 6 6.5 1
Cap_A SetMapper Cap_M
vtkProperty Cap_Prop
Cap_A SetProperty Cap_Prop
r AddActor Cap_A

# Candeeiros
# Colunas

vtkCylinderSource Cand_S
vtkPolyDataMapper Cand_M
Cand_M SetInput [Cand_S GetOutput]
Cand_S SetHeight 3.5
Cand_S SetRadius 0.3
Cand_S SetCenter 4 2 12

# Globos

vtkSphereSource Globo_S
Globo_S SetPhiResolution 12
Globo_S SetThetaResolution 12
vtkPolyDataMapper Globo_M
Globo_M SetInput [Globo_S GetOutput]
Globo_S SetRadius 0.7
Globo_S SetCenter 4 3.8 12

# Candeeiro Esquerdo

vtkActor CandE_A
CandE_A SetMapper Cand_M
vtkProperty CandE_Prop
CandE_A SetProperty CandE_Prop
CandE_Prop SetColor 0 0.7 0
r AddActor CandE_A

vtkActor GloboE_A
GloboE_A SetMapper Globo_M
vtkProperty GloboE_Prop
GloboE_A SetProperty GloboE_Prop
GloboE_Prop SetColor 1 0.7 0
r AddActor GloboE_A

# Candeeiro Direito

vtkActor CandD_A
CandD_A SetMapper Cand_M
vtkTransform CandD_tr
CandD_tr Translate 4 0 0
CandD_A SetUserMatrix [CandD_tr GetMatrix]
vtkProperty CandD_Prop
CandD_A SetProperty CandD_Prop
CandD_Prop SetColor 0 0.7 0
r AddActor CandD_A

vtkActor GloboD_A
GloboD_A SetMapper Globo_M
vtkTransform GloboD_tr
GloboD_tr Translate 4 0 0
GloboD_A SetUserMatrix [GloboD_tr GetMatrix]
vtkProperty GloboD_Prop
GloboD_A SetProperty GloboD_Prop
GloboD_Prop SetColor 1 0.7 0
r AddActor GloboD_A

# 2º Candeeiro Esquerdo

vtkActor Cand2E_A
Cand2E_A SetMapper Cand_M
vtkTransform Cand2E_tr
Cand2E_tr Translate 0 0 10
Cand2E_A SetUserMatrix [Cand2E_tr GetMatrix]
vtkProperty Cand2E_Prop
Cand2E_A SetProperty Cand2E_Prop
Cand2E_Prop SetColor 0 0.7 0
r AddActor Cand2E_A

vtkActor Globo2E_A
Globo2E_A SetMapper Globo_M
vtkTransform Globo2E_tr
Globo2E_tr Translate 0 0 10
Globo2E_A SetUserMatrix [Globo2E_tr GetMatrix]
vtkProperty Globo2E_Prop
Globo2E_A SetProperty Globo2E_Prop
Globo2E_Prop SetColor 1 0.7 0
r AddActor Globo2E_A

# 2º Candeeiro Direito

vtkActor Cand2D_A
Cand2D_A SetMapper Cand_M
vtkTransform Cand2D_tr
Cand2D_tr Translate 4 0 10
Cand2D_A SetUserMatrix [Cand2D_tr GetMatrix]
vtkProperty Cand2D_Prop
Cand2D_A SetProperty Cand2D_Prop
Cand2D_Prop SetColor 0 0.7 0
r AddActor Cand2D_A

vtkActor Globo2D_A
Globo2D_A SetMapper Globo_M
vtkTransform Globo2D_tr
Globo2D_tr Translate 4 0 10
Globo2D_A SetUserMatrix [Globo2D_tr GetMatrix]
vtkProperty Globo2D_Prop
Globo2D_A SetProperty Globo2D_Prop
Globo2D_Prop SetColor 1 0.7 0
r AddActor Globo2D_A

# 3º Candeeiro Esquerdo

vtkActor Cand3E_A
Cand3E_A SetMapper Cand_M
vtkTransform Cand3E_tr
Cand3E_tr Translate 0 0 20
Cand3E_A SetUserMatrix [Cand3E_tr GetMatrix]
vtkProperty Cand3E_Prop
Cand3E_A SetProperty Cand3E_Prop
Cand3E_Prop SetColor 0 0.7 0
r AddActor Cand3E_A

vtkActor Globo3E_A
Globo3E_A SetMapper Globo_M
vtkTransform Globo3E_tr
Globo3E_tr Translate 0 0 20
Globo3E_A SetUserMatrix [Globo3E_tr GetMatrix]
vtkProperty Globo3E_Prop
Globo3E_A SetProperty Globo3E_Prop
Globo3E_Prop SetColor 1 0.7 0
r AddActor Globo3E_A

# 3º Candeeiro Direito

vtkActor Cand3D_A
Cand3D_A SetMapper Cand_M
vtkTransform Cand3D_tr
Cand3D_tr Translate 4 0 20
Cand3D_A SetUserMatrix [Cand3D_tr GetMatrix]
vtkProperty Cand3D_Prop
Cand3D_A SetProperty Cand3D_Prop
Cand3D_Prop SetColor 0 0.7 0
r AddActor Cand3D_A

vtkActor Globo3D_A
Globo3D_A SetMapper Globo_M
vtkTransform Globo3D_tr
Globo3D_tr Translate 4 0 20
Globo3D_A SetUserMatrix [Globo3D_tr GetMatrix]
vtkProperty Globo3D_Prop
Globo3D_A SetProperty Globo3D_Prop
Globo3D_Prop SetColor 1 0.7 0
r AddActor Globo3D_A

# Substituição da câmara

vtkCamera Cam1
Cam1 SetPosition 6 8 80
Cam1 SetFocalPoint 6 1.7 2
#Cam1 SetClippingRange 27.2 1000
Cam1 SetClippingRange 1 1000
r SetActiveCamera Cam1

rw Render

wm withdraw .
