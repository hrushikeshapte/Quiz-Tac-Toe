//
//  help.m
//  QuizTacToe
//
//  Created by Hrushikesh Apte on 5/31/14.
//  Copyright (c) 2014 hrushikeshapte. All rights reserved.
//

#import "help.h"

@implementation help

-(void)viewDidLoad
{
    //Help Screen Text
    helpText.text = [NSString stringWithFormat:@"The goal of the game is to play Tic Tac Toe by answering questions. If you get your answer correct , your symbol gets put on the board. Else , the opponents symbol gets put on the board. This is a 1 player game ."];

}

-(IBAction)buttonPressed
{
            //Returning to home view modally
            UIStoryboard *storyboard = self.storyboard;
        
        UIViewController *VC = [storyboard instantiateViewControllerWithIdentifier:@"VC"];
        
        [self presentViewController:VC animated:YES completion:nil];
    

    
}


@end
