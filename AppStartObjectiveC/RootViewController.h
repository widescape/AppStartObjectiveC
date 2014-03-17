//
//  RootViewController.h
//  AppStartObjectiveC
//
//  Created by Robert Wünsch on 17.03.14.
//  Copyright (c) 2014 Robert Wünsch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;

@end
