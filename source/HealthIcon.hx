package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		//neutral, losing, winning
		animation.add('bf', [0,1,27], 0, false, isPlayer);
		animation.add('dad', [10], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gfTut', [16], 0, false, isPlayer);
		animation.add('sway', [24,25,26], 0, false, isPlayer);
		animation.add('swayGoals', [24,25,26], 0, false, isPlayer);
		animation.add('swayJammin', [24,25,26], 0, false, isPlayer);
		animation.add('swayTilted', [24,25,26], 0, false, isPlayer);
		animation.play(char);

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
