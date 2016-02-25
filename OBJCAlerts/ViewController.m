//
//  ViewController.m
//  OBJCAlerts
//
//  Created by Chris Augg on 2/25/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickBait:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"QUESTION" message:@"Is the estimated air-speed velocity of an unladen swallow 25 MPH?" preferredStyle:UIAlertControllerStyleAlert];
    
    
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler: ^(UIAlertAction * action) {
        
        [self correct];
        
    } ];
    
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        
        [self incorrect];
    }];
    
    [alert addAction:yesAction];
    [alert addAction:noAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

-(void) correct {
    
    UIAlertController *correct = [UIAlertController alertControllerWithTitle:@"CORRECT!" message:@"Congradualtions. You may cross the bridge of death!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:nil];
    [correct addAction:ok];
    [self presentViewController:correct animated:YES completion:nil];
}

-(void) incorrect {
    
    UIAlertController *incorrect = [UIAlertController alertControllerWithTitle:@"INCORRECT!" message:@"NO! NO!. You did not know that! AWwwwaaaaahhh." preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:nil];
    [incorrect addAction:ok];
    [self presentViewController:incorrect animated:YES completion:nil];
    
}

@end
