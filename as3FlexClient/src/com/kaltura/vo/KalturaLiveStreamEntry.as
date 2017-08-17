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
	import com.kaltura.vo.KalturaLiveEntry;

	[Bindable]
	public dynamic class KalturaLiveStreamEntry extends KalturaLiveEntry
	{
		/**
		* The stream id as provided by the provider
		**/
		public var streamRemoteId : String = null;

		/**
		* The backup stream id as provided by the provider
		**/
		public var streamRemoteBackupId : String = null;

		/**
		* Array of supported bitrates
		**/
		public var bitrates : Array = null;

		/**
		**/
		public var primaryBroadcastingUrl : String = null;

		/**
		**/
		public var secondaryBroadcastingUrl : String = null;

		/**
		**/
		public var primaryRtspBroadcastingUrl : String = null;

		/**
		**/
		public var secondaryRtspBroadcastingUrl : String = null;

		/**
		**/
		public var streamName : String = null;

		/**
		* The stream url
		**/
		public var streamUrl : String = null;

		/**
		* HLS URL - URL for live stream playback on mobile device
		**/
		public var hlsStreamUrl : String = null;

		/**
		* URL Manager to handle the live stream URL (for instance, add token)
		**/
		public var urlManager : String = null;

		/**
		* The broadcast primary ip
		**/
		public var encodingIP1 : String = null;

		/**
		* The broadcast secondary ip
		**/
		public var encodingIP2 : String = null;

		/**
		* The broadcast password
		**/
		public var streamPassword : String = null;

		/**
		* The broadcast username
		**/
		public var streamUsername : String = null;

		/**
		* The Streams primary server node id
		**/
		public var primaryServerNodeId : int = int.MIN_VALUE;

		override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('bitrates');
			arr.push('primaryBroadcastingUrl');
			arr.push('secondaryBroadcastingUrl');
			arr.push('primaryRtspBroadcastingUrl');
			arr.push('secondaryRtspBroadcastingUrl');
			arr.push('streamName');
			arr.push('streamUrl');
			arr.push('hlsStreamUrl');
			arr.push('urlManager');
			arr.push('encodingIP1');
			arr.push('encodingIP2');
			arr.push('streamPassword');
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
				case 'bitrates':
					result = 'KalturaLiveStreamBitrate';
					break;
				default:
					result = super.getElementType(arrayName);
					break;
			}
			return result;
		}
	}
}
