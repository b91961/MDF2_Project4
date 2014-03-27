//
//  PlayerViewController.h
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieInfo.h"
#import <MediaPlayer/MediaPlayer.h>

@interface MovieViewController : UIViewController
{
    MovieInfo *movieInformation;
    NSMutableArray *movieArray;
    NSMutableArray *locMovieArray;
    
    IBOutlet UILabel *name;
    IBOutlet UIView *movie;
    MPMoviePlayerController *moviePlayer;
    NSString *url;
    NSString *title;
}

@property (strong, nonatomic) MovieInfo *playMovie;

-(IBAction)onPlay:(UIButton*)button;
-(IBAction)onStop:(UIButton*)button;
-(IBAction)onClick:(UIButton*)button;

@end