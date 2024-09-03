function onCreate()
	-- background 
	makeLuaSprite('stageback', 'stageback', -500, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setLuaSpriteScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	 
	  makeAnimatedLuaSprite('LexWalk', 'backgrounds/Mathexs/bob',-900, 120);
	  makeLuaSprite('LexPose', 'backgrounds/Mathexs/bob', -900, 120);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
   addLuaSprite('LexWalk', false);
  -- addAnimationByPrefix('LexWalk','idle','LexWalk idle',10,true);
    addLuaSprite('LexPose', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
  
  setProperty('LexPose.visible',false)
  --setProperty('tag.antialiasing',true)
  setProperty('LexWalk.alpha',0) 
  --setObjectOrder('tag',3);
 --playSound('namesong', 1);
 -- triggerEvent('Play Animation','scared','bf')
 -- objectPlayAnimation('halloween2_bg', 'idle', false);
 end


function onStepHit()

   if curStep == 9964 then
   setProperty('LexWalk.alpha',1)   
   doTweenX('LexWalk.x','LexWalk',1600,12,'sineout')   
   end

   if curStep == 60 then
   --setProperty('LexWalk.visible',false) 
   --setProperty('LexWalk.alpha',0)   
   setPropertyLuaSprite('LexWalk', 'flipX', true);
   doTweenX('LexWalk.x','LexWalk',-900,12,'sineout')   
   end
    if curStep == 90 then
 -- setProperty('LexWalk.visible',true)
   --doTweenX('LexPose.x','LexPose',1600,11,'sineout')   
   end
 if curStep == 190 then
   --setProperty('LexPose.visible',false)  
   end

end
