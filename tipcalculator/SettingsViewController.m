//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Chris Ahlering on 3/10/14.
//  Copyright (c) 2014 Chris Ahlering. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipPercentControl;

- (IBAction)onDefaultTipPercentControlChange:(id)sender;
@end

@implementation SettingsViewController

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
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    NSString *stringValue = [defaults objectForKey:@"defaultTipPercentageValue"];
    int intValue = [defaults integerForKey:@"defaultTipPercentageIdx"];
    self.defaultTipPercentControl.selectedSegmentIndex = intValue;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onDefaultTipPercentControlChange:(id)sender {
    NSInteger selectedIdx = self.defaultTipPercentControl.selectedSegmentIndex;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:selectedIdx forKey:@"defaultTipPercentageIdx"];
    [defaults synchronize];
}
@end
