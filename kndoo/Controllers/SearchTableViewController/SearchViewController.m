//
//  SearchViewController.m
//  kndoo
//
//  Created by admin on 1/1/15.
//  Copyright (c) 2015 ___byabrik___. All rights reserved.
//

#import "SearchViewController.h"
#import "FeedTableViewController.h"
#import <stdlib.h>
#import "Constants.h"
#import "Utils.h"

@interface SearchViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation SearchViewController

@synthesize navigationView;

#pragma mark - View's LifeCycle
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIImage* image = [Utils imageWithImage:[UIImage imageNamed:@"search_icon.png"] scaledToSize:CGSizeMake(20, 20)];
        self.tabBarItem.selectedImage = image;
        self.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self doInitialSetup];
}

-(void)doInitialSetup {
    self.navigationController.navigationBarHidden = YES;
    self.navigationView.backgroundColor = UIColorFromRGB(0x156097);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray* colorArray = [NSArray arrayWithObjects:
                           UIColorFromRGB(0x6a486b),
                           UIColorFromRGB(0x24df8e),
                           UIColorFromRGB(0x6fb7e9),
                           UIColorFromRGB(0xfacb47),
                           UIColorFromRGB(0xfb8547),
                           UIColorFromRGB(0xda2b4a),
                           nil];
    
    // See if there's an existing cell we can reuse
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCell"];
    if (cell == nil) {
        // No cell to reuse => create a new one
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CategoryCell"];
        
        // Initialize cell
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.backgroundColor = colorArray[indexPath.row];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Row: %d", indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.imageView.image = [UIImage imageNamed:@"comments_icon.png"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"didSelectRowAtIndexPath");
}

-(IBAction)btnHome:(id)sender {
    
    FeedTableViewController* feedTableViewController = [[FeedTableViewController alloc] initWithNibName:@"FeedTableViewController" bundle:nil];
    
    [self.navigationController pushViewController:feedTableViewController animated:YES];
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
