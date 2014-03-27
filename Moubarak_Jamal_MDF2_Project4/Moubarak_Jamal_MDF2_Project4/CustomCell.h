//
//  CustomCell.h
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
{
    IBOutlet UILabel *movieLabel;
    IBOutlet UILabel *time1Label;
    IBOutlet UILabel *time2Label;
    IBOutlet UILabel *time3Label;
    
    IBOutlet UIImageView *myImageView;
}

-(void)refreshCellWithInfo:(NSString*)firstString secondString:(NSString*) secondString thirdString:(NSString*) thirdString fourthString:(NSString*) fourthString cellImage:(UIImage*)cellImage;

@end
