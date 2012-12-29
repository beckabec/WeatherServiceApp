/*
	CDYNEWeather.h
	The interface definition of classes and methods for the Weather web service.
	Generated by SudzC.com
*/
				
#import "Soap.h"
	
/* Add class references */
				
#import "CDYNEWeatherDescription.h"
#import "CDYNEtemp.h"
#import "CDYNEPOP.h"
#import "CDYNEWeatherReturn.h"
#import "CDYNEArrayOfWeatherDescription.h"
#import "CDYNEForecastReturn.h"
#import "CDYNEArrayOfForecast.h"
#import "CDYNEForecast.h"

/* Interface for the service */
				
@interface CDYNEWeather : SoapService
		
	/* Returns NSMutableArray*. Gets Information for each WeatherID */
	- (SoapRequest*) GetWeatherInformation: (id <SoapDelegate>) handler;
	- (SoapRequest*) GetWeatherInformation: (id) target action: (SEL) action;

	/* Returns CDYNEForecastReturn*. Allows you to get your City Forecast Over the Next 7 Days, which is updated hourly. U.S. Only */
	- (SoapRequest*) GetCityForecastByZIP: (id <SoapDelegate>) handler ZIP: (NSString*) ZIP;
	- (SoapRequest*) GetCityForecastByZIP: (id) target action: (SEL) action ZIP: (NSString*) ZIP;

	/* Returns CDYNEWeatherReturn*. Allows you to get your City's Weather, which is updated hourly. U.S. Only */
	- (SoapRequest*) GetCityWeatherByZIP: (id <SoapDelegate>) handler ZIP: (NSString*) ZIP;
	- (SoapRequest*) GetCityWeatherByZIP: (id) target action: (SEL) action ZIP: (NSString*) ZIP;

		
	+ (CDYNEWeather*) service;
	+ (CDYNEWeather*) serviceWithUsername: (NSString*) username andPassword: (NSString*) password;
@end
	