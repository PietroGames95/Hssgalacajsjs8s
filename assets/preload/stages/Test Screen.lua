function onCreate()
     makeLuaSprite('screen', 'backgroundST', 0, 0)
     scaleObject('screen', 0.7, 0.7)
     setObjectCamera('screen', 'other')
     addLuaSprite('screen')
     runTimer('Nao_Sei',1)

     makeLuaText('st_shadow', 'CODIGOS DE MUSICAS', nil, 403, 83)
     setTextFont('st_shadow', 'sonic-cd-menu-font.ttf')
     setTextColor('st_shadow', '000000')
     setTextBorder('st_shadow', 0)
     setTextSize('st_shadow', 30)
     setObjectCamera('st_shadow', 'other')
     addLuaText('st_shadow')

     makeLuaText('st', 'CODIGOS DE MUSICAS', nil, 400, 80)
     setTextFont('st', 'sonic-cd-menu-font.ttf')
     setTextColor('st', '0fabf3')
     setTextBorder('st', 0)
     setTextSize('st', 30)
     setObjectCamera('st', 'other')
     addLuaText('st', true)

     makeLuaText('pcm_shadow', 'CODIGO X ', nil, 483, 233)
     setTextFont('pcm_shadow', 'sonic-cd-menu-font.ttf')
     setTextColor('pcm_shadow', '6b6c91')
     setTextBorder('pcm_shadow', 0)
     setTextSize('pcm_shadow', 30)
     setObjectCamera('pcm_shadow', 'other')
     addLuaText('pcm_shadow', true)

     makeLuaText('pcm', 'CODIGO X ', nil, 480, 230)
     setTextFont('pcm', 'sonic-cd-menu-font.ttf')
     setTextColor('pcm', 'b1adf7')
     setTextBorder('pcm', 0)
     setTextSize('pcm', 30)
     setObjectCamera('pcm', 'other')
     addLuaText('pcm', true)

     makeLuaText('da_shadow', 'CODIGO Y', nil, 483, 483)
     setTextFont('da_shadow', 'sonic-cd-menu-font.ttf')
     setTextColor('da_shadow', '6b6c91')
     setTextBorder('da_shadow', 0)
     setTextSize('da_shadow', 30)
     setObjectCamera('da_shadow', 'other')
     addLuaText('da_shadow', true)

     makeLuaText('da', 'CODIGO Y', nil, 480, 480)
     setTextFont('da', 'sonic-cd-menu-font.ttf')
     setTextColor('da', 'b1adf7')
     setTextBorder('da', 0)
     setTextSize('da', 30)
     setObjectCamera('da', 'other')
     addLuaText('da', true)

     close(true)
end

function onTimerCompleted(t,l,ll)
if t == 'Nao_Sei' then
doTweenX('screen.x','screen',0,0.5,'sineIn')
runTimer('Nao_Sei',0.6)
end
end