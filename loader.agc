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

return
