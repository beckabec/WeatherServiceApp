/*
	CDYNEWeatherDescription.h
	The implementation of properties and methods for the CDYNEWeatherDescription object.
	Generated by SudzC.com
*/
#import "CDYNEWeatherDescription.h"

@implementation CDYNEWeatherDescription
	@synthesize WeatherID = _WeatherID;
	@synthesize Description = _Description;
	@synthesize PictureURL = _PictureURL;

	- (id) init
	{
		if(self = [super init])
		{
			self.Description = nil;
			self.PictureURL = nil;

		}
		return self;
	}

	+ (CDYNEWeatherDescription*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (CDYNEWeatherDescription*)[[[CDYNEWeatherDescription alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.WeatherID = (short)[[Soap getNodeValue: node withName: @"WeatherID"] intValue];
			self.Description = [Soap getNodeValue: node withName: @"Description"];
			self.PictureURL = [Soap getNodeValue: node withName: @"PictureURL"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"WeatherDescription"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		[s appendFormat: @"<WeatherID>%@</WeatherID>", [NSString stringWithFormat: @"%i", self.WeatherID]];
		if (self.Description != nil) [s appendFormat: @"<Description>%@</Description>", [[self.Description stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.PictureURL != nil) [s appendFormat: @"<PictureURL>%@</PictureURL>", [[self.PictureURL stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[CDYNEWeatherDescription class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.Description != nil) { [self.Description release]; }
		if(self.PictureURL != nil) { [self.PictureURL release]; }
		[super dealloc];
	}

@end
