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
package com.kaltura.types
{
	public class KalturaBatchJobType
	{
		public static const PARSE_MULTI_LANGUAGE_CAPTION_ASSET : String = 'caption.parsemultilanguagecaptionasset';
		public static const PARSE_CAPTION_ASSET : String = 'captionSearch.parseCaptionAsset';
		public static const DISTRIBUTION_DELETE : String = 'contentDistribution.DistributionDelete';
		public static const CONVERT : String = '0';
		public static const DISTRIBUTION_DISABLE : String = 'contentDistribution.DistributionDisable';
		public static const DISTRIBUTION_ENABLE : String = 'contentDistribution.DistributionEnable';
		public static const DISTRIBUTION_FETCH_REPORT : String = 'contentDistribution.DistributionFetchReport';
		public static const DISTRIBUTION_SUBMIT : String = 'contentDistribution.DistributionSubmit';
		public static const DISTRIBUTION_SYNC : String = 'contentDistribution.DistributionSync';
		public static const DISTRIBUTION_UPDATE : String = 'contentDistribution.DistributionUpdate';
		public static const DROP_FOLDER_CONTENT_PROCESSOR : String = 'dropFolder.DropFolderContentProcessor';
		public static const DROP_FOLDER_WATCHER : String = 'dropFolder.DropFolderWatcher';
		public static const EVENT_NOTIFICATION_HANDLER : String = 'eventNotification.EventNotificationHandler';
		public static const INTEGRATION : String = 'integration.Integration';
		public static const SCHEDULED_TASK : String = 'scheduledTask.ScheduledTask';
		public static const INDEX_TAGS : String = 'tagSearch.IndexTagsByPrivacyContext';
		public static const TAG_RESOLVE : String = 'tagSearch.TagResolve';
		public static const VIRUS_SCAN : String = 'virusScan.VirusScan';
		public static const WIDEVINE_REPOSITORY_SYNC : String = 'widevine.WidevineRepositorySync';
		public static const IMPORT : String = '1';
		public static const DELETE : String = '2';
		public static const FLATTEN : String = '3';
		public static const BULKUPLOAD : String = '4';
		public static const DVDCREATOR : String = '5';
		public static const DOWNLOAD : String = '6';
		public static const OOCONVERT : String = '7';
		public static const CONVERT_PROFILE : String = '10';
		public static const POSTCONVERT : String = '11';
		public static const EXTRACT_MEDIA : String = '14';
		public static const MAIL : String = '15';
		public static const NOTIFICATION : String = '16';
		public static const CLEANUP : String = '17';
		public static const SCHEDULER_HELPER : String = '18';
		public static const BULKDOWNLOAD : String = '19';
		public static const DB_CLEANUP : String = '20';
		public static const PROVISION_PROVIDE : String = '21';
		public static const CONVERT_COLLECTION : String = '22';
		public static const STORAGE_EXPORT : String = '23';
		public static const PROVISION_DELETE : String = '24';
		public static const STORAGE_DELETE : String = '25';
		public static const EMAIL_INGESTION : String = '26';
		public static const METADATA_IMPORT : String = '27';
		public static const METADATA_TRANSFORM : String = '28';
		public static const FILESYNC_IMPORT : String = '29';
		public static const CAPTURE_THUMB : String = '30';
		public static const DELETE_FILE : String = '31';
		public static const INDEX : String = '32';
		public static const MOVE_CATEGORY_ENTRIES : String = '33';
		public static const COPY : String = '34';
		public static const CONCAT : String = '35';
		public static const CONVERT_LIVE_SEGMENT : String = '36';
		public static const COPY_PARTNER : String = '37';
		public static const VALIDATE_LIVE_MEDIA_SERVERS : String = '38';
		public static const SYNC_CATEGORY_PRIVACY_CONTEXT : String = '39';
		public static const LIVE_REPORT_EXPORT : String = '40';
		public static const RECALCULATE_CACHE : String = '41';
		public static const LIVE_TO_VOD : String = '42';
	}
}
