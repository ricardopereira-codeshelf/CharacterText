//
//  FKFlickrPhotosGeoSetPerms.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosGeoSetPerms.h" 

@implementation FKFlickrPhotosGeoSetPerms

- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 1;
}

- (NSString *) name {
    return @"flickr.photos.geo.setPerms";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.is_public) {
		valid = NO;
		[errorDescription appendString:@"'is_public', "];
	}
	if(!self.is_contact) {
		valid = NO;
		[errorDescription appendString:@"'is_contact', "];
	}
	if(!self.is_friend) {
		valid = NO;
		[errorDescription appendString:@"'is_friend', "];
	}
	if(!self.is_family) {
		valid = NO;
		[errorDescription appendString:@"'is_family', "];
	}
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
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
	if(self.is_public) {
		[args setValue:self.is_public forKey:@"is_public"];
	}
	if(self.is_contact) {
		[args setValue:self.is_contact forKey:@"is_contact"];
	}
	if(self.is_friend) {
		[args setValue:self.is_friend forKey:@"is_friend"];
	}
	if(self.is_family) {
		[args setValue:self.is_family forKey:@"is_family"];
	}
	if(self.photo_id) {
		[args setValue:self.photo_id forKey:@"photo_id"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosGeoSetPermsError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosGeoSetPermsError_PhotoHasNoLocationInformation:
			return @"Photo has no location information";
		case FKFlickrPhotosGeoSetPermsError_RequiredArgumentsMissing:
			return @"Required arguments missing.";
		case FKFlickrPhotosGeoSetPermsError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosGeoSetPermsError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosGeoSetPermsError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosGeoSetPermsError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosGeoSetPermsError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosGeoSetPermsError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosGeoSetPermsError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosGeoSetPermsError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosGeoSetPermsError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosGeoSetPermsError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosGeoSetPermsError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
