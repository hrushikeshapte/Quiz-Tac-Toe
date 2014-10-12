//
//  Categories.m
//  QuizTacToe
//
//  Created by Hrushikesh Apte on 6/1/14.
//  Copyright (c) 2014 hrushikeshapte. All rights reserved.
//

#import "Categories.h"

@implementation Categories

- (id) init
{
    if (self = [super init]) {
        allCategories = [[NSArray alloc]
                     initWithObjects:@"Sports",
                         @"History",
                         @"Music",
                         @"Geography",
                         @"Math",
                         @"Science",
                         @"TV Shows",
                         @"Games",
                         @"Biology",
                         @"Logos",
                         @"G.K.",
                         @"Soccer",
                         @"Capitals",
                         @"Flags",
                         @"Cricket",
                         @"Animals",
                         @"Food",
                         @"Cars",
                         @"Formula1",
                         @"NBA",
                         @"People",
                         @"Birds",
                         @"Books",
                         @"Movies",
                         @"California",
                         @"FRIENDS",
                         @"Cocktails",

                     nil];
    }
    return self;
}

static Categories *theOneInstance;

+ (Categories *) sharedCategories
{
    @synchronized (self)
    {
        if (! theOneInstance)
        {
            theOneInstance = [[Categories alloc] init];
        }
    }
    return theOneInstance;
}

- (NSInteger) numberOfCategories
{
    return [allCategories count];
}

- (NSArray *) categoryNames
{
    return allCategories;
}


@end
