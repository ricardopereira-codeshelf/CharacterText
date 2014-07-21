//
//  FKFlickrPhotosGetContext.h
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPhotosGetContextError_PhotoNotFound = 1,		 /* The photo id passed was not a valid photo id, or was the id of a photo that the calling user does not have permission to view. */
	FKFlickrPhotosGetContextError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosGetContextError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosGetContextError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosGetContextError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosGetContextError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosGetContextError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosGetContextError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPhotosGetContextError;

/*

Returns next and previous photos for a photo in a photostream.

<p>When either the previous of next photo is unavailable, the element is still returned, but contains <code>id="0"</code></p>

Response:

<prevphoto id="2980" secret="973da1e709"
	title="boo!" url="/photos/bees/2980/" /> 
<nextphoto id="2985" secret="059b664012"
	title="Amsterdam Amstel" url="/photos/bees/2985/" /> 

*/
@interface FKFlickrPhotosGetContext : NSObject <FKFlickrAPIMethod>

/* The id of the photo to fetch the context for. */
@property (nonatomic, strong) NSString *photo_id; /* (Required) */

/*  */
@property (nonatomic, strong) NSString *num_prev;

/*  */
@property (nonatomic, strong) NSString *num_next;

/* A comma-delimited list of extra information to fetch for each returned record. Currently supported fields are: <code>description, license, date_upload, date_taken, owner_name, icon_server, original_format, last_update, geo, tags, machine_tags, o_dims, views, media, path_alias, url_sq, url_t, url_s, url_m, url_z, url_l, url_o</code> */
@property (nonatomic, strong) NSString *extras;

/* Accepts <code>datetaken</code> or <code>dateposted</code> and returns results in the proper order. */
@property (nonatomic, strong) NSString *order_by;


@end
