//
//  TicTacToe.m
//  QuizTacToe
//
//  Created by Hrushikesh Apte on 5/15/14.
//  Copyright (c) 2014 hrushikeshapte. All rights reserved.
//

#import "TicTacToe.h"
#import "Quiz.h"
#import "Categories.h"
#import "UIButton + Glossy.h"



@implementation TicTacToe



//Synthesizing properties
@synthesize t1,t2,t3,t4,t5,t6,t7,t8,t9,reset,board,myAlert,timer;

-(IBAction)helpButton:(id)sender
{
    
            UIStoryboard *storyboard = self.storyboard;
        
        UIViewController *helpVC = [storyboard instantiateViewControllerWithIdentifier:@"helpVC"];
        
        [self presentViewController:helpVC animated:YES completion:nil];
   

    
    
}

-(IBAction)homeButton
{
    UIStoryboard *storyboard = self.storyboard;
    
    UIViewController *VC = [storyboard instantiateViewControllerWithIdentifier:@"VC"];
    
    [self presentViewController:VC animated:YES completion:nil];
    
    
    
}

//IB Action for answer button 1
-(IBAction)Answer1:(id)sender
{
    
    if(Answer1Correct == YES)
    {
        //Call Right Answer
        [self RightAnswer];
        
        
    }
    
    else
    {
        //Call Wrong Answer
        [self WrongAnswer];
        
    }
    
    //Reset values of Answer
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    
}

//IB Action for answer button 2
-(IBAction)Answer2:(id)sender
{
    
    if(Answer2Correct == YES)
    {
        //Call Right Answer
        [self RightAnswer];
        
        
    }
    
    else
    {
        //Call Wrong Answer
        [self WrongAnswer];
        
    }
    
    //Reset values of Answer
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    
}

//IB Action for answer button 3

-(IBAction)Answer3:(id)sender
{
    
    if(Answer3Correct == YES)
    {
        //Call Right Answer
        [self RightAnswer];
        
    }
    
    else
    {
        //Call Wrong Answer
        [self WrongAnswer];
        
    }
    
    //Reset values of Answer
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    
}

//IB Action for answer button 4

-(IBAction)Answer4:(id)sender
{
    
    if(Answer4Correct == YES)
    {
        //Call Right Answer
        [self RightAnswer];
        
    }
    
    else
    {
        //Call Wrong Answer
        [self WrongAnswer];
        
    }
    
    //Reset values of Answer
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    
}

//Function to perform actions if answer is right
-(void)RightAnswer
{
    //If category 1 is selected
    if(Category1Selected == 1)
    {
        
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO;    //Display Result of question
        
        //Hide category button and display correct symbol
        category1.hidden = YES;
        result.image = [UIImage imageNamed:@"right.jpeg"];
        t1.image = [UIImage imageNamed:@"Ximg.png"];;
        AnswerValue = YES;
        Category1Selected = 0;
        [timer invalidate];
    }
    
    //If category 2 is selected
    if(Category2Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category2.hidden = YES;
        result.image = [UIImage imageNamed:@"right.jpeg"];
        t2.image = [UIImage imageNamed:@"Ximg.png"];;
        AnswerValue = YES;
        Category2Selected = 0;
        [timer invalidate];
    }
    
    //If category 3 is selected
    if(Category3Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category3.hidden = YES;
        result.image = [UIImage imageNamed:@"right.jpeg"];
        t3.image = [UIImage imageNamed:@"Ximg.png"];;
        AnswerValue = YES;
        Category3Selected = 0;
        [timer invalidate];
    }
    
    //If category 4 is selected
    if(Category4Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category4.hidden = YES;
        result.image = [UIImage imageNamed:@"right.jpeg"];
        t4.image = [UIImage imageNamed:@"Ximg.png"];;
        AnswerValue = YES;
        Category4Selected = 0;
        [timer invalidate];
    }
    
    //If category 5 is selected
    if(Category5Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category5.hidden = YES;
        result.image = [UIImage imageNamed:@"right.jpeg"];
        t5.image = [UIImage imageNamed:@"Ximg.png"];;
        AnswerValue = YES;
        Category5Selected = 0;
        [timer invalidate];
    }
    
    //If category 6 is selected
    if(Category6Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category6.hidden = YES;
        result.image = [UIImage imageNamed:@"right.jpeg"];
        t6.image = [UIImage imageNamed:@"Ximg.png"];;
        AnswerValue = YES;
        Category6Selected = 0;
        [timer invalidate];
    }
    
    //If category 7 is selected
    if(Category7Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category7.hidden = YES;
        result.image = [UIImage imageNamed:@"right.jpeg"];
        t7.image = [UIImage imageNamed:@"Ximg.png"];;
        AnswerValue = YES;
        Category7Selected = 0;
        [timer invalidate];
    }
    
    //If category 8 is selected
    if(Category8Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category8.hidden = YES;
        result.image = [UIImage imageNamed:@"right.jpeg"];
        t8.image = [UIImage imageNamed:@"Ximg.png"];;
        AnswerValue = YES;
        Category8Selected = 0;
        [timer invalidate];
    }
    
    //If category 9 is selected
    if(Category9Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category9.hidden = YES;
        result.image = [UIImage imageNamed:@"right.jpeg"];
        t9.image = [UIImage imageNamed:@"Ximg.png"];;
        AnswerValue = YES;
        Category9Selected = 0;
        [timer invalidate];
    }
    
    [self checkWin];
    
}

