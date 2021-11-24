package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.text.FlxTypeText;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxSpriteGroup;
import flixel.input.FlxKeyManager;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

using StringTools;

class DialogueBox extends FlxSpriteGroup
{
	var box:FlxSprite;

	var curCharacter:String = '';

	var dialogue:Alphabet;
	var dialogueList:Array<String> = [];

	// SECOND DIALOGUE FOR THE PIXEL SHIT INSTEAD???
	var swagDialogue:FlxTypeText;

	var dropText:FlxText;

	public var finishThing:Void->Void;

	var portraitBF:FlxSprite;
	var portraitSway:FlxSprite;
	var tiltedVisual:FlxSprite;

	var bgFade:FlxSprite;
	
	//was called swayExpressions but i didnt wanna write that bigass name so...
	var sExp:Array<String> = [
			'Angy',
			'Conf',
			'Yeehaw',
			'Shock',
			'Bruh',
			'Doesanyoneevenreadthese',
			'Oops',
			'Heh'
		];
	var bExp:Array<String> = [
			'Up',
			'RestrainingOrder',
			'SouhhhYoucomehereoften',
			'Idle',
			'Howdoitalktowomen',
			'Side',
			'Ishitmypants'
		];

	public function new(talkingRight:Bool = true, ?dialogueList:Array<String>)
	{
		super();
		trace(FlxG.save.data.storyboardinstdialogue?'cutscene mode':'dialogue mode');
		trace('new DialogueBox created');

		switch (PlayState.SONG.song.toLowerCase())
		{
			case 'senpai':
				FlxG.sound.playMusic(Paths.music('Lunchbox'), 0);
				FlxG.sound.music.fadeIn(1, 0, 0.8);
			case 'thorns':
				FlxG.sound.playMusic(Paths.music('LunchboxScary'), 0);
				FlxG.sound.music.fadeIn(1, 0, 0.8);
		}

		bgFade = new FlxSprite(-200, -200).makeGraphic(Std.int(FlxG.width * 1.3), Std.int(FlxG.height * 1.3), 0xFF000000);
		bgFade.scrollFactor.set();
		bgFade.alpha = 0;
		add(bgFade);
		
		
		FlxTween.tween(bgFade, {alpha: .7}, 2, {ease: FlxEase.expoIn});

		box = new FlxSprite(-20, 45);
		
		var hasDialog = false;
		switch (PlayState.SONG.song.toLowerCase())
		{
			case 'senpai':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('weeb/pixelUI/dialogueBox-pixel');
				box.animation.addByPrefix('normalOpen', 'Text Box Appear', 24, false);
				box.animation.addByIndices('normal', 'Text Box Appear', [4], "", 24);
			case 'roses':
				hasDialog = true;
				FlxG.sound.play(Paths.sound('ANGRY_TEXT_BOX'));

				box.frames = Paths.getSparrowAtlas('weeb/pixelUI/dialogueBox-senpaiMad');
				box.animation.addByPrefix('normalOpen', 'SENPAI ANGRY IMPACT SPEECH', 24, false);
				box.animation.addByIndices('normal', 'SENPAI ANGRY IMPACT SPEECH', [4], "", 24);

			case 'thorns':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('weeb/pixelUI/dialogueBox-evil');
				box.animation.addByPrefix('normalOpen', 'Spirit Textbox spawn', 24, false);
				box.animation.addByIndices('normal', 'Spirit Textbox spawn', [11], "", 24);

				var face:FlxSprite = new FlxSprite(320, 170).loadGraphic(Paths.image('weeb/spiritFaceForward'));
				face.setGraphicSize(Std.int(face.width * 6));
				add(face);
				
			case 'goals',"jammin'",'tilted':
				hasDialog = true;
				
				trace("current song: goals/jammin'/tilted");
				
				//box.frames = Paths.getSparrowAtlas('weeb/pixelUI/dialogueBox-pixel');
				//box.animation.addByPrefix('normalOpen', 'Text Box Appear', 24, false);
				//box.animation.addByIndices('normal', 'Text Box Appear', [4], "", 24);
		}

		this.dialogueList = dialogueList;
		
		if (!hasDialog)
			return;
		
		//portraitLeft = new FlxSprite(-20, 40).loadGraphic(Paths.image('portraitLeft'));
		//portraitLeft.setGraphicSize(Std.int(portraitLeft.width * PlayState.daPixelZoom * 0.9));
		//portraitLeft.updateHitbox();
		//portraitLeft.scrollFactor.set();
		//add(portraitLeft);
		//portraitLeft.visible = false;
		//portraitLeft.screenCenter(X);
		
		tiltedVisual = new FlxSprite(0,0).loadGraphic(Paths.image('tiltedVisual'));
		tiltedVisual.screenCenter(X);
		tiltedVisual.alpha = 0;
		add(tiltedVisual);
		
		portraitBF = new FlxSprite(0, 0);
		portraitBF.frames = Paths.getSparrowAtlas('bfPortrait','shared');
		portraitBF.animation.addByPrefix(bExp[0], 'AAA', 24, false);
		portraitBF.animation.addByPrefix(bExp[1], 'accordingto', 24, false);
		portraitBF.animation.addByPrefix(bExp[2], 'hah', 24, false);
		portraitBF.animation.addByPrefix(bExp[3], 'normal', 24, false);
		portraitBF.animation.addByPrefix(bExp[4], 'what', 24, false);
		portraitBF.animation.addByPrefix(bExp[5], 'yeah', 24, false);
		portraitBF.animation.addByPrefix(bExp[6], 'yup', 24, false);
		portraitBF.animation.play(bExp[3]);
		portraitBF.updateHitbox();
		portraitBF.x = FlxG.width-portraitBF.width;
		portraitBF.y = FlxG.height-portraitBF.height+100;
		portraitBF.scrollFactor.set();
		add(portraitBF);
		portraitBF.visible = false;
		trace('bf portraits created');
		
		portraitSway = new FlxSprite(0, 0);
		portraitSway.frames = Paths.getSparrowAtlas('swayPortrait','shared');
		portraitSway.animation.addByPrefix(sExp[0], 'angy', 24, false);
		portraitSway.animation.addByPrefix(sExp[1], 'confuse', 24, false);
		portraitSway.animation.addByPrefix(sExp[2], 'excited', 24, false);
		portraitSway.animation.addByPrefix(sExp[3], 'ohshit', 24, false);
		portraitSway.animation.addByPrefix(sExp[4], 'fuckyou', 24, false);
		portraitSway.animation.addByPrefix(sExp[5], 'happy', 24, false);
		portraitSway.animation.addByPrefix(sExp[6], 'pain', 24, false);
		portraitSway.animation.addByPrefix(sExp[7], 'uhoh', 24, false);
		portraitSway.animation.play(sExp[5]);
		portraitSway.updateHitbox();
		portraitSway.setGraphicSize(Std.int(portraitSway.width*.875));
		portraitSway.updateHitbox();
		portraitSway.y = FlxG.height-portraitSway.height+25;
		portraitSway.scrollFactor.set();
		add(portraitSway);
		portraitSway.visible = false;
		trace('sway portraits created');

		if (!talkingRight)
		{
			// box.flipX = true;
		}

		dropText = new FlxText(302, 452, Std.int(FlxG.width * 0.6), "", 32);
		dropText.setFormat(Paths.font("Inter-Medium.ttf"), 40, 0xFFAF4444);
		//dropText.font = 'Pixel Arial 11 Bold';
		//dropText.color = 0xFFD89494;
		add(dropText);

		swagDialogue = new FlxTypeText(dropText.x-2, dropText.y-2, Std.int(FlxG.width * 0.6), "", 32);
		swagDialogue.setFormat(Paths.font("Inter-Medium.ttf"), 40, FlxColor.WHITE);
		//swagDialogue.font = 'Pixel Arial 11 Bold';
		//swagDialogue.color = 0xFF3F2021;
		swagDialogue.sounds = [FlxG.sound.load(Paths.sound('pixelText'), 0.6)];
		add(swagDialogue);

		dialogue = new Alphabet(0, 80, "", false, true);
		// dialogue.x = 90;
		// add(dialogue);
	}

