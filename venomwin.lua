Venomwin = {}
function Venomwin:load()
  venom={}
  love.window.setMode(1500,700)
  venom.venommenu = love.graphics.newImage("images/venommenu2.png")
  venom.background = love.graphics.newImage("images/background.png")
  venom.fontemenu = love.graphics.newFont("font/spiderfont.ttf",110)
  venom.fontemenu2 = love.graphics.newFont("font/game_over.ttf",200)
  venom.textofonte = love.graphics.newText(venom.fontemenu,'')
  venom.textofonte2 = love.graphics.newText(venom.fontemenu2,'')
  venom.textofonte3 = love.graphics.newText(venom.fontemenu2,'')
  return venom
end

function Venomwin:draw()
  venom.textofonte: set(string.format("Venom Wins!!"))
  venom.textofonte2: set(string.format("Press space to restart"))
  venom.textofonte3: set(string.format("Press esc to quit"))
  love.graphics.draw(venom.background,0,0)
  love.graphics.setColor(0,0,0)
  love.graphics.draw(venom.textofonte,400,50)
  love.graphics.draw(venom.textofonte2,400,200)
  love.graphics.draw(venom.textofonte3,400,300)
  love.graphics.setColor(1,1,1)
  love.graphics.draw(venom.venommenu,10,50,0,1,1.3)
end