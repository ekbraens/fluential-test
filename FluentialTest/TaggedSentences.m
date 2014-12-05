//
//  TaggedSentences.m
//  FluentialTest
//
//  Created by New on 12/5/14.
//  Copyright (c) 2014 Braen. All rights reserved.
//

#import "TaggedSentences.h"

@implementation TaggedSentences

// the original sentence is here
// that was easy, made the characters lower case, returned the string
-(NSString *)originalSentence:(NSString *)stringInput
{
    [stringInput lowercaseString];
    return stringInput;
}

-(NSString *)taggedWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary
{
    NSString * lowerCaseString = [stringInput lowercaseString];
    NSArray * dictionaryStrings = [inputDictionary allValues];
    
    NSString * allTaggedWords = @"";
    
    for (int i = 0; i < [dictionaryStrings count]; ++i) {
        if ([lowerCaseString containsString:dictionaryStrings[i]])
        {
            [allTaggedWords stringByAppendingString:dictionaryStrings[i]];
        }
    }
    
    return allTaggedWords;
}

-(NSString *)notTaggedWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary
{
    NSString * lowerCaseString = [stringInput lowercaseString];
    NSArray * dictionaryStrings = [inputDictionary allValues];
    
    NSString * allNotTaggedWords = @"";
    
    for (int i = 0; i < [dictionaryStrings count]; ++i) {
        if (![lowerCaseString containsString:dictionaryStrings[i]])
        {
            [allNotTaggedWords stringByAppendingString:dictionaryStrings[i]];
        }
    }
    
    return allNotTaggedWords;
}

-(NSString *)replaceWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary
{
    NSString * lowerCaseString = [stringInput lowercaseString];
    
    // ran out of time to implement this method
    //would have looked like about methods,
    // but whenever i ran into a string that matched from the dictionary
    // i would somehow take out that part of the string and replace it with the key instead
    // havent thought about how...
    // hm
    
    return lowerCaseString;
}

@end
