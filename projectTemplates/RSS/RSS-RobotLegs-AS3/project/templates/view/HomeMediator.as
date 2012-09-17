package ${packageName}.view {
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author RocketScienceStudios.com
	 */
	public class HomeMediator extends Mediator {
		
		[Inject]
		public var view : HomeView;

		override public function onRegister() : void {
			view.initialize();
		}
	}
}
