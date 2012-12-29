//
//  WappViewController.h
//  WeatherApp
//
//  Created by asuuser on 2/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDYNEWeather.h"

@interface WappViewController : UIViewController
@property (nonatomic, retain) CDYNEWeather *service;

- (IBAction)doButtonThing;

@end

