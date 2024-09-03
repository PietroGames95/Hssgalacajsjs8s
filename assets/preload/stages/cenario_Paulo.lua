function onCreate()

	makeLuaSprite('Boneco', 'backgrounds/Paulo_Fall/Boneco', 0, 100); 
	setLuaSpriteScrollFactor('Boneco', 0.9, 0.9);
	scaleObject('Boneco',1.8,1.5)
	
	makeLuaSprite('Janela', 'backgrounds/Paulo_Fall/Janela', 0, 100); 
	setLuaSpriteScrollFactor('Janela', 0.9, 0.9);
	scaleObject('Janela',1.8,1.5)
	
	makeLuaSprite('Parede', 'backgrounds/Paulo_Fall/Parede', 0, 100);
	setLuaSpriteScrollFactor('Parede', 0.9, 0.9);
	scaleObject('Parede', 1.8, 1.5);
	
	makeLuaSprite('Placa', 'backgrounds/Paulo_Fall/Placa', 0, 100);
	setLuaSpriteScrollFactor('Placa', 0.9, 0.9);
	scaleObject('Placa', 1.8, 1.5);
	
	makeLuaSprite('Sofa', 'backgrounds/Paulo_Fall/Sofa', 0, 100);
	setLuaSpriteScrollFactor('Sofa', 0.9, 0.9);
	scaleObject('Sofa', 1.8, 1.5);

    addLuaSprite('Parede', false);
	addLuaSprite('Boneco', false);
	addLuaSprite('Janela', false);
	addLuaSprite('Placa', false);
	addLuaSprite('Sofa', false);

               addLuaSprite('bg', false);
               addAnimationByPrefix('bg','idle','bg idle',10, true);
               addLuaSprite('personaje2_0002_Capa-1-copia', false);
               setObjectOrder('personaje2_0002_Capa-1-copia',5 );
               addLuaSprite('personaje bg', false);
               addAnimationByPrefix('personaje bg', 'idle','personaje bg idle',5, true);

              setProperty('bg.visible', false);
              setProperty('personaje2_0002_Capa-1-copia.visible', false);
	setProperty('personaje bg.visible', false);
end