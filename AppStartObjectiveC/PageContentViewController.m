//
//  PageContentViewController.m
//  AppStartObjectiveC
//
//  Created by Robert Wünsch on 17.03.14.
//  Copyright (c) 2014 Robert Wünsch. All rights reserved.
//

#import "PageContentViewController.h"

@interface PageContentViewController ()

@end

@implementation PageContentViewController

- (void)loadView
{
  [super loadView];

  self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
  _pageLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 40)];
  _pageLabel.font = [UIFont systemFontOfSize:30];
  _pageLabel.textAlignment = NSTextAlignmentCenter;
  _pageLabel.textColor = [UIColor blackColor];
  _pageLabel.backgroundColor = [UIColor clearColor];
  [self.view addSubview:_pageLabel];
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  _pageLabel.text = _pageTitle;
}

@end
