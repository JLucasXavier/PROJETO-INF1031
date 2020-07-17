local timer={}
timer.fontemenu = love.graphics.newFont("font/spiderfont.ttf",90)
timer.fontemenu2 = love.graphics.newFont("font/game_over.ttf",250)
timer.fonte = love.graphics.newText(timer.fontemenu2,'')
timer.fonte1 = love.graphics.newText(timer.fontemenu,'')
timer.tempo = 10
timer.contador=10
timer.vazia=""
timer.estado = false


function timer:update(dt)
  timer.tempo = timer.tempo - dt 
  timer.contador= timer.contador - dt 
if timer.tempo < 1 then
    timer.estado = true
end
end

function timer:draw()
    timer.fonte: set(string.format("%2.0f",timer.tempo))
    timer.fonte1: set(string.format("FIGHT"))
    if timer.estado == false then
      love.graphics.draw(timer.fonte,670,300)
    else
      timer.fonte: set(string.format(timer.vazia))
      love.graphics.draw(timer.fonte,670,300)
    end
    if timer.tempo < 1 and timer.contador>-1 then
        love.graphics.draw(timer.fonte1,590,300)
    elseif timer.contador<-1 then
      timer.fonte1: set(string.format(timer.vazia))
      love.graphics.draw(timer.fonte1,590,300)
    end
end

return timer