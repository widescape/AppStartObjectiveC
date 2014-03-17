//
//  RootViewController.m
//  AppStartObjectiveC
//
//  Created by Robert Wünsch on 17.03.14.
//  Copyright (c) 2014 Robert Wünsch. All rights reserved.
//

#import "RootViewController.h"
#import "PageContentViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  _pageTitles = @[@"First", @"Second", @"Third"];
  
  _pageViewController = [[UIPageViewController alloc] init];
  _pageViewController.dataSource = self;
  _pageViewController.view.frame = [[UIScreen mainScreen] bounds];
  
  UIViewController *startingViewController = [self pageContentViewControllerAtIndex:0];
  NSArray *viewControllers = @[startingViewController];
  [_pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
  
  [self addChildViewController:_pageViewController];
  [self.view addSubview:_pageViewController.view];
  [_pageViewController didMoveToParentViewController:self];
}

- (PageContentViewController *)pageContentViewControllerAtIndex:(NSUInteger)index
{
  if (([_pageTitles count] == 0) || (index >= [_pageTitles count])) {
    return nil;
  }
  
  PageContentViewController *pageContentViewController = [[PageContentViewController alloc] init];
  pageContentViewController.pageTitle = _pageTitles[index];
  pageContentViewController.view.backgroundColor = [UIColor whiteColor];
  pageContentViewController.pageIndex = index;
  
  return pageContentViewController;
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
  NSUInteger index = ((PageContentViewController*) viewController).pageIndex;
  
  if ((index == 0) || (index == NSNotFound)) {
    return nil;
  }
  
  index--;
  return [self pageContentViewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
  NSUInteger index = ((PageContentViewController*) viewController).pageIndex;
  
  if ((index == NSNotFound) || (index >= [_pageTitles count] - 1)) {
    return nil;
  }
  
  index++;
  return [self pageContentViewControllerAtIndex:index];
}

@end
