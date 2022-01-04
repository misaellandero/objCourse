//
//  ViewController.m
//  QuizGame
//
//  Created by Misael Landero on 02/11/21.
//

#import "ViewController.h"

@interface ViewController ()
@property int questIndex;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _quests = [[NSMutableArray alloc] init];
    _answers = [[NSMutableArray alloc] init];
    
    [_quests addObject:@"How are XIBs different from storyboards?"];
    [_answers addObject:@"storyboards contain many screens at once"];
    
    [_quests addObject:@"How are XIBs different from storyboards?"];
    [_answers addObject:@"storyboards contain many screens at once"];
    
    [_quests addObject:@"How would you explain UIKit segues to a new iOS developer?"];
    [_answers addObject:@"Segues let us change the currently active view controller"];
    
    [_quests addObject:@"What is the difference between @IBOutlet and @IBAction?"];
    [_answers addObject:@"One is a property the other is a method"];
    
    
    
    // Do any additional setup after loading the view.
}


- (IBAction)newAnswer:(id)sender {
    
   
    NSString * asnwer = [_answers objectAtIndex:_questIndex];
    
    [_showAnswers setText:asnwer];
    
}

- (IBAction)newQuestion:(id)sender {
    
    _questIndex ++;
    
    if (_questIndex == [_quests count]){
        _questIndex = 0;
    }
 
    NSString * quest = [_quests objectAtIndex:_questIndex];
    
    [_showQuest setText:quest];
    
}
@end
