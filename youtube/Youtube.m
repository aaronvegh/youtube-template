//
//  youtube.m
//  youtube
//
//  Created by Aaron Vegh on 2015-05-23.
//
//

#import "Youtube.h"

@implementation Youtube

- (instancetype)init
{
    self = [super init];
    
    return self;
}

- (void)runYoutubeDLForURL:(NSString*)url withCompletion:(void (^)(id result, NSError * error))completion
{
    // this is where you would play the youtube-dl python script
    // and return the results.
    
    // here's an example from the command line:
    // $ youtube-dl -j http://www.watch-next.com/video-a-minute-or-two-with-the-apple-watch/
    
    // this returns a big string of JSON providing all the data I need. In this case, it's a page with
    // a Vimeo embed. I've included the JSON in the file "Sample JSON Output.json".
    
    // To drive this home, I'll pull that sample JSON and return it in the completion handler.
    
//    NSString *frameworkBundleID = @"com.innoveghtive.youtuber";
    NSBundle *frameworkBundle = [NSBundle mainBundle];

    NSString * jsonPath = [frameworkBundle pathForResource:@"Sample JSON Output.json" ofType:nil];
    NSDictionary * jsonResult = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:jsonPath] options:0 error:nil];
    
    completion(jsonResult, nil);
}

@end
