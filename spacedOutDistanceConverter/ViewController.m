//
//  ViewController.m
//  spacedOutDistanceConverter
//
//  Created by Alan on 22/08/2016.
//  Copyright © 2016 Alan Glasby. All rights reserved.
//

#import "ViewController.h"

double convertToKm(double distance) {
    double distanceInKm = distance * 3.0857e16;
    return distanceInKm;
}

double convertToMiles(double distance) {
    double distanceInMiles = distance * 1.9174e13;
    return distanceInMiles;
}

double convertToAu(double distance) {
    double distanceInAu = distance * 2.0626e5;
    return distanceInAu;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *unitsLbl;

@property (weak, nonatomic) IBOutlet UISegmentedControl *unitSelectorSegCntrl;

@property (weak, nonatomic) IBOutlet UILabel *outputLbl;

@property (weak, nonatomic) IBOutlet UITextField *userInputTxt;

@end

@implementation ViewController


- (IBAction)distanceInputFld:(UITextField *)sender {
    
}

- (IBAction)convertBtn:(id)sender {
    double userInput = [self.userInputTxt.text doubleValue];
    NSMutableString *buf = [NSMutableString new];
    if (self.unitSelectorSegCntrl.selectedSegmentIndex == 0) {
        double kmValue = convertToKm(userInput);
        [buf appendString: [NSString stringWithFormat:@"%.5e km", kmValue]];
    } else if (self.unitSelectorSegCntrl.selectedSegmentIndex == 1) {
        double milesValue = convertToMiles(userInput);
        [buf appendString:[NSString stringWithFormat:@"%.5e miles", milesValue]];
    } else {
        double auValue = convertToAu(userInput);
        [buf appendString:[NSString stringWithFormat:@"%.5e AU", auValue]];
    }
    self.outputLbl.text = buf;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
