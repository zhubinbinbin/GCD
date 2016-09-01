//
//  ViewController.m
//  GCD
//
//  Created by 朱宾宾 on 16/8/11.
//  Copyright © 2016年 朱宾宾. All rights reserved.
//

#import "ViewController.h"
static ViewController *vc;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        vc = [[ViewController alloc]init];
//    });
//    dispatch_after(DISPATCH_TIME_NOW, dispatch_get_main_queue(), ^{
//        
//    });
    
//dispatch_get_global_queue 全局队列
//dispatch_get_main_queue() 主队列
//    NSLog(@"1");
//    dispatch_sync(dispatch_get_main_queue(), ^{
//        NSLog(@"2");
//    });
//    NSLog(@"3");
    
//    NSLog(@"1");
//    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
//        NSLog(@"2");
//    });
//    NSLog(@"3");
//    dispatch_queue_t queue = dispatch_queue_create("com.shuashua.serialQueue", DISPATCH_QUEUE_SERIAL);
//    NSLog(@"1");
//    dispatch_async(queue, ^{
//        NSLog(@"2");
//        dispatch_sync(queue, ^{
//            NSLog(@"3");
//        });
//        NSLog(@"4");
//    });
//    NSLog(@"5");
 //   dispatch_queue_t queue = dispatch_queue_create("com.shuashua.serialQueue", DISPATCH_QUEUE_SERIAL);
//    NSLog(@"1");
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"2");
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            NSLog(@"3");
//        });
//        NSLog(@"4");
//    });
//    NSLog(@"5");
    /*
     主队列里有异步线程，任务四，死循环，任务五
     任务四无需等待直接执行，任务一和任务四的执行顺序不一定，
     在加入到Global Queue异步线程中的任务有：【任务1、同步线程、任务3】。
     任务二在主线程中，在任务五之后，因为主线程遇到死循环阻塞了，任务二无法执行，人物三需等待同步队列之行之后在执行，所以任务三也执行不了
     */
//     dispatch_async(dispatch_get_global_queue(0, 0), ^{
//         NSLog(@"1");//任务一
//         dispatch_sync(dispatch_get_main_queue(), ^{
//             NSLog(@"2");//任务二
//         });
//         NSLog(@"3");//任务三
//     });
//    NSLog(@"4");//任务四
//    while (1) {
//        
//    }
//    NSLog(@"5");//任务五
   
//    NSLog(@"1");
//    dispatch_async(dispatch_get_main_queue(), ^{
//        NSLog(@"2");
//    });
//    
//    NSLog(@"3");
    NSString *foo = @"Badger 123";
    NSString *bar = [NSString stringWithFormat:@"Badger %d", 123];
    NSString *dog = [foo copy];
    
    BOOL equalA = (foo == bar);
    BOOL equalB = [foo isEqual:bar];
    BOOL equalC = [foo isEqualToString:bar];
    BOOL equalD = [foo isEqualToString:dog];
    NSLog(@"%d %d %d %d", equalA,equalB,equalC,equalD);
    NSLog(@"%p %p %p", foo,bar,dog);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
