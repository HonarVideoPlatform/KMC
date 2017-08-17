package com.kaltura.kmc.modules.account.control.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.kaltura.kmc.modules.account.model.types.ConversionProfileWindowMode;
	
	public class ConversionSettingsEvent extends CairngormEvent
	{
		public static const ADD_CONVERSION_PROFILE : String = "account_addConversionProfile";
		
		/**
		 * delete the given conversion profiles
		 * event.data is [ConversionProfileVO]
		 */
		public static const DELETE_CONVERSION_PROFILE : String = "account_deleteConversionProfile";
		
		/**
		 * get all conversion profiles and cpaps
		 * @internal
		 * triggered after add/update/delete 
		 */
		public static const LIST_CONVERSION_PROFILES : String = "account_listConversionProfiles";
				
		/**
		 * get all live conversion profiles and cpaps
		 * @internal
		 * triggered after add/update/delete 
		 */
		public static const LIST_LIVE_CONVERSION_PROFILES : String = "account_listLiveConversionProfiles";
				
		/**
		 * get all conversion profiles (+cpaps) and flavor params
		 * event.data (can be) [pageIndex, pageSize] 
		 * @internal
		 * triggered from AdvancedMode.mxml
		 */
		public static const LIST_CONVERSION_PROFILES_AND_FLAVOR_PARAMS : String = "account_listConversionProfilesAndFlavorParams";
				
		/**
		 * get all live conversion profiles (+cpaps) and flavor params
		 * event.data (can be) [pageIndex, pageSize] 
		 * @internal
		 * triggered from AdvancedMode.mxml
		 */
		public static const LIST_LIVE_CONVERSION_PROFILES_AND_FLAVOR_PARAMS : String = "account_listLiveConversionProfilesAndFlavorParams";
		
		/**
		 * get all flavor params
		 * @internal
		 * triggered from AccessControl
		 */
		public static const LIST_FLAVOR_PARAMS : String = "account_listFlavorParams";
		
		public static const UPDATE_CONVERSION_PROFILE : String = "account_updateConversionProfile";
		
		/**
		 * set the given profile as partner default 
		 */
		public static const SET_AS_DEFAULT_CONVERSION_PROFILE : String = "account_setAsDefualtConversionProfile";
		
		/**
		 * list current partner's remote storage profiles
		 */
		public static const LIST_STORAGE_PROFILES : String = "account_listStorageProfiles";
		
		
		public var selected : Boolean;
		
		/**
		 * an event to disaptch after the current one completes executing 
		 * (requires dispatching in relevant command)
		 */
		public var nextEvent:CairngormEvent;
		
		public function ConversionSettingsEvent(type:String, 
												selected:Boolean = false, 
												data:Object = null,
												nextEvent:CairngormEvent = null,
										  		bubbles:Boolean = false, 
										  		cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
			this.selected = selected;
			this.data = data;
			this.nextEvent = nextEvent;
		}
		
		
		public static function getListEventByMode(mode:String):String {
			var result:String = ConversionSettingsEvent.LIST_CONVERSION_PROFILES;
			if (mode == ConversionProfileWindowMode.MODE_LIVE) {
				result = ConversionSettingsEvent.LIST_LIVE_CONVERSION_PROFILES; 				
			}
			return result;
		}
	}
}