//
//  COAppDelegate.m
//  Cylon
//
//  Created by Mat Trudel on 2012-10-28.
//  Copyright (c) 2012 Mat Trudel. All rights reserved.
//

#import "COAppDelegate.h"
#import "COCylonView.h"

@interface COAppDelegate ()
@property (strong, nonatomic) COCylonView *cylonView;
@end

@implementation COAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.cylonView = [[COCylonView alloc] initWithFrame:[self.window bounds]];
  [self.window addSubview:self.cylonView];
  [self.window makeKeyAndVisible];
  [self.cylonView startWubWub];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  [self.cylonView startWubWub];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  [self.cylonView stopWubWub];
}

@end
