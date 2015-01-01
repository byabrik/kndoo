//
//  PostCell.h
//  kndoo
//
//  Created by admin on 12/29/14.
//  Copyright (c) 2014 ___byabrik___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *categoryName;
@property (weak, nonatomic) IBOutlet UILabel *viewsNumber;
@property (weak, nonatomic) IBOutlet UILabel *created;
@property (weak, nonatomic) IBOutlet UIImageView *userPicture;
@property (weak, nonatomic) IBOutlet UIImageView *mainImage;
@property (weak, nonatomic) IBOutlet UILabel *action1;
@property (weak, nonatomic) IBOutlet UILabel *action2;
@property (weak, nonatomic) IBOutlet UILabel *action3;
@property (weak, nonatomic) IBOutlet UILabel *commentsNumber;
@property (weak, nonatomic) IBOutlet UILabel *starredNumber;


@end
