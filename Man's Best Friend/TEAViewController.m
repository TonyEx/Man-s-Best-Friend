//
//  TEAViewController.m
//  Man's Best Friend
//
//  Created by Tony Angelo on 6/5/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEAViewController.h"
#import "TEADog.h"

@interface TEAViewController ()

@end

@implementation TEAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	TEADog *myDog = [[TEADog alloc] init];
	NSLog(@"My dog is named %@ and its age is %i, and it's breed is %@.", myDog.name, myDog.age, myDog.breed);
	
	myDog.name = @"Toro";
	myDog.breed = @"Black Labrador";
	myDog.age = 3;
	
	NSLog(@"My dog is named %@ and its' age is %i, and it's breed is %@.", myDog.name, myDog.age, myDog.breed);
	
//	[myDog bark];
//	[myDog barkANumberofTimes:3];
//	[myDog changeBreedToWerewolf];
//	NSLog(@"My dog is named %@ and its' age is %i, and it's breed is %@.", myDog.name, myDog.age, myDog.breed);
	
	[myDog bark];
	
	[self printHelloWorld];
	
	[myDog barkANumberofTimes:2 loudly:false];
	
	int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
	NSLog(@"Age in dog years %i", dogYears);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) printHelloWorld
{
	NSLog(@"Hello World.");
}

@end
