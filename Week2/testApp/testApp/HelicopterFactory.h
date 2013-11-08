//
//  HelicopterFactory.h
//  testApp
//
//  Created by Kevin O'Toole on 11/4/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseHelicopter.h"
#import "PhrogHelicopter.h"
#import "HueyHelicopter.h"
#import "CobraHelicopter.h"

@interface HelicopterFactory : NSObject

+(BaseHelicopter *)createNewHelicopter: (int)helicopterType;

@end