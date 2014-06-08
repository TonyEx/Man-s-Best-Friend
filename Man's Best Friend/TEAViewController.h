//
//  TEAViewController.h
//  Man's Best Friend
//
//  Created by Tony Angelo on 6/5/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TEAViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;

@property(strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currDog;

- (IBAction)newDogBarButton:(UIBarButtonItem *)sender;

-(void) printHelloWorld;

@end
