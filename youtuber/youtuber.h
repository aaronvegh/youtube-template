//
//  youtuber.h
//  youtuber
//
//  Created by Aaron Vegh on 2015-05-24.
//
//

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
#import <UIKit/UIKit.h>
#else
#import <Cocoa/Cocoa.h>
#endif

//! Project version number for youtuber.
FOUNDATION_EXPORT double youtuberVersionNumber;

//! Project version string for youtuber.
FOUNDATION_EXPORT const unsigned char youtuberVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <youtuber/PublicHeader.h>


#import "Youtube.h"