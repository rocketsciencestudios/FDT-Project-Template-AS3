package nl.rocketsciencestudios.@project_name_lowercase@ {
	import logmeister.LogMeister;
	import logmeister.connectors.TrazzleConnector;

	import nl.rocketsciencestudios.RSSVersion;

	import com.epologee.application.AbstractFactory;
	import com.epologee.development.logging.logger;
	import com.epologee.navigator.integration.logmeister.LogMeisterLogger;
	import com.epologee.util.stage.StageSettings;
	
	public class @project_name@Factory extends AbstractFactory {
		public function @project_name@Factory() {
			if (RSSVersion.DEBUG_MODE) {
				LogMeister.addLogger(new TrazzleConnector(stage, "@project_name@"));
				logger = new LogMeisterLogger();
			}
			
			super(new @project_name@Preloader(), "nl.rocketsciencestudios.@project_name_lowercase@.@project_name@App", StageSettings.NO_SCALE_TOP_LEFT);
		}
	}
}