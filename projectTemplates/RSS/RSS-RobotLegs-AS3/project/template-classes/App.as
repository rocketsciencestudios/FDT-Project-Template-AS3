package ${packageName} {
	import nl.rocketsciencestudios.RSSVersion;

	import com.epologee.application.AbstractApplication;
				
	[Frame(factoryClass="${packageName}.${appId}Factory")]
	public class ${appId}App extends AbstractApplication {
		private var _context : ${appId}Context;
			
		public function ${appId}App() {
			super("Made by Rocket Science Studios", "http://rocketsciencestudios.nl", RSSVersion.HASH);
		}
		
		override public function startApplication() : void {
			_context = new ${appId}Context(this);
		}
	}
}