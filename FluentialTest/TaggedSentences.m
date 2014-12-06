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
    NSMutableString * allTaggedWords = [[NSMutableString alloc] init];
    
    for (id key in inputDictionary)
    {
        id value = [inputDictionary valueForKey:key];
        for (int i = 0; i < [value count]; ++i)
        {
            NSString * stringValue = value[i];
            if ([lowerCaseString rangeOfString:stringValue].location == NSNotFound)
            {
                //[allTaggedWords appendString:stringValue];
            }
            else
            {
                [allTaggedWords appendString:stringValue];
                [allTaggedWords appendString:@" "];
            }
        }
    }
    
    return  allTaggedWords;
}

-(NSString *)notTaggedWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary
{
    NSString * lowerCaseString = [stringInput lowercaseString];
    
    for (id key in inputDictionary)
    {
        id value = [inputDictionary valueForKey:key];
        for (int i = 0; i < [value count]; ++i)
        {
            NSString * stringValue = value[i];
            if ([lowerCaseString rangeOfString:stringValue].location == NSNotFound)
            {
                // nothing
            }
            else
            {
                lowerCaseString = [lowerCaseString stringByReplacingOccurrencesOfString:stringValue
                                                                                 withString:@""];
            }
        }
    }
    
    return  lowerCaseString;
}

-(NSString *)replaceWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary
{
    NSString * lowerCaseString = [stringInput lowercaseString];
    
    for (id key in inputDictionary)
    {
        id value = [inputDictionary valueForKey:key];
        for (int i = 0; i < [value count]; ++i)
        {
            NSString * stringValue = value[i];
            NSString * stringKey = key;
            if ([lowerCaseString rangeOfString:stringValue].location == NSNotFound)
            {
                // nothing
            }
            else
            {
                lowerCaseString = [lowerCaseString stringByReplacingOccurrencesOfString:stringValue
                                                                             withString:stringKey];
            }
        }
    }

    
    return lowerCaseString;
}

@end
