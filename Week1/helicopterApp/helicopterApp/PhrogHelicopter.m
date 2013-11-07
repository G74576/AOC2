//
//  PhrogHelicopter.m
//  helicopterApp
//
//  Created by Kevin O'Toole on 11/1/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "PhrogHelicopter.h"

@implementation PhrogHelicopter

@synthesize fullTanks, fuelTime;

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
    if (fullTanks == NO)
    {
        [self setFuelTime:1.0f];
    }else if (fullTanks == YES)
    {
        [self setFuelTime:0.0f];
    }
    else
    {
        UIAlertView *fuelAlert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please specify if fuel tanks are full or not." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [fuelAlert show];
    }
    [self setMaxHoursOfFlight:((self.maxRangeMiles / self.speedMPH) - (fuelTime))];
    NSString *flightTime = [NSString stringWithFormat:@"%.1f flight hours", self.maxHoursOfFlight];
   // NSLog(@"We can only fly %f hours before having to refuel the helicopter",self.maxHoursOfFlight);
    return flightTime;
}

@end
