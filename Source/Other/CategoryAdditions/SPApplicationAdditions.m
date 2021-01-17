//
//  SPApplicationAdditions.m
//  Sequel Ace
//
//  Created by James on 12/12/2020.
//  Copyright © 2020 Sequel-Ace. All rights reserved.
//

#import "SPApplicationAdditions.h"
#import "SPFunctions.h"

@import AppKit;

@implementation NSApplication (SPApplicationAdditions)

+ (void)load
{
    SP_swizzleInstanceMethod(self, @selector(reportException:), @selector(SA_reportException:));
}

- (void)SA_reportException:(NSException *)exception{

    SPLog(@"We could do what we want here .. write stuff to files..");

    [self SA_reportException:exception];
}

@end

