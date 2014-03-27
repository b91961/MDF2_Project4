//
//  TheaterInfo.m
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "TheaterInfo.h"

@implementation TheaterInfo

@synthesize theaterArray, theaterName, theaterImage, theaterLocation;

static TheaterInfo* _sharedTheaterInfo = nil;

+(TheaterInfo*)sharedTheaterInfo
{
    if (!_sharedTheaterInfo)
    {
        _sharedTheaterInfo = [[self alloc] init];
    }
    return _sharedTheaterInfo;
}

-(id)init
{
    if ((self = [super init]))
    {
        theaterArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(id)initWithTheatre:(NSString*)theater image:(UIImage *)image location:(NSString*)location
{
    if ((self = [super init]))
    {
        theaterName = theater;
        theaterImage = image;
        theaterLocation = location;
    }
    return self;
}

@end