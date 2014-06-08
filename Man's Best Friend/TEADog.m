//
//  TEADog.m
//  Man's Best Friend
//
//  Created by Tony Angelo on 6/5/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEADog.h"

@implementation TEADog

-(void) bark
{
	NSLog(@"Woof!");

}

-(void) barkANumberofTimes:(int)numberOfTimes
{
	for(int i = 1; i <= numberOfTimes; i++)
		[self bark];
}

-(void) changeBreedToWerewolf
{
	self.breed = @"Werewolf";
}

-(void)barkANumberofTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
	if(!isLoud){
		for(int bark = 1; bark <= numberOfTimes; bark++)
			NSLog(@"yip yip");
	}
	else {
		for(int bark = 1; bark <= numberOfTimes; bark++)
			NSLog(@"Woof Woof!");
	}
}


-(int)ageInDogYearsFromAge:(int)regularAge
{
	int newAge = regularAge * 7;
	
	return newAge;
}

@end
