package ${packageName} {
	import logmeister.LogMeister;
	import logmeister.connectors.TrazzleConnector;

	import nl.rocketsciencestudios.RSSVersion;

	import com.epologee.application.AbstractFactory;
	import com.epologee.development.logging.logger;
	import com.epologee.navigator.integration.logmeister.LogMeisterLogger;
	import com.epologee.util.stage.StageSettings;
	
	public class ${appId}Factory extends AbstractFactory {
		public function ${appId}Factory() {
			if (RSSVersion.DEBUG_MODE) {
				LogMeister.addLogger(new TrazzleConnector(stage, "${appId}"));
				logger = new LogMeisterLogger();
			}
			
			super(new ${appId}Preloader(), "${packageName}.${appId}App", StageSettings.NO_SCALE_TOP_LEFT);
		}
	}
}