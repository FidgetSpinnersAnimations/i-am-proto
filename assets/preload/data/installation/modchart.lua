function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)

end


function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/84)
    if curStep >= 1 and curStep < 320 then
        for i=0,8 do
            setActorY(_G['defaultStrum'..i..'Y'] + 30 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    end

    if curStep >= 320 then
        for i=0,8 do
            setActorY(_G['defaultStrum'..i..'Y'] - 5 * math.sin((currentBeat + i*0.25) * math.pi), i)
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
