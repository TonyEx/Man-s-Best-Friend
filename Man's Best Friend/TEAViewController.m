//
//  TEAViewController.m
//  Man's Best Friend
//
//  Created by Tony Angelo on 6/5/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEAViewController.h"
#import "TEADog.h"
#import "TEAPuppy.h"

@interface TEAViewController ()

@end

@implementation TEAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	TEADog *myDog = [[TEADog alloc] init];
	NSLog(@"My dog is named %@ and its age is %i, and it's breed is %@.", myDog.name, myDog.age, myDog.breed);
	
	myDog.name = @"Nanavisitor";
	myDog.breed = @"St. Bernard";
	myDog.age = 1;
	myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
	
	self.myImageView.image = myDog.image;
	self.nameLabel.text = myDog.name;
	self.breedLabel.text = myDog.breed;
	
	self.currDog = 0;
	
	
	TEADog *secondDog = [[TEADog alloc] init];
	secondDog.name = @"Wishbone";
	secondDog.breed = @"Jack Russel Terrier";
	secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
	
	TEADog *thirdDog = [[TEADog alloc] init];
	thirdDog.name = @"Lassie";
	thirdDog.breed = @"Collie";
	thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
	
	TEADog *fourthDog = [[TEADog alloc] init];
	fourthDog.name = @"Angel";
	fourthDog.breed = @"Greyhound";
	fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
	
	self.myDogs = [[NSMutableArray alloc] init];
	
	[self.myDogs addObject:myDog];
	[self.myDogs addObject:secondDog];
	[self.myDogs addObject:thirdDog];
	[self.myDogs addObject:fourthDog];
	NSLog(@"%@", self.myDogs);
	
	TEAPuppy *littlePuppy = [[TEAPuppy alloc] init];
	[littlePuppy givePuppyEyes];
	[littlePuppy bark];
	littlePuppy.name = @"Bo O";
	littlePuppy.breed = @"Portugese Water Dog";
	littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
	 
	[self.myDogs addObject:littlePuppy];
	 
//	[myDog givePuppyEyes];
	
//	NSLog(@"My dog is named %@ and its' age is %i, and it's breed is %@.", myDog.name, myDog.age, myDog.breed);
	
//	[myDog bark];
//	[myDog barkANumberofTimes:3];
//	[myDog changeBreedToWerewolf];
//	NSLog(@"My dog is named %@ and its' age is %i, and it's breed is %@.", myDog.name, myDog.age, myDog.breed);
	
//	[myDog bark];
	
//	[self printHelloWorld];
	
//	[myDog barkANumberofTimes:2 loudly:false];
	
//	int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
//	NSLog(@"Age in dog years %i", dogYears);
	
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDogBarButton:(UIBarButtonItem *)sender {
	
	int numberOfDogs = [self.myDogs count];
	int randomIndex = self.currDog;
	TEADog *randomDog;
	
	while(randomIndex == self.currDog) {
		randomIndex = arc4random() % numberOfDogs;
	}
	
	self.currDog = randomIndex;
	randomDog = [self.myDogs objectAtIndex:randomIndex];
	
//	self.myImageView.image = randomDog.image;
//	self.breedLabel.text = randomDog.breed;
//	self.nameLabel.text = randomDog.name;
	
	[UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
		self.myImageView.image=randomDog.image;
		self.breedLabel.text = randomDog.breed;
		self.nameLabel.text = randomDog.name;
	} completion:^(BOOL finished) {
		
	}];
	sender.title = @"And another";
}

-(void) printHelloWorld
{
	NSLog(@"Hello World.");
}

@end
