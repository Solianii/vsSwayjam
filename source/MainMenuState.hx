package;

import Controls.KeyboardScheme;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import io.newgrounds.NG;
import lime.app.Application;

#if windows
import Discord.DiscordClient;
#end

using StringTools;

class MainMenuState extends MusicBeatState
{
	var curSelected:Int = 0;

	var menuItems:FlxTypedGroup<FlxSprite>;

	#if !switch
	var optionShit:Array<String> = ['story', 'options', 'support', 'discord', 'twitch', 'freeplay'];
	#else
	var optionShit:Array<String> = ['story', 'freeplay'];
	#end

	var newGaming:FlxText;
	var newGaming2:FlxText;
	public static var firstStart:Bool = true;
	var storyLastSelected:Bool = true;
	var discordLastSelected:Bool = true;
	var arrowPressed:Bool = false;

	var bg:FlxSprite;
	var bgM:FlxSprite;
	var bgRight:FlxSprite;
	var switchArrow:FlxSprite;
	var logo:FlxSprite;

	var buttSpaceX:Int;
	var buttSpaceY:Int;
	
	var bgSelect:FlxSprite;
	public static var nightly:String = "";

	public static var kadeEngineVer:String = "1.5.1" + nightly;
	public static var gameVer:String = "0.2.7.1";
	
	var camFollow:FlxObject;
	public static var finishedFunnyMove:Bool = false;

