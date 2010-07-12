package nl.rocketsciencestudios.@project_name_lowercase@ {
	import nl.rocketsciencestudios.RSSVersion;
	import nl.rocketsciencestudios.texter.controller.StartUpCommand;

	import com.epologee.navigator.integration.puremvc.NavigationProxy;
	import com.epologee.navigator.integration.puremvc.debug.DebugMenuMediator;
	import com.epologee.navigator.integration.puremvc.debug.DebugTransitionMediator;
	import com.epologee.puremvc.facade.SimpleFacade;
	import com.epologee.puremvc.stage.StageProxy;

	import flash.display.Sprite;
	import flash.utils.getQualifiedClassName;
		
	public class @project_name@Facade extends SimpleFacade {
		public static const NAME : String = getQualifiedClassName(@project_name@Facade);
		//
		public static const START_UP : String = NAME + ":START_UP";

		public function @project_name@Facade(inMVCkey : String, inTimeline : Sprite) {
			super(inTimeline, inMVCkey);
		}

		override protected function initializeModel() : void {
			super.initializeModel();
				
			registerProxy(new StageProxy(timeline));
			registerProxy(new NavigationProxy(true));
		}

		override protected function initializeController() : void {
			super.initializeController();
				
			registerCommand(START_UP, StartUpCommand);
		}

		override protected function initializeView() : void {
			super.initializeView();
				
			if (RSSVersion.DEBUG_MODE) {
				registerMediator(new DebugTransitionMediator(createLayer(), "BR"));
				registerMediator(new DebugMenuMediator(createLayer()));
			}
		}

		public function startUp() : void {
			sendNotification(START_UP);
		}
	}
}
