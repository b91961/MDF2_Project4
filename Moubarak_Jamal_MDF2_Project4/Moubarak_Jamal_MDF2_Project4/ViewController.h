//
//  ViewController.h
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieInfo.h"
#import "TheaterInfo.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    MovieInfo *movieInformation;
    MovieInfo *currentMovie;
    TheaterInfo *theaterInformation;
    TheaterInfo *currentTheater;
    
    IBOutlet UITableView *myTableView;
    NSMutableArray *movieArray;
    NSMutableArray *locMovieArray;
    NSMutableArray *theaterArray;
    NSMutableArray *locTheaterArray;
}

@end
