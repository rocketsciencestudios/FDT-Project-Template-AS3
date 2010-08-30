package nl.rocketsciencestudios.@project_name_lowercase@ {
	import nl.rocketsciencestudios.RSSVersion;

	import com.epologee.application.AbstractFactory;
	import com.epologee.development.logging.LogInlet;
	import com.epologee.development.logging.LogOutletSOSmax;
	import com.epologee.development.logging.LogOutletTrazzle15;
	import com.epologee.util.stage.StageSettings;

	import flash.system.Capabilities;
	
	public class @project_name@Factory extends AbstractFactory {
		public function @project_name@Factory() {
			super(new @project_name@Preloader(), "nl.rocketsciencestudios.@project_name_lowercase@.@project_name@App", StageSettings.NO_SCALE_TOP_LEFT);
		}
		
		override public function initialize() : void {
			if (RSSVersion.DEBUG_MODE) {
				LogInlet.addLogger(new LogOutletSOSmax());
				LogInlet.addLogger(new LogOutletTrazzle15(stage, "@project_name@ " + (Capabilities.isDebugger ? "D" : "R") + " " + Capabilities.version));
				LogInlet.broadcastVersion(RSSVersion.HASH);
			}
						
			super.initialize();
		}
	}
}