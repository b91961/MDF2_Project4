//
//  DetailViewController.m
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "DetailViewController.h"
#import "MovieViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    titleLabel.text = self.currentMovie.movieName;
    secondaryLabel.text = self.currentMovie.movieTime1;
    information2Label.text = self.currentMovie.movieTime2;
    information3Label.text = self.currentMovie.movieTime3;
    imageLabel.image = self.currentMovie.posters;
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

// Go to Detail view.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"movieView"])
    {
        MovieViewController *movieViewController = segue.destinationViewController;
        if (movieViewController != nil)
        {
            movieViewController.playMovie = _currentMovie;
        }
    }
}

-(IBAction)onClose:(UIButton*)button
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
