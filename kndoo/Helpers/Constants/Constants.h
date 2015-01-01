//
//  Constants.h
//  kndoo
//
//  Created by admin on 12/28/14.
//  Copyright (c) 2014 ___byabrik___. All rights reserved.
//

#ifndef kndoo_Constants_h
#define kndoo_Constants_h


#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define KNCFeedTitle @"Do Something"

#endif
