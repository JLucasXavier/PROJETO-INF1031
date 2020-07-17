largura = 1500
altura = 700
local lifepl={}
lifepl.img = love.graphics.newImage("images/life.png")
lifepl.x = 30
lifepl.w = lifepl.img:getWidth()
lifepl.h = lifepl.img:getHeight()
lifepl.y = 50
lifepl.rot = 0
lifepl.tamx = 0.15
lifepl.tamy = 0.15
lifepl.fonte = love.graphics.newFont("font/spiderfont.ttf",35)
lifepl.fonte2 = love.graphics.newFont("font/spiderfont.ttf",70)

function lifepl:draw()
  love.graphics.setColor(1,1,1)
  textofonte = love.graphics.newText(lifepl.fonte,'')
  textofonte2 = love.graphics.newText(lifepl.fonte2,'')
  textofonte: set(string.format("SPIDER MAN"))
  textofonte2: set(string.format("VS"))
  love.graphics.draw(textofonte,10,10)
  love.graphics.draw(textofonte2,largura/2-70,10)
  if Player.life==16 then
    soma=0
    for i=1,3 do
      love.graphics.draw(lifepl.img, lifepl.x+soma, lifepl.y, lifepl.rot,lifepl.tamx,lifepl.tamy,0,0)
      soma=soma+60
    end
  elseif Player.life<16 and Player.life>=10 then
    soma=0
    for i=1,2 do
      lifepl.img = love.graphics.newImage("images/life.png")
      love.graphics.draw(lifepl.img, lifepl.x+soma, lifepl.y, lifepl.rot,lifepl.tamx,lifepl.tamy,0,0)
      soma=soma+60
    end
    for i=1,1 do
      lifepl.img = love.graphics.newImage("images/lifedead.png")
      love.graphics.draw(lifepl.img, lifepl.x+soma, lifepl.y, lifepl.rot,lifepl.tamx,lifepl.tamy,0,0)
      soma=soma+60
    end
  elseif Player.life<10 then
    soma=0
    for i=1,1 do
      lifepl.img = love.graphics.newImage("images/life.png")
      love.graphics.draw(lifepl.img, lifepl.x+soma, lifepl.y, lifepl.rot,lifepl.tamx,lifepl.tamy,0,0)
      soma=soma+60
    end
    for i=1,2 do
      lifepl.img = love.graphics.newImage("images/lifedead.png")
      love.graphics.draw(lifepl.img, lifepl.x+soma, lifepl.y, lifepl.rot,lifepl.tamx,lifepl.tamy,0,0)
      soma=soma+60
    end
  end
end

return lifepl