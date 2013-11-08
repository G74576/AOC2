//
//  CobraHelicopter.m
//  testApp
//
//  Created by Kevin O'Toole on 11/4/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "CobraHelicopter.h"

@implementation CobraHelicopter

@synthesize bombsGuns, bombsTime, fltime;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setFltime:0.1f];
        [self setHelicopterName:COBRA];
        [self setManufacturer:@"Bell Helicopter Textron - USA"];
        [self setName:@"AH-1W Cobra"];
        [self setYearOfOrigMan:1971];
        [self setBombsTime:0.1f];
        //[self setBombs:YES];
        //[self setMaxHoursOfFlight:0.0];
        [self setSpeedMPH:173.0f];
        [self setMaxRangeMiles:365.0f];
    }
    return self;
}

-(NSString*)calculateFlightHours
{
    if (bombsGuns <= 10)
    {
        [self setBombsTime:(bombsGuns * fltime)];
    }
    else if (bombsGuns > 10)
    {
        UIAlertView *passAlert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"To many bombs/guns for this helicopter" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [passAlert show];
    }

    [self setMaxHoursOfFlight:((self.maxRangeMiles / self.speedMPH) - (bombsTime))];
    NSString *flightTime = [NSString stringWithFormat:@"%.1f flight hours", self.maxHoursOfFlight];
    //NSLog(@"We can only fly %f hours before having to refuel the helicopter",self.maxHoursOfFlight);
    return flightTime;
}

@end