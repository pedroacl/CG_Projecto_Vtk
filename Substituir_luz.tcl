vtkLight Luz
r AddLight Luz
Luz SetIntensity 1
Luz SetPosition 6 8 80
Luz SetPositional 1
Luz SetConeAngle 180

[r GetLights] InitTraversal
[r GetLights] RemoveItem [ [r GetLights] GetNextItem]
rw Render
