vtkRenderer r
vtkRenderWindow rw
rw AddRenderer r

# Criação do sistema de eixos

source eixos.tcl

vtkSphereSource Esfera_S
	Esfera_S SetCenter 0 0 -80
	Esfera_S SetRadius 80
	Esfera_S SetPhiResolution 60
	Esfera_S SetThetaResolution 60
	Esfera_S SetStartPhi -12
	Esfera_S SetEndPhi 12


# Função Gaussiana para visualização

vtkImageGaussianSource Gauss
	Gauss SetCenter 0 0 0
	Gauss SetWholeExtent -20 20 -20 20 -2 2
	Gauss SetMaximum 100
	Gauss SetStandardDeviation 6
	Gauss Update

# Probing

vtkProbeFilter sonda
	sonda SetInput [Esfera_S GetOutput]
	sonda SetSource [Gauss GetOutput]

# Mapper

vtkLookupTable Tabela
vtkPolyDataMapper sondaMapper
	sondaMapper SetInput [sonda GetOutput]
	sondaMapper SetLookupTable Tabela
	eval sondaMapper SetScalarRange [[Gauss GetOutput] GetScalarRange]

Tabela SetHueRange 0.166 0.5
Tabela SetSaturationRange 1 1
Tabela SetValueRange 1 1
# Inserir o actor da sonda

vtkActor sonda_A
	sonda_A SetMapper sondaMapper
	r AddActor sonda_A

# Gerar a imagem

rw Render