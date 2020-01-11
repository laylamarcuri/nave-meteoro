loader:

	fundo = LoadImage("fundo.png")
	fundo = CreateSprite(fundo)
	SetSpriteSize(fundo, 768, 1024)

	jogador = LoadImage("jogador.png")
	jogador = CreateSprite(jogador)
	SetSpriteSize(jogador, 100, 100)
	SetSpritePosition(jogador, 324, 910)
	
	meteoro1 = CreateSprite(LoadImage("meteoro.gif"))
	meteoro2 = CreateSprite(LoadImage("meteoro.gif"))
	meteoro3 = CreateSprite(LoadImage("meteoro.gif"))

return
