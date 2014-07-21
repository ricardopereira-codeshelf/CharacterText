//
//  FKFlickrPhotosetsCommentsDeleteComment.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosetsCommentsDeleteComment.h" 

@implementation FKFlickrPhotosetsCommentsDeleteComment

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
    return @"flickr.photosets.comments.deleteComment";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.comment_id) {
		valid = NO;
		[errorDescription appendString:@"'comment_id', "];
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
	if(self.comment_id) {
		[args setValue:self.comment_id forKey:@"comment_id"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosetsCommentsDeleteCommentError_CommentNotFound:
			return @"Comment not found.";
		case FKFlickrPhotosetsCommentsDeleteCommentError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosetsCommentsDeleteCommentError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosetsCommentsDeleteCommentError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosetsCommentsDeleteCommentError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosetsCommentsDeleteCommentError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosetsCommentsDeleteCommentError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosetsCommentsDeleteCommentError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosetsCommentsDeleteCommentError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosetsCommentsDeleteCommentError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosetsCommentsDeleteCommentError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosetsCommentsDeleteCommentError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
