//
//  SecondViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 11/6/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface SecondViewController : UIViewController<MFMailComposeViewControllerDelegate>
{
    //IBOutlet for button
    IBOutlet UIButton *closeButton;
    __weak IBOutlet UITextView *emailField;
}

//Function to close window
-(IBAction)onClose:(id)sender;
-(IBAction)onEmail:(id)sender;

@end
