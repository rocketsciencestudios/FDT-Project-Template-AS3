package nl.rocketsciencestudios.@project_name_lowercase@ {
	import nl.rocketsciencestudios.RSSVersion;
	import nl.rocketsciencestudios.@project_name_lowercase@.controller.StartUpCommand;

	import com.epologee.application.preloader.AbstractPreloadElement;
	import com.epologee.application.preloader.PEByInterface;
	import com.epologee.navigator.integration.puremvc.NavigationProxy;
	import com.epologee.navigator.integration.puremvc.debug.DebugTransitionMediator;
	import com.epologee.puremvc.facade.SimpleFacade;
	import com.epologee.puremvc.stage.StageProxy;
	
	import org.puremvc.as3.multicore.patterns.proxy.Proxy;

	import flash.display.Sprite;
	import flash.utils.getQualifiedClassName;
		
	public class @project_name@Facade extends SimpleFacade {
		public static const NAME : String = getQualifiedClassName(@project_name@Facade);
		//
		public static const START_UP : String = NAME + ":START_UP";
		//
		private var _preloaded : Array;
		private var _container : Sprite;

		public function @project_name@Facade(inMVCkey : String, inTimeline : Sprite, inPreloaded:Array) {
			_preloaded = inPreloaded;
			_container = Sprite(inTimeline.addChild(new Sprite()));
			super(_container, inMVCkey);
		}

		override protected function initializeModel() : void {
			super.initializeModel();

			// register preloaded proxies
			for each (var pe : AbstractPreloadElement in _preloaded) {
				if (pe is PEByInterface) {
					var proxy : Proxy = PEByInterface(pe).preloadable as Proxy;
					if (proxy) {
						registerProxy(proxy);
					}
				}
			}
							
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
			}
		}

		public function startUp() : void {
			sendNotification(START_UP);
		}
	}
}
