//
//  ViewController.m
//  FirstAppOnObjc
//
//  Created by Misael Landero on 19/10/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _labelInCode =[[UILabel alloc] initWithFrame:CGRectMake(60, 200, 200, 50)];
    _labelInCode.text = @"Hello world!";
    _labelInCode.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:_labelInCode];
    
    _button = [[UIButton alloc] initWithFrame:CGRectMake(18, 398, 248, 50)];
    
    _button.backgroundColor = [UIColor redColor];
    
    [_button setTitle:@"Touch me" forState:UIControlStateNormal];
    
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_button];
     
    // Do any additional setup after loading the view.
}



- (IBAction)touchButton:(id)sender {
    
    _labelFromStoryboard.text = @"Button pressed";
}

- (IBAction)buttonPressed:(id)sender {
    _labelInCode.text = @"Button pressed";
}

@end
