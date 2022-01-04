//
//  JSONViewController.m
//  webService
//
//  Created by Misael Landero on 01/11/21.
//

#import "JSONViewController.h"

@interface JSONViewController ()

@end

@implementation JSONViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Create string
    NSURL * url = [NSURL URLWithString:@"https://landercorp.mx/Demos/ObjcCourse/WebServiceDemo/cursos.json"];
    
    //Get the data
    NSData * jsonData = [NSData dataWithContentsOfURL:url
                                              options:NSUTF8StringEncoding
                                                error:nil];
    NSError * error;
    
    NSArray * curses = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
    if (!curses){
        NSLog(@"Error al cargar datos %@", [error localizedDescription]);
    }
    
    self.cursosXcode = curses;
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.cursosXcode count];
}

 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellTest" forIndexPath:indexPath];
    
    // Configure the cell...
    
    NSDictionary * diccionary = [self.cursosXcode objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [diccionary objectForKey:@"curso"];
    cell.detailTextLabel.text = [diccionary objectForKey:@"profesor"];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)seeJson:(id)sender {
    NSError * error = nil;
    NSDate * json = [NSJSONSerialization dataWithJSONObject:self.cursosXcode options:NSJSONWritingPrettyPrinted error:&error];
    NSString * jsonString = [[NSString alloc] initWithData: json encoding:NSUTF8StringEncoding];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Json" message: jsonString preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Visto" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}
@end
