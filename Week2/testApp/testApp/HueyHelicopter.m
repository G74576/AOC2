//
//  HueyHelicopter.m
//  testApp
//
//  Created by Kevin O'Toole on 11/4/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "HueyHelicopter.h"

@implementation HueyHelicopter

@synthesize numOfPassenger, passTime, passTimeTotal;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPassTime:0.1f];
        [self setHelicopterName:HUEY];
        [self setName:@"UH-1N Huey"];
        [self setManufacturer:@"Bell Helicopter Company - USA"];
        [self setYearOfOrigMan:1959];
        //[self setNumOfPassenger:3];
        //[self setMaxHoursOfFlight:0.0f];
        [self setSpeedMPH:137.0f];
        [self setMaxRangeMiles:317.0f];
    }
    return self;
}

-(NSString*)calculateFlightHours
{
    if (numOfPassenger <= 10)
    {
        [self setPassTimeTotal:(numOfPassenger * passTime)];
    }
    else if (numOfPassenger > 10)
    {
        UIAlertView *passAlert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"To many passengers for this helicopter" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [passAlert show];
    }
    [self setMaxHoursOfFlight:((self.maxRangeMiles / self.speedMPH) - (passTimeTotal))];
    NSString *flightTime = [NSString stringWithFormat:@"%.1f total flight hours", self.maxHoursOfFlight];
    // NSLog(@"We can only fly %f hours before having to refuel the helicopter",self.maxHoursOfFlight);
    return flightTime;
}

@end
