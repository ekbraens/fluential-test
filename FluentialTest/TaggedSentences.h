//
//  TaggedSentences.h
//  FluentialTest
//
//  Created by New on 12/5/14.
//  Copyright (c) 2014 Braen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaggedSentences : NSObject

// stringInput is for the string you want to compare against your list of objects
// inputDictionary is for your list of objects, in NSDictionary form
// the return string should be all the objects inside inputDictionary that appear in stringInput
-(NSString *)taggedWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary;

// stringInput is for the string you want to compare against your list of objects
// inputDictionary is for your list of objects, in NSDictionary form
// notTaggedWords:insideDictionary: will take out all the words from inputDictionary inside stringInput
// the return string will be all the words in stringInput that do not appear in inputDictionary
-(NSString *)notTaggedWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary;

// stringInput is the sentence that we want to test
// it will do nothing to the sentence, returning it as is
-(NSString *)originalSentence:(NSString *)stringInput;

// stringInput is for the string you want to compare against your list of objects
// inputDictionary is for your list of objects, in NSDictionary form
// replaceWords:insideDictionary: will find any words from inputDictionary in the stringInput
// replace the words with the KEY corresponding to word's value as defined by inputDictionary
-(NSString *)replaceWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary;

@end
