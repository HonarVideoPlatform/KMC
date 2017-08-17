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
	import com.kaltura.vo.KalturaCuePoint;

	[Bindable]
	public dynamic class KalturaAnnotation extends KalturaCuePoint
	{
		/**
		**/
		public var parentId : String = null;

		/**
		**/
		public var text : String = null;

		/**
		* End time in milliseconds
		**/
		public var endTime : int = int.MIN_VALUE;

		/**
		* Duration in milliseconds
		**/
		public var duration : int = int.MIN_VALUE;

		/**
		* Depth in the tree
		**/
		public var depth : int = int.MIN_VALUE;

		/**
		* Number of all descendants
		**/
		public var childrenCount : int = int.MIN_VALUE;

		/**
		* Number of children, first generation only.
		**/
		public var directChildrenCount : int = int.MIN_VALUE;

		/**
		* Is the annotation public.
		* @see com.kaltura.types.KalturaNullableBoolean
		**/
		public var isPublic : int = int.MIN_VALUE;

		/**
		* Should the cue point get indexed on the entry.
		* @see com.kaltura.types.KalturaNullableBoolean
		**/
		public var searchableOnEntry : int = int.MIN_VALUE;

		override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('text');
			arr.push('endTime');
			arr.push('isPublic');
			arr.push('searchableOnEntry');
			return arr;
		}

		override public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = super.getInsertableParamKeys();
			arr.push('parentId');
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
