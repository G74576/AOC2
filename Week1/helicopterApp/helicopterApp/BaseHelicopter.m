//
//  BaseHelicopter.m
//  helicopterApp
//
//  Created by Kevin O'Toole on 11/1/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "BaseHelicopter.h"

@implementation BaseHelicopter
@synthesize helicopterName, name, manufacturer, yearOfOrigMan, maxHoursOfFlight, maxRangeMiles, speedMPH;

//Creates the base helicopter files
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setHelicopterName:0];
        [self setName:nil];
        [self setManufacturer:nil];
        [self setYearOfOrigMan:0];
        [self setMaxHoursOfFlight:0.0f];
        [self setSpeedMPH:0.0f];
        [self setMaxRangeMiles:0.0f];
    }
    return self;
}

//Calculates the maxium hours of flight
-(NSString*)calculateFlightHours
{
    [self setMaxHoursOfFlight:(self.maxRangeMiles / self.speedMPH)];
     NSString *flightTime = [NSString stringWithFormat:@"%.1f flight hours", self.maxHoursOfFlight];
    //NSLog(@"We can only fly %f hours before having to refuel the helicopter",maxHoursOfFlight);
    return flightTime;
}
@end
