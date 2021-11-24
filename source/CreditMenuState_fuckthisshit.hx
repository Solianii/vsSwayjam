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

class CreditMenuState extends MusicBeatState
{
	var curSelected:Int = 0;
	var counter:Int = 0;
	
	var bg:FlxSprite;
	var icon:FlxSprite;
	var selector:FlxSprite;
	var name:FlxText;
	var desc:FlxText;
	
	var grpIcon:FlxTypedGroup<FlxSprite>;
	var grpName:FlxTypedGroup<FlxText>;
	var grpDesc:FlxTypedGroup<FlxText>;

	
	override function create()
	{
		grpIcon = new FlxTypedGroup<FlxSprite>();
		grpName = new FlxTypedGroup<FlxText>();
		grpDesc = new FlxTypedGroup<FlxText>();
		add(grpIcon);
		add(grpName);
		add(grpDesc);
		
		bg = new FlxSprite(FlxG.width,0).loadGraphic(Paths.image('credits/menuBGCredit'));
		bg.screenCenter();
		bg.antialiasing = true;
		add(bg);
		
		selector = new FlxSprite(0,0).loadGraphic(Paths.image('credits/selector'));
		selector.x = FlxG.width-selector.width;
		selector.antialiasing = true;
		selector.alpha = .3;
		add(selector);
		for (i in 0...7)
		{
			icon = new FlxSprite(25,0);
			icon.frames = Paths.getSparrowAtlas('credits/icons');
			icon.ID = i;
			icon.animation.addByPrefix('icon', Std.string(i));
			icon.animation.play('icon');
			icon.updateHitbox();
			icon.setGraphicSize(Std.int(icon.width*1.5));
			icon.updateHitbox();
			icon.y = 0;
			grpIcon.add(icon);
			
			name = new FlxText(0, 50, 0, "", 100);
			name.ID = i;
			name.font = Paths.font("FE-FONT.TTF");
			name.bold = true;
			name.y = 0;
			name.x = 0;
			name.fieldWidth = FlxG.width;
			grpName.add(name);
			
			desc = new FlxText(0, 212.5, 0, "", 50);
			desc.ID = i;
			desc.font = Paths.font("bahnschrift.ttf");
			grpDesc.add(desc);
			
			switch (i)
			{
				case 0:
					name.text = "Swayjam";
					desc.text = 'Director\ntwitch.tv/swayjam\nPsychonauts Enthusiast\n\n\n\n\n"seriously, don\'t put me in the credits sol"';
				case 1:
					name.text = "Soliani";
					desc.text = "Programmer/Animator\n\n\n\n\n\n\nlmao too bad";
				case 2:
					name.text = "Rex";
					desc.text = "Miscellaneous Artist -- chair\n@RexDoesStuffEN\n\n\n\n\n\nassets/images/characters/chairex.xml";
				case 3:
					name.text = "NameMeRose";
					desc.text = 'Music\n\n\n\n\n\n\n"im swag, follow my soundcloud thanks <3"';
				case 4:
					name.text = "MrWaffles";
					desc.text = "Charting";
				case 5:
					name.text = "Shelly";
					desc.text = 'Background Artist\nFurAffinity @mooilo\n\n\n\n\ni forgor :skull:\n"i have no idea u can just put anything for mine"';
				case 6:
					name.text = "Maluwukys";
					desc.text = "Sprite Concepts & Assets\n\n\n\n\n\n\nsus";
					
			}
			name.updateHitbox();
			name.alignment = FlxTextAlign.CENTER;
		}
		
		if (FlxG.save.data.dfjk)
			controls.setKeyboardScheme(KeyboardScheme.Solo, true);
		else
			controls.setKeyboardScheme(KeyboardScheme.Duo(true), true);
		super.create();
	}

	override function update(elapsed:Float)
	{
		if (controls.BACK || controls.ACCEPT)
		{
			FlxG.switchState(new MainMenuState());
		}
		if (controls.UP || controls.DOWN)
		{
			trace('FUC KFUCK FUCK');
		}
		super.update(elapsed);
	}
}
