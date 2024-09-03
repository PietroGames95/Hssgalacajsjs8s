function onCreate()
	makeLuaSprite('bg', 'lab/bg', -850, -100)
	scaleObject('bg', 1.4, 1.4)
	addLuaSprite('bg', false)

	makeLuaSprite('bulb', 'lab/bulb', -1650, -600)
	scaleObject('bulb', 1.4, 1.4)
	addLuaSprite('bulb', false)

	makeLuaSprite('dark', 'lab/dark', -850, -300)
	scaleObject('dark', 1.4, 1.4)
	setProperty("dark.origin.x", 806)
	setProperty("dark.origin.y", 0)
	addLuaSprite('dark', true)

	makeLuaSprite('vignette', 'vignette', 0, 0)
	scaleObject('vignette', 1, 1)
	setObjectCamera('vignette', 'hud')
	addLuaSprite('vignette', false)

	doTweenAngle('darkR', 'dark', 5, 1, 'sineInOut')
end

function onTweenCompleted(tag)
	if tag == 'darkR' then
		doTweenAngle('darkL', 'dark', -5, 1, 'sineInOut')
	elseif tag == 'darkL' then
		doTweenAngle('darkR', 'dark', 5, 1, 'sineInOut')
	end
end