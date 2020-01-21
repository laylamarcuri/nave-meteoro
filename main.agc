
// Project: Invasão Meteoro 
// Created: 2019-12-03

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Invasão Meteoro" )
SetWindowSize( 768, 1024, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 768, 1024 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

#include "loader.agc"
#include "nave.agc"
#include "meteoro.agc"
#include "colisoes.agc"
#include "laser.agc"



Gosub loader

do

	Gosub movimentoNave
	Gosub movimentoMeteoro
	gosub colisoes
	gosub laser
	
	Print("VIDA : "+ str(vida+1))
	Print("PONTOS : "+ str(pontos))
	//Print("NAVE_X: "+str(GetSpriteX(nave))+" "+"NAVE_Y: "+str(GetSpriteY(nave)))
	Print("laserID.length :"+str(laserID.length))
	Print("meteoroID.length :"+str(meteoroID.length))
	Print("laser_posicao :"+str(laser_posicao))


    Sync()
loop
