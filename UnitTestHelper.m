//
//  UnitTestHelper.m
//
//
//  Created by Yongjun Yoo on 5/3/16.
//  Copyright © 2016 Yongjun Yoo. All rights reserved.
//

#import "UnitTestHelper.h"

@implementation UnitTestHelper

+ (NSDictionary *)dictionaryFromJSON:(NSString *)fileName;
{
    NSString *filePath = [[NSBundle bundleForClass:[self class]] pathForResource:fileName ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSError* parseError;
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data    options:NSJSONReadingAllowFragments error:&parseError];

    if (parseError) {
        NSLog(@"Error: Something wrong with JSON parsing in Unit Test set up.");
    } else {
        NSLog(@"successfully parsed: %@", fileName);
    }
    return dictionary;
}

@end
