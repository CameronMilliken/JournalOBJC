//
//  CRMEntryListTableViewController.m
//  JournalOBJC
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import "CRMEntryListTableViewController.h"
#import "CRMEntryDetailViewController.h"
#import "CRMEntryController.h"
#import "CRMEntry.h"

@interface CRMEntryListTableViewController ()

@end

@implementation CRMEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[CRMEntryController shared] entries] count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    CRMEntry *entry = [[CRMEntryController shared] entries][indexPath.row];
    cell.textLabel.text = entry.title;
    return cell;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        CRMEntry *entry = [[CRMEntryController shared] entries][indexPath.row];
        [[CRMEntryController shared] removeEntry:entry];
    }
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //IIDOO
    
    //Identifier
    if ([segue.identifier isEqualToString:@"toDetailVC"]) {
        //IndexPath
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //Detail
        CRMEntryDetailViewController *destinationVC = [segue destinationViewController];
        //Get Object
        CRMEntry *entry = [[CRMEntryController shared] entries][indexPath.row];
        //Send Object
        entry = [destinationVC entry];
        
    }
    
}

@end
