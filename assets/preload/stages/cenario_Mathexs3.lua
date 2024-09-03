function onCreate()

	makeLuaSprite('ceu', 'backgrounds/Mathexs/dia3/ceu', 0, 100); 
	setLuaSpriteScrollFactor('ceu', 0.9, 0.9);
	scaleObject('ceu',1.8,1.5)
	
	makeLuaSprite('mth', 'backgrounds/Mathexs/dia3/Arbusto', 0, 100); 
	setLuaSpriteScrollFactor('mth', 0.9, 0.9);
	scaleObject('mth',1.8,1.5)
	
	makeLuaSprite('rua', 'backgrounds/Mathexs/dia3/rua', 0, 100);
	setLuaSpriteScrollFactor('rua', 0.9, 0.9);
	scaleObject('rua', 1.8, 1.5);
	
	makeLuaSprite('Universo', 'backgrounds/Mathexs/dia3/Universo', 0, 100); 
	setLuaSpriteScrollFactor('Universo', 0.9, 0.9);
	scaleObject('Universo',1.8,1.5)
	
	makeLuaSprite('Universo2', 'backgrounds/Mathexs/dia3/Universo2', 0, 100); 
	setLuaSpriteScrollFactor('Universo2', 0.9, 0.9);
	scaleObject('Universo2',1.8,1.5)
	
	makeLuaSprite('BOB', 'backgrounds/Mathexs/HMM', -600, 330);
	setProperty('BOB.alpha',0) 
	
	makeLuaSprite('CT', 'backgrounds/Mathexs/Carteira_de_trabalho', -600, 400);
	setProperty('CT.alpha',0)
	scaleObject('CT',1.8,1.5)


               
               makeLuaSprite('personaje2_0002_Capa-1-copia','sprites para stage/personaje2_0002_Capa-1-copia',500,0);
               scaleObject('personaje2_0002_Capa-1-copia', 0.9, 0.9);
               setLuaSpriteScrollFactor('personaje2_0002_Capa-1-copia', 0.9, 0.9);

               makeAnimatedLuaSprite('bg','sprites para stage/bg',-500, -300);
              setLuaSpriteScrollFactor('bg', 0.9, 0.9);

             makeAnimatedLuaSprite('personaje bg','sprites para stage/personaje bg',-350,-20);
              setLuaSpriteScrollFactor('personaje bg', 0.9, 0.9);


		
	
	
	addLuaSprite('Universo2', false);
	addLuaSprite('Universo', false);
	addLuaSprite('ceu', false);
	addLuaSprite('mth', false);
	addLuaSprite('rua', false);
	addLuaSprite('BOB', false);
	addLuaSprite('CT', false);

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

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '1' then
		       setProperty('Universo.visible', false);
		       setProperty('Universo2.visible', false);
	           setProperty('Battle.visible', true);
               setProperty('ceu.visible', true);
               setProperty('rua.visible', true);
               setProperty('mth.visible', true);

		end

		if value1 == '2' then
	       	setProperty('Battle.visible', false);
	       	   setProperty('Universo.visible', true);
	       	   setProperty('Universo2.visible', false);
               setProperty('ceu.visible', false);
               setProperty('rua.visible', false);
               setProperty('mth.visible', false);

		end

        if value1 == '3' then

	       	setProperty('Battle.visible', false);
	       	   setProperty('Universo.visible', false);
	       	   setProperty('Universo2.visible', true);
               setProperty('ceu.visible', false);
               setProperty('rua.visible', false);
               setProperty('mth.visible', false);

		end

	end
end

function onStepHit()
    
   if curStep == 327 then
   setProperty('BOB.alpha',1)
   doTweenX('BOB.x','BOB',2200,2,'sineout')   
   end

   if curStep == 708 then
   setProperty('BOB.visible',false) 
   end
   
    if curStep == 2647 then
    setProperty('CT.alpha',1)
    doTweenX('CT.x','CT',2200,10,'sineout')   
   end

end