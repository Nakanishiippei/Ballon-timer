//
//  ViewController.m
//  timer2
//
//  Created by ippei on 2014/10/03.
//  Copyright (c) 2014年 一平. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TextField.delegate = self ;
    
    imageview.center=CGPointMake(170,700);
    
    NSString *path= [[NSBundle mainBundle]pathForResource:@"pon" ofType:@"mp3"] ;
    NSURL *url = [NSURL fileURLWithPath:path];
    pon =[[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    //check me
    //just change

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)start{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:180];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:180.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start2{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:300];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:300.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}

-(IBAction)start3{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:600];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:600.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start4{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:900];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:900.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start5{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1200];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:1200.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start6{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1500];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:1500.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start7{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1800];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:1800.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start8{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2100];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:2100.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start9{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2400];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:2400.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start10{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2700];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:2700.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start11{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3000];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:3000.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start12{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3300];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:3300.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start13{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3600];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:3600.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}
-(IBAction)start14{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:60];
    [UIView setAnimationDelay:1];
    imageview.center=CGPointMake(170,110);
    [UIView commitAnimations];
    tm = [NSTimer scheduledTimerWithTimeInterval:60.0f target:self selector:@selector(playSound) userInfo:nil repeats:NO];
}

//リセットボタン
-(IBAction)back{
    imageview.center=CGPointMake(170,700);
    //UIImage *img = [UIImage imageNamed:@"Ballons.png"];
    //UIImageView *iv = [[UIImageView alloc] initWithImage:img];
    [self.view addSubview:imageview];

    TextField.text = @"";
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [textField resignFirstResponder] ;
    return YES ;
    
    
}

-(void)playSound{
    [pon play];
    [imageview removeFromSuperview];
}


@end
