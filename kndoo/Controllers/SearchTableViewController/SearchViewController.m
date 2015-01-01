//
//  SearchViewController.m
//  kndoo
//
//  Created by admin on 1/1/15.
//  Copyright (c) 2015 ___byabrik___. All rights reserved.
//

#import "SearchViewController.h"
#import <stdlib.h>
#import "Constants.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

#pragma mark - View's LifeCycle
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray* colorArray = [NSArray arrayWithObjects:
                           UIColorFromRGB(0xd75c1c),
                           UIColorFromRGB(0xd75c1c),
                           UIColorFromRGB(0xd75c1c),
                           UIColorFromRGB(0xd75c1c),
                           UIColorFromRGB(0xd75c1c),
                           UIColorFromRGB(0xd75c1c),
                           UIColorFromRGB(0xd75c1c),
                           nil];
    
    // See if there's an existing cell we can reuse
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCell"];
    if (cell == nil) {
        // No cell to reuse => create a new one
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CategoryCell"];
        
        // Initialize cell
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.textLabel.textColor = [UIColor whiteColor];
        int r = arc4random_uniform(6);
        cell.backgroundColor = colorArray[r];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Row: %d", indexPath.row];
    
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
