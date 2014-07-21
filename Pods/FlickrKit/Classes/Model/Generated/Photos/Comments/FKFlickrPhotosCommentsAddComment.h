//
//  FKFlickrPhotosCommentsAddComment.h
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPhotosCommentsAddCommentError_PhotoNotFound = 1,		 /* The photo id passed was not a valid photo id */
	FKFlickrPhotosCommentsAddCommentError_BlankComment = 8,		 /* Comment text can not be blank */
	FKFlickrPhotosCommentsAddCommentError_UserIsPostingCommentsTooFast = 9,		 /* The user has reached the limit for number of comments posted during a specific time period.  Wait a bit and try again. */
	FKFlickrPhotosCommentsAddCommentError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrPhotosCommentsAddCommentError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrPhotosCommentsAddCommentError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrPhotosCommentsAddCommentError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrPhotosCommentsAddCommentError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosCommentsAddCommentError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosCommentsAddCommentError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosCommentsAddCommentError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosCommentsAddCommentError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosCommentsAddCommentError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosCommentsAddCommentError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPhotosCommentsAddCommentError;

/*

Add comment to a photo as the currently authenticated user.


Response:

<comment id="97777-72057594037941949-72057594037942602" />

*/
@interface FKFlickrPhotosCommentsAddComment : NSObject <FKFlickrAPIMethod>

/* The id of the photo to add a comment to. */
@property (nonatomic, strong) NSString *photo_id; /* (Required) */

/* Text of the comment */
@property (nonatomic, strong) NSString *comment_text; /* (Required) */


@end
