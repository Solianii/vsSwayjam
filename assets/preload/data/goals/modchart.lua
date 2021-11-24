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
end

function stepHit (step)
    --if step == 1 then--fade out all
    --    for i=0,7 do
    --        tweenFadeOut(i, 0, .5)
    --    end
    --end
    
    --[[
    if step == 8 then
        tweenPosYAngle(0, _G['defaultStrum0Y'] - 50, getActorAngle(0), .25, 'setDefaultY')
        tweenPosYAngle(4, _G['defaultStrum4Y'] + 50, getActorAngle(4), .25, 'setDefaultY')
    end
    if step == 16 then
        tweenPosYAngle(1, _G['defaultStrum1Y'] - 50, getActorAngle(1), .25, 'setDefaultY')
        tweenPosYAngle(5, _G['defaultStrum5Y'] + 50, getActorAngle(5), .25, 'setDefaultY')
    end
    if step == 24 then
        tweenPosYAngle(2, _G['defaultStrum2Y'] - 50, getActorAngle(2), .25, 'setDefaultY')
        tweenPosYAngle(6, _G['defaultStrum6Y'] + 50, getActorAngle(6), .25, 'setDefaultY')
    end
    if step == 32 then
        tweenPosYAngle(3, _G['defaultStrum3Y'] - 50, getActorAngle(3), .25, 'setDefaultY')
        tweenPosYAngle(7, _G['defaultStrum7Y'] + 50, getActorAngle(7), .25, 'setDefaultY')
    end

    if step == 40 then
        tweenPosYAngle(3, _G['defaultStrum3Y'] + 50, getActorAngle(3), .25, 'setDefaultY')
        tweenPosYAngle(4, _G['defaultStrum4Y'] - 50, getActorAngle(4), .25, 'setDefaultY')
    end
    if step == 48 then
        tweenPosYAngle(2, _G['defaultStrum2Y'] + 50, getActorAngle(2), .25, 'setDefaultY')
        tweenPosYAngle(5, _G['defaultStrum5Y'] - 50, getActorAngle(5), .25, 'setDefaultY')
    end
    if step == 56 then
        tweenPosYAngle(1, _G['defaultStrum1Y'] + 50, getActorAngle(1), .25, 'setDefaultY')
        tweenPosYAngle(6, _G['defaultStrum6Y'] - 50, getActorAngle(6), .25, 'setDefaultY')
    end
    if step == 64 then
        tweenPosYAngle(0, _G['defaultStrum0Y'] + 50, getActorAngle(0), .25, 'setDefaultY')
        tweenPosYAngle(7, _G['defaultStrum7Y'] - 50, getActorAngle(7), .25, 'setDefaultY')
    end
    ]]--

    if step == 8 then
        tweenPosYAngle(0, getActorY(0), getActorAngle(0)-90, .25)
        tweenPosYAngle(4, getActorY(4), getActorAngle(4)-90, .25)
    end
    if step == 16 then
        tweenPosYAngle(1, getActorY(1), getActorAngle(1)-90, .25)
        tweenPosYAngle(5, getActorY(5), getActorAngle(5)-90, .25)
    end
    if step == 24 then
        tweenPosYAngle(2, getActorY(2), getActorAngle(2)-90, .25)
        tweenPosYAngle(6, getActorY(6), getActorAngle(6)-90, .25)
    end
    if step == 32 then
        tweenPosYAngle(3, getActorY(3), getActorAngle(3)-90, .25)
        tweenPosYAngle(7, getActorY(7), getActorAngle(7)-90, .25)
    end

    if step == 40 then
        tweenFadeIn(3, .15, .25)
        tweenPosYAngle(3, getActorY(3)+200, getActorAngle(3), .25)
        tweenFadeIn(4, .15, .25)
        tweenPosYAngle(4, getActorY(4)+200, getActorAngle(4), .25)
    end
    if step == 48 then
        tweenFadeIn(2, .15, .25)
        tweenPosYAngle(2, getActorY(2)+150, getActorAngle(2), .25)
        tweenFadeIn(5, .15, .25)
        tweenPosYAngle(5, getActorY(5)+150, getActorAngle(5), .25)
    end
    if step == 56 then
        tweenFadeIn(1, .15, .25)
        tweenPosYAngle(1, getActorY(1)+100, getActorAngle(1), .25)
        tweenFadeIn(6, .15, .25)
        tweenPosYAngle(6, getActorY(6)+100, getActorAngle(6), .25)
    end
    if step == 64 then
        tweenFadeIn(0, .15, .25)
        tweenPosYAngle(0, getActorY(0)+50, getActorAngle(0), .25)
        tweenFadeIn(7, .15, .25)
        tweenPosYAngle(7, getActorY(7)+50, getActorAngle(7), .25)
    end
    if step == 72 then
        tweenPosYAngle(3, getActorY(3)-200, getActorAngle(3)+90, .25)
        tweenPosYAngle(4, getActorY(4)-200, getActorAngle(4)+90, .25)

        tweenPosYAngle(2, getActorY(2)-150, getActorAngle(2)+90, .25)
        tweenPosYAngle(5, getActorY(5)-150, getActorAngle(5)+90, .25)

        tweenPosYAngle(1, getActorY(1)-100, getActorAngle(1)+90, .25)
        tweenPosYAngle(6, getActorY(6)-100, getActorAngle(6)+90, .25)

        tweenPosYAngle(0, getActorY(0)-50, getActorAngle(0)+90, .25)
        tweenPosYAngle(7, getActorY(7)-50, getActorAngle(7)+90, .25)
    end

    if step == 80 then
        for i=0,1 do
            tweenFadeIn(i, .50, .25)
        end
    end
    if step == 88 then
        for i=2,3 do
            tweenFadeIn(i, .50, .25)
        end
    end
    if step == 96 then
        for i=4,5 do
            tweenFadeIn(i, .50, .25)
        end
    end
    if step == 104 then
        for i=6,7 do
            tweenFadeIn(i, .50, .25)
        end
    end
    if step == 112 then
        for i=0,7 do
            tweenFadeIn(i, 1, .25)
        end
    end
    if step == 119 then
        for i=0,7 do
            tweenFadeOut(i, 0, .25)
        end
    end

    --start of slow#1a
    if step == 120 then--fade in s left
        tweenFadeIn(0, 1, .5)
    end
    if step == 138 then--fade out s left
        tweenFadeOut(0, 0, .5)
    end
    if step == 136 then--fade in s up
        tweenFadeIn(2, 1, .5)
    end
    if step == 154 then--fade out s up
        tweenFadeOut(2, 0, .5)
    end
    if step == 152 then--fade in s down
        tweenFadeIn(1, 1, .5)
    end
    if step == 170 then--fade out s down
        tweenFadeOut(1, 0, .5)
    end
    if step == 168 then--fade in s right
        tweenFadeIn(3, 1, .5)
    end
    if step == 186 then--fade out s right
        tweenFadeOut(3, 0, .5)
    end

    if step == 184 then--fade in b left
        tweenFadeIn(4, 1, .5)
    end
    if step == 202 then--fade out b left
        tweenFadeOut(4, 0, .5)
    end
    if step == 200 then--fade in b up
        tweenFadeIn(6, 1, .5)
    end
    if step == 218 then--fade out b up
        tweenFadeOut(6, 0, .5)
    end
    if step == 216 then--fade in b down
        tweenFadeIn(5, 1, .5)
    end
    if step == 234 then--fade out b down
        tweenFadeOut(5, 0, .5)
    end
    if step == 232 then--fade in b right
        tweenFadeIn(7, 1, .5)
    end
    if step == 250 then--fade out b right
        tweenFadeOut(7, 0, .5)
    end
    --end of slow#1a
    --start of slow#1b
    if step == 248 then--fade in s right
        tweenFadeIn(3, 1, .5)
    end
    if step == 264 then--fade in s down
        tweenFadeIn(1, 1, .5)
    end
    if step == 280 then--fade in s up
        tweenFadeIn(2, 1, .5)
    end
    if step == 296 then--fade in s left
        tweenFadeIn(0, 1, .5)
    end

    if step == 312 then--fade in b right
        tweenFadeIn(7, 1, .5)
    end
    if step == 328 then--fade in b down
        tweenFadeIn(5, 1, .5)
    end
    if step == 344 then--fade in b up
        tweenFadeIn(6, 1, .5)
    end
    if step == 360 then--fade in b left
        tweenFadeIn(4, 1, .5)
    end
    --end of slow#1b
    --start of misc
    if step == 432 then--fade out s (1/3)
        for i=0,3 do
            tweenFadeOut(i, .6, .25)
        end
    end
    if step == 436 then--fade out s (2/3)
        for i=0,3 do
            tweenFadeOut(i, .3, .25)
        end
    end
    if step == 440 then--fade out s (3/3)
        for i=0,3 do
            tweenFadeOut(i, 0, .25)
        end
    end

    if step == 496 then--fade out b (1/3)
        for i=4,7 do
            tweenFadeOut(i, .6, .25)
        end
    end
    if step == 500 then--fade out b (2/3)
        for i=4,7 do
            tweenFadeOut(i, .3, .25)
        end
    end
    if step == 504 then--fade out b (3/3) & fade in s
        for i=4,7 do
            tweenFadeOut(i, 0, .25)
        end
        for i=0,3 do
            tweenFadeOut(i, 1, .25)
        end
    end
    --end of misc

    --start of fast#1a sway
    if step == 512 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 514 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 515 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 516 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
    if step == 518 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 519 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 520 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 525 then-- fade out s (1/2)
        tweenFadeOut(1, .5, .15)
    end
    if step == 527 then-- fade out s (2/2)
        tweenFadeOut(1, 0, .25)
    end

    if step == 528 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 530 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 531 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 532 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 534 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 535 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 536 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
    if step == 541 then-- fade out s (1/2)
        tweenFadeOut(0, .5, .15)
    end
    if step == 543 then-- fade out s (2/2)
        tweenFadeOut(0, 0, .25)
    end

    if step == 544 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 546 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 548 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 550 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 552 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
    if step == 557 then-- fade out s (1/2)
        tweenFadeOut(3, .5, .15)
    end
    if step == 559 then-- fade out s (2/2)
        tweenFadeOut(3, 0, .25)
    end

    if step == 560 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 562 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 563 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 564 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 566 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 567 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 568 then-- fade in bf; s up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
        for i=4,7 do
                tweenFadeOut(i, .75, .5)
        end
    end

    if step == 573 then-- fade out s (1/2)
        tweenFadeOut(2, .5, .15)
    end
    if step == 575 then-- fade out s (2/2)
        tweenFadeOut(2, 0, .25)
    end

    --end of fast#1a sway
    --start of fast#1a bf
    if step == 576 then-- fade  out s; bf up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
        for i=0,3 do
            tweenFadeOut(i, 0, .5)
        end
    end
    if step == 578 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 579 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 580 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
    if step == 582 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 583 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 584 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 589 then-- fade out b (1/2)
        tweenFadeOut(5, .875, .15)
    end
    if step == 591 then-- fade out b (2/2)
        tweenFadeOut(5, .75, .25)
    end

    if step == 592 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 594 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 595 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 596 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 598 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 599 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 600 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 605 then-- fade out b (1/2)
        tweenFadeOut(4, .875, .15)
    end
    if step == 607 then-- fade out b (2/2)
        tweenFadeOut(4, .75, .25)
    end

    if step == 608 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 610 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 612 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 614 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 616 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 621 then-- fade out b (1/2)
        tweenFadeOut(7, .875, .15)
    end
    if step == 623 then-- fade out b (2/2)
        tweenFadeOut(7, .75, .25)
    end

    if step == 624 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 626 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 627 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 628 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 630 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 631 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 632 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 637 then-- fade out b (1/2)
        tweenFadeOut(6, .875, .15)
    end
    if step == 640 then--fade out all (idk technically 2/2)
        for i=4,7 do
            tweenFadeOut(i, 0, 2)
        end
    end
    --end of fast#1a bf

    --long pause

    if step == 760 then--fade in s
        for i=0,3 do
            tweenFadeIn(i, 1, .5)
        end
    end

    if step == 816 then--fade out s (1/3); fade in b (1/3)
        for i=0,3 do
            tweenFadeOut(i, .6, .25)
        end
        for i=4,7 do
            tweenFadeOut(i, .3, .25)
        end
    end
    if step == 820 then--fade out s (2/3); fade in b (2/3)
        for i=0,3 do
            tweenFadeOut(i, .3, .25)
        end
        for i=4,7 do
            tweenFadeOut(i, .6, .25)
        end
    end
    if step == 824 then--fade out s (3/3); fade in b (3/3)
        for i=0,3 do
            tweenFadeOut(i, 0, .25)
        end
        for i=4,7 do
            tweenFadeOut(i, 1, .25)
        end
    end

    if step == 880 then--fade out b (1/3); fade in s
        for i=4,7 do
            tweenFadeOut(i, .6, .25)
        end
        for i=0,3 do
            tweenFadeOut(i, .25, .5)
        end
    end
    if step == 884 then--fade out b (2/3)
        for i=4,7 do
            tweenFadeOut(i, .3, .25)
        end
    end

    -- start of slow#2a
    if step == 888 then--fade in s left; fade out b
        tweenFadeIn(0, 1, .5)
        for i=4,7 do
            tweenFadeOut(i, 0, .25)
        end
    end
    if step == 904 then--fade in s down
        tweenFadeIn(1, 1, .5)
    end
    if step == 920 then--fade in s up
        tweenFadeIn(2, 1, .5)
    end
    if step == 936 then--fade in s right
        tweenFadeIn(3, 1, .5)
    end
    
    if step == 944 then--fade in b
        for i=4,7 do
            tweenFadeOut(i, .25, .5)
        end
    end

    if step == 952 then--fade in b left
        tweenFadeIn(4, 1, .5)
    end
    if step == 968 then--fade in b down
        tweenFadeIn(5, 1, .5)
    end
    if step == 984 then--fade in b up
        tweenFadeIn(6, 1, .5)
    end
    if step == 1000 then--fade in b right
        tweenFadeIn(7, 1, .5)
    end
    --end of slow#2a

    --start of fast#1b sway
    if step == 1024 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1026 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1027 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1028 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
    if step == 1030 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1031 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1032 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 1037 then-- fade out s (1/2)
        tweenFadeOut(1, .5, .15)
    end
    if step == 1039 then-- fade out s (2/2)
        tweenFadeOut(1, 0, .25)
    end

    if step == 1040 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1042 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1043 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1044 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1046 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1047 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1048 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 1053 then-- fade out s (1/2)
        tweenFadeOut(0, .5, .15)
    end
    if step == 1055 then-- fade out s (2/2)
        tweenFadeOut(0, 0, .25)
    end

    if step == 1056 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1058 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1060 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1062 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1064 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    
    if step == 1069 then-- fade out s (1/2)
        tweenFadeOut(3, .5, .15)
    end
    if step == 1071 then-- fade out s (2/2)
        tweenFadeOut(3, 0, .25)
    end

    if step == 1072 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1074 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1075 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1076 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1078 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1079 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1080 then-- fade in bf; s up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
        for i=4,7 do
            tweenFadeOut(i, .75, .5)
        end
    end

    if step == 1085 then-- fade out s (1/2)
        tweenFadeOut(2, .5, .15)
    end
    if step == 1087 then-- fade out s (2/2)
        tweenFadeOut(2, 0, .25)
    end

    --end of fast#1b sway
    --start of fast#1b bf
    if step == 1088 then-- fade  out s; bf up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
        for i=0,3 do
            tweenFadeOut(i, 0, .5)
        end
    end
    if step == 1090 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1091 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1092 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
    if step == 1094 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1095 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1096 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 1101 then-- fade out b (1/2)
        tweenFadeOut(5, .875, .15)
    end
    if step == 1103 then-- fade out b (2/2)
        tweenFadeOut(5, .75, .25)
    end

    if step == 1104 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1106 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1107 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1108 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1110 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1111 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1112 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 1117 then-- fade out b (1/2)
        tweenFadeOut(4, .875, .15)
    end
    if step == 1119 then-- fade out b (2/2)
        tweenFadeOut(4, .75, .25)
    end

    if step == 1120 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1122 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1124 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1126 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1128 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 1133 then-- fade out b (1/2)
        tweenFadeOut(7, .875, .15)
    end
    if step == 1135 then-- fade out b (2/2)
        tweenFadeOut(7, .75, .25)
    end

    if step == 1136 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1138 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1139 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1140 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1142 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1143 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1144 then-- up only; fade in s
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
        for i=0,3 do
            tweenFadeOut(i, .25, .25)
        end
    end

    if step == 1149 then-- fade out b (1/2)
        tweenFadeOut(6, .875, .15)
    end
    if step == 1151 then--fade out bf (idk technically 2/2)
        for i=4,7 do
            tweenFadeOut(i, 0.75, .25)
        end
    end
    --end of fast#1b bf
    --start of fast#2a sway
    if step == 1152 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1154 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1155 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1156 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1158 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1159 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1160 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 1165 then-- fade out s (1/2)
        tweenFadeOut(1, .5, .15)
    end
    if step == 1167 then-- fade out s (2/2)
        tweenFadeOut(1, 0, .25)
    end
    
    if step == 1168 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1170 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1171 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1172 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1174 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1175 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1176 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
	if step == 1181 then-- fade out s (1/2)
        tweenFadeOut(1, .5, .15)
    end
    if step == 1181 then-- fade out s (2/2)
        tweenFadeOut(1, 0, .25)
    end

    if step == 1184 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1186 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1188 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1190 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1192 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
	if step == 1197 then-- fade out s (1/2)
        tweenFadeOut(1, .5, .15)
    end
    if step == 1199 then-- fade out s (2/2)
        tweenFadeOut(1, 0, .25)
    end
	
    if step == 1200 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1202 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1203 then-- right only
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1204 then-- down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1206 then-- up only
        for i=0,3 do
            if i ~= 2 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1207 then-- left only
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1208 then-- fade in bf; s down only
        for i=0,3 do
            if i ~= 1 then
                tweenFadeOut(i, .25, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
        for i=4,7 do
            tweenFadeOut(i, .75, .5)
        end
    end

	if step == 1213 then-- fade out s (1/2)
        tweenFadeOut(1, .5, .15)
    end
    --end of fast#2a sway
    --start of fast#2a bf
    if step == 1216 then-- fade  out s; bf down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
        for i=0,3 do
            tweenFadeOut(i, 0, .5)
        end
    end
    if step == 1218 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1219 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1220 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1222 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1223 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1224 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end

    if step == 1229 then-- fade out b (1/2)
        tweenFadeOut(5, .875, .15)
    end
    if step == 1231 then-- fade out b (2/2)
        tweenFadeOut(5, .75, .25)
    end
    if step == 1232 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1234 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1235 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1236 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1238 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1239 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1240 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
	if step == 1245 then-- fade out b (1/2)
        tweenFadeOut(5, .875, .15)
    end
    if step == 1247 then-- fade out b (2/2)
        tweenFadeOut(5, .75, .25)
    end

    if step == 1248 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1250 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1252 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1254 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1256 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    
	if step == 1261 then-- fade out b (1/2)
        tweenFadeOut(5, .875, .15)
    end
    if step == 1263 then-- fade out b (2/2)
        tweenFadeOut(5, .75, .25)
    end
    
    if step == 1264 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1266 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1267 then-- right only
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1268 then-- down only
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1270 then-- up only
        for i=4,7 do
            if i ~= 6 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
	if step == 1271 then-- left only
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
    end
    if step == 1272 then-- down only; fade in s
        for i=4,7 do
            if i ~= 5 then
                tweenFadeOut(i, .75, .08)
            else
                tweenFadeIn(i, 1, .08)
            end
        end
        for i=0,3 do
            tweenFadeIn(i, 1, .25)
        end
    end
    
	if step == 1277 then-- fade out b (1/2)
        tweenFadeOut(5, .5, .15)
    end
    if step == 1279 then--fade out all (idk technically 2/2)
        for i=4,7 do
            tweenFadeOut(i, 0, .25)
        end
    end

    --end of fast#2a bf

    --start of end
    if step == 1280 then--fade out left (1/2)
        tweenFadeOut(0, .5, .25)
    end
    if step == 1288 then--fade out left (2/2)
        tweenFadeOut(0, 0, .25)
    end
    if step == 1296 then--fade out down (1/2)
        tweenFadeOut(1, .5, .25)
    end
    if step == 1304 then--fade out down (2/2)
        tweenFadeOut(1, 0, .25)
    end
    if step == 1312 then--fade out up (1/2)
        tweenFadeOut(2, .5, .25)
    end
    if step == 1320 then--fade out up (2/2)
        tweenFadeOut(2, 0, .25)
    end
    if step == 1328 then--fade out right (1/2); fade in b
        tweenFadeOut(3, .5, .25)
        for i=4,7 do
            tweenFadeIn(i, 1, 1.25)
        end
    end
    if step == 1336 then--fade out right (2/2)
        tweenFadeOut(3, 0, .25)
    end

    if step == 1344 then--fade out left (1/2)
        tweenFadeOut(4, .5, .25)
    end
    if step == 1352 then--fade out left (2/2)
        tweenFadeOut(4, 0, .25)
    end
    if step == 1360 then--fade out down (1/2)
        tweenFadeOut(5, .5, .25)
    end
    if step == 1368 then--fade out down (2/2)
        tweenFadeOut(5, 0, .25)
    end
    if step == 1376 then--fade out up (1/2)
        tweenFadeOut(6, .5, .25)
    end
    if step == 1384 then--fade out up (2/2)
        tweenFadeOut(6, 0, .25)
    end
    if step == 1392 then--fade out right (1/2)
        tweenFadeOut(7, .5, .25)
    end
    if step == 1400 then--fade out right (2/2)
        tweenFadeOut(7, 0, .25)
    end
end
