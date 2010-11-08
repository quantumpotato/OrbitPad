//
//  algebra.h
//  ball
//
//  Created by Kevin Lee on 10/23/10.
//  Copyright 2010 Q Technology Company. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Ball.h"

@interface Math : NSObject {
	
}
+ (CGFloat)distance:(CGPoint)point1 point2:(CGPoint)point2;
+ (CGFloat)slope:(CGPoint)point1 point2:(CGPoint)point2; 
+ (CGFloat)intercept:(CGPoint)point slope:(CGFloat)slope ;
+ (CGFloat)yWithX:(CGFloat)x andSlope:(CGFloat)slope andIntercept:(CGFloat)intercept;
+ (CGFloat)offsetY:(CGFloat)angle radius:(CGFloat)radius;
+ (CGFloat)offsetX:(CGFloat)angle radius:(CGFloat)radius;
+(void)rotateView: (UIView *)transformView toPoint:(CGPoint)pt;
//+ (CGFloat)centerOfmassBetweenBall1:(Ball*)ball1 ball2:(Ball*)ball2;

CGPoint CombineVel(CGPoint v1, CGPoint v2);
float GetDist(CGPoint initialp, CGPoint secondp);
CGPoint GetAngle(CGPoint initialp ,CGPoint secondp);
CGPoint MultiplyVel(CGPoint cref , float mfact);
BOOL OutOfBounds(CGPoint initialp);

@end
