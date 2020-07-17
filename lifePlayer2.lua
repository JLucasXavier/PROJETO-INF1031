largura = 1500
altura = 700
local lifepl2={}
lifepl2.img = love.graphics.newImage("images/life.png")
lifepl2.x = 1300
lifepl2.w = lifepl2.img:getWidth()
lifepl2.h = lifepl2.img:getHeight()
lifepl2.y = 50
lifepl2.rot = 0
lifepl2.tamx = 0.15
lifepl2.tamy = 0.15
lifepl2.fonte = love.graphics.newFont("font/spiderfont.ttf",35)
  
function lifepl2:draw()
  soma=0
  love.graphics.setColor(1,1,1)
  textofonte = love.graphics.newText(lifepl2.fonte,'')
  textofonte: set(string.format("VENOM"))
  love.graphics.draw(textofonte,1320,10)
  if Player2.life==16 then
    soma=0
    for i=1,3 do
      love.graphics.draw(lifepl2.img, lifepl2.x+soma, lifepl2.y, lifepl2.rot,lifepl2.tamx,lifepl2.tamy,0,0)
      soma=soma+60
    end
  elseif Player2.life<16 and Player2.life>=10 then
    soma=0
    for i=1,1 do
      lifepl2.img = love.graphics.newImage("images/lifedead.png")
      love.graphics.draw(lifepl2.img, lifepl2.x+soma, lifepl2.y, lifepl2.rot,lifepl2.tamx,lifepl2.tamy,0,0)
      soma=soma+60
    end
    for i=1,2 do
      lifepl2.img = love.graphics.newImage("images/life.png")
      love.graphics.draw(lifepl2.img, lifepl2.x+soma, lifepl2.y, lifepl2.rot,lifepl2.tamx,lifepl2.tamy,0,0)
      soma=soma+60
    end
    elseif Player2.life<10 then
    soma=0
    for i=1,2 do
      lifepl2.img = love.graphics.newImage("images/lifedead.png")
      love.graphics.draw(lifepl2.img, lifepl2.x+soma, lifepl2.y, lifepl2.rot,lifepl2.tamx,lifepl2.tamy,0,0)
      soma=soma+60
    end
    for i=1,1 do
      lifepl2.img = love.graphics.newImage("images/life.png")
      love.graphics.draw(lifepl2.img, lifepl2.x+soma, lifepl2.y, lifepl2.rot,lifepl2.tamx,lifepl2.tamy,0,0)
      soma=soma+60
    end
  end
end
return lifepl2