//
//  VLBScrollViewHorizontalController.m
//  VLBScrollViewApp
//
//  Created by Markos Charatzas on 17/07/2013.
//  Copyright (c) 2013 verylargebox. All rights reserved.
//

#import "VLBScrollViewHorizontalController.h"

@interface VLBScrollViewHorizontalController ()
@property(nonatomic, strong) NSArray* colors;
@end

@implementation VLBScrollViewHorizontalController

+(UINavigationController*)newViewController
{
    VLBScrollViewHorizontalController *scrollViewController = [[VLBScrollViewHorizontalController alloc] initWithBundle:nil];
    
    scrollViewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:scrollViewController action:@selector(dismissViewControllerAnimated)];
    
    return [[UINavigationController alloc] initWithRootViewController:scrollViewController];
}

- (id)initWithBundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:NSStringFromClass([self class]) bundle:nibBundleOrNil];
    if (!self) {
        return nil;
    }
    
    self.colors = @[[UIColor blackColor],
                    [UIColor darkGrayColor],
                    [UIColor lightGrayColor],
                    [UIColor whiteColor],
                    [UIColor grayColor],
                    [UIColor redColor],
                    [UIColor greenColor],
                    [UIColor blueColor],
                    [UIColor cyanColor],
                    [UIColor yellowColor],
                    [UIColor magentaColor],
                    [UIColor orangeColor],
                    [UIColor purpleColor],
                    [UIColor brownColor]];
    
    return self;
}

-(void)dismissViewControllerAnimated
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
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
    return 320.0; //width
}

-(VLBScrollViewOrientation)orientation:(VLBScrollView *)scrollView{
    return VLBScrollViewOrientationHorizontal;
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
