//
//  PlayerViewController.m
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "MovieViewController.h"

@interface MovieViewController ()

@end

@implementation MovieViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    movieInformation = [MovieInfo sharedMovieInfo];
    locMovieArray = movieInformation.movieArray;
    
    //loop through data from custom object
    for (int i=0; i< [locMovieArray count]; i++)
    {
        title = [[locMovieArray objectAtIndex:i]movieName];
        url = [[locMovieArray objectAtIndex:i]movieURL];
        
        self->name.text = title;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)onPlay:(UIButton*)button
{
    NSURL *myURL = [NSURL URLWithString:url];
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:myURL];
    
    if (moviePlayer != nil)
    {
        [movie addSubview:moviePlayer.view];
        moviePlayer.view.frame = CGRectMake(0.0f, 0.0f, movie.frame.size.width, movie.frame.size.height);
        [moviePlayer prepareToPlay];
        moviePlayer.fullscreen = false;
        [moviePlayer play];
    }
}

-(IBAction)onStop:(UIButton*)button
{
    [moviePlayer stop];
}

@end
