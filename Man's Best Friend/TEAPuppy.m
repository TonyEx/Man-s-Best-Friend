//
//  TEAPuppy.m
//  Man's Best Friend
//
//  Created by Tony Angelo on 6/8/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEAPuppy.h"

@implementation TEAPuppy


-(void)givePuppyEyes
{
	
	NSLog(@":(");
}

-(void)bark
{
	[super bark];
	
	NSLog(@"Whimper whimper");
	[self givePuppyEyes];
}

@end
