//
//  WappServiceModel.h
//  WeatherApp
//
//  Singleton Model - Holds the weather service and information used with the service.
/*
 *  Basic Use: (# indicates need to implement before it works) 
 *  #Set ZIP first. Service will send soap request, take the response and parse values into arrays. (7 indices each. One for City names and State names (2d array). one for temp his and lows, weather ID and precip chance (day and night) (2d array of uints). One for weather description and image (2d array).
 *   #Getters Returns request value from the relevant array 
 *   Treat any return value of -1 or empty string as a 'Do Not Display' output.
*/
//
//  Created by asuuser on 2/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDYNEWeather.h"

@interface WappServiceModel : NSObject
{
    @private
    bool gotZip, foundCity;
    NSString* message;
    int day_info[7][7];
    NSMutableArray* weather_desc;
    NSMutableArray* weather_imgurl;
}

-(id) initAsSingle;


+ (WappServiceModel*) ServiceSingleton; //use both the Forecaste and the Current Weather soap requests.

- (bool) FoundCity;         //returns true if the city was found. False otherwise.
- (NSString*) GetMessage;   //returns any message received in response. Use especially if an error occured.

- (void) SetZip:(NSString*)zip;
- (NSString*) GetCityName;
- (NSString*) GetStateName;

//these methods ONLY work for current day!

-(uint) GetHumidity;
-(NSString*) GetPressure;
-(NSString*) GetWind;
-(NSString*) GetWindChill;  //nothing showed up when I did a chandler search
-(NSString*) GetVisibility; //nothing showed up when I did a chandler search
-(NSString*) GetRemarks;    //nothing showed up when I did a chandler search


//the methods below here work for current day (if 0 is passed) as well as any following day up to the 6th following day. (7 day forecaste)

- (uint) GetWeather_Id : (uint) day; //returns the weather ID as used by the weather service. Use values 0 - 6 ONLY. I.E today is 0, Tommorow would be 1, etc.
- (uint) GetWeather_Hi : (uint)day; //Gets Hi temp for the day.
- (uint) GetWeather_Lo : (uint) day;
- (uint) GetWeather_Precip_Chance : (uint)day IsDay : (bool)daytime; //Returns chance of precipitation

- (NSString*) GetWeather_Desc : (uint) wid; //pass weather ID to get weather description
- (NSString*) GetWeather_Img : (uint) wid; //pass weather ID to get weather IMG url.


@end
