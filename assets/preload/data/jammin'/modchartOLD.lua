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

stepForce = false
goUp = true

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)
end

function beatHit (beat)
    if stepForce then
        print('i am die')
    else
        if goUp then
            goUp=false
            for i=0,7 do
                tweenPosYAngle(i, getActorY(i) - 50, getActorAngle(i), .1)
            end
        else
            goUp=true
            for i=0,7 do
                tweenPosYAngle(i, getActorY(i) + 50, getActorAngle(i), .1)
            end
        end
    end
end

function stepHit (step)
    if step == 1 then
        for i=0,7 do
            tweenPosYAngle(i, getActorY(i) + 25, getActorAngle(i), .05)
        end
    end
    if step == 316 then
        for i=0,7 do
            tweenFadeOut(i, 0, .78)
        end
        stepForce=true;
    end
    if step == 328 then
        for i=0,3 do
            tweenFadeIn(i, 1, .35)
        end
    end
    if step == 328 then
        stepForce=false
    end
    if step == 384 then
        for i=4,7 do
            tweenFadeIn(i, 1, .35)
        end
    end

    if step == 457 then
        for i=4,7 do
            if i ~= 7 then--fade (bf) all but right note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 470 then
        for i=4,7 do
            if i ~= 5 then--fade (bf) all but down note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 486 then
        for i=4,7 do
            if i ~= 6 then--fade (bf) all but up note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 502 then
        for i=4,7 do
            if i ~= 4 then--fade (bf) all but left note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 518 then
        for i=4,7 do
            tweenFadeIn(i, 1, .35)
        end
    end

    if step == 522 then
        for i=0,3 do
            if i ~= 3 then--fade (sw) all but right note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 534 then
        for i=0,3 do
            if i ~= 1 then--fade (sw) all but down note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 550 then
        for i=0,3 do
            if i ~= 2 then--fade (sw) all but up note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 566 then
        for i=0,3 do
            if i ~= 0 then--fade (sw) all but left note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 585 then
        for i=0,7 do
            tweenFadeOut(i, 0, .35)
        end
    end
    if step == 598 then--fade (sw) all back in; only bf right note gets faded in
        for i=0,7 do
            if i < 4 then
                tweenFadeIn(i, 1, .35)
            else
                if i == 7 then
                    tweenFadeIn(i, 1, .35)
                end
            end
        end
    end
    if step == 614 then
        for i=4,7 do
            if i ~= 5 then--fade (bf) all but down note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 630 then
        for i=4,7 do
            if i ~= 6 then--fade (bf) all but up note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 646 then
        for i=4,7 do
            if i ~= 4 then--fade (bf) all but left note
                tweenFadeOut(i, 0, .35)
            else
                tweenFadeIn(i, 1, .35)
            end
        end
    end
    if step == 662 then
        for i=4,7 do
            tweenFadeIn(i, 1, .35)
        end
    end

    
    if step == 984 then--stop note boppin
        stepForce=true;
        for i=0,7 do
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'], getActorAngle(i), .05)
        end
    end
    if step == 1048 then
        for i=0,3 do
            tweenFadeOut(i, 0, 1)
        end
    end
    if step == 1112 then
        for i=4,7 do
            tweenFadeOut(i, 0, 1)
        end
    end
end
