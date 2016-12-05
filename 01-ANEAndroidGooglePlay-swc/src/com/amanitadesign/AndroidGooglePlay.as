package com.amanitadesign
{
	import flash.events.EventDispatcher;
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;
	import flash.system.Capabilities;
	
	import com.amanitadesign.events.AirGooglePlayGamesEvent;
	

	
	public class AndroidGooglePlay extends EventDispatcher
	{
		
		private static var _instance:AndroidGooglePlay;
		private var extContext:ExtensionContext;
		
		
		public function AndroidGooglePlay( enforcer:SingletonEnforcer ) {
			super();
			
			extContext = ExtensionContext.createExtensionContext( "com.amanitadesign.AndroidGooglePlay", "" );
			
			if ( !extContext ) {
				throw new Error( "AndroidGooglePlay extension is not supported on this platform." );
			}
			
			extContext.addEventListener( StatusEvent.STATUS, onStatusHandler );
		}
		
		/** Extension is supported on Android devices. */
		public static function get isSupported() : Boolean
		{
			return Capabilities.manufacturer.indexOf("Android") != -1;
		}
		
		
		private function init():void {
			extContext.call( "init" );
		}
		
		/**
		 * Cleans up the instance of the native extension. 
		 */		
		public function dispose():void { 
			extContext.dispose(); 
		}
		
		
		public static function get instance():AndroidGooglePlay {
			if ( !_instance ) {
				_instance = new AndroidGooglePlay( new SingletonEnforcer() );
				_instance.init();
			}
			return _instance;
		}
		
		
		private function onStatusHandler( event:StatusEvent ):void {
			trace("onStatusHandler: " + event)
			var e:Event;
			switch(event.code) {
				case AirGooglePlayGamesEvent.ON_SIGN_IN_SUCCESS:
				case AirGooglePlayGamesEvent.ON_SIGN_IN_FAIL:
				case AirGooglePlayGamesEvent.ON_SIGN_OUT_SUCCESS:
				case AirGooglePlayGamesEvent.ON_OPEN_SNAPSHOT_READY:
				case AirGooglePlayGamesEvent.ON_OPEN_SNAPSHOT_FAILED:
					e = new AirGooglePlayGamesEvent(event.code, event.level);
					break;
					
			}
			if(e) {
				this.dispatchEvent(e);
			}
			//
			//
		}

		
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function hello():String {
			return extContext.call( "hello" ) as String;
		}
		
		/********************************************************************************************************
		 * 
		 *       GOOGLE API  ************************************************************************************
		 ********************************************************************************************************/

		public function isSignedIn():Boolean
		{
			var signedIn:Boolean = false;
			if (AndroidGooglePlay.isSupported)
			{
				signedIn = extContext.call("isSignedIn") as Boolean;
			}
			return signedIn;
		}
		
		public function signIn():void
		{
			if (AndroidGooglePlay.isSupported)
			{
				extContext.call("signIn");
			}
		}
		
		public function signOut():void
		{
			if (AndroidGooglePlay.isSupported)
			{
				extContext.call("signOut");
			}
		}
		
		public function reportAchievement(achievementId:String, percent:Number = 0):void
		{
			if (AndroidGooglePlay.isSupported)
			{
				extContext.call("reportAchievement", achievementId, percent);
			}
		}
		
		public function showStandardAchievements():void
		{
			if (AndroidGooglePlay.isSupported)
			{
				extContext.call("showStandardAchievements");
			}
		} 
		public function E2WSDK():void
		{
			if (AndroidGooglePlay.isSupported)
			{
				extContext.call("E2WSDK");
			}
		} 
		
		
		
		
	}
}

class SingletonEnforcer {}