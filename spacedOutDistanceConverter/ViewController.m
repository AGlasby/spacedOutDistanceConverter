//
//  ViewController.m
//  spacedOutDistanceConverter
//
//  Created by Alan on 22/08/2016.
//  Copyright © 2016 Alan Glasby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *unitsLbl;

@property (weak, nonatomic) IBOutlet UISegmentedControl *unitSelectorSegCntrl;

@property (weak, nonatomic) IBOutlet UILabel *outputLbl;

@end

@implementation ViewController


- (IBAction)distanceInputFld:(UITextField *)sender {
    
}

- (IBAction)convertBtn:(id)sender {
    
    NSMutableString *buf = [NSMutableString new];
    [buf appendString: @"Clicked"];
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
