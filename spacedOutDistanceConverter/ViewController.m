//
//  ViewController.m
//  spacedOutDistanceConverter
//
//  Created by Alan on 22/08/2016.
//  Copyright © 2016 Alan Glasby. All rights reserved.
//

#import "ViewController.h"

double convertToMetres(double distance) {
    double distanceInMetres = distance * 3.0857e16;
    return distanceInMetres;
}

double convertToAu(double distance) {
    double distanceInAu = distance * 2.0626e5;
    return distanceInAu;
}

double convertToLightYears(double distance) {
    double distanceInLightYears = distance * 3.265156;
    return distanceInLightYears;
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
        double metreValue = convertToMetres(userInput);
        [buf appendString: [NSString stringWithFormat:@"%.3e metres", metreValue]];
    } else if (self.unitSelectorSegCntrl.selectedSegmentIndex == 1) {
        double auValue = convertToAu(userInput);
        [buf appendString:[NSString stringWithFormat:@"%.3e astronomical units", auValue]];
    } else {
        double lightYearValue = convertToLightYears(userInput);
        [buf appendString:[NSString stringWithFormat:@"%.3e light years", lightYearValue]];
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
