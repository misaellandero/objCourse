//
//  ViewController.h
//  FirstAppOnObjc
//
//  Created by Misael Landero on 19/10/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (strong, nonatomic) UILabel * labelInCode;

@property (weak, nonatomic) IBOutlet UILabel *labelFromStoryboard;

@property (strong, nonatomic) UIButton * button;

- (IBAction)touchButton:(id)sender;

@end

