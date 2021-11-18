function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)

end


function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/84)
    if curStep >= 192 and curStep < 320 then
        for i=0,8 do
            setActorY(_G['defaultStrum'..i..'Y'] + 5 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    end

    if curStep >= 320 and curStep < 576 then
        for i=0,8 do
            setActorY(_G['defaultStrum'..i..'Y'] - 5 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    end

    if curStep >= 576 and curStep < 832 then
        for i=0,8 do
            setActorX(_G['defaultStrum'..i..'X'] + 10 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    end

    if curStep >= 832 and curStep < 960 then
        for i=0,8 do
            setActorX(_G['defaultStrum'..i..'X'] - 20 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    end

    if curStep >= 960 and curStep < 1216 then
        for i=0,8 do
            setActorX(_G['defaultStrum'..i..'X'] + 10 * math.sin((currentBeat + i*0.25) * math.pi), i)
            setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    end

    if curStep >= 1216 then
        for i=0,8 do
            setActorX(_G['defaultStrum'..i..'X'] + 20 * math.sin((currentBeat + i*0.25) * math.pi), i)
            setActorY(_G['defaultStrum'..i..'Y'] + 20 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    end
end



function beatHit (beat)
   -- do nothing

end 

function stepHit (step)


end

function keyPressed (key)
   -- do nothing
end

print("Mod Chart script loaded :)")
