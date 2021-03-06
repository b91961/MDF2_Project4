//
//  ViewController.m
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "CustomCell.h"
#import "MovieInfo.h"
#import "TheaterInfo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // create custom objects
    MovieInfo *movie1 = [[MovieInfo alloc] init];
    movie1.movieName = @"Divergent";
    movie1.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/summit/divergent/divergent-tlr1_480p.mov?width=848&height=360"];
    movie1.movieTime1 = @"12:00";
    movie1.movieTime2 = @"2:10";
    movie1.movieTime3 = @"3:20";
    movie1.posters = [UIImage imageNamed:@"divergentPoster.jpg"];
    
    MovieInfo *movie2 = [[MovieInfo alloc] init];
    movie2.movieName = @"Muppets Most Wanted";
    movie2.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/disney/muppetsmostwanted/muppetsmostwanted-tlr2_480p.mov"];
    movie2.movieTime1 = @"12:40";
    movie2.movieTime2 = @"2:00";
    movie2.movieTime3 = @"3:40";
    movie2.posters = [UIImage imageNamed:@"muppetsPoster.jpg"];
    
    MovieInfo *movie3 = [[MovieInfo alloc] init];
    movie3.movieName = @"Mr. Peabody & Sherman 3D";
    movie3.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/fox/mrpeabodyandsherman/mrpeabodyandsherman-tlr1_480p.mov"];
    movie3.movieTime1 = @"1:40";
    movie3.movieTime2 = @"3:45";
    movie3.movieTime3 = @"7:00";
    movie3.posters = [UIImage imageNamed:@"peabodyPoster.jpg"];
    
    MovieInfo *movie4 = [[MovieInfo alloc] init];
    movie4.movieName = @"300: Rise of an Empire";
    movie4.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/wb/300riseofanempire/300riseofanempire-tlr1_480p.mov"];
    movie4.movieTime1 = @"12:25";
    movie4.movieTime2 = @"3:00";
    movie4.movieTime3 = @"5:40";
    movie4.posters = [UIImage imageNamed:@"300Poster.jpg"];
    
    MovieInfo *movie5 = [[MovieInfo alloc] init];
    movie5.movieName = @"God's Not Dead";
    movie5.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/independent/godsnotdead/godsnotdead-tlr1_480p.mov"];
    movie5.movieTime1 = @"1:00";
    movie5.movieTime2 = @"4:00";
    movie5.movieTime3 = @"6:55";
    movie5.posters = [UIImage imageNamed:@"godsPoster.jpg"];
    
    MovieInfo *movie6 = [[MovieInfo alloc] init];
    movie6.movieName = @"Need for Speed 3D";
    movie6.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/dreamworks/needforspeed/needforspeed-tlr1xxzzs2_480p.mov"];
    movie6.movieTime1 = @"4:30";
    movie6.movieTime2 = @"7:35";
    movie6.movieTime3 = @"10:40";
    movie6.posters = [UIImage imageNamed:@"speedPoster.jpg"];
    
    MovieInfo *movie7 = [[MovieInfo alloc] init];
    movie7.movieName = @"The Grand Budapest Hotel";
    movie7.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/fox_searchlight/thegrandbudapesthotel/grandbudapesthotel-tlr1_480p.mov"];
    movie7.movieTime1 = @"6:30";
    movie7.movieTime2 = @"8:00";
    movie7.movieTime3 = @"10:45";
    movie7.posters = [UIImage imageNamed:@"budapestPoster.jpg"];
    
    MovieInfo *movie8 = [[MovieInfo alloc] init];
    movie8.movieName = @"Non-Stop";
    movie8.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/universal/nonstop/nonstop-tlr1_480p.mov"];
    movie8.movieTime1 = @"11:55";
    movie8.movieTime2 = @"1:20";
    movie8.movieTime3 = @"4:05";
    movie8.posters = [UIImage imageNamed:@"nonstopPoster.jpg"];
    
    MovieInfo *movie9 = [[MovieInfo alloc] init];
    movie9.movieName = @"The LEGO Movie 3D";
    movie9.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/wb/thelegomovie/lego-tlr1_480p.mov"];
    movie9.movieTime1 = @"12:15";
    movie9.movieTime2 = @"3:50";
    movie9.movieTime3 = @"5:15";
    movie9.posters = [UIImage imageNamed:@"legoPoster.jpg"];
    
    MovieInfo *movie10 = [[MovieInfo alloc] init];
    movie10.movieName = @"Tyler Perry's The Single Moms Club";
    movie10.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/lionsgate/thesinglemomsclub/thesinglemomsclub-tlr1_480p.mov"];
    movie10.movieTime1 = @"12:50";
    movie10.movieTime2 = @"2:20";
    movie10.movieTime3 = @"3:55";
    movie10.posters = [UIImage imageNamed:@"momsclubPoster.jpg"];
    
    MovieInfo *movie11 = [[MovieInfo alloc] init];
    movie11.movieName = @"Noah";
    movie11.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/paramount/noah/noah-tlr1_480p.mov?width=848&height=448"];
    movie11.movieTime1 = @"5:30";
    movie11.movieTime2 = @"7:30";
    movie11.movieTime3 = @"9:30";
    movie11.posters = [UIImage imageNamed:@"noahPoster.jpg"];
    
    MovieInfo *movie12 = [[MovieInfo alloc] init];
    movie12.movieName = @"Filth";
    movie12.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/magnolia_pictures/filth/filth-tlr1_480p.mov"];
    movie12.movieTime1 = @"1:20";
    movie12.movieTime2 = @"4:15";
    movie12.movieTime3 = @"8:50";
    movie12.posters = [UIImage imageNamed:@"filthPoster.jpg"];
    
    MovieInfo *movie13 = [[MovieInfo alloc] init];
    movie13.movieName = @"Blood Ties";
    movie13.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/independent/bloodties/bloodties-tlr1_480p.mov"];
    movie13.movieTime1 = @"11:40";
    movie13.movieTime2 = @"5:50";
    movie13.movieTime3 = @"10:30";
    movie13.posters = [UIImage imageNamed:@"bloodPoster.jpg"];
    
    MovieInfo *movie14 = [[MovieInfo alloc] init];
    movie14.movieName = @"The Amazing Spider-Man 2";
    movie14.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/sony_pictures/theamazingspiderman2/spiderman2-tlr3_480p.mov"];
    movie14.movieTime1 = @"1:30";
    movie14.movieTime2 = @"7:45";
    movie14.movieTime3 = @"9:15";
    movie14.posters = [UIImage imageNamed:@"spidermanPoster.jpg"];
    
    MovieInfo *movie15 = [[MovieInfo alloc] init];
    movie15.movieName = @"The Wolf of Wall Street";
    movie15.movieURL = [[NSURL alloc] initWithString:@"http://movietrailers.apple.com/movies/paramount/wolfofwallstreet/wolfofwallstreet-tlr1_480p.mov"];
    movie15.movieTime1 = @"1:35";
    movie15.movieTime2 = @"6:15";
    movie15.movieTime3 = @"8:20";
    movie15.posters = [UIImage imageNamed:@"wolfPoster.jpg"];
    
    MovieInfo *info = [MovieInfo sharedMovieInfo];
    if (info != nil)
    {
        movieArray = info.movieArray;
        if (movieArray != nil)
        {
            [movieArray addObject:movie1];
            [movieArray addObject:movie2];
            [movieArray addObject:movie3];
            [movieArray addObject:movie4];
            [movieArray addObject:movie5];
            [movieArray addObject:movie6];
            [movieArray addObject:movie7];
            [movieArray addObject:movie8];
            [movieArray addObject:movie9];
            [movieArray addObject:movie10];
            [movieArray addObject:movie11];
            [movieArray addObject:movie12];
            [movieArray addObject:movie13];
            [movieArray addObject:movie14];
            [movieArray addObject:movie15];
        }
    }
    
    movieInformation = [MovieInfo sharedMovieInfo];
    locMovieArray = movieInformation.movieArray;
    
    TheaterInfo *theater1 = [[TheaterInfo alloc] init];
    theater1.theaterName = @"Franklin Park 16";
    theater1.theaterImage = [UIImage imageNamed:@"franklinPark.jpg"];
    theater1.theaterLocation = @"5001 Monroe St, Toledo, OH 43623";
    
    TheaterInfo *theater2 = [[TheaterInfo alloc] init];
    theater2.theaterName = @"Levis Commons 12";
    theater2.theaterImage = [UIImage imageNamed:@"levisCommons.jpg"];
    theater2.theaterLocation = @"2005 Hollenbeck Dr, Perrysburg, OH 43551";
    
    TheaterInfo *theater3 = [[TheaterInfo alloc] init];
    theater3.theaterName = @"Fallen Timbers 14";
    theater3.theaterImage = [UIImage imageNamed:@"fallenTimbers.jpg"];
    theater3.theaterLocation = @"2300 Village Dr, Maumee, OH 43537";
    
    TheaterInfo *tInfo = [TheaterInfo sharedTheaterInfo];
    if (tInfo != nil)
    {
        theaterArray = tInfo.theaterArray;
        if (theaterArray != nil)
        {
            [theaterArray addObject:theater1];
            [theaterArray addObject:theater2];
            [theaterArray addObject:theater3];
        }
    }
    
    theaterInformation = [TheaterInfo sharedTheaterInfo];
    locTheaterArray = theaterInformation.theaterArray;
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    [myTableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return [theaterArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;
{
    UIView *theaterView = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 300, 60)];
    theaterView.backgroundColor = [UIColor lightGrayColor];
    UIImage *myTheaterImage = [[locTheaterArray objectAtIndex:section] theaterImage];
    UILabel *theaterLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    theaterLabel.font = [UIFont boldSystemFontOfSize:20];
    theaterLabel.frame = CGRectMake(125, 10, 200, 30);
    theaterLabel.text = [NSString stringWithFormat:@"%@", [[locTheaterArray objectAtIndex:section] theaterName]];
    UILabel *address = [[UILabel alloc] initWithFrame:CGRectZero];
    address.text = [NSString stringWithFormat:@"%@", [[locTheaterArray objectAtIndex:section] theaterLocation]];
    address.font = [UIFont systemFontOfSize:15];
    address.frame = CGRectMake(125, 40, 165, 40);
    address.numberOfLines = 2;
    UIImageView *theaterImageView = [[UIImageView alloc] initWithImage:myTheaterImage];
    theaterImageView.frame = CGRectMake(20, 10, 100, 80);
    [theaterView addSubview:theaterImageView];
    [theaterView addSubview:theaterLabel];
    [theaterView addSubview:address];
    return theaterView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%@", [locMovieArray description]);
    switch (section) {
        case 0: return 5; break;
        case 1: return 5; break;
        case 2: return 5; break;
        default: break;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell != nil)
    {
        int offset = 0;
        switch (indexPath.section)
        {
            case 0: offset=0; break;
            case 1: offset=5; break;
            case 2: offset=10; break;
                break;
        }
        
        currentMovie = [locMovieArray objectAtIndex:indexPath.row + offset];
        [cell refreshCellWithInfo:currentMovie.movieName secondString:currentMovie.movieTime1 thirdString:currentMovie.movieTime2 fourthString:currentMovie.movieTime3 cellImage:currentMovie.posters];
    }
    return cell;
}

// Go to Detail view.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *detailViewController = segue.destinationViewController;
    if (detailViewController != nil)
    {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [myTableView indexPathForCell:cell];
        
        int offset = 0;
        switch (indexPath.section)
        {
            case 0: offset=0; break;
            case 1: offset=5; break;
            case 2: offset=10; break;
                break;
        }
        
        // get the string from the array based on the item in the table view we clicked on.
        currentMovie = [locMovieArray objectAtIndex:indexPath.row + offset];
        
        detailViewController.currentMovie = currentMovie;
    }
}

@end
