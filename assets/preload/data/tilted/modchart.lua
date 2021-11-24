function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
end

function setDefaultX(id)
	_G['defaultStrum'..id..'X'] = getActorX(id)
    setActorAngle(0,id)
end
function setDefaultY(id)
	_G['defaultStrum'..id..'Y'] = getActorY(id)
    setActorAngle(0,id)
end

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)
end

function beatHit (beat)

end

function stepHit (step)
    if step == 1 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 4 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end

    if step == 8 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 9 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 10 then
        for i=0,7 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] - 50, getActorAngle(i), .05, 'setDefaultY')
        end
    end
    if step == 11 then
        for i=0,7 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 50, getActorAngle(i), .05, 'setDefaultY')
        end
    end
    if step == 12 then
        for i=0,7 do
            tweenPos(i, _G['defaultStrum'..i..'X'] - 200, _G['defaultStrum'..i..'Y'], .35, 'setDefaultX')
            if i > 3 then
                tweenFadeOut(i, 0, .35)
            end
        end
    end

    if step == 16 then
        for i=0,4 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 300, getActorAngle(i), .05, 'setDefaultX')
        end
        for i=4,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 200, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 17 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end

    if step == 20 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 21 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 23 then
        for i=0,3 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] - 50, getActorAngle(i), .05, 'setDefaultY')
        end
    end
    if step == 25 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 150, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 26 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 28 then
        for i=0,3 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 100, getActorAngle(i), .05, 'setDefaultY')
        end
    end
    if step == 30 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end

    
    if step == 32 then
        for i=0,3 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] - 50, getActorAngle(i), .05, 'setDefaultY')
        end
    end
    if step == 34 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 36 then
        for i=0,3 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] - 50, getActorAngle(i), .05, 'setDefaultY')
        end
    end
    if step == 38 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 40 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 50, getActorAngle(i), .05, 'setDefaultX')
        end
        for i=4,7 do
            tweenFadeIn(i, 1, .35)
        end
    end
    if step == 42 then
        for i=0,3 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 50, getActorAngle(i), .05, 'setDefaultY')
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 43 then
        for i=0,3 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] - 50, getActorAngle(i), .05, 'setDefaultY')
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 150, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 44 then
        for i=0,3 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 50, getActorAngle(i), .05, 'setDefaultX')
        end
    end
    if step == 46 then
        for i=0,3 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 50, getActorAngle(i), .05, 'setDefaultY')
        end
    end
end
