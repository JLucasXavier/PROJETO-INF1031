Spiderwin = {}
function Spiderwin:load()
  spider={}
  love.window.setMode(1500,700)
  spider.spidermenu = love.graphics.newImage("images/spidermenu.png")
   spider.background = love.graphics.newImage("images/background.png")
   spider.fontemenu = love.graphics.newFont("font/spiderfont.ttf",110)
   spider.fontemenu2 = love.graphics.newFont("font/game_over.ttf",200)
   spider.textofonte = love.graphics.newText(spider.fontemenu,'')
   spider.textofonte2 = love.graphics.newText(spider.fontemenu2,'')
   spider.textofonte3 = love.graphics.newText(spider.fontemenu2,'')
   return spider
end

function Spiderwin:draw()
  spider.textofonte:set(string.format("Miranha Wins!!"))
  spider.textofonte2:set(string.format("Press space to restart"))
  spider.textofonte3:set(string.format("Press esc to quit"))
  love.graphics.draw(spider.background,0,0)
  love.graphics.setColor(0,0,0)
  love.graphics.draw(spider.textofonte,400,50)
  love.graphics.draw(spider.textofonte2,400,200)
  love.graphics.draw(spider.textofonte3,400,300)
  love.graphics.setColor(1,1,1)
  love.graphics.draw(spider.spidermenu,10,50,0,1,1.3)
end