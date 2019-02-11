//
//  CRMEntryDetailViewController.m
//  JournalOBJC
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import "CRMEntryDetailViewController.h"
#import "CRMEntryController.h"


@interface CRMEntryDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;


@end

@implementation CRMEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews
{
    self.titleTextField.text = self.entry.title;
    self.bodyTextView.text = self.entry.bodyText;
}

- (IBAction)saveButtonTapped:(id)sender {
    if (self.entry) {
        // update the current entry
        [[CRMEntryController shared] modifyEntry:self.entry withTitle:self.titleTextField.text body:self.bodyTextView.text];
    } else {
        // add a new entry
        CRMEntry *entry = [[CRMEntry alloc] initWithTitle:self.titleTextField.text bodyText:self.bodyTextView.text];
        [[CRMEntryController shared] addEntry: entry];
    }
    [[self navigationController] popViewControllerAnimated:true];
    
}

- (IBAction)clearButtonTapped:(id)sender {
    self.titleTextField.text = @"";
    self.bodyTextView.text = @"";
}



@end
