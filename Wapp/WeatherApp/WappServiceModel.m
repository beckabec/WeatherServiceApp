//
//  WappServiceModel.m
//  WeatherApp
//
//  Created by asuuser on 2/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WappServiceModel.h"

@implementation WappServiceModel

+ (WappServiceModel *)ServiceSingleton
{
    static WappServiceModel *serviceSingleton;
    
    @synchronized(self)
    {
        if(!serviceSingleton)
        {
            serviceSingleton = [[WappServiceModel alloc] initAsSingle];
            
            return serviceSingleton;
        }
        
    }
    
    return serviceSingleton;
}

-(id) initAsSingle
{
    if(self = [super init])
    {
        gotZip = false;
        message = NULL;
        weather_desc = [[NSMutableArray alloc] initWithObjects:nil];
        weather_imgurl = [[NSMutableArray alloc] initWithObjects:nil];
        
        return self; 
    }
    else
    {
        return nil;
    }
    
}

- (void) SetZip:(NSString*)zip
{
    
    //return [nsstring toInt]
    
}

- (bool) FoundCity
{
    
    return true;
}

- (NSString*) GetMessage 
{
    
    return @"Test Message";
}

- (NSString*) GetCityName
{
    
    return @"testCityName";
}

- (NSString*) GetStateName
{
    
    return @"testStateName";
}
 
/*
//these methods ONLY work for current day!
*/
- (uint) GetHumidity
{
    
    return 0;
}

- (NSString*) GetPressure
{
    
    return @"Nil";
}

-(NSString*) GetWind
{
    return @"Nil";
}

-(NSString*) GetWindChill
{
    return @"Nil";
}

-(NSString*) GetVisibility
{
    return @"Nil";
}

-(NSString*) GetRemarks
{
    return @"Nil";
}

/*
//the methods below here work for current day (if 0 is passed) as well as any following day up to the 6th following day. (7 day forecaste)
*/
 
- (uint) GetWeather_Id : (uint) day
{
    

    return 1010;
}

- (uint) GetWeather_Hi : (uint)day 
{

    return 9999;
}

- (uint) GetWeather_Lo : (uint) day
{

    return 0;
}

- (uint) GetWeather_Precip_Chance : (uint)day IsDay : (bool)daytime
{
    
    return 100;
}
    
- (NSString*) GetWeather_Desc : (uint) wid
{
    
    return @"testWeather_Desc";
}

- (NSString*) GetWeather_Img : (uint) wid
{
    
    return @"testWeather_IMGURL";
}

@end
