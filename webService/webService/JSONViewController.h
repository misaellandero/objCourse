//
//  JSONViewController.h
//  webService
//
//  Created by Misael Landero on 01/11/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JSONViewController : UITableViewController

@property (nonatomic, strong) NSArray * cursosXcode;


- (IBAction)seeJson:(id)sender;

@end

NS_ASSUME_NONNULL_END