	override function create()
	{
		#if windows
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end

		if (!FlxG.sound.music.playing)
		{
			FlxG.sound.playMusic(Paths.music('freakyMenu'));
		}

		persistentUpdate = persistentDraw = true;

		// flip these if its in other menubutt mode <3
		bg = new FlxSprite(0,0).loadGraphic(Paths.image('menuBG'));
		bg.screenCenter();
		bg.antialiasing = true;
		add(bg);
		bg.scrollFactor.set();

		camFollow = new FlxObject(0, 0, 1, 1);
		add(camFollow);

		bgM = new FlxSprite(0,0).loadGraphic(Paths.image('menuBGMagenta'));
		bgM.screenCenter();
		bgM.antialiasing = true;
		bgM.alpha = .35;
		bgM.visible = false;
		add(bgM);
		bgM.scrollFactor.set();

		menuItems = new FlxTypedGroup<FlxSprite>();
		add(menuItems);

		//var tex = Paths.getSparrowAtlas('FNF_main_menu_assets');
		var tex = Paths.getSparrowAtlas('mm_buttons');

		// also hehe more inefficient code!! :innocent:
		
		// -------------------------------------------------------------------------------------------------------------------
		for (i in 0...optionShit.length)
		{
			var menuItem:FlxSprite = new FlxSprite(0, 0);
			menuItem.frames = tex;
			menuItem.animation.addByPrefix('idle', optionShit[i] + " idle", 24);
			if (optionShit[i] == 'story' || optionShit[i] == 'freeplay')
			{
				menuItem.animation.addByPrefix('recent', optionShit[i] + " recent", 24);
			}
			menuItem.animation.addByPrefix('hover', optionShit[i] + " hover", 24);
			menuItem.animation.play('idle');
			menuItem.ID = i;
			menuItem.updateHitbox();
			
			switch (optionShit[i])
			{
				case 'story': //first to be selected, so freeplay will have a bit of an offset
					trace("story done");
				case 'options':
					menuItem.y = menuItems.members[0].height;
					
					
					//gonna make the option item create the arrow because fuck you
					switchArrow = new FlxSprite(menuItems.members[0].width+10, 15);
					switchArrow.frames = tex;
					switchArrow.animation.addByPrefix('idle', "arrow idle", 24);
					switchArrow.animation.addByPrefix('press', "arrow press", 24);
					switchArrow.animation.play('idle');
					
					switchArrow.flipX = !FlxG.save.data.menubutt;
					switchArrow.setGraphicSize(Std.int((switchArrow.width/10)/2.5));
					switchArrow.updateHitbox();
					
					add(switchArrow);
					switchArrow.scrollFactor.set();
					switchArrow.antialiasing = true;
					
					trace("options & arrow done");
				case 'support':
					menuItem.y = menuItems.members[1].y + menuItems.members[1].height;
					trace("support done");
				case 'discord':
					menuItem.y = menuItems.members[2].y + menuItems.members[2].height+10;
					menuItem.x = menuItems.members[2].getMidpoint().x-(menuItem.width/2.5)-20;
					trace(menuItem.width);
					trace("discord done");
				case 'twitch':
					menuItem.y = menuItems.members[2].y + menuItems.members[2].height;
					menuItem.x = menuItems.members[2].getMidpoint().x+20;
					trace("twitch done");
				case 'freeplay':
					menuItem.x = menuItems.members[0].width + switchArrow.width+20;
					trace("freeplay done");
			}
			
			menuItem.setGraphicSize(Std.int(menuItem.width/2.5));
			menuItem.updateHitbox();
			
			menuItems.add(menuItem);
			menuItem.scrollFactor.set();
			menuItem.antialiasing = true;
			
			finishedFunnyMove = true; 
			changeItem();
		}

		firstStart = false;

		FlxG.camera.follow(camFollow, null, 0.60 * (60 / FlxG.save.data.fpsCap));

		var versionShit:FlxText = new FlxText(0, 0, 0, gameVer +  (Main.watermarks ? " FNF - " + kadeEngineVer + " KADE ENGINE" : ""), 20);
		versionShit.scrollFactor.set();
		versionShit.setFormat(Paths.font("Mousse-Regular.otf"), 20, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		versionShit.y = FlxG.height - versionShit.height;
		versionShit.x = Std.int(FlxG.save.data.menubutt ? 0 : FlxG.width - versionShit.width);
		add(versionShit);
		
		var demoThing:FlxText = new FlxText(0, 0, 0, "vs Swayjam DEMO - Last Updated 8/15");
		demoThing.scrollFactor.set();
		demoThing.setFormat(Paths.font("Mousse-Regular.otf"), 20, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		demoThing.y = FlxG.height - demoThing.height;
		demoThing.screenCenter(X);
		add(demoThing);

		// NG.core.calls.event.logEvent('swag').send();


		if (FlxG.save.data.dfjk)
			controls.setKeyboardScheme(KeyboardScheme.Solo, true);
		else
			controls.setKeyboardScheme(KeyboardScheme.Duo(true), true);

		changeItem();

		super.create();
	}

	var selectedSomethin:Bool = false;

	override function update(elapsed:Float)
	{
		if (FlxG.sound.music.volume < 0.8)
		{
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
		}

		if (!selectedSomethin)
		{
			if (controls.UP_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				switch (optionShit[curSelected])
				{
					case 'story':
						if (discordLastSelected)
							changeItem(69,3);
						else
							changeItem(-1);
					case 'twitch':
						changeItem(-2);
					default:
						changeItem(-1);
				}
			}

			if (controls.DOWN_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				switch (optionShit[curSelected])
				{
					case 'support':
						if (discordLastSelected)
							changeItem(1);
						else
							changeItem(2);
					case 'discord':
						changeItem(2);
					default:
						changeItem(1);
				}
			}

			if (controls.BACK)
			{
				FlxG.switchState(new TitleState());
			}
			
			if (controls.RIGHT_P || controls.LEFT_P)
			{
					
						FlxG.sound.play(Paths.sound('scrollMenu'));
						
						switch (curSelected)
						{
							case 0,5,1,2:
								if (controls.LEFT_P && (optionShit[curSelected] == 'options' || optionShit[curSelected] == 'support'))
									trace("cant go left dumbass");
								else
								{
									switchArrow.animation.play("press");
									if (storyLastSelected)
									{
										storyLastSelected = false; //go to freeplay
										curSelected = menuItems.length - 1;
										
										menuItems.members[5].alpha = 0;
										FlxTween.tween(menuItems.members[5], {x: 0, alpha: 1}, 0.07);
										
										switchArrow.x = menuItems.members[5].width+10;
										
										menuItems.members[0].alpha = 0;
										FlxTween.tween(menuItems.members[0], {x: menuItems.members[5].width + switchArrow.width+20, alpha: 1}, 0.07);
									}
									else
									{
										storyLastSelected = true; //go to storymode
										curSelected = 0;
										
										menuItems.members[0].alpha = 0;
										FlxTween.tween(menuItems.members[0], {x: 0, alpha: 1}, 0.07);
										
										switchArrow.x = menuItems.members[0].width+10;
										
										menuItems.members[5].alpha = 0;
										FlxTween.tween(menuItems.members[5], {x: menuItems.members[0].width + switchArrow.width+20, alpha: 1}, 0.07);
									}
									
									new FlxTimer().start(.125, function(tmr:FlxTimer)
									{
										switchArrow.animation.play("idle");
									});
									
									changeItem(0);
								}
							case 3,4:
								if (discordLastSelected)
								{
									changeItem(69,4);
									discordLastSelected = false;
								}
								else
								{
									changeItem(69,3);
									discordLastSelected = true;
								}
						}
			}
			
			if (controls.ACCEPT)
			{
				switch (optionShit[curSelected])
				{
					case 'support':
						fancyOpenURL("https://ninja-muffin24.itch.io/funkin");
					case 'discord':
						//fancyOpenURL("https://discord.gg/NbhmEE2kKY");
						trace('discord opened');
					case 'twitch':
						//fancyOpenURL("https://www.twitch.tv/swayjam");
						trace('twitch opened');
					default:
						selectedSomethin = true;
						FlxG.sound.play(Paths.sound('confirmMenu'));
						
						if (FlxG.save.data.flashing)
							FlxFlicker.flicker(bgM, 1.1, 0.15, false);
						
						FlxTween.tween(switchArrow, {alpha: 0}, .75, {ease: FlxEase.expoInOut});
						menuItems.forEach(function(spr:FlxSprite)
						{
							if (curSelected != spr.ID)
							{
								FlxTween.tween(spr, {alpha: 0}, .75, {
									ease: FlxEase.expoInOut,
									onComplete: function(twn:FlxTween)
									{
										spr.kill();
									}
								});
							}
							else
							{
								if (FlxG.save.data.flashing)
								{
									FlxFlicker.flicker(spr, 1, 0.06, false, false, function(flick:FlxFlicker)
									{
										goToState();
									});
								}
								else
								{
									new FlxTimer().start(1, function(tmr:FlxTimer)
									{
										goToState();
									});
								}
							}
						});
				}
			}
		}

		super.update(elapsed);
	}
	
	function goToState()
	{
		var daChoice:String = optionShit[curSelected];

		switch (daChoice)
		{
			case 'story':
				FlxG.switchState(new StoryMenuState());
				trace("Story Menu Selected");
			case 'freeplay':
				FlxG.switchState(new FreeplayState());
				trace("Freeplay Menu Selected");
			case 'options':
				FlxG.switchState(new OptionsMenu());
		}
	}

	function changeItem(huh:Int = 0, setNum:Int = 0)
	{
	
		if (huh == 69)
			curSelected = setNum;
		else
			curSelected += huh;
		
		if (!storyLastSelected) //if freeplay most recent
		{
			if (curSelected >= menuItems.length)
				curSelected = 1;
			if (curSelected < 1)
				curSelected = menuItems.length-1;
		}
		
		if (storyLastSelected) //if storymode most recent
		{
			if (curSelected >= menuItems.length-1)
				curSelected = 0;
			if (curSelected < 0)
				curSelected = menuItems.length - 2;
		}
		trace("curSelected: " + Std.string(optionShit[curSelected]));
		
		menuItems.forEach(function(spr:FlxSprite)
		{
			//spr.animation.play('idle');
			
			if (!storyLastSelected) //if freeplay most recent
			{
				if (spr.ID != 5) //if id is not freeplay
					spr.animation.play('idle');
				else
					spr.animation.play('recent');
			}
			
			if (storyLastSelected) //if storymode most recent
			{
				if (spr.ID != 0) //if id is not storymode
					spr.animation.play('idle');
				else
					spr.animation.play('recent');
			}
			
			if (spr.ID == curSelected)
			{
				spr.animation.play('hover');
			}
			
			spr.updateHitbox();
		});
	}
}
