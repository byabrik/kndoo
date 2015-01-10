//
//  AppDelegate.m
//  kndoo
//
//  Created by admin on 12/28/14.
//  Copyright (c) 2014 ___byabrik___. All rights reserved.
//

#import "AppDelegate.h"
#import "FeedTableViewController.h"
#import "SearchViewController.h"
#import "Constants.h"
#import "Utils.h"
#import "NotificationViewController.h"
#import "TakeVideoViewController.h"
#import "ProfileViewController.h"


@interface AppDelegate () <UIApplicationDelegate>

@end

@implementation AppDelegate

@synthesize navigationController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self openInitialScreen];
    
    return YES;
}

-(void)openInitialScreen {
    
    // View Controllers for tabController (one viewController per tab)
    NSMutableArray *viewControllers = [[NSMutableArray alloc] init];
    
    // first tab has view controller in navigation controller
    FeedTableViewController* feedTableViewController = [[FeedTableViewController alloc] initWithNibName:@"FeedTableViewController" bundle:nil];
    UINavigationController *feedNavController = [[UINavigationController alloc] initWithRootViewController:feedTableViewController];
    [viewControllers addObject:feedNavController];
    
    SearchViewController *searchViewController = [[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil];
    UINavigationController *searchNavController = [[UINavigationController alloc] initWithRootViewController:searchViewController];
    [viewControllers addObject:searchNavController];
    
    TakeVideoViewController *takeVideoViewController = [[TakeVideoViewController alloc] initWithNibName:@"TakeVideoViewController" bundle:nil];
    UINavigationController *videoNavController = [[UINavigationController alloc] initWithRootViewController:takeVideoViewController];
    videoNavController.navigationBarHidden = YES;
    [viewControllers addObject:videoNavController];
    
    NotificationViewController *notificationViewController = [[NotificationViewController alloc] initWithNibName:@"NotificationViewController" bundle:nil];
    UINavigationController *notificationNavController = [[UINavigationController alloc] initWithRootViewController:notificationViewController];
    [viewControllers addObject:notificationNavController];
    
    ProfileViewController *profileViewController = [[ProfileViewController alloc] initWithNibName:@"ProfileViewController" bundle:nil];
    UINavigationController *profileNavController = [[UINavigationController alloc] initWithRootViewController:profileViewController];
    [viewControllers addObject:profileNavController];
    
    // create the tab controller and add the view controllers
    UITabBarController *tabController = [[UITabBarController alloc] init];
    [tabController setViewControllers:viewControllers];
    
    // Add background color to middle tabBarItem
    UIColor* bgColor = UIColorFromRGB(0x1475a8);
    UIView* bgView = [[UIView alloc] initWithFrame:CGRectMake(128,0,64,48)];
    bgView.backgroundColor = bgColor;
    [tabController.tabBar insertSubview:bgView atIndex:0];
    
    
    [[UITabBar appearance] setBarTintColor:UIColorFromRGB(0x282828)];
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    [[UITabBar appearance] setSelectionIndicatorImage:[Utils imageFromColor:UIColorFromRGB(0x131313) forSize:CGSizeMake(64, 49) withCornerRadius:0]];
    
    self.window.rootViewController = tabController;
    
    // add tabbar and show
    [[self window] addSubview:[tabController view]];
    [self.window makeKeyAndVisible];

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
