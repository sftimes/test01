//
//  ViewController.m
//  test01
//
//  Created by Myth Myers on 13-4-26.
//  Copyright (c) 2013年 Myth Myers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

    
    @property (weak, nonatomic) IBOutlet UITextField *textfield01;
    @property (weak, nonatomic) IBOutlet UILabel *lable;

    - (IBAction)done:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)done:(id)sender {
    
    self.username = self.textfield01.text;
    NSString *nameString = self.username;
    if ([nameString length] == 0) {
        nameString = @"world";
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello,%@!",nameString];
    self.lable.text =greeting;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textfield01) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end
