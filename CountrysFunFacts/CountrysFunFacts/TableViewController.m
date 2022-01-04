//
//  TableViewController.m
//  CountrysFunFacts
//
//  Created by Misael Landero on 01/01/22.
//

#import "TableViewController.h"
#import "DetailViewForCountryViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

NSArray *Countries;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Countries Fun Facts";
    loadJson();
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

void loadJson(void){
    
    //Get the path of the Json
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Countries" ofType:@"json"];
    //Parse the path like the data origin
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    
    //Decode the Json
    NSError *e = nil;
    NSArray *JSONarray = [NSJSONSerialization JSONObjectWithData: data options: NSJSONReadingMutableContainers error: &e];
    NSLog(@"%@", JSONarray);
    
    //Set the decoded value to countries array
    Countries = JSONarray;
    
};

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    return  Countries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableCell" forIndexPath:indexPath];
    cell.textLabel.text = [[Countries objectAtIndex:indexPath.row]objectForKey:@"name"];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    DetailViewForCountryViewController* detailViewController =
    [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
     
    detailViewController.Countrie = [Countries objectAtIndex:indexPath.row];
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
