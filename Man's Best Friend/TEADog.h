//
//  TEADog.h
//  Man's Best Friend
//
//  Created by Tony Angelo on 6/5/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TEADog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;

-(void) bark;
-(void) barkANumberofTimes:(int)numberOfTimes;
-(void) changeBreedToWerewolf;
-(void)barkANumberofTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;

@end
