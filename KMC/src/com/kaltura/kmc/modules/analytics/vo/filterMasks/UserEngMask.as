package com.kaltura.kmc.modules.analytics.vo.filterMasks
{
	import com.kaltura.kmc.modules.analytics.vo.FilterVo;
	
	public class UserEngMask extends BaseMask
	{
		
		
		public function UserEngMask(filterVo:FilterVo) {
			super(filterVo);
		}
		
		
		override public function get interval():String {
			return null;
		}
		
		override public function set interval(value:String):void {
			throw new Error("trying to set invalid value on filter: interval");
			_filterVo.interval = null;
		}
		
		
		override public function get keywords():String {
			return null;
		}
		
		override public function set keywords(value:String):void {
			throw new Error("trying to set invalid value on filter: keywords");
			_filterVo.keywords = null;
		}
		
		override public function get categories():String {
			return null;
		}
		
		override public function set categories(value:String):void {
			throw new Error("trying to set invalid value on filter: categories");
			_filterVo.categories = null;
		}
	}
}