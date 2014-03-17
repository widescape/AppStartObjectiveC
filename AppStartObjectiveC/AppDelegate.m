//
//  AppDelegate.m
//  AppStartObjectiveC
//
//  Created by Robert Wünsch on 17.03.14.
//  Copyright (c) 2014 Robert Wünsch. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.window.rootViewController = [[RootViewController alloc] init];
  [self.window makeKeyAndVisible];
  return YES;
}

@end
