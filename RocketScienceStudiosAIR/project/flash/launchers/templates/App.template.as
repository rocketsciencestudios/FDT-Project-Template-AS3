package nl.rocketsciencestudios.@project_name_lowercase@ {
	import nl.rocketsciencestudios.RSSVersion;
	import com.epologee.application.AbstractApplication;
	import flash.utils.getQualifiedClassName;
			
	[Frame(factoryClass="nl.rocketsciencestudios.@project_name_lowercase@.@project_name@Factory")]
	public class @project_name@App extends AbstractApplication {
		public static const MVC_MULTITON : String = getQualifiedClassName(@project_name@App) + ":MULTITON";
		//
		private var _facade : @project_name@Facade;
			
		public function @project_name@App() {
			super("Made by Rocket Science Studios", "http://rocketsciencestudios.nl", RSSVersion.HASH);
		}
		
		override public function startApplication(inPreloaded : Array) : void {
			_facade = new @project_name@Facade(MVC_MULTITON, this);
			_facade.startUp();
		}
	}
}