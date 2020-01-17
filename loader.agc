loader:

	fundo = LoadImage("fundo.png")
	fundo = CreateSprite(fundo)
	SetSpriteSize(fundo, 768, 1024)

	nave = LoadImage("nave.png")
	nave = CreateSprite(nave)
	SetSpriteSize(nave, 100, 100)
	SetSpritePosition(nave, 324, 910)
	
	meteoro1 = CreateSprite(LoadImage("meteoro.gif"))
	meteoro2 = CreateSprite(LoadImage("meteoro.gif"))
	meteoro3 = CreateSprite(LoadImage("meteoro.gif"))
	
	SetSpritePosition(meteoro1, Random(15, 650), Random2(-100, -500) )
	SetSpritePosition(meteoro2, Random(15, 650), Random2(-200, -800) )
	SetSpritePosition(meteoro3, Random(15, 650), Random2(-500, -1000) )
	
	laser = LoadImage("laser.png")

return
