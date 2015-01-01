//
//  PostCell.m
//  kndoo
//
//  Created by admin on 12/29/14.
//  Copyright (c) 2014 ___byabrik___. All rights reserved.
//

#import "PostCell.h"

@implementation PostCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSArray* arrNibs = [[NSBundle mainBundle] loadNibNamed:@"PostCell" owner:self options:nil];
        self = [arrNibs firstObject];
    }
    return self;
}

@end
