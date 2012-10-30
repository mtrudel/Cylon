//
//  COAppDelegate.m
//  Cylon
//
//  Created by Mat Trudel on 2012-10-28.
//  Copyright (c) 2012 Mat Trudel. All rights reserved.
//

#import "COAppDelegate.h"
#import "COCylonView.h"

@implementation COAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [self.window addSubview:[[COCylonView alloc] initWithFrame:[self.window bounds]]];
  [self.window makeKeyAndVisible];
}

@end
