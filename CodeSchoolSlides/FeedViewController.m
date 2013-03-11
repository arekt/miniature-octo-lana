//
//  FeedViewController.m
//  CodeSchoolSlides
//
//  Created by Arek Turlewicz on 13/03/11.
//  Copyright (c) 2013年 Arek Turlewicz. All rights reserved.
//

#import "FeedViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UIImage *origImage = [UIImage imageNamed:@"a1.png"];
        self.tabBarItem.image = [UIImage imageWithCGImage:origImage.CGImage scale:10 orientation:0 ];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"Feed";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
