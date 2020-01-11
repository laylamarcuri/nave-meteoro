colisoes:

if GetSpriteCollision(jogador, meteoro1)
	gameOver()
elseif	GetSpriteCollision(jogador, meteoro2)
	gameOver()
elseif	GetSpriteCollision(jogador, meteoro3)
	gameOver()
endif

function gameOver()
	go = LoadImage("gameOver.jpg")
	go = CreateSprite(go)
	SetSpriteSize(go, 768, 1024)
endFunction
	


return
