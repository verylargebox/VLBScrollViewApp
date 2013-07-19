//
//  VLBViewController.m
//  VLBScrollViewApp
//
//  Created by Markos Charatzas on 17/07/2013.
//  Copyright (c) 2013 www.verylargebox.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
//  of the Software, and to permit persons to whom the Software is furnished to do
//  so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

#import "VLBScrollViewAppController.h"
#import "VLBScrollViewHorizontalController.h"
#import "VLBScrollViewVerticalController.h"

@interface VLBScrollViewAppController ()

@end

@implementation VLBScrollViewAppController

+(UINavigationController*)newViewController
{
    VLBScrollViewAppController *scrollViewAppController = [[VLBScrollViewAppController alloc] initWithBundle:nil];
    
return [[UINavigationController alloc] initWithRootViewController:scrollViewAppController];
}

-(id)initWithBundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:NSStringFromClass([self class]) bundle:nibBundleOrNil];
    if (!self) {
        return nil;
    }
    
    self.title = @"VLBScrollView";
    
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)didTouchUpInsideHorizontalButton:(UIButton*)sender
{
    [self presentViewController:[VLBScrollViewHorizontalController newViewController] animated:YES completion:nil];
}

-(IBAction)didTouchUpInsideVerticalButton:(UIButton*)sender
{
    [self presentViewController:[VLBScrollViewVerticalController newViewController] animated:YES completion:nil];
}

@end