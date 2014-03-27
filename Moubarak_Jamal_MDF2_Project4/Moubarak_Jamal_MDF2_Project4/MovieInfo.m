//
//  MovieInfo.m
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "MovieInfo.h"

@implementation MovieInfo

@synthesize movieArray, movieName, movieURL, movieTime1, movieTime2, movieTime3, posters;

static MovieInfo* _sharedMovieInfo = nil;

+(MovieInfo*)sharedMovieInfo
{
    if (!_sharedMovieInfo)
    {
        _sharedMovieInfo = [[self alloc] init];
    }
    return _sharedMovieInfo;
}

-(id)init
{
    if ((self = [super init]))
    {
        movieArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(id)initWithMovie:(NSString*)name video:(NSURL *)video showtime1:(NSString*)showtime1 showtime2:(NSString*)showtime2 showtime3:(NSString*)showtime3 movieImages:(UIImage*)movieImages
{
    if ((self = [super init]))
    {
        movieName = name;
        movieURL = video;
        movieTime1 = showtime1;
        movieTime2 = showtime2;
        movieTime3 = showtime3;
        posters = movieImages;
    }
    return self;
}

@end
