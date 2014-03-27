//
//  CustomCell.m
//  Moubarak_Jamal_MDF2_Project4
//
//  Created by Jamal Moubarak on 3/26/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)refreshCellWithInfo:(NSString*)firstString secondString:(NSString*) secondString thirdString:(NSString*) thirdString fourthString:(NSString*) fourthString cellImage:(UIImage*)cellImage
{
    movieLabel.text = firstString;
    time1Label.text = secondString;
    time2Label.text = thirdString;
    time3Label.text = fourthString;
    
    myImageView.image = cellImage;
}

@end
