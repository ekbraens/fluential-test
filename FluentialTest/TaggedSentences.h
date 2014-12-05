//
//  TaggedSentences.h
//  FluentialTest
//
//  Created by New on 12/5/14.
//  Copyright (c) 2014 Braen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaggedSentences : NSObject

-(NSString *)taggedWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary;

-(NSString *)notTaggedWords:(NSString *)stringInput insideDictionary:(NSDictionary *)inputDictionary;

-(NSString *)originalSentence:(NSString *)stringInput;

@end
