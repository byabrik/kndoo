//
//  ViewController.m
//  kndoo
//
//  Created by admin on 12/28/14.
//  Copyright (c) 2014 ___byabrik___. All rights reserved.
//

#import "FeedTableViewController.h"
#import "SearchViewController.h"
#import "Constants.h"
#import "PostCell.h"

@interface FeedTableViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation FeedTableViewController

@synthesize navigationView;

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
    
    [self doInitialSetup];
}

-(void)doInitialSetup {
    
    [self.tblView registerNib:[UINib nibWithNibName:@"PostCell"
                       bundle:[NSBundle mainBundle]]
       forCellReuseIdentifier:@"PostCell"];
    
    //[self.tblView registerClass:[PostCell class] forCellReuseIdentifier:@"PostCell"];
    
    // This will remove extra separators from tableview
    self.tblView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    //self.tblView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectZero];
    self.tblView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 0.0f, 0.0f)];

    [self.tblView setSeparatorInset:UIEdgeInsetsZero];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    self.navigationController.navigationBarHidden = YES;
    self.navigationView.backgroundColor = UIColorFromRGB(0x156097);
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PostCell* cell = (PostCell*)[tableView dequeueReusableCellWithIdentifier:@"PostCell"];
    cell.separatorInset = UIEdgeInsetsMake(0, 10000, 0, 0);
    
    if(cell == nil) {
        cell = [[PostCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"PostCell"];
    }
    
    
    cell.userName.text = @"Konstantin Brodin";
    cell.categoryName.text = @"Fun";
    
    cell.viewsNumber.text = @"250";
    cell.created.text = @"2 days ago";
    cell.action1.text = @"Respect";
    cell.action2.text = @"I got to try this";
    cell.action3.text = @"Are you stupid?";
    cell.commentsNumber.text = @"120";
    cell.starredNumber.text = @"45";
    
    cell.categoryName.textColor = UIColorFromRGB(0xd75c1c);
    cell.userName.textColor = UIColorFromRGB(0xfb8547);
    cell.viewsNumber.textColor = UIColorFromRGB(0x414141);
    cell.action1.backgroundColor = UIColorFromRGB(0xfb8547);
    cell.action2.backgroundColor = UIColorFromRGB(0xf4712c);
    cell.action3.backgroundColor = UIColorFromRGB(0xd75c1c);
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 443;
}

-(IBAction)btnSearch:(id)sender {
    
    SearchViewController* searchViewController = [[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil];
    
    [self.navigationController pushViewController:searchViewController animated:YES];
}



//-(void)increaseHeightOfTableView {
//    self.tblView.frame = CGRectMake(self.tblView.frame.origin.x, self.tblView.frame.origin.y-153, self.tblView.frame.size.width, self.tblView.frame.size.height+153);
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
