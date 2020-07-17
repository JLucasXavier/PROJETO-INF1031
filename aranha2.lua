Aranha2 = {}
Aranha2.img = love.graphics.newImage("images/aranha2.png")

function Aranha2:create()
local aranha2 = {}
aranha2.img   = love.graphics.newImage("images/aranha2.png")
aranha2.w     = aranha2.img:getWidth()
aranha2.h     = aranha2.img:getHeight()
aranha2.x     = Player2.x
aranha2.y     = Player2.y+40
aranha2.ox    = aranha2.w / 2
aranha2.oy    = aranha2.h / 2
aranha2.sx    = 1
aranha2.sy    = 1
aranha2.r     = 0
aranha2.speed = 700
return aranha2
end

function Aranha2:update(dt)
	for i, a in ipairs(Player2.aranhas) do
		a.x    = a.x - a.speed * dt
    if Player.x<a.x+a.ox and a.x < Player.x + Player.w and Player.y < a.y+a.oy and a.y<Player.y + Player.h then
      Player.life=Player.life-1
      if Player.life==0 then
        Player.img = love.graphics.newImage("images/invisivel.png")
        state="venomwin"
      end
    end
	end
end

function Aranha2:draw()
  love.graphics.setColor(0,0,0)
	for i, b in ipairs(Player2.aranhas) do
		love.graphics.draw(b.img, b.x,b.y, b.r, b.sx, b.sy, b.ox, b.oy)
	end
end

