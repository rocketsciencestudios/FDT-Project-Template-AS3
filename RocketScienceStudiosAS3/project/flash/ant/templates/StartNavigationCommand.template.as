package nl.rocketsciencestudios.@project_name_lowercase@.controller {
	import nl.rocketsciencestudios.RSSVersion;

	import com.epologee.navigator.NavigationState;
	import com.epologee.navigator.integration.puremvc.NavigationProxy;
	
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;

	public class StartNavigationCommand extends SimpleCommand {
		override public function execute(notification : INotification) : void {
			var np : NavigationProxy = NavigationProxy(facade.retrieveProxy(NavigationProxy.NAME));
					 
			var map : XML = <map>
			</map>;
			
			np.parseMediatorStateMap(map);
			
			if (RSSVersion.DEBUG_MODE) {
				// change the second parameter at will
				np.start(new NavigationState(), new NavigationState("/"));
			} else {
				np.start(new NavigationState(), new NavigationState("/"));
			}
		}
	}
}