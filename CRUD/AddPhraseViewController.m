//
//  AddPhraseViewController.m
//  CRUD
//
//  Created by Jay Versluis on 13/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import "AddPhraseViewController.h"

@interface AddPhraseViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textTextfield;
@property (strong, nonatomic) IBOutlet UITextField *voiceTextfield;
@property (strong, nonatomic) IBOutlet UITextField *pitchField;
@property (strong, nonatomic) IBOutlet UITextField *rateField;

- (IBAction)doneButton:(id)sender;
- (IBAction)cancelButton:(id)sender;

@end

@implementation AddPhraseViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)doneButton:(id)sender {
    
    // set properties from text fields to our object
    self.detailPhrase.text = self.textTextfield.text;
    self.detailPhrase.voice = self.voiceTextfield.text;
    
    [self.delegate addPhraseViewControllerSave];
}

- (IBAction)cancelButton:(id)sender {
    
    [self.delegate addPhraseViewControllerCancel:self.detailPhrase];
}



@end





















