//
//  ViewController.h
//  Delegados
//
//  Created by Misael Landero on 19/10/21.
//

#import <UIKit/UIKit.h>

//Add the delagate to the class
@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>


@property (nonatomic, strong) UIPickerView * picker;



@end

