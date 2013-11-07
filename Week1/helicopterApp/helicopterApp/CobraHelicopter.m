//
//  CobraHelicopter.m
//  helicopterApp
//
//  Created by Kevin O'Toole on 11/1/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "CobraHelicopter.h"

@implementation CobraHelicopter

@synthesize bombs, bombsTime, guns;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setHelicopterName:COBRA];
        [self setManufacturer:@"Bell Helicopter Textron - USA"];
        [self setName:@"AH-1W Cobra"];
        [self setYearOfOrigMan:1971];
        [self setBombsTime:0.1f];
        [self setBombs:YES];
        //[self setMaxHoursOfFlight:0.0];
        [self setSpeedMPH:173.0f];
        [self setMaxRangeMiles:365.0f];
    }
    return self;
}

-(NSString*)calculateFlightHours
{
    if (bombs == YES && guns == YES)
    {
        [self setBombsTime:0.12f];
    }
    else if (bombs == YES && guns == NO)
    {
        [self setBombsTime:0.08f];
    }
    else if (bombs == NO && guns == YES)
    {
        [self setBombsTime:0.05f];
    }
    else if (bombs == NO && guns == NO)
    {
        [self setBombsTime:0.0f];
    }
    else
    {
        UIAlertView *weaponsAlert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please specify if carrying guns or bombs." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [weaponsAlert show];
    }
    [self setMaxHoursOfFlight:((self.maxRangeMiles / self.speedMPH) - (bombsTime))];
     NSString *flightTime = [NSString stringWithFormat:@"%.1f flight hours", self.maxHoursOfFlight];
    //NSLog(@"We can only fly %f hours before having to refuel the helicopter",self.maxHoursOfFlight);
    return flightTime;
}

@end
