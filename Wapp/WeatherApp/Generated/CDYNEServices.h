/*
	CDYNEServices.h
	Creates a list of the services available with the CDYNE prefix.
	Generated by SudzC.com
*/
#import "CDYNEWeather.h"

@interface CDYNEServices : NSObject {
	BOOL logging;
	NSString* server;
	NSString* defaultServer;
CDYNEWeather* weather;

}

-(id)initWithServer:(NSString*)serverName;
-(void)updateService:(SoapService*)service;
-(void)updateServices;
+(CDYNEServices*)service;
+(CDYNEServices*)serviceWithServer:(NSString*)serverName;

@property (nonatomic) BOOL logging;
@property (nonatomic, retain) NSString* server;
@property (nonatomic, retain) NSString* defaultServer;

@property (nonatomic, retain, readonly) CDYNEWeather* weather;

@end
			