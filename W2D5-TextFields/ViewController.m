
//
//  ViewController.m
//  W2D5-TextFields
//
//  Created by Daniel Mathews on 2015-05-14.
//  Copyright (c) 2015 ca.lighthouselabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)textFieldDidEndEditing:(UITextField *)sender {
    
    if (sender == self.textField){
        NSLog(@"inside textField, text is %@", sender.text);
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
