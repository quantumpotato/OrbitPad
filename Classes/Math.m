//
//  algebra.m
//  ball
//
//  Created by Kevin Lee on 10/23/10.
//  Copyright 2010 Q Technology Company. All rights reserved.
//

#import "Math.h"


@implementation Math

+ (CGFloat)distance:(CGPoint)point1 point2:(CGPoint)point2 {
	return sqrt(pow((point1.x - point2.x), 2) + pow((point1.y - point2.y), 2));
}

+ (CGFloat)slope:(CGPoint)point1 point2:(CGPoint)point2 {
	return (point2.y - point1.y)/(point2.x - point1.x);
}
+ (CGFloat)intercept:(CGPoint)point slope:(CGFloat)slope {
	return point.y - (slope * point.x);
}

+ (CGFloat)yWithX:(CGFloat)x andSlope:(CGFloat)slope andIntercept:(CGFloat)intercept {
	return slope * x +intercept;
}


+ (CGFloat)offsetX:(CGFloat)angle radius:(CGFloat)radius {	
	CGFloat pi = 3.14;
	return cosf(angle / 180 * pi) * radius;
}
+ (CGFloat)offsetY:(CGFloat)angle radius:(CGFloat)radius{
	CGFloat pi = 3.14;
	return sinf(angle / 180 * pi) * radius;
}

+(void)rotateView: (UIView *)transformView toPoint:(CGPoint)pt{
	CGPoint tangle2 = GetAngle(transformView.center, pt);
	float ftangle = atan2( tangle2.y, tangle2.x );	
	transformView.transform = CGAffineTransformMakeRotation(ftangle);
}

float GetDist(CGPoint initialp, CGPoint secondp){
	float distvar = ((initialp.x - secondp.x) * (initialp.x - secondp.x));
    float distvar2 = ((initialp.y - secondp.y) * (initialp.y - secondp.y));
	if (distvar + distvar2 == 0){
		distvar = 1;
		distvar2 = 3;
	}
	
	float fdist = fabsf(sqrt((distvar+distvar2)));
    return fdist;
	
}

BOOL OutOfBounds(CGPoint initialp){
	if (initialp.x < -10 || initialp.x > 330 || initialp.y < -10 || initialp.y > 490){
		return YES;	
	}
	return NO;
}

CGPoint GetAngle(CGPoint initialp ,CGPoint secondp){
	float distvar = ((initialp.x - secondp.x) * (initialp.x - secondp.x));
	float distvar2 = ((initialp.y - secondp.y) * (initialp.y - secondp.y));
	if (distvar + distvar2 == 0){
		distvar = 1;
		distvar2 = 3;
	}
	float veldistance = sqrt((distvar+distvar2));
	
	distvar = ((fabsf(initialp.x-secondp.x))/veldistance);
	distvar2 = ((fabsf(initialp.y-secondp.y))/veldistance);
	
	if (secondp.x < initialp.x){
		distvar = -distvar;
	}
	if (secondp.y < initialp.y){
		distvar2 = -distvar2;
	}
	
	CGPoint fvel = CGPointMake(distvar,distvar2);
	
	return fvel;
}

CGPoint MultiplyVel(CGPoint cref , float mfact){
	cref = CGPointMake(cref.x * mfact, cref.y * mfact);
	return cref;
}
CGPoint CombineVel(CGPoint v1, CGPoint v2){
	v1 = CGPointMake(v1.x+v2.x,v1.y+v2.y);
	return v1;
}

@end
