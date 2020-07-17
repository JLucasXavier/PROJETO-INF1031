largura = 1500
altura = 700
local pl={}
pl.img = love.graphics.newImage("images/spider.png")
pl.x = 250
pl.w = pl.img:getWidth()
pl.h = pl.img:getHeight()
pl.y = altura -83
pl.rot = 0
pl.tamx = 1
pl.tamy = 1
pl.speed = 800
pl.aranhas = {}
pl.cd = 0.2
pl.canfire = 0
pl.life=16
  
function pl:update(dt)
	if love.keyboard.isDown("w") then
		pl.y = pl.y - pl.speed * dt
  end
	if love.keyboard.isDown("s") then
		pl.y = pl.y + pl.speed * dt
  end

  -- Para nao sair da tela
  if pl.y < 100 then
    pl.y = 100
  end
  if pl.y > altura-83 then
    pl.y = altura-83
  end
  
  pl.canfire = pl.canfire - dt
  if love.keyboard.isDown("c") and pl.canfire <= 0 then
    pl.canfire = pl.cd 
    fire()
  end
end

function pl:draw()
	love.graphics.draw(pl.img, pl.x, pl.y, pl.rot,pl.tamx,pl.tamy,0,0)
end

function fire()
  table.insert(pl.aranhas, Aranha:create())
end
return pl