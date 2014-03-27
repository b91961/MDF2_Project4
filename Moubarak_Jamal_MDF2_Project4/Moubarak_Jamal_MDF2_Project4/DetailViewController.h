//
//  DetailViewController.h
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieInfo.h"

@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *secondaryLabel;
    IBOutlet UILabel *information2Label;
    IBOutlet UILabel *information3Label;
    IBOutlet UIImageView *imageLabel;
}

@property (nonatomic, strong)MovieInfo *currentMovie;

-(IBAction)onClose:(UIButton*)button;

@end