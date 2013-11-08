//
//  ViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 11/4/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HelicopterFactory.h"

@interface ViewController : UIViewController
{
    //Button IBOutlets
    IBOutlet UIButton *phrogButton, *hueyButton, *cobraButton, *calculateButton, *infoButton;
    
    //ImageView IBOutlet
    IBOutlet UIImageView *aircraftImage;
    UIImage *phrogImage;
    UIImage *hueyImage;
    UIImage *cobraImage;
    
    //TextField Lable IBOutlet
    IBOutlet UILabel *acTextLabel;
    
    //TextField IBOutlet
    IBOutlet UITextField *aircraftText;
    
    //Stpper Label IBOutlet
    IBOutlet UILabel *stepperLabel;
    
    int currentValue;
    
    //Stepper IBOutlet
    IBOutlet UIStepper *countStepper;
    
    //Background color segment bar
    IBOutlet UISegmentedControl *bgSegment;
}

//OnClick function for aircraft buttons
-(IBAction)onClick:(id)sender;

//OnChange function for stepper
-(IBAction)onChange:(id)sender;

//OnSegment function for segemented controller
-(IBAction)onSegment:(id)sender;

//OnCalculate function for calculate button
-(IBAction)onCalculate:(id)sender;

@end
