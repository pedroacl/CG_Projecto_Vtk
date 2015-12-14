#Remove luz de origem
[r GetLights] InitTraversal
[r GetLights] RemoveItem [ [r GetLights] GetNextItem]


# Luz1 - Azul
vtkLight Luz1
r AddLight Luz1
	Luz1 SetIntensity 1
	Luz1 SetPosition 0 100 120
	Luz1 SetPositional 1
	Luz1 SetConeAngle 180
	Luz1 SetColor 0 0 1

# Luz2 - Verde
vtkLight Luz2
r AddLight Luz2
	Luz2 SetIntensity 1
	Luz2 SetPosition 0 60 120
	Luz2 SetPositional 1
	Luz2 SetConeAngle 180
	Luz2 SetColor 0 1 0

