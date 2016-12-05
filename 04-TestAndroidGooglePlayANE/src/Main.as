package
{
	import flash.desktop.NativeApplication;
	import flash.events.Event;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.text.TextFormat;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	
	import flash.text.TextField;
	
	import com.amanitadesign.AndroidGooglePlay;
	import com.amanitadesign.events.AirGooglePlayGamesEvent;
	
	/**
	 * ...
	 * @author Oldes
	 */
	public class Main extends Sprite 
	{
		
		public var tf:TextField;
		
		public function Main() 
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.DEACTIVATE, deactivate);
			
			// touch or gesture?
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			
			tf = new TextField();
			tf.width = stage.stageWidth;
			tf.height = stage.stageHeight;
			tf.wordWrap = true;
			tf.defaultTextFormat = new TextFormat(null, 24);
			addChild(tf);
			
			log("Testing Amanita Android ANE...");
			log("AndroidGooglePlay is supported: " + AndroidGooglePlay.isSupported);
			log(AndroidGooglePlay.instance.hello());
			
			log("\nGooglePlay signin test...");
			AndroidGooglePlay.instance.addEventListener(AirGooglePlayGamesEvent.ON_SIGN_IN_SUCCESS, GPSonSignInSuccess);
			AndroidGooglePlay.instance.addEventListener(AirGooglePlayGamesEvent.ON_SIGN_OUT_SUCCESS, GPSonSignOutSuccess);
			AndroidGooglePlay.instance.addEventListener(AirGooglePlayGamesEvent.ON_SIGN_IN_FAIL, GPSonSignInFail);
			AndroidGooglePlay.instance.signIn();
		}
		
		private function log(value:String):void{
			tf.appendText(value+"\n");
			tf.scrollV = tf.maxScrollV;
		}
		
		private function deactivate(e:Event):void 
		{
			// make sure the app behaves well (or exits) when in background
			//NativeApplication.nativeApplication.exit();
		}
		
		private function GPSonSignInSuccess(event:AirGooglePlayGamesEvent):void {
			log("GPSonSignInSuccess: " + event);
		}
		private function GPSonSignOutSuccess(event:AirGooglePlayGamesEvent):void {
			log("GPSonSignOutSuccess: " + event);
		}
		private function GPSonSignInFail(event:AirGooglePlayGamesEvent):void {
			log("GPSonSignInFail: " + event);
		}
		
	}
	
}