//
//  Categories.h
//  QuizTacToe
//
//  Created by Hrushikesh Apte on 6/1/14.
//  Copyright (c) 2014 hrushikeshapte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Categories : NSObject

{
    //Array for categories
    NSArray *allCategories;
}

+ (Categories *) sharedCategories;

- (NSInteger) numberOfCategories;
- (NSArray *) categoryNames;


@end
