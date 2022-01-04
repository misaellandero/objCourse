//
//  DetailViewForCountryViewController.m
//  CountrysFunFacts
//
//  Created by Misael Landero on 01/01/22.
//

#import "DetailViewForCountryViewController.h"

@interface DetailViewForCountryViewController ()

@end

@implementation DetailViewForCountryViewController
@synthesize Countrie;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.prompt = [Countrie objectForKey:@"subtitle"];
    self.title = [Countrie objectForKey:@"name"];
    
    _label.text = [Countrie objectForKey:@"description"];
    _flag.image =  [UIImage imageNamed:[Countrie objectForKey:@"flag"]];
    _landscape.image = [UIImage imageNamed:[Countrie objectForKey:@"landScape"]];
    // Do any additional setup after loading the view.
}

 
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
