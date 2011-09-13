package nl.rocketsciencestudios.@project_name_lowercase@ {
	import nl.rocketsciencestudios.RSSVersion;

	import rocketsciencestudios.model.environment.EnvironmentModel;
	import rocketsciencestudios.model.text.TextSource;

	import com.epologee.navigator.features.display.DebugConsole;
	import com.epologee.navigator.integration.robotlegs.NavigatorSignalContext;
	import com.epologee.navigator.integration.swfaddress.SWFAddressNavigator;

	import flash.display.DisplayObjectContainer;

	public class @project_name@Context extends NavigatorSignalContext {

		public function @project_name@Context(contextView : DisplayObjectContainer) {
			super(contextView, true, SWFAddressNavigator);
		}

		override public function startup() : void {
			initializeController();
			initializeModel();
			initializeView();
			startNavigation();
		}

		private function initializeController() : void {
		}

		private function initializeModel() : void {
			injector.mapSingleton(EnvironmentModel);

			TextSource.instance.initialize();
		}

		private function initializeView() : void {
			if (RSSVersion.DEBUG_MODE) {
				stateViewMap.mapView("/", DebugConsole, navigator, "TR");
			}
		}

		private function startNavigation() : void {
			if (RSSVersion.DEBUG_MODE) {
				navigator.start("/", "/home/");
				return;
			}
			
			navigator.start("/");
		}
	}
}