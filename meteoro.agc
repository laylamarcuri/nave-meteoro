
global meteoroY_1 =-100
global meteoroX_1 = 500

global meteoroY_2 =-400
global meteoroX_2 = 100

global meteoroY_3 =-1000
global meteoroX_3 = 250

movimentoMeteoro:

	meteoroY_1 = meteoroY_1 +10
		SetSpritePosition(meteoro1, meteoroX_1, meteoroY_1)

	meteoroY_2 = meteoroY_2 +10
		SetSpritePosition(meteoro2, meteoroX_2, meteoroY_2)

	meteoroY_3 = meteoroY_3 +10
		SetSpritePosition(meteoro3, meteoroX_3, meteoroY_3)


	if(getspritey(meteoro1) > 1500)
		meteoroX_1 = Random(15, 650)
			meteoroY_1 = Random2(-100, -500)
	 endif

	if(getspritey(meteoro2) > 1500)
		meteoroX_2 = Random(15, 650)
			meteoroY_2 = Random2(-100, -500)
	 endif
	 
	 if(getspritey(meteoro3) > 1500)
		meteoroX_3 = Random(15, 650)
			meteoroY_3 = Random2(-100, -500)
	 endif
	 
	if((GetSpriteDistance(meteoro1, meteoro2)< 100))
		meteoroX_1 = meteoroX_1 + 100
		elseif((GetSpriteDistance(meteoro1, meteoro3)< 100))
			meteoroX_1 = meteoroX_1 +100
		elseif((GetSpriteDistance(meteoro2, meteoro3)< 100))
				meteoroX_2 = meteoroX_2 +100	
		
	endif
		
return
