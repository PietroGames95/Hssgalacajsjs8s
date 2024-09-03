--Create with TieGuo's Lua Stage Editor
function onCreate()
makeLuaSprite('Fundo', 'backgrounds/Pietro/Fundo', -310, -100)
scaleObject('Fundo', 1, 1)
setScrollFactor('Fundo' , 1, 1)

makeLuaSprite('janela', 'backgrounds/Pietro/janela', -310, -100)
scaleObject('janela', 1, 1)
setScrollFactor('janela' , 1, 1)

makeLuaSprite('quadros', 'backgrounds/Pietro/quadros', -310, -100)
scaleObject('quadros', 1, 1)
setScrollFactor('quadros' , 1, 1)

makeLuaSprite('estante', 'backgrounds/Pietro/estante', -310, -100)
scaleObject('estante', 1, 1)
setScrollFactor('estante' , 1, 1)

makeLuaSprite('tapete', 'backgrounds/Pietro/tapete', -310, -100)
scaleObject('tapete', 1, 1)
setScrollFactor('tapete' , 1, 1)

makeLuaSprite('caixa', 'backgrounds/Pietro/caixa', -310, -100)
scaleObject('caixa', 1, 1)
setScrollFactor('caixa' , 1, 1)

makeLuaSprite('sofa', 'backgrounds/Pietro/sofa', -310, -100)
scaleObject('sofa', 1, 1)
setScrollFactor('sofa' , 1, 1)

addLuaSprite('Fundo', false)
addLuaSprite('caixa', false)
addLuaSprite('janela', false)
addLuaSprite('tapete', false)
addLuaSprite('estante', false)
addLuaSprite('quadros', false)
addLuaSprite('sofa', false)
end