vtkRenderer r
vtkRenderWindow rw
rw AddRenderer r

r SetBackground 0.6 0.6 0.6

# Cria��o da interface com o utilizador

package require vtkinteraction

vtkRenderWindowInteractor iren
iren SetRenderWindow rw

# Definir o estilo de interac��o 
vtkInteractorStyleTrackballCamera style
iren SetInteractorStyle style

iren AddObserver UserEvent {wm deiconify .vtkInteract}


# Cria��o do sistema de eixos
source eixos.tcl



#Mesa
vtkSphereSource Globo_S
Globo_S SetPhiResolution 12
Globo_S SetThetaResolution 12
vtkPolyDataMapper Globo_M
Globo_M SetInput [Globo_S GetOutput]
Globo_S SetRadius 0.7
Globo_S SetCenter 4 3.8 12



vtkActor Globo2E_A
Globo2E_A SetMapper Globo_M
vtkTransform Globo2E_tr
Globo2E_tr Translate 0 0 10
Globo2E_A SetUserMatrix [Globo2E_tr GetMatrix]
vtkProperty Globo2E_Prop
Globo2E_A SetProperty Globo2E_Prop
Globo2E_Prop SetColor 1 0.7 0
r AddActor Globo2E_A

source replace_lights.tcl

rw Render
