package nl.rocketsciencestudios.@project_name_lowercase@ {
	import logmeister.LogMeister;
	import logmeister.connectors.TrazzleConnector;

	import nl.rocketsciencestudios.RSSVersion;

	import com.epologee.application.AbstractFactory;
	import com.epologee.application.preloader.PEByInterface;
	import com.epologee.puremvc.model.EnvironmentProxy;
	import com.epologee.util.stage.StageSettings;

	import flash.system.Capabilities;
	
	public class @project_name@Factory extends AbstractFactory {
		public function @project_name@Factory() {
			if (RSSVersion.DEBUG_MODE) {
				LogMeister.addLogger(new TrazzleConnector(stage, "Robot Navigator"));
			}

			var peep : PEByInterface = new PEByInterface(new EnvironmentProxy(this, RSSVersion.HASH));
			
			super(new @project_name@Preloader([peep]), "nl.rocketsciencestudios.@project_name_lowercase@.@project_name@App", StageSettings.NO_SCALE_TOP_LEFT);
		}
	}
}