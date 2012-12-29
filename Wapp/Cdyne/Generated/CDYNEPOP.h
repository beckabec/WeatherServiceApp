/*
	CDYNEPOP.h
	The interface definition of properties and methods for the CDYNEPOP object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface CDYNEPOP : SoapObject
{
	NSString* _Nighttime;
	NSString* _Daytime;
	
}
		
	@property (retain, nonatomic) NSString* Nighttime;
	@property (retain, nonatomic) NSString* Daytime;

	+ (CDYNEPOP*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
