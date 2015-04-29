//
//  DLMKStarWarsCharacterTableViewController.m
//  SimpleStarWars
//
//  Created by Daniel on 29/04/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import "DLMKStarWarsCharacterTableViewController.h"
#import "DLMKStarWarsCharacter.h"

@interface DLMKStarWarsCharacterTableViewController ()

@property (nonatomic, strong) NSArray* characters;

@end

@implementation DLMKStarWarsCharacterTableViewController

NSString* CELL_ID = @"CELL_ID";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.title = @"Starwars Rocks!!!!!";
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CELL_ID];
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.characters.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID forIndexPath:indexPath];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_ID];
    }
    
    // Configure the cell...
    cell.backgroundColor = [UIColor orangeColor ];
    cell.textLabel.text = [self.characters[indexPath.row] name];
    cell.imageView.image = [self.characters[indexPath.row] photo];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    /*// Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];*/
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void) loadData{
    
    
    DLMKStarWarsCharacter* yoda = [[DLMKStarWarsCharacter alloc] initWith:@"Yoda" andPhoto:[UIImage imageNamed:@"yoda.jpg"]];
        DLMKStarWarsCharacter* c3po = [[DLMKStarWarsCharacter alloc] initWith:@"C3po" andPhoto:[UIImage imageNamed:@"c3po.jpg"]];
        DLMKStarWarsCharacter* chew = [[DLMKStarWarsCharacter alloc] initWith:@"Chewbacca" andPhoto:[UIImage imageNamed:@"chewbacca.jpg"]];
        DLMKStarWarsCharacter* vader = [[DLMKStarWarsCharacter alloc] initWith:@"DarthVader" andPhoto:[UIImage imageNamed:@"darthVader.jpg"]];
    
    self.characters = @[yoda, c3po, chew, vader];
    
}














@end
