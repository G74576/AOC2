//
//  BaseHelicopter.h
//  testApp
//
//  Created by Kevin O'Toole on 11/4/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseHelicopter : NSObject
{
    int helicopterEnum;
}

//enum for the different types of helicopters
typedef enum {
    PHROG=1,
    HUEY,
    COBRA
}helicopterEnum;

@property helicopterEnum helicopterName;
@property NSString *name;
@property NSString *manufacturer;
@property int yearOfOrigMan;
@property float maxHoursOfFlight;
@property float speedMPH;
@property float maxRangeMiles;

//Initialization
-(id)init;

-(NSString*)calculateFlightHours;

@end
