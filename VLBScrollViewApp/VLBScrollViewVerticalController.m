//
//  VLBScrollViewVerticalController.m
//  VLBScrollViewApp
//
//  Created by Markos Charatzas on 17/07/2013.
//  Copyright (c) 2013 verylargebox. All rights reserved.
//

#import "VLBScrollViewVerticalController.h"

@interface VLBScrollViewVerticalController ()
@property(nonatomic, strong) NSMutableArray* colors;
@end

@implementation VLBScrollViewVerticalController

+(UINavigationController*)newViewController
{
    VLBScrollViewVerticalController *scrollViewController = [[VLBScrollViewVerticalController alloc] initWithBundle:nil];
    
    scrollViewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:scrollViewController action:@selector(dismissViewControllerAnimated)];

    return [[UINavigationController alloc] initWithRootViewController:scrollViewController];
}

- (id)initWithBundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:NSStringFromClass([self class]) bundle:nibBundleOrNil];
    if (!self) {
        return nil;
    }
    
    self.colors = [NSMutableArray arrayWithArray:@[[UIColor blackColor],
                                                   [UIColor darkGrayColor],
                                                   [UIColor lightGrayColor],
                                                   [UIColor grayColor],
                                                   [UIColor redColor],
                                                   [UIColor greenColor],
                                                   [UIColor blueColor],
                                                   [UIColor cyanColor],
                                                   [UIColor yellowColor],
                                                   [UIColor magentaColor],
                                                   [UIColor orangeColor],
                                                   [UIColor purpleColor],
                                                   [UIColor brownColor]]];

return self;
}

-(void)dismissViewControllerAnimated
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    VLBScrollView* scrollView = [VLBScrollView newVerticalScrollView:self.view.frame config:^(VLBScrollView *scrollView, BOOL cancelsTouchesInView) {
        scrollView.datasource = self;
        scrollView.scrollViewDelegate = self;
    }];
    
    scrollView.enableSeeking = YES;
    VLBScrollViewAllowSelection(scrollView, NO);
    
    scrollView.contentInset = UIEdgeInsetsMake(64, 0, 64, 0);
    
    [self.view addSubview:scrollView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark VLBScrollViewDelegate
-(void)didLayoutSubviews:(VLBScrollView *)scrollView{
    
}

-(void)viewInScrollView:(VLBScrollView *)scrollView willAppearBetween:(NSUInteger)minimumVisibleIndex to:(NSUInteger)maximumVisibleIndex{
    
}

-(void)scrollView:(UIScrollView *)scrollView willStopAt:(NSUInteger)index{
    
}

#pragma mark minimum required implementation
-(CGFloat)viewsOf:(VLBScrollView *)scrollView{
    return 64.0; //height
}

-(VLBScrollViewOrientation)orientation:(VLBScrollView *)scrollView{
    return VLBScrollViewOrientationVertical;
}

-(void)didSelectView:(VLBScrollView *)scrollView atIndex:(NSUInteger)index point:(CGPoint)point
{
    UIViewController* viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [self.colors objectAtIndex:index];
    
    [self.navigationController pushViewController:viewController animated:YES];
}

-(void)viewInScrollView:(VLBScrollView *)scrollView willAppear:(UIView *)view atIndex:(NSUInteger)index
{
    view.backgroundColor = [self.colors objectAtIndex:index];
}

#pragma mark VLBScrollViewDatasource

#pragma mark minimum required implementation

-(NSUInteger)numberOfViewsInScrollView:(VLBScrollView *)scrollView{
    return self.colors.count;
}

-(UIView *)viewInScrollView:(VLBScrollView *)scrollView ofFrame:(CGRect)frame atIndex:(NSUInteger)index {
    return [[UIView alloc] initWithFrame:frame];
}


@end
