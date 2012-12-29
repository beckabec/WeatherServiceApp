//
//  PlacesManager.m
//  WeatherApp
//
//  Created by asuuser on 2/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlacesManager.h"

@implementation PlacesManager
@synthesize places = _places;

// Remember that init with no arguments is the default constructor. // This is a convention of this library of objects.
-(id)init {
    // call the superclass constructor , and make sure it suceeded .
    if(self = [super init]) {
        // do our construction work, to initialize the places list
        NSString *filepath = [[NSBundle mainBundle] pathForResource:@"Places" ofType:@"plist"];
        
        self.places = [NSArray arrayWithContentsOfFile:filepath];
        
        // NOTE that we used self . places here −− we’re using the property to // let the automatic reference counter know that we want to keep
        // this object around (via our strong property!)
    }
    return self ; }






@end
