//
//  ViewController.m
//  CapitalsCities
//
//  Created by Misael Landero on 02/01/22.
//

#import "ViewController.h"
#import "Capital.h"
#import <Corelocation/CoreLocation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    Capital* london = [[Capital alloc] initWithInfo:@"Always raining" title:@"London" cordinate: CLLocationCoordinate2DMake(50.5077222, -1.1275)];
    Capital* oslo = [[Capital alloc] initWithInfo:@"An old place" title:@"Oslo" cordinate: CLLocationCoordinate2DMake(59.95, 10.73)];
    Capital* mexico = [[Capital alloc] initWithInfo:@"Taco Land" title:@"Mexico" cordinate: CLLocationCoordinate2DMake(23.6345, -102.5528)];
    Capital* paris = [[Capital alloc] initWithInfo:@"City of lights" title:@"Paris" cordinate: CLLocationCoordinate2DMake(40.8567, 2.3508)];
    Capital* washinton = [[Capital alloc] initWithInfo:@"Named after George himself." title:@"Washington DC " cordinate: CLLocationCoordinate2DMake( 38.895111, -77.036667)];
    
    NSArray* anotations = @[london, oslo, mexico, paris, washinton];
    
    [_MapView addAnnotations:anotations];
}


@end