	var dialogueOpened:Bool = false;
	var dialogueStarted:Bool = false;

	override function update(elapsed:Float)
	{
		// HARD CODING CUZ IM STUPDI
		if (PlayState.SONG.song.toLowerCase() == 'roses')
			//portraitLeft.visible = false;
		if (PlayState.SONG.song.toLowerCase() == 'thorns')
		{
			//portraitLeft.color = FlxColor.BLACK;
			swagDialogue.color = FlxColor.WHITE;
			dropText.color = FlxColor.BLACK;
		}

		dropText.text = swagDialogue.text;
		
		dialogueOpened = true;
		
		if (box.animation.curAnim != null)
		{
			if (box.animation.curAnim.name == 'normalOpen' && box.animation.curAnim.finished)
			{
				box.animation.play('normal');
				dialogueOpened = true;
			}
		}

		if (dialogueOpened && !dialogueStarted)
		{
			startDialogue();
			dialogueStarted = true;
		}

		if (FlxG.keys.justPressed.ANY  && dialogueStarted == true)
		{
			remove(dialogue);
				
			FlxG.sound.play(Paths.sound('clickText'), 0.8);

			if (dialogueList[1] == null && dialogueList[0] != null)
			{
				if (!isEnding)
				{
					isEnding = true;

					if (PlayState.SONG.song.toLowerCase() == 'senpai' || PlayState.SONG.song.toLowerCase() == 'thorns')
						FlxG.sound.music.fadeOut(2.2, 0);
					
					FlxTween.tween(bgFade, {alpha: 0}, 1.5, {ease: FlxEase.expoIn});
					FlxTween.tween(swagDialogue, {alpha: 0}, .5, {ease: FlxEase.expoIn});
					FlxTween.tween(dropText, {alpha: 0}, .5, {ease: FlxEase.expoIn});
					FlxTween.tween(portraitSway, {alpha: 0}, 1, {ease: FlxEase.expoIn});
					FlxTween.tween(portraitBF, {alpha: 0}, 1, {ease: FlxEase.expoIn});
					
					//new FlxTimer().start(0.2, function(tmr:FlxTimer)
					//{
					//	//box.alpha -= 1 / 5;
					//	bgFade.alpha -= 1 / 5 * 0.7;
					//	//portraitLeft.visible = false;
					//	swagDialogue.alpha -= 1 / 5;
					//	dropText.alpha = swagDialogue.alpha;
					//	portraitSway.alpha -= 1 / 5 * 0.7;
					//	portraitBF.alpha -= 1 / 5 * 0.7;
					//}, 5);

					new FlxTimer().start(2, function(tmr:FlxTimer)
					{
						finishThing();
						kill();
					});
				}
			}
			else
			{
				dialogueList.remove(dialogueList[0]);
				startDialogue();
			}
		}
		
		super.update(elapsed);
	}

