function onCreate()

	makeLuaSprite('ceu', 'backgrounds/Bonus/ceu', 0, 100); 
	setLuaSpriteScrollFactor('ceu', 0.9, 0.9);
	scaleObject('ceu',1.8,1.5)
	
	makeLuaSprite('mth', 'backgrounds/Bonus/Arbusto', 0, 100); 
	setLuaSpriteScrollFactor('mth', 0.9, 0.9);
	scaleObject('mth',1.8,1.5)
	
	makeLuaSprite('rua', 'backgrounds/Bonus/rua', 0, 100);
	setLuaSpriteScrollFactor('rua', 0.9, 0.9);
	scaleObject('rua', 1.8, 1.5);
	
	makeLuaSprite('Grade', 'backgrounds/Bonus/grade', 0, 100);
	setLuaSpriteScrollFactor('Grade', 0.9, 0.9);
	scaleObject('Grade', 1.8, 1.5);

	addLuaSprite('ceu', false);
	addLuaSprite('mth', false);
	addLuaSprite('Grade', false);
	addLuaSprite('rua', false);
	addLuaSprite('BOB', false);
	addLuaSprite('CT', false);
end
