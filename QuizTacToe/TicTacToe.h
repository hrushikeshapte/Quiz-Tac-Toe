//
//  TicTacToe.h
//  QuizTacToe
//
//  Created by Hrushikesh Apte on 5/15/14.
//  Copyright (c) 2014 hrushikeshapte. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//Category Numbers for different categories
int Catergory1Number;
int Catergory2Number;
int Catergory3Number;
int Catergory4Number;
int Catergory5Number;
int Catergory6Number;
int Catergory7Number;
int Catergory8Number;
int Catergory9Number;

//Integers to check if category is selected by the user or not
int Category1Selected = 0;
int Category2Selected = 0;
int Category3Selected = 0;
int Category4Selected = 0;
int Category5Selected = 0;
int Category6Selected = 0;
int Category7Selected = 0;
int Category8Selected = 0;
int Category9Selected = 0;

//Integers to decide which question to display based on categories
int Category1SelectedNumber;
int Category2SelectedNumber;
int Category3SelectedNumber;
int Category4SelectedNumber;
int Category5SelectedNumber;
int Category6SelectedNumber;
int Category7SelectedNumber;
int Category8SelectedNumber;
int Category9SelectedNumber;


int CategoryLoaded;
int QuestionSelected;

//Boolean variables to check if answer is correct or not
BOOL Answer1Correct;
BOOL Answer2Correct;
BOOL Answer3Correct;
BOOL Answer4Correct;
BOOL AnswerValue;


@interface TicTacToe : UIViewController

{
    //Integers to check outcome of tic tac toe game
    NSInteger playerToken;
    NSInteger numberofplays;
    BOOL cellused;
    
    //Outlets for various categories displayed on the button
    IBOutlet UIButton *category1;
    IBOutlet UIButton *category2;
    IBOutlet UIButton *category3;
    IBOutlet UIButton *category4;
    IBOutlet UIButton *category5;
    IBOutlet UIButton *category6;
    IBOutlet UIButton *category7;
    IBOutlet UIButton *category8;
    IBOutlet UIButton *category9;
    
    
    //Outlets for quiz part of the game
    IBOutlet UILabel  *QuestionText;
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
    IBOutlet UIImageView *result;
    
    IBOutlet UILabel  *timerValue;
    
    //Variables for timer function
    BOOL questionLive;
    NSInteger time;
    NSTimer *timer;
    
    
}

//IB Action to determine if answer of quiz question is correct or not
-(IBAction)Answer1:(id)sender;
-(IBAction)Answer2:(id)sender;
-(IBAction)Answer3:(id)sender;
-(IBAction)Answer4:(id)sender;

// 27 Categories of questions
-(void)Category1;
-(void)Category2;
-(void)Category3;
-(void)Category4;
-(void)Category5;
-(void)Category6;
-(void)Category7;
-(void)Category8;
-(void)Category9;
-(void)Category10;
-(void)Category11;
-(void)Category12;
-(void)Category13;
-(void)Category14;
-(void)Category15;
-(void)Category16;
-(void)Category17;
-(void)Category18;
-(void)Category19;
-(void)Category20;
-(void)Category21;
-(void)Category22;
-(void)Category23;
-(void)Category24;
-(void)Category25;
-(void)Category26;
-(void)Category27;

//To check if answer selected is right or wrong
-(void)RightAnswer;
-(void)WrongAnswer;

//Properties for tic tac toe board and images of X and O
@property (strong,nonatomic) IBOutlet UIImageView *board;
@property (strong,nonatomic) IBOutlet UIImageView *t1;
@property (strong, nonatomic) IBOutlet UIImageView *t2;
@property (strong, nonatomic) IBOutlet UIImageView *t3;
@property (strong, nonatomic) IBOutlet UIImageView *t4;
@property (strong, nonatomic) IBOutlet UIImageView *t5;
@property (strong, nonatomic) IBOutlet UIImageView *t6;
@property (strong, nonatomic) IBOutlet UIImageView *t7;
@property (strong, nonatomic) IBOutlet UIImageView *t8;
@property (strong, nonatomic) IBOutlet UIImageView *t9;

@property (retain, nonatomic) NSTimer *timer;

//To display who won and reset the game
@property (nonatomic,retain) IBOutlet UIAlertView *myAlert;
@property (strong, nonatomic) IBOutlet UIButton *reset;

//Tic tac toe game result checking function
-(void)checkWin;
-(void)resetBoard;
-(IBAction)resetButton;

//IB Actions for various categories of questions
-(IBAction)cat1;
-(IBAction)cat2;
-(IBAction)cat3;
-(IBAction)cat4;
-(IBAction)cat5;
-(IBAction)cat6;
-(IBAction)cat7;
-(IBAction)cat8;
-(IBAction)cat9;

- (IBAction) homeButton;


@end
