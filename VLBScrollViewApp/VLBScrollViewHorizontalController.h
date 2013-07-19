//
//  VLBScrollViewHorizontalController.h
//  VLBScrollViewApp
//
//  Created by Markos Charatzas on 17/07/2013.
//  Copyright (c) 2013 verylargebox. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VLBScrollView.h"

@interface VLBScrollViewHorizontalController : UIViewController <VLBScrollViewDatasource, VLBScrollViewDelegate>

+(UINavigationController*)newViewController;

@end
