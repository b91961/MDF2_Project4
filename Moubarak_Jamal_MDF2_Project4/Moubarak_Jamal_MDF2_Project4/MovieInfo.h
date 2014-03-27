//
//  MovieInfo.h
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieInfo : NSObject
{
    NSString *movieName;
    NSURL *movieURL;
    NSString *movieTime1;
    NSString *movieTime2;
    NSString *movieTime3;
    UIImage *posters;
}

-(id)initWithMovie:(NSString*)name trailer:(NSURL *)trailer showtime1:(NSString*)showtime1 showtime2:(NSString*)showtime2 showtime3:(NSString*)showtime3 movieImages:(UIImage*)movieImages;

@property(nonatomic, strong) NSString *movieName;
@property(nonatomic, strong) NSURL *movieURL;
@property(nonatomic, strong) NSString *movieTime1;
@property(nonatomic, strong) NSString *movieTime2;
@property(nonatomic, strong) NSString *movieTime3;
@property(nonatomic, strong) UIImage *posters;

@end