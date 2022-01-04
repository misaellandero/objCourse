//
//  ViewController.m
//  Delegados
//
//  Created by Misael Landero on 19/10/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //initialize picker
    _picker = [[UIPickerView alloc] init];
    //the delegate is itself
    _picker.delegate = self;
    
    //add to the view
    [self.view addSubview:_picker];
     
    // Do any additional setup after loading the view.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 3;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 10;
}


@end
