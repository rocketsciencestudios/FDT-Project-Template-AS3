package nl.rocketsciencestudios {

	/**
	 * @author Eric-Paul Lecluse
	 * This file is overwritten on every compile by the preprocess ANT task.
	 */
	public class RSSVersion {
		public static const DATE : String = "@date@";
		public static const TIME : String = "@time@";
		public static const HASH : String = "@date@_@time@";

		public static function get DEBUG_MODE() : Boolean {
			ROCKETSCIENCESTUDIOS::DebugMode {
				return true;
			}
			
			return false;
		}
	}
}
