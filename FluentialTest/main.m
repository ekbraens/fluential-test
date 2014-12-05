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

        NSArray * names = [[NSArray alloc] initWithObjects:@"Jack", @"Jill", nil];
        NSArray * num = [[NSArray alloc] initWithObjects:@"one", @"two", @"three", @"four", @"five", @"six", @"seven", @"eight", @"nine", nil];
        
        NSMutableDictionary * fullDictionary = [[NSMutableDictionary alloc] init];
        
        [fullDictionary setObject:names forKey:@"NAME"];
        [fullDictionary setObject:num forKey:@"NUM"];
        
        
        
        TaggedSentences * taggedSentence = [[TaggedSentences alloc] init];
        
        NSString * testSting = @"Jack is eight years old today";
        
        NSString * containedWithin = [taggedSentence taggedWords:testSting insideDictionary:fullDictionary];
        NSLog(@"%@", containedWithin);
    }
    return 0;
}
