//
//  ViewController.m
//  helicopterApp
//
//  Created by Kevin O'Toole on 11/1/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Set background color of app
    self.view.backgroundColor = [UIColor grayColor];
    
    //Label for phrogTitle
    PhrogHelicopter *phrog1 = (PhrogHelicopter*) [HelicopterFactory createNewHelicopter:PHROG];
    phrogTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    if (phrogTitle != nil)
    {
        phrogTitle.backgroundColor = [UIColor greenColor];
        phrogTitle.text = [NSString stringWithFormat:@"%@", [phrog1 name]];
        phrogTitle.textAlignment = NSTextAlignmentCenter;
        
        [self.view addSubview:phrogTitle];
    }
    
    //Label for phrogInfo:
    [phrog1 setFullTanks:YES];
    phrogInfo = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 30.0f, 320.0f, 150.0f)];
    if (phrogInfo != nil)
    {
        phrogInfo.backgroundColor = [UIColor colorWithRed:0 green:0.6 blue:1 alpha:1]; /*#0099ff*/
        phrogInfo.numberOfLines = 8;
        phrogInfo.textAlignment = NSTextAlignmentCenter;
        phrogInfo.text = [NSString stringWithFormat:@"This helicopter was manufactured by: %@. The original year of manufacture was %i.  Its maximum flight speed is %.1f MPH, and its maximum range with full tanks of fuel is %.1f miles, for a total of: %@.", [phrog1 manufacturer],[phrog1 yearOfOrigMan], [phrog1 speedMPH], [phrog1 maxRangeMiles], [phrog1 calculateFlightHours]];
        
        [self.view addSubview:phrogInfo];
    }
    
    //Label for hueyTitle:
    HueyHelicopter *huey1 = (HueyHelicopter*) [HelicopterFactory createNewHelicopter:HUEY];
    hueyTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 180.0f, 320.0f, 30.0f)];
    if (hueyTitle != nil)
    {
        hueyTitle.backgroundColor = [UIColor yellowColor];
        hueyTitle.text = [NSString stringWithFormat:@"%@", [huey1 name]];
        hueyTitle.textAlignment = NSTextAlignmentCenter;
        
        [self.view addSubview:hueyTitle];
    }
    
    //Label for hueyInfo:
    [huey1 setNumOfPassenger:4];
    [huey1 setPassTime:0.1f];
    hueyInfo = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 210.0f, 320.0f, 150.0f)];
    if (hueyInfo != nil)
    {
        hueyInfo.backgroundColor = [UIColor colorWithRed:1 green:0.6 blue:0.2 alpha:1]; /*#ff993*/
        hueyInfo.numberOfLines = 8;
        hueyInfo.textAlignment = NSTextAlignmentCenter;
        hueyInfo.text = [NSString stringWithFormat:@"This helicopter was manufactured by: %@. The original year of manufacture was %i.  It's maximum flight speed is: %.1f MPH, and its maximum range is: %.1f miles, but when carrying %i passengers, it can only fly for a total of: %@.", [huey1 manufacturer], [huey1 yearOfOrigMan], [huey1 speedMPH], [huey1 maxRangeMiles], [huey1 numOfPassenger], [huey1 calculateFlightHours]];
        
        [self.view addSubview:hueyInfo];
    }
    
    //Label for cobraTitle:
    CobraHelicopter *cobra1 = (CobraHelicopter*) [HelicopterFactory createNewHelicopter:COBRA];
    cobraTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 360.0f, 320.0f, 30.0f)];
    if (cobraTitle != nil)
    {
        cobraTitle.backgroundColor = [UIColor colorWithRed:1 green:0.098 blue:0.098 alpha:1]; /*#ff1919*/
        cobraTitle.text = [NSString stringWithFormat:@"%@", [cobra1 name]];
        cobraTitle.textAlignment = NSTextAlignmentCenter;
        
        [self.view addSubview:cobraTitle];
    }
    
    //Label for cobraInfo:
    [cobra1 setBombs:YES];
    [cobra1 setGuns:NO];
    cobraInfo = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 390.0f, 320.0f, 150.0f)];
    if (cobraInfo != nil)
    {
        cobraInfo.backgroundColor = [UIColor colorWithRed:1 green:0.4 blue:1 alpha:1]; /*#ff66ff*/
        cobraInfo.numberOfLines = 8;
        cobraInfo.textAlignment = NSTextAlignmentCenter;
        cobraInfo.text = [NSString stringWithFormat:@"This helicopter was manufactured by: %@. The original year of manufacture was %i.  It's maximum flight speed is: %.1f MPG, and its maximum range is: %.1f miles, but when carrying a full load of bombs, it can only fly for a total of: %@.", [cobra1 manufacturer], [cobra1 yearOfOrigMan], [cobra1 speedMPH], [cobra1 maxRangeMiles], [cobra1 calculateFlightHours]];
        
        [self.view addSubview:cobraInfo];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
