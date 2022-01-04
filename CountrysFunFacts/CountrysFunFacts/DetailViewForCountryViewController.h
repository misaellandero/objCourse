//
//  DetailViewForCountryViewController.h
//  CountrysFunFacts
//
//  Created by Misael Landero on 01/01/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewForCountryViewController : UIViewController
@property (nonatomic, strong) NSDictionary *Countrie;
@property (weak, nonatomic) IBOutlet UIImageView *flag;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *landscape;

@end

NS_ASSUME_NONNULL_END
