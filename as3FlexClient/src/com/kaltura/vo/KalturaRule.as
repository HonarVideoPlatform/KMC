// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2016  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
package com.kaltura.vo
{
	import com.kaltura.vo.BaseFlexVo;

	[Bindable]
	public dynamic class KalturaRule extends BaseFlexVo
	{
		/**
		* Short Rule Description
		**/
		public var description : String = null;

		/**
		* Rule Custom Data to allow saving rule specific information
		**/
		public var ruleData : String = null;

		/**
		* Message to be thrown to the player in case the rule is fulfilled
		**/
		public var message : String = null;

		/**
		* Code to be thrown to the player in case the rule is fulfilled
		**/
		public var code : String = null;

		/**
		* Actions to be performed by the player in case the rule is fulfilled
		**/
		public var actions : Array = null;

		/**
		* Conditions to validate the rule
		**/
		public var conditions : Array = null;

		/**
		* Indicates what contexts should be tested by this rule
		**/
		public var contexts : Array = null;

		/**
		* Indicates that this rule is enough and no need to continue checking the rest of the rules
		* @see com.kaltura.types.kalturaBoolean
		**/
		public var stopProcessing : Boolean;

		/**
		* Indicates if we should force ks validation for admin ks users as well
		* @see com.kaltura.types.KalturaNullableBoolean
		**/
		public var forceAdminValidation : int = int.MIN_VALUE;

		/** 
		* a list of attributes which may be updated on this object 
		**/ 
		public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('description');
			arr.push('ruleData');
			arr.push('message');
			arr.push('code');
			arr.push('actions');
			arr.push('conditions');
			arr.push('contexts');
			arr.push('stopProcessing');
			arr.push('forceAdminValidation');
			return arr;
		}

		/** 
		* a list of attributes which may only be inserted when initializing this object 
		**/ 
		public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			return arr;
		}

		/** 
		* get the expected type of array elements 
		* @param arrayName 	 name of an attribute of type array of the current object 
		* @return 	 un-qualified class name 
		**/ 
		public function getElementType(arrayName:String):String
		{
			var result:String = '';
			switch (arrayName) {
				case 'actions':
					result = 'KalturaRuleAction';
					break;
				case 'conditions':
					result = 'KalturaCondition';
					break;
				case 'contexts':
					result = 'KalturaContextTypeHolder';
					break;
			}
			return result;
		}
	}
}
