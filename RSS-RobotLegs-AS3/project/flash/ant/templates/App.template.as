package nl.rocketsciencestudios.@project_name_lowercase@ {
	import nl.rocketsciencestudios.RSSVersion;

	import com.epologee.application.AbstractApplication;
				
	[Frame(factoryClass="nl.rocketsciencestudios.@project_name_lowercase@.@project_name@Factory")]
	public class @project_name@App extends AbstractApplication {
		private var _context : @project_name@Context;
			
		public function @project_name@App() {
			super("Made by Rocket Science Studios", "http://rocketsciencestudios.nl", RSSVersion.HASH);
		}
		
		override public function startApplication() : void {
			_context = new @project_name@Context(this);
		}
	}
}