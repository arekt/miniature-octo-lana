//
//  ViewController.m
//  CodeSchoolSlides
//
//  Created by Arek Turlewicz on 13/02/21.
//  Copyright (c) 2013年 Arek Turlewicz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    self.firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.firstButton.frame = CGRectMake(100, 100, 100, 44);
    [self.firstButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.text = @"Hello, welcome to my app!";
    firstLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.firstButton];
    [self.view addSubview:firstLabel];
    [self.firstButton addTarget:self
        action:@selector(buttonPressed:)
        forControlEvents:UIControlEventTouchUpInside];
    self.secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.secondButton.frame = CGRectMake(100, 300, 100, 44);
    [self.secondButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    [self.view addSubview:self.secondButton];
    [self.secondButton addTarget:self
        action:@selector(buttonPressed:)
        forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *colorView = [[UIView alloc] initWithFrame:viewRect];
    self.view = colorView;
    // Dispose of any resources that can be recreated.
}

-  (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"aa");
}

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    self.view.alpha = ((double)arc4random() / 0x100000000);
    if ([sender isEqual:self.firstButton]) {
        self.view.alpha = .5;
        NSLog(@"set alpha to 50%%");
    } else {
        self.view.alpha = 1;
        NSLog(@"set alpha to 100%%");
    }
}


@end
