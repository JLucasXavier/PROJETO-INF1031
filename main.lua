Player = require("player1")
Player2 = require("player2")
require ("aranha")
require("aranha2")
LifePl = require("lifePlayer1")
LifePl2 = require("lifePlayer2")
Timer = require("timer")
require("venomwin")
require("spiderwin")

volume = 5
largura = 1500
altura = 700

function love.load()
  c=0
  x = love.mouse.getX()
  y = love.mouse.getY()
  state = "menu"
  love.window.setMode(largura,altura)
  medium = love.graphics.newFont(60)
  small = love.graphics.newFont(20)
  background = love.graphics.newImage("images/background.png")
  menu = love.graphics.newImage("images/menu.png")
  sommenu = love.audio.newSource("music/musicmenu.mp3","static")
  somluta = love.audio.newSource("music/mkmusic.mp3","static")
  fontemenu = love.graphics.newFont("font/game_over.ttf",150)
  fontemenu2 = love.graphics.newFont("font/game_over.ttf",60)
  textofontemenu = love.graphics.newText(fontemenu,'')
  textofonte2menu = love.graphics.newText(fontemenu,'')
  play1ft = love.graphics.newImage("images/spidermenu.png")
  play2ft = love.graphics.newImage("images/venommenu.png")
  Spiderwin:load()
  Venomwin:load()
end

function love.update(dt)
  if state == "menu" or state == "venomwin" or state == "spiderwin" then
    sommenu:setVolume(volume)
    sommenu:play()
    somluta:stop()
  else
    sommenu:stop()  
    Timer:update(dt)
    somluta:setVolume(volume)
    somluta:play()
  end
  if love.keyboard.isDown("return") then
		state = "playing"
  end
  if love.keyboard.isDown("space") then
		love.event.quit("restart")
  end
  if love.keyboard.isDown("escape") then
    love.event.quit()
  end
  if Timer.estado==true then
    Player:update(dt)
    Aranha:update(dt)
    Player2:update(dt)
    Aranha2:update(dt)
  end
end

function love.draw()
  soma=0
  if state == "menu" then
    textofontemenu: set(string.format("Press enter to start"))
    textofonte2menu: set(string.format("Press esc to quit"))
    love.graphics.draw(play1ft,870,100)
    love.graphics.draw(play2ft,1100,100)
    love.graphics.draw(menu,0,0,0,0.7,0.5)
    love.graphics.setFont(medium)
    love.graphics.setColor(1,1,1)
    love.graphics.draw(textofontemenu,870,50)
    love.graphics.setFont(medium)
    love.graphics.setColor(1,1,1)
    love.graphics.draw(textofonte2menu,870,altura/2+220)
  elseif state == "playing" then
    game()
    if Timer.estado==true then
      Aranha:draw()
      Aranha2:draw()
      love.graphics.setColor(1,1,1)
    end
  elseif state == "spiderwin" then
    Spiderwin:draw()
  elseif state == "venomwin" then
    Venomwin:draw()
  end
end

function game()
  love.graphics.setColor(1,1,1)
  love.graphics.draw(background,0,0)
  love.graphics.setFont(small)
  Timer:draw()
  LifePl:draw()
  LifePl2:draw()
  Player:draw()
  Player2:draw()
end

