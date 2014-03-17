//
//  PageContentViewController.h
//  AppStartObjectiveC
//
//  Created by Robert Wünsch on 17.03.14.
//  Copyright (c) 2014 Robert Wünsch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController

@property (strong, nonatomic) UILabel *pageLabel;

@property NSUInteger pageIndex;
@property NSString *pageTitle;

@end
