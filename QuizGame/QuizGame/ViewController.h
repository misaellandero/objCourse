//
//  ViewController.h
//  QuizGame
//
//  Created by Misael Landero on 02/11/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Model
@property (nonatomic, strong) NSMutableArray * quests;
@property (nonatomic, strong) NSMutableArray * answers;

@property (weak, nonatomic) IBOutlet UILabel *showQuest;
@property (weak, nonatomic) IBOutlet UILabel *showAnswers;


- (IBAction)newQuestion:(id)sender;
- (IBAction)newAnswer:(id)sender;

@end