-(void)WrongAnswer
{
    //If category 1 is selected
    if(Category1Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category1.hidden = YES;
        result.image = [UIImage imageNamed:@"wrong.jpeg"];
        t1.image = [UIImage imageNamed:@"Oimg.png"];;
        AnswerValue = NO;
        Category1Selected = 0;
        [timer invalidate];
    }
    
    //If category 2 is selected
    if(Category2Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category2.hidden = YES;
        result.image = [UIImage imageNamed:@"wrong.jpeg"];
        t2.image = [UIImage imageNamed:@"Oimg.png"];;
        AnswerValue = NO;
        Category2Selected = 0;
        [timer invalidate];
    }
    
    //If category 3 is selected
    if(Category3Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category3.hidden = YES;
        result.image = [UIImage imageNamed:@"wrong.jpeg"];
        t3.image = [UIImage imageNamed:@"Oimg.png"];;
        AnswerValue = NO;
        Category3Selected = 0;
        [timer invalidate];
    }
    
    //If category 4 is selected
    if(Category4Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category4.hidden = YES;
        result.image = [UIImage imageNamed:@"wrong.jpeg"];
        t4.image = [UIImage imageNamed:@"Oimg.png"];;
        AnswerValue = NO;
        Category4Selected = 0;
        [timer invalidate];
    }
    
    //If category 5 is selected
    if(Category5Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category5.hidden = YES;
        result.image = [UIImage imageNamed:@"wrong.jpeg"];
        t5.image = [UIImage imageNamed:@"Oimg.png"];;
        AnswerValue = NO;
        Category5Selected = 0;
        [timer invalidate];
    }
    
    //If category 6 is selected
    if(Category6Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category6.hidden = YES;
        result.image = [UIImage imageNamed:@"wrong.jpeg"];
        t6.image = [UIImage imageNamed:@"Oimg.png"];;
        AnswerValue = NO;
        Category6Selected = 0;
        [timer invalidate];
    }
    
    //If category 7 is selected
    if(Category7Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category7.hidden = YES;
        result.image = [UIImage imageNamed:@"wrong.jpeg"];
        t7.image = [UIImage imageNamed:@"Oimg.png"];;
        AnswerValue = NO;
        Category7Selected = 0;
        [timer invalidate];
    }
    
    //If category 8 is selected
    if(Category8Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category8.hidden = YES;
        result.image = [UIImage imageNamed:@"wrong.jpeg"];
        t8.image = [UIImage imageNamed:@"Oimg.png"];;
        AnswerValue = NO;
        Category8Selected = 0;
        [timer invalidate];
    }
    
    //If category 9 is selected
    if(Category9Selected == 1)
    {
        Answer1.hidden = YES; //Hide Answer buttons
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        result.hidden = NO; //Display Result of question
        
        //Hide category button and display correct symbol
        category9.hidden = YES;
        result.image = [UIImage imageNamed:@"wrong.jpeg"];
        t9.image = [UIImage imageNamed:@"Oimg.png"];;
        AnswerValue = NO;
        Category9Selected = 0;
        [timer invalidate];
    }
    
    [self checkWin];
    
}

//Function to start timer ie decrease time value
-(void)onTimer {
    if(time!= 0)
        timerValue.text = [NSString stringWithFormat:@"%d",time --];
    if(time == 0)
        [self WrongAnswer];
}

