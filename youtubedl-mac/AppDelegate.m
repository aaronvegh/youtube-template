//
//  AppDelegate.m
//  youtubedl-mac
//
//  Created by Aaron Vegh on 2015-05-24.
//
//

#import "AppDelegate.h"
#import "youtuber-mac.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    Youtube * yt = [Youtube new];
    
    [yt runYoutubeDLForURL:@"http://www.watch-next.com/video-a-minute-or-two-with-the-apple-watch/"
            withCompletion:^(id results, NSError * error) {
                
                NSLog(@"Results: %@", results);
                
    }];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
