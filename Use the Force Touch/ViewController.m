//
//  ViewController.m
//  Use the Force Touch
//
//  Created by Nathan Gray on 9/29/15.
//  Copyright © 2015 Mellmo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableSet *levels;
@property (nonatomic, strong) NSMutableSet *radiusLevels;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.slider.value = 0;
	self.levels = [NSMutableSet set];
	self.radiusLevels = [NSMutableSet set];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	[self updateWithTouch:touch];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
	[self updateWithTouch:nil];
}

- (void)updateWithTouch:(UITouch *)touch
{
	[self.levels addObject:@(touch.force)];
	[self.radiusLevels addObject:@(touch.majorRadius)];
	
	self.radiusLabel.text = [NSString stringWithFormat:@"Radius: %f (%lu levels)", [touch majorRadius], (unsigned long)[self.radiusLevels count]];
	self.forceLabel.text = [NSString stringWithFormat:@"Force: %f (%lu levels)", [touch force], (unsigned long)[self.levels count]];
	if ([touch maximumPossibleForce] > 0) {
		self.slider.value = [touch force]/[touch maximumPossibleForce];
	} else {
		self.slider.value = 0;
	}
}



@end
