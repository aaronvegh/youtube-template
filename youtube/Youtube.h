//
//  youtube.h
//  youtube
//
//  Created by Aaron Vegh on 2015-05-23.
//
//

#import <Foundation/Foundation.h>

@interface Youtube : NSObject

- (void)runYoutubeDLForURL:(NSString*)url withCompletion:(void (^)(id result, NSError * error))completion;

@end
