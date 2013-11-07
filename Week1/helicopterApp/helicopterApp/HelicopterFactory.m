//
//  HelicopterFactory.m
//  helicopterApp
//
//  Created by Kevin O'Toole on 11/1/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "HelicopterFactory.h"

@implementation HelicopterFactory
+(BaseHelicopter *)createNewHelicopter:(int)helicopterType
{
    if (helicopterType == PHROG)
    {
        return [[PhrogHelicopter alloc] init];
    }
    else if (helicopterType == HUEY)
    {
        return [[HueyHelicopter alloc] init];
    }
    else if (helicopterType == COBRA)
    {
        return [[CobraHelicopter alloc] init];
    }
    else return nil;
}


@end