	var isEnding:Bool = false;

	function startDialogue():Void
	{
		trace('ok actually starting dialogue');
		cleanDialog();
		// var theDialog:Alphabet = new Alphabet(0, 70, dialogueList[0], false, true);
		// dialogue = theDialog;
		// add(theDialog);

		// swagDialogue.text = ;
		swagDialogue.resetText(dialogueList[0]);
		swagDialogue.start(0.04, true);
		
		// lmao fuck me im too stupid to figure out how to slice a string soooo
		switch (curCharacter.charAt(0))
		{
			case 'b':
				portraitSway.visible = false;
				portraitBF.visible = true;
				portraitBF.animation.play(curCharacter.substring(2));
				trace('cur portrait: '+curCharacter.substring(4));
				
				dropText.color = 0xFF44A1AF;
				dropText.alignment = RIGHT;
				swagDialogue.alignment = RIGHT;
				dropText.x = FlxG.width-dropText.width-402;
				dropText.y = 477;
				swagDialogue.x = dropText.x-2;
				swagDialogue.y = dropText.y-2;
				
			case 's':
				portraitSway.visible = true;
				portraitBF.visible = false;
				portraitSway.animation.play(curCharacter.substring(4));
				trace('cur portrait: '+curCharacter.substring(4));
				
				dropText.color = 0xFFAF4444;
				dropText.alignment = LEFT;
				swagDialogue.alignment = LEFT;
				dropText.x = 302;
				dropText.y = 452;
				swagDialogue.x = dropText.x-2;
				swagDialogue.y = dropText.y-2;
				
			default:
				trace('YOURE FUCKIN STUPID');
		}
	}
	
	function cleanDialog():Void
	{
		var splitName:Array<String> = dialogueList[0].split(":");
		//for (x in splitName){
		//	trace(x);
		//}
		curCharacter = splitName[1];
		//trace('curCharacter: '+curCharacter);
		//dialogueList[0] = dialogueList[0].substr(splitName[1].length + 2).trim();
		dialogueList[0] = splitName[2].trim();
		//trace('dialogueList[0]: '+dialogueList[0]);
		
		FlxG.sound.play(Paths.sound('sway/'+PlayState.SONG.song.toLowerCase()+'/'+(Std.parseInt(splitName[0])<10 ? '0'+splitName[0]:splitName[0])));
		
		if (PlayState.SONG.song.toLowerCase() == 'tilted')
		{
			switch (Std.parseInt(splitName[0]))
			{
				case 7:
					FlxTween.tween(tiltedVisual, {alpha: 1}, .5, {ease: FlxEase.expoIn});
				case 8:
					FlxTween.tween(tiltedVisual, {alpha: 0}, 1, {ease: FlxEase.expoOut});
			}
		}
	}
}
