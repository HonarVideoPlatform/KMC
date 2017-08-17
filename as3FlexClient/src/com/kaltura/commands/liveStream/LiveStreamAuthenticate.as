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
package com.kaltura.commands.liveStream
{
	import com.kaltura.delegates.liveStream.LiveStreamAuthenticateDelegate;
	import com.kaltura.net.KalturaCall;

	/**
	* Authenticate live-stream entry against stream token and partner limitations
	**/
	public class LiveStreamAuthenticate extends KalturaCall
	{
		public var filterFields : String;
		
		/**
		* @param entryId String
		* @param token String
		* @param hostname String
		* @param mediaServerIndex String
		* @param applicationName String
		**/
		public function LiveStreamAuthenticate( entryId : String,token : String,hostname : String = null,mediaServerIndex : String = null,applicationName : String = null )
		{
			service= 'livestream';
			action= 'authenticate';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push('entryId');
			valueArr.push(entryId);
			keyArr.push('token');
			valueArr.push(token);
			keyArr.push('hostname');
			valueArr.push(hostname);
			keyArr.push('mediaServerIndex');
			valueArr.push(mediaServerIndex);
			keyArr.push('applicationName');
			valueArr.push(applicationName);
			applySchema(keyArr, valueArr);
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields', filterFields);
			delegate = new LiveStreamAuthenticateDelegate( this , config );
		}
	}
}
