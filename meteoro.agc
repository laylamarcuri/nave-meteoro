
	
	
movimentoMeteoro:

		SetSpritePosition(meteoro1, GetSpriteX(meteoro1), GetSpriteY(meteoro1)+18)
		SetSpritePosition(meteoro2, GetSpriteX(meteoro2), GetSpriteY(meteoro2)+18)
		SetSpritePosition(meteoro3, GetSpriteX(meteoro3), GetSpriteY(meteoro3)+18)


	if(GetSpriteY(meteoro1) > 1500)
		SetSpritePosition(meteoro1, Random(15, 650), Random2(-100, -500) )
	 endif

	if(GetSpriteY(meteoro2) > 1500)
		SetSpritePosition(meteoro2, Random(15, 650), Random2(-200, -800) )
	 endif
	 
	 if(GetSpriteY(meteoro3) > 1500)
		SetSpritePosition(meteoro3, Random(15, 650), Random2(-500, -1000) )
	 endif
	 
return
