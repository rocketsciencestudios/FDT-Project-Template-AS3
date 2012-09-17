package ${packageName} {
	import nl.rocketsciencestudios.RSSVersion;
	import ${packageName}.model.constants.States;
	import ${packageName}.view.HomeView;
	import ${packageName}.view.HomeMediator;

	import rss.nebula.robotlegs.environment.EnvironmentModel;
	import rss.nebula.text.TextSource;

	import com.epologee.navigator.features.display.DebugConsole;
	import com.epologee.navigator.integration.robotlegs.NavigatorSignalContext;
	import com.epologee.navigator.integration.swfaddress.SWFAddressNavigator;

	import flash.display.DisplayObjectContainer;

	public class ${appId}Context extends NavigatorSignalContext {

		public function ${appId}Context(contextView : DisplayObjectContainer) {
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
			stateViewMap.mapViewMediator(States.HOME, HomeView, HomeMediator);
			
			if (RSSVersion.DEBUG_MODE) {
				stateViewMap.mapView("/", DebugConsole, navigator, "TR");
			}
		}

		private function startNavigation() : void {
			if (RSSVersion.DEBUG_MODE) {
				navigator.start("/", States.HOME);
				return;
			}
			
			navigator.start("/");
		}
	}
}