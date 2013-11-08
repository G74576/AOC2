//
//  ViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 11/4/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    phrogImage = [UIImage imageNamed:@"CH46E.jpg"];
    hueyImage = [UIImage imageNamed:@"UH1N.jpg"];
    cobraImage = [UIImage imageNamed:@"AH1W.jpg"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//OnClick function for aircraft buttons
-(IBAction)onClick:(id)sender
{
    UIButton *acSelected = (UIButton*)sender;
    //currentValue = countStepper.value;
    if (acSelected != nil)
    {
        //Phrog Button
        if (acSelected.tag == 0)
        {
            phrogButton.enabled = false;
            hueyButton.enabled = true;
            cobraButton.enabled = true;
            stepperLabel.hidden = false;
            stepperLabel.text = @"How many aux tanks?";
            countStepper.hidden = false;
            acTextLabel.text = @"You chose to calculate";
            aircraftText.text = @"A Phrog with 0 aux tanks.";
            aircraftImage.image = phrogImage;
        }
        //Huey Button
        else if (acSelected.tag == 1)
        {
            hueyButton.enabled = false;
            phrogButton.enabled = true;
            cobraButton.enabled = true;
            stepperLabel.hidden = false;
            stepperLabel.text = @"How many passengers?";
            countStepper.hidden = false;
            acTextLabel.text = @"You chose to calculate";
            aircraftText.text = @"A Huey with 0 passengers.";
            aircraftImage.image = hueyImage;
        }
        //Cobra Button
        else if (acSelected.tag == 2)
        {
            cobraButton.enabled = false;
            phrogButton.enabled = true;
            hueyButton.enabled = true;
            stepperLabel.hidden = false;
            stepperLabel.text = @"How many bombs and or guns are loaded?";
            countStepper.hidden = false;
            acTextLabel.text = @"You chose to calculate";
            aircraftText.text = @"A Cobra with 0 bombs/guns.";
            aircraftImage.image = cobraImage;
        }
        //Info Button
        else if (acSelected.tag == 3)
        {
            SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
            if (secondView != nil)
            {
                [self presentViewController:secondView animated:YES completion:NULL];
            }
        }
    }
}

//Stepper fucntion for onChange
-(IBAction)onChange:(id)sender
{
    UIStepper *stepConrol = (UIStepper*)sender;
    if (stepConrol != nil)
    {
        currentValue = stepConrol.value;
        if (phrogButton.enabled == false)
        {
            aircraftText.text = [NSString stringWithFormat:@"A Phrog with %d aux tanks.", currentValue];
        }
        else if (hueyButton.enabled == false)
        {
            aircraftText.text = [NSString stringWithFormat:@"A Huey with %d passengers.", currentValue];
        }
        else if (cobraButton.enabled == false)
        {
            aircraftText.text = [NSString stringWithFormat:@"A Cobra with %d bombs/guns.", currentValue];
        }
    }
}

//OnCalculate function for calculate button
-(IBAction)onCalculate:(id)sender
{
    UIButton *calcTotal = (UIButton*)sender;
    //currentValue = countStepper.value;
    if (calcTotal != nil)
    {
        //Calculate if Phrog button is pushed
        if (phrogButton.enabled == false)
        {
            //Set instance
            PhrogHelicopter *phrog1 = (PhrogHelicopter*) [HelicopterFactory createNewHelicopter:PHROG];
            [phrog1 setAuxTanks:currentValue];
            acTextLabel.text = [NSString stringWithFormat:@"With %d aux tanks, the Phrog can fly", currentValue];
            aircraftText.text = [NSString stringWithFormat:@"%@", [phrog1 calculateFlightHours]];
        }
        //Calculate if Huey button is pushed
        else if (hueyButton.enabled == false)
        {
            // Set instance
            HueyHelicopter *huey1 = (HueyHelicopter*) [HelicopterFactory createNewHelicopter:HUEY];
            [huey1 setNumOfPassenger:currentValue];
            acTextLabel.text = [NSString stringWithFormat:@"With %d passengers, the Huey can fly", currentValue];
            aircraftText.text = [NSString stringWithFormat:@"%@", [huey1 calculateFlightHours]];    
        }
        //Calculate if Cobra button is pushed
        else if (cobraButton.enabled == false)
        {
            //Set instance
            CobraHelicopter *cobra1 = (CobraHelicopter*) [HelicopterFactory createNewHelicopter:COBRA];
            [cobra1 setBombsGuns:currentValue];
            acTextLabel.text = [NSString stringWithFormat:@"With %d bombs/guns, the Cobra can fly", currentValue];
            aircraftText.text = [NSString stringWithFormat:@"%@", [cobra1 calculateFlightHours]];
        }
    }
}

//OnSegment function for segemented controller
-(IBAction)onSegment:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    if (segmentControl != nil)
    {
        int selectedSegment = segmentControl.selectedSegmentIndex;
        if (selectedSegment == 0)
        {
            self.view.backgroundColor = [UIColor lightGrayColor];
        }
        else if (selectedSegment == 1)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
        else if (selectedSegment == 2)
        {
            self.view.backgroundColor = [UIColor cyanColor];
        }
    }
    
}

@end
