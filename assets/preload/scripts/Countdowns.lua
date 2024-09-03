--Script Config Fade
FadeTime = 0.3
FadeEase = 'CircInOut'

function onCreate()
--Images Yo

--Two
                    makeLuaSprite('CountTwo', 'ready', 0, 0)
	screenCenter('CountTwo', 'xy')
	setObjectCamera('CountTwo', 'other')
	setProperty('CountTwo.visible', false)
--One
	makeLuaSprite('CountOne', 'set', 0, 0)
	screenCenter('CountOne', 'xy')
	setObjectCamera('CountOne', 'other')
	setProperty('CountOne.visible', false)
--Go	
	makeLuaSprite('CountGO', 'go', 0, 0)
	screenCenter('CountGO', 'xy')
	setObjectCamera('CountGO', 'other')
	setProperty('CountGO.visible', false)
--Add Lua Sprites
	addLuaSprite('CountTwo', true)
	addLuaSprite('CountOne', true)
	addLuaSprite('CountGO', true)
end

function onCountdownTick(counter)
	if counter == 1 then
   setProperty('countdownReady.visible', false)
		doTweenAlpha('TwoFade', 'CountTwo', 0, FadeTime, FadeEase)

doTweenY("introTwo", "CountTwo", 1000, 5.5, "sineOut")
   setProperty('CountTwo.visible', true)
 elseif counter == 2 then

   setProperty('countdownSet.visible', false)
		doTweenAlpha('OneFade', 'CountOne', 0, FadeTime, FadeEase)
		doTweenY("introOne", "CountOne", 1000, 5.5, "sineOut")
   setProperty('CountOne.visible', true)
	elseif counter == 3 then
    setProperty('countdownGo.visible', false)
		doTweenAlpha('GoFade', 'CountGO', 0, FadeTime, FadeEase)
		setProperty('countdownGo.visible', false)

   doTweenY("introGo", "CountGO", 1000, 5.5, "sineOut")
   setProperty('CountGO.visible', true)
	end
end


