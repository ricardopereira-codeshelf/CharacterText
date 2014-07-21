//
//  FKFlickrPlacesFind.h
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPlacesFindError_RequiredParameterMissing = 1,		 /* One or more required parameters was not included with the API call. */
	FKFlickrPlacesFindError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPlacesFindError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPlacesFindError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPlacesFindError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPlacesFindError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPlacesFindError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPlacesFindError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPlacesFindError;

/*

Return a list of place IDs for a query string.<br /><br />
The flickr.places.find method is <b>not</b> a geocoder. It will round <q>up</q> to the nearest place type to which place IDs apply. For example, if you pass it a street level address it will return the city that contains the address rather than the street, or building, itself.

Each place returned will contain its place ID, corresponding URL (underneath www.flickr.com/places) and place type for disambiguating different locations with the same name.

Response:

<places query="Alabama" total="3">
   <place place_id="VrrjuESbApjeFS4." woeid="2347559"
               latitude="32.614" longitude="-86.680"
               place_url="/United+States/Alabama"
               place_type="region">Alabama, Alabama, United States</place>
   <place place_id="cGHuc0mbApmzEHoP" woeid="2352520"
               latitude="43.096" longitude="-78.389"
               place_url="/United+States/New+York/Alabama"
               place_type="locality">Alabama, New York, United States</place>
   <place place_id="o4yVPEqYBJvFMP8Q" woeid="1579389"
               latitude="-26.866" longitude="26.583"
               place_url="/South+Africa/North+West/Alabama"
               place_type="locality">Alabama, North West, South Africa</place>
</places>

*/
@interface FKFlickrPlacesFind : NSObject <FKFlickrAPIMethod>

/* The query string to use for place ID lookups */
@property (nonatomic, strong) NSString *query; /* (Required) */

/* A bounding box for limiting the area to query. */
@property (nonatomic, strong) NSString *bbox;

/* Secret sauce. */
@property (nonatomic, strong) NSString *extras;

/* Do we want sexy time words in our venue results? */
@property (nonatomic, strong) NSString *safe;


@end
