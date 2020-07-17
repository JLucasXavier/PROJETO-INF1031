largura = 1500
altura = 700
local pl2={}
pl2.img = love.graphics.newImage("images/venom.png")
pl2.x = largura - 320
pl2.w = pl2.img:getWidth()
pl2.h = pl2.img:getHeight()
pl2.y = altura - 83
pl2.rot = 0
pl2.tamx = 1
pl2.tamy = 1
pl2.speed = 800
pl2.aranhas = {}
pl2.cd = 0.2
pl2.canfire = 0
pl2.life=16
  
function pl2:update(dt)
  -- Movimento Personagem
	if love.keyboard.isDown("up") then
		pl2.y = pl2.y - pl2.speed * dt
  end
	if love.keyboard.isDown("down") then
		pl2.y = pl2.y + pl2.speed * dt
  end

  -- Para nao sair da tela
  if pl2.y < 100 then
    pl2.y = 100
  end
  if pl2.y > altura-83 then
    pl2.y = altura-83
  end
  
  -- Tiro
  pl2.canfire = pl2.canfire - dt
	if love.keyboard.isDown("p") and pl2.canfire <= 0 then
		pl2.canfire = pl2.cd
		fire1()
	end
  
end

function pl2:draw()
	love.graphics.draw(pl2.img, pl2.x, pl2.y, pl2.rot,pl2.tamx,pl2.tamy,0,0)
end

function fire1()
	table.insert(pl2.aranhas, Aranha2:create())
end

return pl2