//Function for Category Sports
-(void)Category1
{
    
    Category1Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What sport involves the term 'Overs' ? "];
            [Answer1 setTitle:@"Hockey" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Rugby" forState:UIControlStateNormal];
            [Answer3 setTitle:@"SoftBall" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Cricket" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What city hosted the 1992 Olympic Games ? "];
            [Answer1 setTitle:@"Moscow" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Barcelona" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tokyo" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Lisbon" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@" Which tennis court is Roland Garros played on ? "];
            [Answer1 setTitle:@"Clay" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grass" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Hard Court" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Astro Turf" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which team won the NBA playoff finals in 2013 ? "];
            [Answer1 setTitle:@"LA Lakers" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Dallas Mavericks" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Miami Heat" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Golden State Warriors" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
}



//Function for category History
-(void)Category2
{
    Category1Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What is the oldest political party of the Western world ?"];
            [Answer1 setTitle:@"The Republicans (USA)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The Conservatives (UK)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The Liberals (Canada)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Democrats (USA)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which country never had a colony in North America ? "];
            [Answer1 setTitle:@"Germany" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Russia" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Sweden" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Netherlands" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What is the latest state to join united states which made it 50 states in the USA ? "];
            [Answer1 setTitle:@"Alaska" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Puerto Rico" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Guantanamo" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Hawaii" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"By which of those ancient civilizations was Machu Pichu built? "];
            [Answer1 setTitle:@"The Aztecs" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The Egyptians" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The Incas" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Mayas" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}


//Function for Category Music
-(void)Category3
{
    Category1Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Complete this lyric from Michael Jackson’s ‘Thriller’.  'It’s close to midnight, and something evil’s lurking in the….' "];
            [Answer1 setTitle:@"Wind" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Dark" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Trees" forState:UIControlStateNormal];
            Answer3Correct = YES;
            
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"The 1980’s hit song “Take on Me” was performed by"];
            [Answer1 setTitle:@"Wham!" forState:UIControlStateNormal];
            [Answer2 setTitle:@"A-ha" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Duran Duran" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Metallica" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"The song 'Astronomy' is written by when famous band?"];
            [Answer1 setTitle:@"Iron Maiden" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Led Zeplin" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Pink Floyd" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Metallica" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What is Zakir Hussain famous for ?"];
            [Answer1 setTitle:@"Tabla" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Dhol" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Piano" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Violin" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}


//Function for category countries
-(void)Category4
{
    Category2Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"The cities of Cairo in Egypt and Fez in Morroco are generally accepted to have the oldest of what type of institution in the world? "];
            [Answer1 setTitle:@"Religious" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Government" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Sports" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Universities" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"In which South American country is the Atacama desert?"];
            [Answer1 setTitle:@"Brazil" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Peru" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Chile" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Argentina" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"The Adriatic and Aegean are arms of which sea?"];
            [Answer1 setTitle:@"Mediterranian" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Caspian" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Dead Sea" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Arabian Sea" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What is the capital of Armenia??"];
            [Answer1 setTitle:@"Bataysk" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Baku" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Yerevan" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tbilisi" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}


//Function for Category Maths
-(void)Category5
{
    Category2Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What does B in BOADMAS stand for ?"];
            [Answer1 setTitle:@"BOOLEAN" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Binary" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Brackets" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Byte" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"10001 – 101 = ?"];
            [Answer1 setTitle:@"1001" forState:UIControlStateNormal];
            [Answer2 setTitle:@"990" forState:UIControlStateNormal];
            [Answer3 setTitle:@"9990" forState:UIControlStateNormal];
            [Answer4 setTitle:@"9900" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"In the following series a wrong number is given. Find out that number. 4, 5, 10, 18, 34, 59, 95 "];
            [Answer1 setTitle:@"5" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10" forState:UIControlStateNormal];
            [Answer3 setTitle:@"18" forState:UIControlStateNormal];
            [Answer4 setTitle:@"34" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"The sum of squares of two numbers is 108 and the square of difference between the two numbers is 36. Find the product of two numbers."];
            [Answer1 setTitle:@"27" forState:UIControlStateNormal];
            [Answer2 setTitle:@"48" forState:UIControlStateNormal];
            [Answer3 setTitle:@"33" forState:UIControlStateNormal];
            [Answer4 setTitle:@"36" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
    
}

//Function for category general knowledge
-(void)Category6
{
    Category2Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"In the human body, adductors and abductors are types of what?"];
            [Answer1 setTitle:@"Nerve" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Vein" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Bone" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Muscle" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of these whales is the largest toothed animal?"];
            [Answer1 setTitle:@"Marlin" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Humpback whale" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Killer whale" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sperm whale" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"How many planets are there in our solar system?"];
            [Answer1 setTitle:@"8" forState:UIControlStateNormal];
            [Answer2 setTitle:@"9" forState:UIControlStateNormal];
            [Answer3 setTitle:@"10" forState:UIControlStateNormal];
            [Answer4 setTitle:@"12" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"The Earth is surrounded by an insulating blanket of gases which protects it from the light and heat of the Sun. This insulating layer is called the"];
            [Answer1 setTitle:@"Biosphere" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Hydrosphere" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Atmosphere" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Lithosphere" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category TV Shows
-(void)Category7
{
    Category3Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which popular animated TV series features the adventures of the Griffin family?"];
            [Answer1 setTitle:@" Family Guy" forState:UIControlStateNormal];
            [Answer2 setTitle:@"American Dad!" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Pokemon" forState:UIControlStateNormal];
            [Answer4 setTitle:@"King of the Hill" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Starring David Duchovny, which of the following TV shows is about a book writer who is always running into trouble with sex, drugs and women?"];
            [Answer1 setTitle:@"Californication" forState:UIControlStateNormal];
            [Answer2 setTitle:@"House of Lies" forState:UIControlStateNormal];
            [Answer3 setTitle:@"FRIENDS" forState:UIControlStateNormal];
            [Answer4 setTitle:@"How i met your mother" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which is the most famous thing Barney Stinson says in How i met your mother ?"];
            [Answer1 setTitle:@"Up top" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Have you met Ted" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Bro" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Legen...dary !" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"In the Big Bang Theory , who is the most smartest, paranoid and annoying person on the show ?"];
            [Answer1 setTitle:@"Leonard" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sheldon" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Raj" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Howard" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category games
-(void)Category8
{
    Category3Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which famous manegerial game landed a person an actual job based on game management skills ?"];
            [Answer1 setTitle:@"FIFA Manager" forState:UIControlStateNormal];
            [Answer2 setTitle:@"NBA Manager" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Football Manager" forState:UIControlStateNormal];
            [Answer4 setTitle:@"F1 Manager" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which game involves building and managing cities?"];
            [Answer1 setTitle:@"The Sims" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Roller Coaster Tycoon" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The City Game" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sim City" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which famous cricketer was the first to give his name to a cricket game title ?"];
            [Answer1 setTitle:@"Sachin Tendulkar" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Brian Lara" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Shane Warne" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sir Don Bradman" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"In which first person shooting game would you find a map named 'untitled'"];
            [Answer1 setTitle:@"Call of Duty" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Battlefield" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Counter Strike" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Halo" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
    
}


//Function for category Biology
-(void)Category9
{
    Category3Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"The most primitive form of metabolism is"];
            [Answer1 setTitle:@"glycolysis" forState:UIControlStateNormal];
            [Answer2 setTitle:@"oxygen forming photosynthesis" forState:UIControlStateNormal];
            [Answer3 setTitle:@"the degradation of organic molecules with the released energy stored in ATP" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Anaerobic Respiration" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Enzymes"];
            [Answer1 setTitle:@"make endergonic reactions proceed spontaneously" forState:UIControlStateNormal];
            [Answer2 setTitle:@"lower the activation energy of a reaction" forState:UIControlStateNormal];
            [Answer3 setTitle:@"are not very specific in their choice of substrates" forState:UIControlStateNormal];
            [Answer4 setTitle:@"are needed in large quantities because they are used up during catalysis" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"The energy of random molecular motion is called"];
            [Answer1 setTitle:@"Heat" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Kinetic Energy" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Potential Energy" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Enthalpy" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"The second law of thermodynamics essentially says"];
            [Answer1 setTitle:@"heat is energy" forState:UIControlStateNormal];
            [Answer2 setTitle:@"motion energy converts to heat energy" forState:UIControlStateNormal];
            [Answer3 setTitle:@"at the atomic level, motion is continuous" forState:UIControlStateNormal];
            [Answer4 setTitle:@"entropy increases" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
    
}

//Function for category logos
-(void)Category10
{
    Category4Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"The logo of Audi has how many rings ?"];
            [Answer1 setTitle:@"3" forState:UIControlStateNormal];
            [Answer2 setTitle:@"4" forState:UIControlStateNormal];
            [Answer3 setTitle:@"5" forState:UIControlStateNormal];
            [Answer4 setTitle:@"6" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"The logo of Indian Political Party Congress consists of ?"];
            [Answer1 setTitle:@"A Hand" forState:UIControlStateNormal];
            [Answer2 setTitle:@"A rose" forState:UIControlStateNormal];
            [Answer3 setTitle:@"A dove" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Shivaji Maharaj" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"The detergent Tide has what colour associated in its packaging ?"];
            [Answer1 setTitle:@"White" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Black" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Orange" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Green" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"The logo of Adidas consists of ?"];
            [Answer1 setTitle:@"A star" forState:UIControlStateNormal];
            [Answer2 setTitle:@"A tick mark" forState:UIControlStateNormal];
            [Answer3 setTitle:@"3 strips" forState:UIControlStateNormal];
            [Answer4 setTitle:@"A cross" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}


//Function for category general knowledge
-(void)Category11
{
    Category4Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which US state is named on the label of a Jack Daniels bottle?"];
            [Answer1 setTitle:@"Tennessee" forState:UIControlStateNormal];
            [Answer2 setTitle:@"New York" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Nevada" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Hawaii" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Nariyal is the Indian term for which nut?"];
            [Answer1 setTitle:@"Ground nut" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Pine nut" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Coconut" forState:UIControlStateNormal];
            [Answer4 setTitle:@"None of the above" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"The world smallest country is"];
            [Answer1 setTitle:@"Canada" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Austria" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Maldives" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Vatican City" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"The brighest planet is"];
            [Answer1 setTitle:@"Mars" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mercury" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Neptune" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Venus" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category Soccer
-(void)Category12
{
    Category4Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Who are Liverpool FC city rivals ?"];
            [Answer1 setTitle:@"West Ham" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Chelsea" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Portsmouth" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Everton" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which team is known as the Galacticos ?"];
            [Answer1 setTitle:@"Galatasary" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Real Madrid" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Athletico Madrid" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Manchester United" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which team did strikers Fernando Torres , Sergio Aguero and Falcao all play for"];
            [Answer1 setTitle:@"Manchester City" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Chelsea" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Athletico Madrid" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Real Madrid" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Who was known as 'El Phenomenon'"];
            [Answer1 setTitle:@"Lionel Messi" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ronaldo" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Zinedine Zidane" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Diego Maradona" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category capitals
-(void)Category13
{
    Category5Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What is the capital of India ?"];
            [Answer1 setTitle:@"Bombay" forState:UIControlStateNormal];
            [Answer2 setTitle:@"New Delhi" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Calcutta / Kolkatta" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Bangalore" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What is the capital of Thailand ?"];
            [Answer1 setTitle:@"Pattaya" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Koh Samui" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Bangkok" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Kuala Lumpur" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What is the capital of Finland ?"];
            [Answer1 setTitle:@"Helsinki" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Stockholm" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Geneva" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Oslo" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What is the capital of West Indies"];
            [Answer1 setTitle:@"Barbados" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Jamaica" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Charleston" forState:UIControlStateNormal];
            [Answer4 setTitle:@"No Capital City" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}


//Function for category Flags
-(void)Category14
{
    Category5Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"How many stars does the United States flag have ?"];
            [Answer1 setTitle:@"49" forState:UIControlStateNormal];
            [Answer2 setTitle:@"50" forState:UIControlStateNormal];
            [Answer3 setTitle:@"51" forState:UIControlStateNormal];
            [Answer4 setTitle:@"52" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What is the colour of the flag of Argentina"];
            [Answer1 setTitle:@"Blue and Yellow" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Orange and White" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Blue and White" forState:UIControlStateNormal];
            [Answer4 setTitle:@"White and Green" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What animal does the Sri Lankan flag contain"];
            [Answer1 setTitle:@"Lion" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tiger" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Leopard" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Cheetah" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"How many colours are there in the flag of China ?"];
            [Answer1 setTitle:@"1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}


//Function for category cricket
-(void)Category15
{
    Category5Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"How many overs are there in a One day International Game ?"];
            [Answer1 setTitle:@"20" forState:UIControlStateNormal];
            [Answer2 setTitle:@"40" forState:UIControlStateNormal];
            [Answer3 setTitle:@"50" forState:UIControlStateNormal];
            [Answer4 setTitle:@"60" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Who is known as GOD in Indian Cricket ?"];
            [Answer1 setTitle:@"Kapil Dev" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sunil Gavaskar" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Rahul Dravid" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sachin Tendulkar" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Who won the cricket world cup in 2003 ?"];
            [Answer1 setTitle:@"Australia" forState:UIControlStateNormal];
            [Answer2 setTitle:@"India" forState:UIControlStateNormal];
            [Answer3 setTitle:@"England" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sri Lanka" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Who scored the maximum number of runs in an IPL game ?"];
            [Answer1 setTitle:@"Brendon McCullum" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sachin Tendulkar" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Chris Gayle" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Kevin Peterson" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category animals
-(void)Category16
{
    Category6Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What is a Pug ?"];
            [Answer1 setTitle:@"Cat" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Dog" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Lizard" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Monkey" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Cats are said to have "];
            [Answer1 setTitle:@"1 life" forState:UIControlStateNormal];
            [Answer2 setTitle:@"2 lives" forState:UIControlStateNormal];
            [Answer3 setTitle:@"9 lives" forState:UIControlStateNormal];
            [Answer4 setTitle:@"15 lives" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What food makes up nearly all around 99 percent of a Giant Panda’s diet?"];
            [Answer1 setTitle:@"Grass" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Bamboo" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Sugarcane" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Fish" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which bird can fly straight up, down, and backward?"];
            [Answer1 setTitle:@"Pigeon" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Bats" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Hummingbird" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Eagle" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for catgory food
-(void)Category17
{
    Category6Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which chocolate bar with a honeycomb centre was introduced in 1929?"];
            [Answer1 setTitle:@"Timeout" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Flake" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Crunchie" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Wispa" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What do you call Indian ice-cream?"];
            [Answer1 setTitle:@"Sudji ka Halava" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Kulfi" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Gaajar ka Halva" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Khir" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What is the correct temperature that frozen food should be kept at?"];
            [Answer1 setTitle:@"-18 degrees or lower" forState:UIControlStateNormal];
            [Answer2 setTitle:@"0 degrees " forState:UIControlStateNormal];
            [Answer3 setTitle:@"5 degrees" forState:UIControlStateNormal];
            [Answer4 setTitle:@"-5 degrees" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following meats are safe to eat when they are pink or raw?"];
            [Answer1 setTitle:@"Chicken" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Pork" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Minced Meat" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Lamb" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}


//Function for category cars
-(void)Category18
{
    Category6Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which was the cheapest car introduced in India which cost under 2000$ ?"];
            [Answer1 setTitle:@"Pico" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mono" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Rio" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Nano" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which city was known as the car capital in the USA ?"];
            [Answer1 setTitle:@"Seattle" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Oklahoma" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Detroit" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Memphis" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which car manufacturer has their logo as a 'S' ?"];
            [Answer1 setTitle:@"Sauber" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Suzuki" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Sandstorm" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Subaru" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"The headquarters of BMW are located in ?"];
            [Answer1 setTitle:@"Munich" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Frankfurt" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Dortmund" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Dusseldorf" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category Formula 1
-(void)Category19
{
    Category7Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Who holds the title for the most number of world championship titles won ? "];
            [Answer1 setTitle:@"Ralf Schumacher" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Michael Schumacher" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fernando Alonso" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mika Hakkinen" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Sebastian Vettle drives for which car constructor ?"];
            [Answer1 setTitle:@"Ferrari" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mclaren" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Red Bull" forState:UIControlStateNormal];
            [Answer4 setTitle:@"BMW" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Mika Hakkinen is from which country ?"];
            [Answer1 setTitle:@"Denmark" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sweden" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Switzerland" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Finland" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Ross Brawn , initially with Ferrari is now the team principle of which team ?"];
            [Answer1 setTitle:@"Mclaren" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Red Bull" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mercedes" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Lotus" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}


//Function for category NBA
-(void)Category20
{
    Category7Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Kobe Bryan is the star player for which team ?"];
            [Answer1 setTitle:@"LA Lakers" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Miami Heat" forState:UIControlStateNormal];
            [Answer3 setTitle:@"San Antonio Spurs" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Golden State Warriers" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"LeBron James plays for which team "];
            [Answer1 setTitle:@"LA Lakers" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Miami Heat" forState:UIControlStateNormal];
            [Answer3 setTitle:@"San Antonio Spurs" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Golden State Warriers" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Who holds the record for the maximum number of points in an NBA game ?"];
            [Answer1 setTitle:@"Wilt Chamberlain" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Michael Jorden" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Kobe Bryant" forState:UIControlStateNormal];
            [Answer4 setTitle:@"LeBron James" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which team as won the most titles as of 2013 in the NBA ? "];
            [Answer1 setTitle:@"LA Lakers" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Miami Heat" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Boston Celtics" forState:UIControlStateNormal];
            [Answer4 setTitle:@"San Antonio Spurs" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category Influential People
-(void)Category21
{
    Category7Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Steve Jobs was the CEO of which company?"];
            [Answer1 setTitle:@"Apple" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Microsoft" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Google" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Facebook" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Steve Jobs was the CEO of which company?"];
            [Answer1 setTitle:@"Apple" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Microsoft" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Google" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Facebook" forState:UIControlStateNormal];
            Answer1Correct = YES;
            
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Steve Jobs was the CEO of which company?"];
            [Answer1 setTitle:@"Apple" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Microsoft" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Google" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Facebook" forState:UIControlStateNormal];
            Answer1Correct = YES;
            
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Steve Jobs was the CEO of which company?"];
            [Answer1 setTitle:@"Apple" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Microsoft" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Google" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Facebook" forState:UIControlStateNormal];
            Answer1Correct = YES;
            
            break;
            
        default:
            break;
            
            
    }
}

//Function for category Birds
-(void)Category22
{
    Category8Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which living bird lays the world's largest egg?"];
            [Answer1 setTitle:@"Vulture" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Owl" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ostrich" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Eagle" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which living bird lays the world's smallest egg?"];
            [Answer1 setTitle:@"Hornbill" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Bee Humming Bird" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ostrich" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Woodpecker" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which bird's eye are larger than its brain?"];
            [Answer1 setTitle:@"Parrot" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Owl" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ostrich" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Eagle" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Name the bird that enters a saltwater crocodile’s mouth to pick out the parasites and food particles...?"];
            [Answer1 setTitle:@"Kingfisher" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sparrow" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Crow" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Nile plover" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category books
-(void)Category23
{
    Category8Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which famous book series did JK Rowling write?"];
            [Answer1 setTitle:@"Lord of the Rings" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Harry Potter" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Hardy Boys" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Secret Seven" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Who was the author of the famous storybook 'Alice's Adventures in Wonderland'?"];
            [Answer1 setTitle:@"Lewis Carroll" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Rudyard Kipling" forState:UIControlStateNormal];
            [Answer3 setTitle:@"John Keats" forState:UIControlStateNormal];
            [Answer4 setTitle:@"H.G.Wells" forState:UIControlStateNormal];
            Answer1Correct = YES;
            
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"In the book' The Lord of the Rings', who or what is Bilbo?"];
            [Answer1 setTitle:@"dwarf" forState:UIControlStateNormal];
            [Answer2 setTitle:@"wizard" forState:UIControlStateNormal];
            [Answer3 setTitle:@"troll" forState:UIControlStateNormal];
            [Answer4 setTitle:@"hobbit" forState:UIControlStateNormal];
            Answer4Correct = YES;
            
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Who is the author of the novel 'Les Miserable'?"];
            [Answer1 setTitle:@"Victor Hugo" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Alium Tofler" forState:UIControlStateNormal];
            [Answer3 setTitle:@"G. Wynne" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Fedric" forState:UIControlStateNormal];
            Answer1Correct = YES;
            
            break;
            
        default:
            break;
            
            
    }
    
    
    
}


//Function for category Movies
-(void)Category24
{
    Category8Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"In which movie is Angelina Jolie a Russian Spy?"];
            [Answer1 setTitle:@"Mr and Mrs Smith" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Salt" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Gone in 60 Seconds" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tomb Raider" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"IWhich two actors directed themselves in movies and won Oscars for Best Actor?"];
            [Answer1 setTitle:@"Al Pacino and Timothy Hutton" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Jack Nicholson and Kevin Spacey" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Laurence Olivier and Roberto Benigni" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tom Hanks and Paul Newman" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which film, starring Michael Jackson and Diana Ross, was inspired by The Wizard of Oz (1939)?"];
            [Answer1 setTitle:@"Journey Back to Oz" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Return to Oz" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The Wiz" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Wonderful Wizard of Oz" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Not including his own, how many 'eyes' does Jack Sparrow have painted on his face ?"];
            [Answer1 setTitle:@"6" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10" forState:UIControlStateNormal];
            [Answer3 setTitle:@"8" forState:UIControlStateNormal];
            [Answer4 setTitle:@"12" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category California
-(void)Category25
{
    Category9Selected = 1;
    //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];

    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which is the biggest city in California ?"];
            [Answer1 setTitle:@"Los Angeles" forState:UIControlStateNormal];
            [Answer2 setTitle:@"San Francisco" forState:UIControlStateNormal];
            [Answer3 setTitle:@"San Jose" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Palo Alto" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What state borders California to the north?"];
            [Answer1 setTitle:@"Oregon" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Washington" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Utah" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Portland" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What President of the United States was born in Yorba Linda, California?"];
            [Answer1 setTitle:@"George W Bush" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Richard Nixon" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Lyndon Johnson" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ronald Reagan" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What is the state animal of California?"];
            [Answer1 setTitle:@"American Buffalo" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grizzley Bear" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Saber-toothed Cat" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Penguin" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
}

//Function for category FRIENDS
-(void)Category26
{
    Category9Selected = 1;
   //Setting question to selected and restarting timer to 60 seconds
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];

    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Who sings the song 'smelly cat' ?"];
            [Answer1 setTitle:@"Phoebe" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Rachel" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Monica" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Joey" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What is the name of Ross's comic book"];
            [Answer1 setTitle:@"Superman" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Spider Boy" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Science Boy" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Dinosour Boy" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What does Phoebe legally change her name to?"];
            [Answer1 setTitle:@"Crapbag" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Princess Banana Hammock" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ursula Buffet" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Nestle Tollhouse" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Why did Chandler break up with his first girlfriend?"];
            [Answer1 setTitle:@"He didnt love her" forState:UIControlStateNormal];
            [Answer2 setTitle:@"She was fat" forState:UIControlStateNormal];
            [Answer3 setTitle:@"She had a big head" forState:UIControlStateNormal];
            [Answer4 setTitle:@"She was loud" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
    
}


//Function for category Cocktails
-(void)Category27
{
    Category9Selected = 1;
    questionLive = YES;
    time = 60.0;
    timer = [NSTimer scheduledTimerWithTimeInterval:(1)
                                             target: self
                                           selector:@selector(onTimer)
                                           userInfo: nil repeats: YES];
    //Display Random Question
    QuestionSelected = arc4random() % 4;
    switch(QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"A Porter is a ... ?"];
            [Answer1 setTitle:@"Apple based alcoholic cider" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Large bottle used to move beer in the 1800s" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Small glass for serving Port" forState:UIControlStateNormal];
            [Answer4 setTitle:@"A dark colored style of beer" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"A classic martini is garnished with olives, while a Gibson martini is garnished with what ... ?"];
            [Answer1 setTitle:@"Celery sticks" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Lemon wedges" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Maraschino cherries" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Pickled onions" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What is added to an drink when it is ordered 'neat' ... ?"];
            [Answer1 setTitle:@"Crushed ice" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Nothing" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Water" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Bitters" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which TV sitcom featured the main characters running their own microbrewery and making Buzz Beer ... ?"];
            [Answer1 setTitle:@"The Drew Carey Show" forState:UIControlStateNormal];
            [Answer2 setTitle:@"FRIENDS" forState:UIControlStateNormal];
            [Answer3 setTitle:@"That 70s Show" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Scrubs" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        default:
            break;
            
            
    }
    
    
    
    
}


//IB Action for category button 1

-(IBAction)cat1{
    
    //If button is touched , display question depending on category of the button
    
    if(Category1SelectedNumber == 1)
    {
        [self Category1 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category1SelectedNumber == 2)
    {
        
        [self Category2 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category1SelectedNumber == 3)
    {
        [self Category3 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    
}


//IB Action for category button 2

-(IBAction)cat2{
    
    //If button is touched , display question depending on category of the button

    if(Category2SelectedNumber == 4)
    {
        [self Category4 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category2SelectedNumber == 5)
    {
        [self Category5 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category2SelectedNumber == 6)
    {
        [self Category6 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    
    
}

//IB Action for category button 3

-(IBAction)cat3{
    
    //If button is touched , display question depending on category of the button

    if(Category3SelectedNumber == 7)
    {
        [self Category7 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category3SelectedNumber == 8)
    {
        [self Category8 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category3SelectedNumber == 9)
    {
        [self Category9 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
}

//IB Action for category button 4

-(IBAction)cat4{
    
    //If button is touched , display question depending on category of the button

    
    if(Category4SelectedNumber == 10)
    {
        [self Category10 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category4SelectedNumber == 11)
    {
        [self Category11 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category4SelectedNumber == 12)
    {
        [self Category12 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    
}

//IB Action for category button 5

-(IBAction)cat5{
    
    
    //If button is touched , display question depending on category of the button

    if(Category5SelectedNumber == 13)
    {
        [self Category13 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category5SelectedNumber == 14)
    {
        [self Category14 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    if(Category5SelectedNumber == 15)
    {
        [self Category15 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    
    
}


//IB Action for category button 6

-(IBAction)cat6{
    
    //If button is touched , display question depending on category of the button

    if(Category6SelectedNumber == 16)
    {
        [self Category16 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category6SelectedNumber == 17)
    {
        [self Category17 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category6SelectedNumber == 18)
    {
        [self Category18 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    
}


//IB Action for category button 7

-(IBAction)cat7{
    
    
    //If button is touched , display question depending on category of the button

    if(Category7SelectedNumber == 19)
    {
        [self Category19 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category7SelectedNumber == 20)
    {
        [self Category20];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category7SelectedNumber == 21)
    {
        [self Category21 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    
    
}


//IB Action for category button 8

-(IBAction)cat8{
    
    
    //If button is touched , display question depending on category of the button

    if(Category8SelectedNumber == 22)
    {
        [self Category22];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category8SelectedNumber == 23)
    {
        [self Category23];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category8SelectedNumber == 24)
    {
        [self Category24 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
}


//IB Action for category button 9

-(IBAction)cat9{
    
    //If button is touched , display question depending on category of the button

    
    if(Category9SelectedNumber == 25)
    {
        [self Category25 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category9SelectedNumber == 26)
    {
        [self Category26 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    if(Category9SelectedNumber == 27)
    {
        [self Category27 ];
        result.hidden = YES;
        Answer1.hidden = NO;
        Answer2.hidden = NO;
        Answer3.hidden = NO;
        Answer4.hidden = NO;
        QuestionText.hidden = NO;
    }
    
    
}

- (void)viewDidLoad
{
    
    questionLive = NO;
    //Make the quiz part hidden upon loading of the application
    result.hidden = YES;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    QuestionText.hidden = YES;
    
    //Set answer values to false
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    //Randomize categories to be displayed
    Catergory1Number = arc4random() % 3;
    Catergory2Number = arc4random() % 3;
    Catergory3Number = arc4random() % 3;
    Catergory4Number = arc4random() % 3;
    Catergory5Number = arc4random() % 3;
    Catergory6Number = arc4random() % 3;
    Catergory7Number = arc4random() % 3;
    Catergory8Number = arc4random() % 3;
    Catergory9Number = arc4random() % 3;
    
    // Setting answer buttons to different colours
    
    [Answer1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [Answer1 setBackgroundToGlossyRectOfColor:[UIColor colorWithRed:.2 green:.2 blue:.85 alpha:1] withBorder:NO forState:UIControlStateNormal];
    
    [Answer2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [Answer2 setBackgroundToGlossyRectOfColor:[UIColor colorWithRed:.05 green:.65 blue:.05 alpha:1] withBorder:NO forState:UIControlStateNormal];
    
    [Answer3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [Answer3 setBackgroundToGlossyRectOfColor:[UIColor colorWithRed:.65 green:.05 blue:.05 alpha:1] withBorder:NO forState:UIControlStateNormal];
    
    [Answer4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [Answer4 setBackgroundToGlossyRectOfColor:[UIColor colorWithRed:.85 green:.65 blue:.05 alpha:1] withBorder:NO forState:UIControlStateNormal];

    
        //int random = 1;
    
    //random = arc4random() % 27;
    
    //Selecting categories from objects in the array in Category.h
    Categories *categories = [Categories sharedCategories];
    NSString *firstCategory = [[categories categoryNames] objectAtIndex:0];
    Categories *categories1 = [Categories sharedCategories];
    NSString *secondCategory = [[categories1 categoryNames] objectAtIndex:1];
    Categories *categories2 = [Categories sharedCategories];
    NSString *thirdCategory = [[categories2 categoryNames] objectAtIndex:2];
    Categories *categories3 = [Categories sharedCategories];
    NSString *fourthCategory = [[categories3 categoryNames] objectAtIndex:3];
    Categories *categories4 = [Categories sharedCategories];
    NSString *fifthCategory = [[categories4 categoryNames] objectAtIndex:4];
    Categories *categories5 = [Categories sharedCategories];
    NSString *sixthCategory = [[categories5 categoryNames] objectAtIndex:5];
    Categories *categories6 = [Categories sharedCategories];
    NSString *seventhCategory = [[categories6 categoryNames] objectAtIndex:6];
    Categories *categories7 = [Categories sharedCategories];
    NSString *eigthCategory = [[categories7 categoryNames] objectAtIndex:7];
    Categories *categories8 = [Categories sharedCategories];
    NSString *ninethCategory = [[categories8 categoryNames] objectAtIndex:8];
    Categories *categories9 = [Categories sharedCategories];
    NSString *tenthCategory = [[categories9 categoryNames] objectAtIndex:9];
    Categories *categories10 = [Categories sharedCategories];
    NSString *eleventhCategory = [[categories10 categoryNames] objectAtIndex:10];
    Categories *categories11 = [Categories sharedCategories];
    NSString *twelvethCategory = [[categories11 categoryNames] objectAtIndex:11];
    Categories *categories12 = [Categories sharedCategories];
    NSString *thirteenthCategory = [[categories12 categoryNames] objectAtIndex:12];
    Categories *categories13 = [Categories sharedCategories];
    NSString *fourteenthCategory = [[categories13 categoryNames] objectAtIndex:13];
    Categories *categories14 = [Categories sharedCategories];
    NSString *fifeteenthCategory = [[categories14 categoryNames] objectAtIndex:14];
    Categories *categories15 = [Categories sharedCategories];
    NSString *sixteenthCategory = [[categories15 categoryNames] objectAtIndex:15];
    Categories *categories16 = [Categories sharedCategories];
    NSString *seventeenthCategory = [[categories16 categoryNames] objectAtIndex:16];
    Categories *categories17 = [Categories sharedCategories];
    NSString *eighteenthCategory = [[categories17 categoryNames] objectAtIndex:17];
    Categories *categories18 = [Categories sharedCategories];
    NSString *nineteenthCategory = [[categories18 categoryNames] objectAtIndex:18];
    Categories *categories19 = [Categories sharedCategories];
    NSString *twentyCategory = [[categories19 categoryNames] objectAtIndex:19];
    Categories *categories20 = [Categories sharedCategories];
    NSString *twentyfirstCategory = [[categories20 categoryNames] objectAtIndex:20];
    Categories *categories21 = [Categories sharedCategories];
    NSString *twentysecondCategory = [[categories21 categoryNames] objectAtIndex:21];
    Categories *categories22 = [Categories sharedCategories];
    NSString *twentythirdCategory = [[categories22 categoryNames] objectAtIndex:22];
    Categories *categories23 = [Categories sharedCategories];
    NSString *twentyfourthCategory = [[categories23 categoryNames] objectAtIndex:23];
    Categories *categories24 = [Categories sharedCategories];
    NSString *twentyfifthCategory = [[categories24 categoryNames] objectAtIndex:24];
    Categories *categories25 = [Categories sharedCategories];
    NSString *twentysixthCategory = [[categories25 categoryNames] objectAtIndex:25];
    Categories *categories26 = [Categories sharedCategories];
    NSString *twentyseventhCategory = [[categories26 categoryNames] objectAtIndex:26];
    
    
    //Set category to button based on random value
    switch (Catergory1Number) {
        case 0:
            [category1 setTitle:firstCategory forState:UIControlStateNormal];
            Category1SelectedNumber = 1;
            break;
        case 1:
            [category1 setTitle:secondCategory forState:UIControlStateNormal];
            Category1SelectedNumber = 2;
            break;
        case 2:
            [category1 setTitle:thirdCategory forState:UIControlStateNormal];
            Category1SelectedNumber = 3;
            
            
            break;
            
        default:
            break;
    }
    
    //Set category to button based on random value

    switch (Catergory2Number) {
        case 0:
            [category2 setTitle:fourthCategory forState:UIControlStateNormal];
            Category2SelectedNumber = 4;
            break;
        case 1:
            [category2 setTitle:fifthCategory forState:UIControlStateNormal];
            Category2SelectedNumber = 5;
            break;
        case 2:
            [category2 setTitle:sixthCategory forState:UIControlStateNormal];
            Category2SelectedNumber = 6;
            break;
            
        default:
            break;
    }
    
    //Set category to button based on random value

    switch (Catergory3Number) {
        case 0:
            [category3 setTitle:seventhCategory forState:UIControlStateNormal];
            Category3SelectedNumber = 7;
            break;
        case 1:
            [category3 setTitle:eigthCategory forState:UIControlStateNormal];
            Category3SelectedNumber = 8;
            break;
        case 2:
            [category3 setTitle:ninethCategory forState:UIControlStateNormal];
            Category3SelectedNumber = 9;
            break;
            
        default:
            break;
    }
    
    //Set category to button based on random value

    switch (Catergory4Number) {
        case 0:
            [category4 setTitle:tenthCategory forState:UIControlStateNormal];
            Category4SelectedNumber = 10;
            break;
        case 1:
            [category4 setTitle:eleventhCategory forState:UIControlStateNormal];
            Category4SelectedNumber = 11;
            break;
        case 2:
            [category4 setTitle:twelvethCategory forState:UIControlStateNormal];
            Category4SelectedNumber = 12;
            break;
            
        default:
            break;
    }
    
    //Set category to button based on random value

    switch (Catergory5Number) {
        case 0:
            [category5 setTitle:thirteenthCategory forState:UIControlStateNormal];
            Category5SelectedNumber = 13;
            break;
        case 1:
            [category5 setTitle:fourteenthCategory forState:UIControlStateNormal];
            Category5SelectedNumber = 14;
            break;
        case 2:
            [category5 setTitle:fifeteenthCategory forState:UIControlStateNormal];
            Category5SelectedNumber = 15;
            break;
            
        default:
            break;
    }
    
    //Set category to button based on random value

    switch (Catergory6Number) {
        case 0:
            [category6 setTitle:sixteenthCategory forState:UIControlStateNormal];
            Category6SelectedNumber = 16;
            break;
        case 1:
            [category6 setTitle:seventeenthCategory forState:UIControlStateNormal];
            Category6SelectedNumber = 17;
            break;
        case 2:
            [category6 setTitle:eighteenthCategory forState:UIControlStateNormal];
            Category6SelectedNumber = 18;
            break;
            
        default:
            break;
    }
    
    //Set category to button based on random value

    switch (Catergory7Number) {
        case 0:
            [category7 setTitle:nineteenthCategory forState:UIControlStateNormal];
            Category7SelectedNumber = 19;
            break;
        case 1:
            [category7 setTitle:twentyCategory forState:UIControlStateNormal];
            Category7SelectedNumber = 20;
            break;
        case 2:
            [category7 setTitle:twentyfirstCategory forState:UIControlStateNormal];
            Category7SelectedNumber = 21;
            break;
            
        default:
            break;
    }
    
    //Set category to button based on random value

    switch (Catergory8Number) {
        case 0:
            [category8 setTitle:twentysecondCategory forState:UIControlStateNormal];
            Category8SelectedNumber = 22;
            break;
        case 1:
            [category8 setTitle:twentythirdCategory forState:UIControlStateNormal];
            Category8SelectedNumber = 23;
            break;
        case 2:
            [category8 setTitle:twentyfourthCategory forState:UIControlStateNormal];
            Category8SelectedNumber = 24;
            break;
            
        default:
            break;
    }
    
    //Set category to button based on random value

    switch (Catergory9Number) {
        case 0:
            [category9 setTitle:twentyfifthCategory forState:UIControlStateNormal];
            Category9SelectedNumber = 25;
            break;
        case 1:
            [category9 setTitle:twentysixthCategory forState:UIControlStateNormal];
            Category9SelectedNumber = 26;
            break;
        case 2:
            [category9 setTitle:twentyseventhCategory forState:UIControlStateNormal];
            Category9SelectedNumber = 27;
            break;
            
        default:
            break;
    }
    
    //Set image of board to image
    board.image = [UIImage imageNamed:@"board.jpeg"];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//this is the button that will call the resetBoard method
-(IBAction) resetButton{
    [self resetBoard];
    
}

-(void) resetBoard{
    ///clear the images stored in the UIIMageView
    
    t1.image = NULL;
    t2.image = NULL;
    t3.image = NULL;
    t4.image = NULL;
    t5.image = NULL;
    t6.image = NULL;
    t7.image = NULL;
    t8.image = NULL;
    t9.image = NULL;
    
    //Display all categories
    category1.hidden = NO;
    category2.hidden = NO;
    category3.hidden = NO;
    category4.hidden = NO;
    category5.hidden = NO;
    category6.hidden = NO;
    category7.hidden = NO;
    category8.hidden = NO;
    category9.hidden = NO;
    
    [self viewDidLoad];
    
}

-(void) checkWin{
    
	// HORIZONTAL WINS
	if((t1.image == t2.image) & (t2.image == t3.image) & (t1.image != NULL))
	{
        //Display alert
        myAlert = [[UIAlertView alloc]initWithTitle : @"Winner" message: @"Winner found !!" delegate: self cancelButtonTitle: @"Done" otherButtonTitles:nil];
        [myAlert show];
        category1.hidden = YES;
        category2.hidden = YES;
        category3.hidden = YES;
        category4.hidden = YES;
        category5.hidden = YES;
        category6.hidden = YES;
        category7.hidden = YES;
        category8.hidden = YES;
        category9.hidden = YES;
        result.hidden = YES;
       
        
		
	}
	if((t4.image == t5.image) & (t5.image == t6.image) & (t4.image != NULL))
	{
        //Display alert

        myAlert = [[UIAlertView alloc]initWithTitle : @"Winner" message: @"Winner found !!" delegate: self cancelButtonTitle: @"Done" otherButtonTitles:nil];
        [myAlert show];
        category1.hidden = YES;
        category2.hidden = YES;
        category3.hidden = YES;
        category4.hidden = YES;
        category5.hidden = YES;
        category6.hidden = YES;
        category7.hidden = YES;
        category8.hidden = YES;
        category9.hidden = YES;
        result.hidden = YES;
        
        
		
	}
	if((t7.image == t8.image) & (t8.image == t9.image) & (t7.image != NULL))
	{
        //Display alert

		myAlert = [[UIAlertView alloc]initWithTitle : @"Winner" message: @"Winner found !!" delegate: self cancelButtonTitle: @"Done" otherButtonTitles:nil];
        [myAlert show];
        category1.hidden = YES;
        category2.hidden = YES;
        category3.hidden = YES;
        category4.hidden = YES;
        category5.hidden = YES;
        category6.hidden = YES;
        category7.hidden = YES;
        category8.hidden = YES;
        category9.hidden = YES;
        result.hidden = YES;
       
        
        
	}
	// VERTICAL WINS
	if((t1.image == t4.image) & (t4.image == t7.image) & (t1.image != NULL))
	{
        //Display alert

        myAlert = [[UIAlertView alloc]initWithTitle : @"Winner" message: @"Winner found !!" delegate: self cancelButtonTitle: @"Done" otherButtonTitles:nil];
        [myAlert show];
        category1.hidden = YES;
        category2.hidden = YES;
        category3.hidden = YES;
        category4.hidden = YES;
        category5.hidden = YES;
        category6.hidden = YES;
        category7.hidden = YES;
        category8.hidden = YES;
        category9.hidden = YES;
        result.hidden = YES;
       
        
		
	}
	if((t2.image == t5.image) & (t5.image == t8.image) & (t2.image != NULL))
	{
        //Display alert

		myAlert = [[UIAlertView alloc]initWithTitle : @"Winner" message: @"Winner found !!" delegate: self cancelButtonTitle: @"Done" otherButtonTitles:nil];
        [myAlert show];
        category1.hidden = YES;
        category2.hidden = YES;
        category3.hidden = YES;
        category4.hidden = YES;
        category5.hidden = YES;
        category6.hidden = YES;
        category7.hidden = YES;
        category8.hidden = YES;
        category9.hidden = YES;
        result.hidden = YES;
       
        
    }
	if((t3.image == t6.image) & (t6.image == t9.image) & (t3.image != NULL))
	{
        //Display alert

        myAlert = [[UIAlertView alloc]initWithTitle : @"Winner" message: @"Winner found !!" delegate: self cancelButtonTitle: @"Done" otherButtonTitles:nil];
        [myAlert show];
        category1.hidden = YES;
        category2.hidden = YES;
        category3.hidden = YES;
        category4.hidden = YES;
        category5.hidden = YES;
        category6.hidden = YES;
        category7.hidden = YES;
        category8.hidden = YES;
        category9.hidden = YES;
        result.hidden = YES;
       
        
		
	}
	// DIAGONAL WINS
	if((t1.image == t5.image) & (t5.image == t9.image) & (t1.image != NULL))
	{
        //Display alert

        myAlert = [[UIAlertView alloc]initWithTitle : @"Winner" message: @"Winner found !!" delegate: self cancelButtonTitle: @"Done" otherButtonTitles:nil];
        [myAlert show];
        category1.hidden = YES;
        category2.hidden = YES;
        category3.hidden = YES;
        category4.hidden = YES;
        category5.hidden = YES;
        category6.hidden = YES;
        category7.hidden = YES;
        category8.hidden = YES;
        category9.hidden = YES;
        result.hidden = YES;
        
        
	}
	if((t3.image == t5.image) & (t5.image == t7.image) & (t3.image != NULL))
	{
        //Display alert

        myAlert = [[UIAlertView alloc]initWithTitle : @"Winner" message: @"Winner found !!" delegate: self cancelButtonTitle: @"Done" otherButtonTitles:nil];
        [myAlert show];
        category1.hidden = YES;
        category2.hidden = YES;
        category3.hidden = YES;
        category4.hidden = YES;
        category5.hidden = YES;
        category6.hidden = YES;
        category7.hidden = YES;
        category8.hidden = YES;
        category9.hidden = YES;
        result.hidden = YES;
       
        
		
	}
    
    //If game is a draw after all images are filled
    if(t1.image != NULL && t2.image != NULL && t3.image != NULL && t4.image != NULL && t5.image != NULL && t6.image != NULL && t7.image != NULL && t8.image != NULL && t9.image != NULL)
    {
        
        //Display alert

        myAlert = [[UIAlertView alloc]initWithTitle : @" No Winner" message: @"Game is a draw!" delegate: self cancelButtonTitle: @"Done" otherButtonTitles:nil];
        [myAlert show];
        category1.hidden = YES;
        category2.hidden = YES;
        category3.hidden = YES;
        category4.hidden = YES;
        category5.hidden = YES;
        category6.hidden = YES;
        category7.hidden = YES;
        category8.hidden = YES;
        category9.hidden = YES;
        result.hidden = YES;
      
        
    }
    
}





@end
