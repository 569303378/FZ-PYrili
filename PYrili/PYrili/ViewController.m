//
//  ViewController.m
//  PYrili
//
//  Created by Apple on 16/7/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "SZCalendarPicker.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}
- (IBAction)button:(UIButton *)sender {
    SZCalendarPicker *calendarPicker = [SZCalendarPicker showOnView:self.view];
    calendarPicker.today = [NSDate date];
    calendarPicker.date = calendarPicker.today;
    calendarPicker.frame = CGRectMake(0, 100, self.view.frame.size.width, 352);
    calendarPicker.calendarBlock = ^(NSInteger day, NSInteger month, NSInteger year){
        
        NSLog(@"%li-%li-%li", (long)year,(long)month,(long)day);

        self.label.text = [NSString stringWithFormat:@"%li-%li-%li", (long)year,(long)month,(long)day];
    };

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
