//
//  CCSpringUpTransition.h
//  CCSpringUpNavController - DEMO
//
//  Created by Halo on 2017/7/5.
//  Copyright © 2017年 Choice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CCSpringUpTransition : NSObject
<UIViewControllerAnimatedTransitioning>

/**
 A switch to determine if the modal is a presenter or a dismisser
 */
@property (nonatomic, assign, getter = isPresenting) BOOL presenting;

/**
 default true, Switch this to YES to enable tapping on the background to dismiss the popup controller
 */
@property (nonatomic, assign, getter = isTapDismissEnabled) BOOL tapDismissEnabled;

/**
 The duration at which the controller appears
 */
@property (nonatomic, assign) NSTimeInterval annimationDuration;

/**
 the background shade color
 */
@property (nonatomic, strong) UIColor *backgroundShadeColor;

/**
 the underneath zoom factor
 */
@property (nonatomic, assign) CGAffineTransform scaleTransform;

/**
 Spring damping for transition
 */
@property (nonatomic, assign) CGFloat springDamping;

/**
 Spring Velocity for transition
 */
@property (nonatomic, assign) CGFloat springVelocity;

/**
 The background shade alpha
 */
@property (nonatomic, assign) CGFloat backgroundShadeAlpha;

@end
