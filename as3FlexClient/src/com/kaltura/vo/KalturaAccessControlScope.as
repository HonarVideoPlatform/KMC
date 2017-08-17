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
	public dynamic class KalturaAccessControlScope extends BaseFlexVo
	{
		/**
		* URL to be used to test domain conditions.
		**/
		public var referrer : String = null;

		/**
		* IP to be used to test geographic location conditions.
		**/
		public var ip : String = null;

		/**
		* Kaltura session to be used to test session and user conditions.
		**/
		public var ks : String = null;

		/**
		* Browser or client application to be used to test agent conditions.
		**/
		public var userAgent : String = null;

		/**
		* Unix timestamp (In seconds) to be used to test entry scheduling, keep null to use now.
		**/
		public var time : int = int.MIN_VALUE;

		/**
		* Indicates what contexts should be tested. No contexts means any context.
		**/
		public var contexts : Array = null;

		/**
		* Array of hashes to pass to the access control profile scope
		**/
		public var hashes : Array = null;

		/** 
		* a list of attributes which may be updated on this object 
		**/ 
		public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('referrer');
			arr.push('ip');
			arr.push('ks');
			arr.push('userAgent');
			arr.push('time');
			arr.push('contexts');
			arr.push('hashes');
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
				case 'contexts':
					result = 'KalturaAccessControlContextTypeHolder';
					break;
				case 'hashes':
					result = 'KalturaKeyValue';
					break;
			}
			return result;
		}
	}
}
