//
//  main.m
//  FluentialTest
//
//  Created by New on 12/5/14.
//  Copyright (c) 2014 Braen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TaggedSentences.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // main objects we will be working with
        TaggedSentences * taggedSentence = [[TaggedSentences alloc] init];
        NSArray * names = [[NSArray alloc] initWithObjects:@"jack", @"jill", nil];
        NSArray * num = [[NSArray alloc] initWithObjects:@"one", @"two", @"three", @"four", @"five", @"six", @"seven", @"eight", @"nine", nil];
        NSMutableDictionary * fullDictionary = [[NSMutableDictionary alloc] init];
        
        // adding the arrays into the dictionary, these are the words that we are looking for
        [fullDictionary setObject:names forKey:@"NAME"];
        [fullDictionary setObject:num forKey:@"NUM"];
        
        
        // various string for testing
        //NSString * testSting = @"is Jack six years old today";
        //NSString * testSting = @"IS JACK SIX YEARS OLD TODAY";
        //NSString * testSting = @"is jack six years jack old today jack jack six";
        NSString * testSting = @"jack and jill are one and nine";
        
        // test cases, one for each method inside the TaggedSentences class
        NSString * originalSting = [taggedSentence originalSentence:testSting];
        NSLog(@"%@", originalSting);
        
        NSString * containedWithin = [taggedSentence taggedWords:testSting insideDictionary:fullDictionary];
        NSLog(@"%@", containedWithin);
        
        NSString * notContainedWithin = [taggedSentence notTaggedWords:testSting insideDictionary:fullDictionary];
        NSLog(@"%@", notContainedWithin);
        
        NSString * replaceContainedWithin = [taggedSentence replaceWords:testSting insideDictionary:fullDictionary];
        NSLog(@"%@", replaceContainedWithin);
    }
    return 0;
}
