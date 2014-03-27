//
//  TheaterInfo.m
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "TheaterInfo.h"

@implementation TheaterInfo

@synthesize theaterName, theaterImage, theaterLocation;

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