//
//  ViewController.h
//  CapitalsCities
//
//  Created by Misael Landero on 02/01/22.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *MapView;

@end

