//
//  WappViewController.m
//  WeatherApp
//
//  Created by asuuser on 2/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WappViewController.h"

@implementation WappViewController
@synthesize service = _service;

- (IBAction)doButtonThing
{
    NSLog(@"Hello World");
	// Returns CDYNEForecastReturn*. Allows you to get your City Forecast Over the Next 7 Days, which is updated hourly. U.S. Only
	[self.service GetCityForecastByZIP:self action:@selector(GetCityForecastByZIPHandler:) ZIP: @""];
    
	// Returns CDYNEWeatherReturn*. Allows you to get your City's Weather, which is updated hourly. U.S. Only
	[self.service GetCityWeatherByZIP:self action:@selector(GetCityWeatherByZIPHandler:) ZIP: @""];
    
	// Returns NSMutableArray*. Gets Information for each WeatherID
	[self.service GetWeatherInformation:self action:@selector(GetWeatherInformationHandler:)];
}



// Handle the response from GetCityForecastByZIP.

- (void) GetCityForecastByZIPHandler: (id) value {
    
	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}
    
	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
    
    
	// Do something with the CDYNEForecastReturn* result
    CDYNEForecastReturn* result = (CDYNEForecastReturn*)value;
	NSLog(@"GetCityForecastByZIP returned the value: %@", result);
    
}


// Handle the response from GetCityWeatherByZIP.

- (void) GetCityWeatherByZIPHandler: (id) value {
    
	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}
    
	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
    
    
	// Do something with the CDYNEWeatherReturn* result
    CDYNEWeatherReturn* result = (CDYNEWeatherReturn*)value;
	NSLog(@"GetCityWeatherByZIP returned the value: %@", result);
    
}


// Handle the response from GetWeatherInformation.

- (void) GetWeatherInformationHandler: (id) value {
    
	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}
    
	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
    
    
	// Do something with the NSMutableArray* result
    NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetWeatherInformation returned the value: %@", result);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

	self.service.logging = YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
