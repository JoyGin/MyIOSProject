//
//  AppDelegate.m
//  MyApp
//
//  Created by wangzexin on 2023/2/8.
//

#import "AppDelegate.h"
#import <TestFramework/TestFramework.h>
#import <TestStaticLibrary/TestStaticLibrary.h>
#import <TestStaticFramework/TestStaticFramework.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    TipProvider* tipProvider = [TipProvider new];
    NSLog(@"static archive: %@", tipProvider.getTip);
    
    TestStaticLibrary* testSL = [TestStaticLibrary new];
    NSLog(@"dynamic framework: %@", testSL.getSLTip);
    
    SFTipProvider* sfTipProvider = [[SFTipProvider alloc] init];
    NSLog(@"static framework: %@", sfTipProvider.getSFTip);
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
