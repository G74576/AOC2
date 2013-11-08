//
//  SecondViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 11/6/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onEmail:(id)sender
{
    MFMailComposeViewController *mailControl = [[MFMailComposeViewController alloc] init];
    [mailControl setMailComposeDelegate:self];
    NSString *email = @"kmotoole78@fullsail.edu";
    NSString *message = emailField.text;
    [mailControl setToRecipients:[NSArray arrayWithObjects:email, nil]];
    [mailControl setSubject:@"AOC2 Week 2 email message"];
    [mailControl setMessageBody:message isHTML:NO];
    [self presentViewController:mailControl animated:YES completion:nil];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [emailField resignFirstResponder];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

 - (void)keyboardDidShow:(NSNotification *)notification
{
    if ([[UIScreen mainScreen] bounds].size.height == 568)
    {
        [self.view setFrame:CGRectMake(0,-150,320,560)];
    }
    else
    {
        [self.view setFrame:CGRectMake(0,-150,320,460)];
    }
}

-(void)keyboardDidHide:(NSNotification *)notification
{
    if ([[UIScreen mainScreen] bounds].size.height == 568)
    {
        [self.view setFrame:CGRectMake(0,20,320,560)];
    }
    else
    {
        [self.view setFrame:CGRectMake(0,20,320,460)];
    }
}

-(IBAction)onClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
