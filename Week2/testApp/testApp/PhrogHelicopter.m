//
//  PhrogHelicopter.m
//  testApp
//
//  Created by Kevin O'Toole on 11/4/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "PhrogHelicopter.h"

@implementation PhrogHelicopter

@synthesize auxTanks;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setHelicopterName:PHROG];
        [self setName:@"CH-46E Phrog"];
        [self setManufacturer:@"Boeing Vertol - USA"];
        [self setYearOfOrigMan:1964];
        //[self setFullTanks:YES];
        //[self setMaxHoursOfFlight:0.0];
        [self setSpeedMPH:166.0f];
        [self setMaxRangeMiles:690.0f];
    }
    return self;
}

-(NSString*)calculateFlightHours
{
    [self setMaxHoursOfFlight:((self.maxRangeMiles / self.speedMPH) + (auxTanks))];
    NSString *flightTime = [NSString stringWithFormat:@"%.1f total flight hours.", self.maxHoursOfFlight];
    // NSLog(@"We can only fly %f hours before having to refuel the helicopter",self.maxHoursOfFlight);
    return flightTime;
}

@end