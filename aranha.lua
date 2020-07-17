Aranha = {}
Aranha.img = love.graphics.newImage("images/aranha2.png")

function Aranha:create()
  local aranha = {}
  aranha.img   = love.graphics.newImage("images/aranha2.png")
  aranha.w     = aranha.img:getWidth()
  aranha.h     = aranha.img:getHeight()
  aranha.x     = Player.x
  aranha.y     = Player.y+40
  aranha.ox    = aranha.w / 2
  aranha.oy    = aranha.h / 2
  aranha.sx    = 1
  aranha.sy    = 1
  aranha.r     = 0
  aranha.speed = 700
  return aranha
end

function Aranha:update(dt)
  for i, a in ipairs(Player.aranhas) do
    a.x    = a.x + a.speed * dt
    if Player2.x<a.x+a.ox and a.x < Player2.x + Player2.w and Player2.y < a.y+a.oy and a.y<Player2.y + Player2.h then
       Player2.life=Player2.life-1
      if Player2.life==0 then
        Player2.img = love.graphics.newImage("images/invisivel.png")
        state="spiderwin"
      end
    end
  end
end

function Aranha:draw()
  for i, b in ipairs(Player.aranhas) do
    love.graphics.draw(b.img, b.x,b.y, b.r, b.sx, b.sy, b.ox, b.oy)
  end
end