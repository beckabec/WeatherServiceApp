/*
	CDYNEArrayOfForecast.h
	The implementation of properties and methods for the CDYNEArrayOfForecast array.
	Generated by SudzC.com
*/
#import "CDYNEArrayOfForecast.h"

#import "CDYNEForecast.h"
@implementation CDYNEArrayOfForecast

	+ (id) newWithNode: (CXMLNode*) node
	{
		return [[[CDYNEArrayOfForecast alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				CDYNEForecast* value = [[CDYNEForecast newWithNode: child] object];
				if(value != nil) {
					[self addObject: value];
				}
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [item serialize: @"Forecast"]];
		}
		return s;
	}
@end
