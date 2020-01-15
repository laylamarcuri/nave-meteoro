colisoes:

if GetSpriteCollision(nave, meteoro1)
	//gameOver()
elseif	GetSpriteCollision(nave, meteoro2)
	//gameOver()
elseif	GetSpriteCollision(nave, meteoro3)
	//gameOver()
endif

function gameOver()
	go = LoadImage("gameOver.jpg")
	go = CreateSprite(go)
	SetSpriteSize(go, 768, 1024)
endFunction
	


return
