//
//  AppDelegate.m
//  notification listener
//
//  Created by Siebler, Tiago on 07/01/2017.
//  Copyright © 2017 MGH. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSDistributedNotificationCenter *center = [NSDistributedNotificationCenter defaultCenter];
    
    [center addObserver:self selector:@selector(notificationEvent:) name:nil object:nil];
}

-(void)notificationEvent:(NSNotification *)notif {
    NSLog(@"Notification: %@", notif);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
