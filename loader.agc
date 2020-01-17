loader:

	fundo = LoadImage("fundo.png")
	fundo = CreateSprite(fundo)
	SetSpriteSize(fundo, 768, 1024)

	nave = LoadImage("nave.png")
	nave = CreateSprite(nave)
	SetSpriteSize(nave, 100, 100)
	SetSpritePosition(nave, 324, 910)
	
	meteoro = LoadImage("meteoro.gif")
	//só, cria meteoros
	for i=0 to meteoros
		meteoroID.insert(CreateSprite(meteoro))
		SetSpritePosition(meteoroID[i], Random(15, 650), Random2(-100, -500*i+1) )
	next i
	
	laser = LoadImage("laser.png")

return
