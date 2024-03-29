/*
	CDYNEPOP.h
	The implementation of properties and methods for the CDYNEPOP object.
	Generated by SudzC.com
*/
#import "CDYNEPOP.h"

@implementation CDYNEPOP
	@synthesize Nighttime = _Nighttime;
	@synthesize Daytime = _Daytime;

	- (id) init
	{
		if(self = [super init])
		{
			self.Nighttime = nil;
			self.Daytime = nil;

		}
		return self;
	}

	+ (CDYNEPOP*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (CDYNEPOP*)[[[CDYNEPOP alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.Nighttime = [Soap getNodeValue: node withName: @"Nighttime"];
			self.Daytime = [Soap getNodeValue: node withName: @"Daytime"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"POP"];
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
		if (self.Nighttime != nil) [s appendFormat: @"<Nighttime>%@</Nighttime>", [[self.Nighttime stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.Daytime != nil) [s appendFormat: @"<Daytime>%@</Daytime>", [[self.Daytime stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[CDYNEPOP class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.Nighttime != nil) { [self.Nighttime release]; }
		if(self.Daytime != nil) { [self.Daytime release]; }
		[super dealloc];
	}

@end
