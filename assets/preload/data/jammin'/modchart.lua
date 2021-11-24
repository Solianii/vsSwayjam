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
        if beat % 2 ~= 0 then
            for i=0,7 do
                tweenPos(i, getActorX(i), getActorY(i) - 50, .1)
            end
        else
            for i=0,7 do
                tweenPos(i, getActorX(i), getActorY(i) + 50, .1)
            end
        end
        --[[
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
        end]]--
    end
end

function stepHit (step)
    --start slow#1
    if step == 1 then
        for i=0,7 do
            tweenPos(i, getActorX(i), getActorY(i) + 25, .05)
            if i > 3 then
                tweenFadeOut(i, 0.5, .2)
            end
        end
    end
    if step == 28 then--fade out s; fade in b
        for i=0,3 do
            tweenFadeOut(i, .5, .2)
        end
        for i=4,7 do
            tweenFadeIn(i, 1, .2)
        end
    end
    if step == 60 then--fade out b; fade in s
        for i=4,7 do
            tweenFadeOut(i, .5, .2)
        end
        for i=0,3 do
            tweenFadeIn(i, 1, .2)
        end
    end
    if step == 116 then--fade out s up
        tweenFadeOut(2, .5, .2)
    end
    if step == 120 then--fade out s left (1/2)
        tweenFadeOut(0, .75, .2)
    end
    if step == 121 then--fade out s down
        tweenFadeOut(1, .5, .2)
    end
    if step == 122 then--fade out s left (2/2)
        tweenFadeOut(0, .5, .2)
    end
    if step == 124 then--fade out s right; fade in b
        tweenFadeOut(3, .5, .5)
        for i=4,7 do
            tweenFadeIn(i, 1, .2)
        end
    end

    
    if step == 180 then--fade out b up
        tweenFadeOut(6, .5, .2)
    end
    if step == 184 then--fade out b left (1/2)
        tweenFadeOut(4, .75, .2)
    end
    if step == 185 then--fade out b down
        tweenFadeOut(5, .5, .2)
    end
    if step == 186 then--fade out b left (2/2)
        tweenFadeOut(4, .5, .2)
    end
    if step == 188 then--fade in all (half) BUT s up & b down
        for i=0,7 do
            if i==2 or i==5 then
                tweenFadeIn(i, 1, .2)
            else
                tweenFadeOut(i, .5, .2)
            end
        end
    end
    if step == 192 then--fade in all (half) BUT s left & b right
        for i=0,7 do
            if i==0 or i==7 then
                tweenFadeIn(i, 1, .2)
            else
                tweenFadeOut(i, .5, .2)
            end
        end
    end
    --start of beginning#2a
    if step == 197 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    if step == 198 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 200 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 202 then--fade out s down & b up
        tweenFadeOut(1, .5, .2)
        tweenFadeOut(6, .5, .2)
    end
    if step == 207 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    
    if step == 204 then--fade in s up & b down
        tweenFadeIn(2, 1, .2)
        tweenFadeIn(5, 1, .2)
    end
    if step == 209 then--fade out s up & b down
        tweenFadeOut(2, .5, .2)
        tweenFadeOut(5, .5, .2)
    end
    if step == 206 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 211 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    if step == 207 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 213 then--fade out s down & b up
        tweenFadeOut(1, .5, .2)
        tweenFadeOut(6, .5, .2)
    end
    if step == 214 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 218 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    if step == 216 then--fade in s up & b down
        tweenFadeIn(2, 1, .2)
        tweenFadeIn(5, 1, .2)
    end
    if step == 220 then--fade out s up & b down
        tweenFadeOut(2, .5, .2)
        tweenFadeOut(5, .5, .2)
    end
    if step == 218 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 223 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    
    if step == 220 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 225 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    if step == 224 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 231 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    if step == 228 then--fade in s up & b down
        tweenFadeIn(2, 1, .2)
        tweenFadeIn(5, 1, .2)
    end
    if step == 232 then--fade out s up & b down
        tweenFadeOut(2, .5, .2)
        tweenFadeOut(5, .5, .2)
    end
    if step == 230 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 234 then--fade out s down & b up
        tweenFadeOut(1, .5, .2)
        tweenFadeOut(6, .5, .2)
    end
    if step == 232 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 236 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    if step == 234 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end

    if step == 236 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 238 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 240 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 245 then--fade out s down & b up
        tweenFadeOut(1, .5, .2)
        tweenFadeOut(6, .5, .2)
    end
    if step == 242 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 247 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    if step == 244 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 245 then--fade in s up & b down
        tweenFadeIn(2, 1, .2)
        tweenFadeIn(5, 1, .2)
    end
    if step == 250 then--fade out s up & b down
        tweenFadeOut(2, .5, .2)
        tweenFadeOut(5, .5, .2)
    end
    if step == 251 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    if step == 248 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 252 then--fade out s left & b right
        tweenFadeOut(0, .5, .5)
        tweenFadeOut(7, .5, .5)
    end
    --end of beginning#2a
    --start of beginning#2b
    if step == 252 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 257 then--fade out s down & b up
        tweenFadeOut(1, .5, .2)
        tweenFadeOut(6, .5, .2)
    end
    if step == 256 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 261 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    if step == 262 then--fade in s up & b down
        tweenFadeIn(2, 1, .2)
        tweenFadeIn(5, 1, .2)
    end
    if step == 267 then--fade out s up & b down
        tweenFadeOut(2, .5, .2)
        tweenFadeOut(5, .5, .2)
    end
    if step == 264 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 271 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    
    if step == 268 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 273 then--fade out s down & b up
        tweenFadeOut(1, .5, .2)
        tweenFadeOut(6, .5, .2)
    end
    if step == 270 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 275 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    if step == 272 then--fade in s up & b down
        tweenFadeIn(2, 1, .2)
        tweenFadeIn(5, 1, .2)
    end
    if step == 277 then--fade out s up & b down
        tweenFadeOut(2, .5, .2)
        tweenFadeOut(5, .5, .2)
    end
    if step == 278 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 283 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    if step == 280 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 285 then--fade out s down & b up
        tweenFadeOut(1, .5, .2)
        tweenFadeOut(6, .5, .2)
    end
    if step == 282 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 287 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    
    if step == 284 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 289 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    if step == 288 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 295 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    if step == 292 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 297 then--fade out s down & b up
        tweenFadeOut(1, .5, .2)
        tweenFadeOut(6, .5, .2)
    end
    if step == 294 then--fade in s up & b down
        tweenFadeIn(2, 1, .2)
        tweenFadeIn(5, 1, .2)
    end
    if step == 299 then--fade out s up & b down
        tweenFadeOut(2, .5, .2)
        tweenFadeOut(5, .5, .2)
    end
    if step == 296 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 301 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    if step == 298 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    
    if step == 300 then--fade in s up & b down
        tweenFadeIn(2, 1, .2)
        tweenFadeIn(5, 1, .2)
    end
    if step == 309 then--fade out s up & b down
        tweenFadeOut(2, .5, .2)
        tweenFadeOut(5, .5, .2)
    end
    if step == 311 then--fade out s right & b left
        tweenFadeOut(3, .5, .2)
        tweenFadeOut(4, .5, .2)
    end
    if step == 308 then--fade in s left & b right
        tweenFadeIn(0, 1, .2)
        tweenFadeIn(7, 1, .2)
    end
    if step == 314 then--fade out s left & b right
        tweenFadeOut(0, .5, .2)
        tweenFadeOut(7, .5, .2)
    end
    if step == 309 then--fade in s down & b up
        tweenFadeIn(1, 1, .2)
        tweenFadeIn(6, 1, .2)
    end
    if step == 314 then--fade out s down & b up
        tweenFadeOut(1, .5, .2)
        tweenFadeOut(6, .5, .2)
    end
    if step == 312 then--fade in s right & b left
        tweenFadeIn(3, 1, .2)
        tweenFadeIn(4, 1, .2)
    end
    if step == 316 then--fade out all; bump stop
        stepForce = true
        for i=0,7 do
            --tweenPos(i, getActorX(i), getActorY(i) + 25, .5)
            --should go down 25 but shits broken, so -50 as well?
            tweenPos(i, getActorX(i), getActorY(i) - 25, .5)
            tweenFadeOut(i, 0, .5)
        end
    end
    --end of beginning#2b
    --yea [323]
    if step == 328 then--fade in s
        for i=0,3 do
            tweenFadeIn(i, 1, .2)
        end
    end
    --start s brrr
    if step == 342 then--rotate s left
        tweenAngle(0, getActorAngle(0)+90, .07)
    end
    if step == 343 then--rotate s left,down
        tweenAngle(0, getActorAngle(0)+90, .07)
        tweenAngle(1, getActorAngle(1)+120, .07)
    end
    if step == 344 then--rotate s left,down,up
        tweenAngle(0, getActorAngle(0)+90, .07)
        tweenAngle(1, getActorAngle(1)+120, .07)
        tweenAngle(2, getActorAngle(2)+180, .07)
    end
    if step == 346 then--rotate s left,down,up [reset]
        tweenAngle(0, getActorAngle(0)-270, .07)
        tweenAngle(1, getActorAngle(1)-240, .07)
        tweenAngle(2, getActorAngle(2)-180, .07)
    end
    --end s brrr
    if step == 316 then--fade out s
        for i=0,3 do
            tweenFadeOut(i, 0, .5)
        end
    end
    if step == 384 then--fade in b
        for i=4,7 do
            tweenFadeIn(i, 1, .2)
        end
    end
    --start b brrr
    if step == 406 then--rotate b left
        tweenAngle(4, getActorAngle(4)+90, .07)
    end
    if step == 407 then--rotate b left,down
        tweenAngle(4, getActorAngle(4)+90, .07)
        tweenAngle(5, getActorAngle(5)+120, .07)
    end
    if step == 408 then--rotate b left,down,up
        tweenAngle(4, getActorAngle(4)+90, .07)
        tweenAngle(5, getActorAngle(5)+120, .07)
        tweenAngle(6, getActorAngle(6)+180, .07)
    end
    if step == 410 then--rotate b left,down,up [reset]
        tweenAngle(4, getActorAngle(4)-270, .07)
        tweenAngle(5, getActorAngle(5)-240, .07)
        tweenAngle(6, getActorAngle(6)-180, .07)
    end
    --end b brrr
    --start long#1a b
    if step == 456 then--fade in s
        for i=0,3 do
            tweenFadeIn(i, 1, .2)
        end
    end
    
    if step == 459 then--fade b BUT right
        for i=4,7 do
            if i ~= 7 then
                tweenFadeOut(i, 0, .2)
            else
                tweenFadeIn(i, 1, .2)
            end
        end
    end

    --start s brrr
    if step == 470 then--rotate s left
        tweenAngle(0, getActorAngle(0)+90, .07)
    end
    if step == 471 then--rotate s left,down
        tweenAngle(0, getActorAngle(0)+90, .07)
        tweenAngle(1, getActorAngle(1)+120, .07)
    end
    if step == 472 then--rotate s left,down,up
        tweenAngle(0, getActorAngle(0)+90, .07)
        tweenAngle(1, getActorAngle(1)+120, .07)
        tweenAngle(2, getActorAngle(2)+180, .07)
    end
    if step == 474 then--rotate s left,down,up [reset]
        tweenAngle(0, getActorAngle(0)-270, .07)
        tweenAngle(1, getActorAngle(1)-240, .07)
        tweenAngle(2, getActorAngle(2)-180, .07)
    end
    --end s brrr
    
    if step == 472 then--fade in b down; fade out b right
        tweenFadeIn(5, 1, .2)
        tweenFadeOut(7, 0, .5)
    end
    if step == 487 then--fade in b up; fade out b down
        tweenFadeIn(6, 1, .2)
        tweenFadeOut(5, 0, .5)
    end
    if step == 504 then--fade in b left; fade out b up
        tweenFadeIn(4, 1, .2)
        tweenFadeOut(6, 0, .5)
    end
    --end long#1a b
    --start long#1a s
    if step == 516 then--fade in b
        for i=4,7 do
            tweenFadeIn(i, 1, .2)
        end
    end
    
    if step == 523 then--fade s BUT right
        for i=0,3 do
            if i ~= 3 then
                tweenFadeOut(i, 0, .2)
            else
                tweenFadeIn(i, 1, .2)
            end
        end
    end

    --start b brrr
    if step == 534 then--rotate b left
        tweenAngle(4, getActorAngle(4)+90, .07)
    end
    if step == 535 then--rotate b left,down
        tweenAngle(4, getActorAngle(4)+90, .07)
        tweenAngle(5, getActorAngle(5)+120, .07)
    end
    if step == 536 then--rotate b left,down,up
        tweenAngle(4, getActorAngle(4)+90, .07)
        tweenAngle(5, getActorAngle(5)+120, .07)
        tweenAngle(6, getActorAngle(6)+180, .07)
    end
    if step == 538 then--rotate b left,down,up [reset]
        tweenAngle(4, getActorAngle(4)-270, .07)
        tweenAngle(5, getActorAngle(5)-240, .07)
        tweenAngle(6, getActorAngle(6)-180, .07)
    end
    --end b brrr
    
    if step == 536 then--fade in s down; fade out s right
        tweenFadeIn(1, 1, .2)
        tweenFadeOut(3, 0, .5)
    end
    if step == 552 then--fade in s up; fade out s down
        tweenFadeIn(2, 1, .2)
        tweenFadeOut(1, 0, .5)
    end
    if step == 568 then--fade in s left; fade out s up
        tweenFadeIn(0, 1, .2)
        tweenFadeOut(2, 0, .5)
    end
    --end long#1a s
    if step == 587 then--fade all
        for i=0,7 do
            tweenFadeOut(i, 0, .5)
        end
    end
    --lets go [592]
    if step == 600 then--fade in s
        for i=0,3 do
            tweenFadeIn(i, 1, .2)
        end
    end
    if step == 604 then--bump continue
        stepForce = false
        for i=0,7 do
            tweenPos(i, getActorX(i), getActorY(i) - 25, .05)
        end
    end
    --start long#1b b
    if step == 596 then--fade in b right
        tweenFadeIn(7, 1, .5)
    end
    
    if step == 616 then--fade in b down; fade out b right
        tweenFadeIn(5, 1, .2)
        tweenFadeOut(7, 0, .5)
    end
    if step == 632 then--fade in b up; fade out b down
        tweenFadeIn(6, 1, .2)
        tweenFadeOut(5, 0, .5)
    end
    if step == 647 then--fade in b left; fade out b up
        tweenFadeIn(4, 1, .2)
        tweenFadeOut(6, 0, .5)
    end
    --end long#1b b
    if step == 660 then--fade in b
        for i=4,7 do
            tweenFadeIn(i, 1, .2)
        end
    end
    --start long#1b s
    if step == 664 then--fade s BUT left
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, 0, .5)
            else
                tweenFadeIn(i, 1, .2)
            end
        end
    end
    if step == 680 then--fade in s up; fade out s left
        tweenFadeIn(2, 1, .2)
        tweenFadeOut(0, 0, .5)
    end
    if step == 696 then--fade in s down; fade out s up
        tweenFadeIn(1, 1, .2)
        tweenFadeOut(2, 0, .5)
    end
    if step == 712 then--fade in s right; fade out s down
        tweenFadeIn(3, 1, .2)
        tweenFadeOut(1, 0, .5)
    end
    --end long#1b s
    if step == 728 then--fade in s
        for i=0,3 do
            tweenFadeIn(i, 1, .2)
        end
    end
    --start b brrr
    if step == 742 then--rotate b left
        tweenAngle(4, getActorAngle(4)+90, .07)
    end
    if step == 743 then--rotate b left,down
        tweenAngle(4, getActorAngle(4)+90, .07)
        tweenAngle(5, getActorAngle(5)+120, .07)
    end
    if step == 744 then--rotate b left,down,up
        tweenAngle(4, getActorAngle(4)+90, .07)
        tweenAngle(5, getActorAngle(5)+120, .07)
        tweenAngle(6, getActorAngle(6)+180, .07)
    end
    if step == 746 then--rotate b left,down,up [reset]
        tweenAngle(4, getActorAngle(4)-270, .07)
        tweenAngle(5, getActorAngle(5)-240, .07)
        tweenAngle(6, getActorAngle(6)-180, .07)
    end
    --end b brrr
    --start s brrr
    if step == 806 then--rotate s left
        tweenAngle(0, getActorAngle(0)+90, .07)
    end
    if step == 807 then--rotate s left,down
        tweenAngle(0, getActorAngle(0)+90, .07)
        tweenAngle(1, getActorAngle(1)+120, .07)
    end
    if step == 808 then--rotate s left,down,up
        tweenAngle(0, getActorAngle(0)+90, .07)
        tweenAngle(1, getActorAngle(1)+120, .07)
        tweenAngle(2, getActorAngle(2)+180, .07)
    end
    if step == 810 then--rotate s left,down,up [reset]
        tweenAngle(0, getActorAngle(0)-270, .07)
        tweenAngle(1, getActorAngle(1)-240, .07)
        tweenAngle(2, getActorAngle(2)-180, .07)
    end
    --end s brrr
    --start long#1c b
    if step == 856 then--fade b BUT left
        for i=4,7 do
            if i ~= 4 then
                tweenFadeOut(i, 0, .5)
            else
                tweenFadeIn(i, 1, .2)
            end
        end
    end
    if step == 872 then--fade in b right; fade out b left
        tweenFadeIn(7, 1, .2)
        tweenFadeOut(4, 0, .5)
    end
    if step == 888 then--fade in b up; fade out b right
        tweenFadeIn(6, 1, .2)
        tweenFadeOut(7, 0, .5)
    end
    if step == 904 then--fade in b down; fade out b up
        tweenFadeIn(5, 1, .2)
        tweenFadeOut(6, 0, .5)
    end
    if step == 920 then--fade in b
        for i=4,7 do
            tweenFadeIn(i, 1, .2)
        end
    end
    --end long#1c b
    --start long#1c s
    if step == 920 then--fade s BUT left
        for i=0,3 do
            if i ~= 0 then
                tweenFadeOut(i, 0, .5)
            else
                tweenFadeIn(i, 1, .2)
            end
        end
    end
    if step == 936 then--fade in s right; fade out s left
        tweenFadeIn(3, 1, .2)
        tweenFadeOut(0, 0, .5)
    end
    if step == 952 then--fade in s up; fade out s right
        tweenFadeIn(2, 1, .2)
        tweenFadeOut(3, 0, .5)
    end
    if step == 968 then--fade in s down; fade out s up
        tweenFadeIn(1, 1, .2)
        tweenFadeOut(2, 0, .5)
    end
    --end long#1c s
    if step == 984 then--fade in s
        for i=0,3 do
            tweenFadeIn(i, 1, .2)
        end
    end
    if step == 988 then--bump stop
        stepForce = true
        for i=0,7 do
            --SHITS BROKEN AGAIN
            tweenPos(i, getActorX(i), getActorY(i) - 25, .5)
        end
    end

    --ending s
    if step == 1042 then--fade out s down (1/2)
        tweenFadeOut(1, .5, .5)
    end
    if step == 1044 then--fade out s down (1/2)
        tweenFadeOut(1, 0, .5)
    end
    if step == 1045 then--fade out s up
        tweenFadeOut(2, 0, .5)
    end
    if step == 1046 then--fade out s right
        tweenFadeOut(3, 0, .5)
    end
    if step == 1048 then--fade out s left
        tweenFadeOut(0, 0, 1)
    end
    --ending b
    if step == 1106 then--fade out b down (1/2)
        tweenFadeOut(5, .5, .5)
    end
    if step == 1108 then--fade out b down (1/2)
        tweenFadeOut(5, 0, .5)
    end
    if step == 1109 then--fade out b up
        tweenFadeOut(6, 0, .5)
    end
    if step == 1110 then--fade out b right
        tweenFadeOut(7, 0, .5)
    end
    if step == 1112 then--fade out b left
        tweenFadeOut(4, 0, 1)
    end
end
