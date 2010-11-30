package nl.rocketsciencestudios.@project_name_lowercase@.controller {
	import org.puremvc.as3.multicore.patterns.command.AsyncMacroCommand;

	/**
	 * @author Eric-Paul Lecluse (c) epologee.com
	 */
	public class StartUpCommand extends AsyncMacroCommand {
		override protected function initializeAsyncMacroCommand() : void {
			// add more sub commands before the start navigation command
			addSubCommand(StartNavigationCommand);
		}
	}
}