
// Project: JogoProjeto 
// Created: 2019-12-03

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "JogoProjeto" )
SetWindowSize( 768, 1024, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 768, 1024 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

#include "loader.agc"
#include "movimento.agc"
#include "movimento meteoro.agc"
#include "colisoes.agc"


sx as integer
sx = 324

//GetSpriteCollision 

Gosub loader

global ym1 =-100
global xm1 = 500

global ym2 =-400
global xm2 = 100

global ym3 =-1000
global xm3 = 250

do
	Gosub movimento
	Gosub movimentoMeteoro
	gosub colisoes
	
	Print(GetSpriteX(jogador))

	
    Sync()
loop
