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
	import com.kaltura.vo.KalturaRelatedFilter;

	[Bindable]
	public dynamic class KalturaCategoryUserBaseFilter extends KalturaRelatedFilter
	{
		/**
		**/
		public var categoryIdEqual : int = int.MIN_VALUE;

		/**
		**/
		public var categoryIdIn : String = null;

		/**
		**/
		public var userIdEqual : String = null;

		/**
		**/
		public var userIdIn : String = null;

		/**
		* @see com.kaltura.types.KalturaCategoryUserPermissionLevel
		**/
		public var permissionLevelEqual : int = int.MIN_VALUE;

		/**
		**/
		public var permissionLevelIn : String = null;

		/**
		* @see com.kaltura.types.KalturaCategoryUserStatus
		**/
		public var statusEqual : int = int.MIN_VALUE;

		/**
		**/
		public var statusIn : String = null;

		/**
		**/
		public var createdAtGreaterThanOrEqual : int = int.MIN_VALUE;

		/**
		**/
		public var createdAtLessThanOrEqual : int = int.MIN_VALUE;

		/**
		**/
		public var updatedAtGreaterThanOrEqual : int = int.MIN_VALUE;

		/**
		**/
		public var updatedAtLessThanOrEqual : int = int.MIN_VALUE;

		/**
		* @see com.kaltura.types.KalturaUpdateMethodType
		**/
		public var updateMethodEqual : int = int.MIN_VALUE;

		/**
		**/
		public var updateMethodIn : String = null;

		/**
		**/
		public var categoryFullIdsStartsWith : String = null;

		/**
		**/
		public var categoryFullIdsEqual : String = null;

		/**
		**/
		public var permissionNamesMatchAnd : String = null;

		/**
		**/
		public var permissionNamesMatchOr : String = null;

		/**
		**/
		public var permissionNamesNotContains : String = null;

		override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('categoryIdEqual');
			arr.push('categoryIdIn');
			arr.push('userIdEqual');
			arr.push('userIdIn');
			arr.push('permissionLevelEqual');
			arr.push('permissionLevelIn');
			arr.push('statusEqual');
			arr.push('statusIn');
			arr.push('createdAtGreaterThanOrEqual');
			arr.push('createdAtLessThanOrEqual');
			arr.push('updatedAtGreaterThanOrEqual');
			arr.push('updatedAtLessThanOrEqual');
			arr.push('updateMethodEqual');
			arr.push('updateMethodIn');
			arr.push('categoryFullIdsStartsWith');
			arr.push('categoryFullIdsEqual');
			arr.push('permissionNamesMatchAnd');
			arr.push('permissionNamesMatchOr');
			arr.push('permissionNamesNotContains');
			return arr;
		}

		override public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = super.getInsertableParamKeys();
			return arr;
		}

		override public function getElementType(arrayName:String):String
		{
			var result:String = '';
			switch (arrayName) {
				default:
					result = super.getElementType(arrayName);
					break;
			}
			return result;
		}
	}
}
