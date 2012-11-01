//
//  COCylonView.m
//  Cylon
//
//  Created by Mat Trudel on 2012-10-28.
//  Copyright (c) 2012 Mat Trudel. All rights reserved.
//

#import "COCylonView.h"
#import <QuartzCore/QuartzCore.h>

@implementation COCylonView

+ (Class)layerClass {
  return [CAGradientLayer class];
}

- (id)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    CAGradientLayer *backgroundLayer = (CAGradientLayer *)self.layer;
    backgroundLayer.startPoint = CGPointMake(.5, 0.);
    backgroundLayer.endPoint = CGPointMake(.5, 1.);
    backgroundLayer.locations = @[@0,@0,@1];
    backgroundLayer.colors = @[(id)[[UIColor blackColor] CGColor],(id)[[UIColor redColor] CGColor],(id)[[UIColor blackColor] CGColor]];
  }
  return self;
}

- (void)startWubWub {
  CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath: @"locations"];
  animation.values = @[@[@0,@0,@1], @[@0,@1,@1]];

  animation.duration = 1.4;
  animation.fillMode = kCAFillModeBackwards;
  animation.repeatCount = HUGE_VALF;
  animation.autoreverses = YES;
  animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [self.layer addAnimation:animation forKey:@"animateGradient"];
}

- (void)stopWubWub {
  [self.layer removeAllAnimations];
}

@end
