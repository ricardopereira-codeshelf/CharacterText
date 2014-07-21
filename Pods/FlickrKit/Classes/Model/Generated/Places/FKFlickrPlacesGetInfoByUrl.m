//
//  FKFlickrPlacesGetInfoByUrl.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPlacesGetInfoByUrl.h" 

@implementation FKFlickrPlacesGetInfoByUrl

- (BOOL) needsLogin {
    return NO;
}

- (BOOL) needsSigning {
    return NO;
}

- (FKPermission) requiredPerms {
    return -1;
}

- (NSString *) name {
    return @"flickr.places.getInfoByUrl";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.url) {
		valid = NO;
		[errorDescription appendString:@"'url', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.url) {
		[args setValue:self.url forKey:@"url"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPlacesGetInfoByUrlError_PlaceURLRequired:
			return @"Place URL required.";
		case FKFlickrPlacesGetInfoByUrlError_PlaceNotFound:
			return @"Place not found.";
		case FKFlickrPlacesGetInfoByUrlError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPlacesGetInfoByUrlError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPlacesGetInfoByUrlError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPlacesGetInfoByUrlError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPlacesGetInfoByUrlError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPlacesGetInfoByUrlError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPlacesGetInfoByUrlError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
