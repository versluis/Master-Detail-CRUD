//
//  DetailViewController.m
//  CRUD
//
//  Created by Jay Versluis on 13/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import "DetailViewController.h"
#import "Phrase.h"

@interface DetailViewController ()

@property (strong, nonatomic) UIPopoverController *masterPopoverController;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextField *voiceField;
@property BOOL currentlyEditing;

- (void)configureView;
- (IBAction)editPhrase:(id)sender;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

//- (void)setDetailItem:(id)newDetailItem
//{
//    if (_detailItem != newDetailItem) {
//        _detailItem = newDetailItem;
//        
//        // Update the view.
//        [self configureView];
//    }
//
//    if (self.masterPopoverController != nil) {
//        [self.masterPopoverController dismissPopoverAnimated:YES];
//    }        
//}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailPhrase) {

        self.textField.text = self.detailPhrase.text;
        self.voiceField.text = self.detailPhrase.voice;
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

- (IBAction)editPhrase:(id)sender {
    
    if (!self.currentlyEditing) {
        
        // start editing
        self.currentlyEditing = YES;
        
        // change title and enable text fields
        self.navigationItem.title = @"Edit Phrase";
        self.textField.enabled = YES;
        self.textField.borderStyle = UITextBorderStyleRoundedRect;
        self.voiceField.enabled = YES;
        self.voiceField.borderStyle = UITextBorderStyleRoundedRect;
        
        // change right top button
        UIBarButtonItem *myButton = [[UIBarButtonItem alloc]init];
        myButton.action = @selector(finishEditing);
        myButton.title = @"Done";
        myButton.target = self;
        
        // then we add the button to the navigation bar
        self.navigationItem.rightBarButtonItem = myButton;
        
    }
    
}

- (void)finishEditing {
    
    // stop editing - save values
    self.currentlyEditing = NO;
    
    // change title and enable text fields
    self.navigationItem.title = @"Phrase";
    self.textField.enabled = NO;
    self.textField.borderStyle = UITextBorderStyleNone;
    self.voiceField.enabled = NO;
    self.voiceField.borderStyle = UITextBorderStyleNone;
    
    // pass all fields back to detail item
    self.detailPhrase.text = self.textField.text;
    self.detailPhrase.voice = self.voiceField.text;
    
    // selector called when user is done editing
    [self.delegate detailViewDidSave:nil];
}

@end
