//
//  TheaterInfo.h
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieInfo.h"

@interface TheaterInfo : NSObject
{
    NSMutableArray *theaterArray;

    NSString *theaterName;
    UIImage *theaterImage;
    NSString *theaterLocation;
}

+(TheaterInfo*)sharedTheaterInfo;

-(id)initWithTheatre:(NSString*)theatre image:(UIImage *)image location:(NSString*)location;

@property(nonatomic, strong) NSMutableArray *theaterArray;
@property(nonatomic, strong) NSString *theaterName;
@property(nonatomic, strong) UIImage *theaterImage;
@property(nonatomic, strong)  NSString *theaterLocation;

@end