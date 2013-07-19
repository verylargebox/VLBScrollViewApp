//
//  VLBScrollViewVerticalController.h
//  VLBScrollViewApp
//
//  Created by Markos Charatzas on 17/07/2013.
//  Copyright (c) 2013 verylargebox. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VLBScrollView.h"

@interface VLBScrollViewVerticalController : UIViewController<VLBScrollViewDatasource, VLBScrollViewDelegate>

+(UINavigationController*)newViewController;

@end
