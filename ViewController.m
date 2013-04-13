#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
int x = 0;
int z = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
   pos = CGPointMake(5.0, 6.0);
   
    
    z = 60;

      maintimer = [NSTimer scheduledTimerWithTimeInterval:(0.03)  target:self selector:@selector(maintimer) userInfo:nil repeats:YES];
    
    onetimerhide = [NSTimer scheduledTimerWithTimeInterval:(5.92) target:self selector:@selector(onehide) userInfo:nil repeats:YES];
    onetimershow = [NSTimer scheduledTimerWithTimeInterval:(7.23) target:self selector:@selector(oneshow) userInfo:nil repeats:YES];
    
    twotimerhide = [NSTimer scheduledTimerWithTimeInterval:(3.92) target:self selector:@selector(twohide) userInfo:nil repeats:YES];
    twotimershow = [NSTimer scheduledTimerWithTimeInterval:(5.23) target:self selector:@selector(twoshow) userInfo:nil repeats:YES];
    
    threetimershow = [NSTimer scheduledTimerWithTimeInterval:(8.23) target:self selector:@selector(threeshow) userInfo:nil repeats:YES];
    threetimerhide = [NSTimer scheduledTimerWithTimeInterval:(5.92) target:self selector:@selector(threehide) userInfo:nil repeats:YES];
    fourtimerhide = [NSTimer scheduledTimerWithTimeInterval:(3.92) target:self selector:@selector(fourhide) userInfo:nil repeats:YES];
    fourtimershow = [NSTimer scheduledTimerWithTimeInterval:(5.23) target:self selector:@selector(fourshow) userInfo:nil repeats:YES];
    timerleft = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(timer) userInfo:nil repeats:YES];
   
    
}

-(void)timer
{
    z = z -1;
    if (z == 0) {
        ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"sup"];
        [self presentViewController:vc animated:YES completion:nil];
    }
    if (x <0) {
        keeper.text = @"Oh, negatitive numbers.";
    }
    if (x > 100) {
        keeper.text = @"OVER 100, AWESOME";
    }
    if (x == 0) {
        keeper.text = @"0, okay";
    }

}

-(void)fourhide
{
    imagefour.hidden = TRUE;
}

-(void)fourshow
{
    imagefour.hidden = FALSE;
    imagefour.center = CGPointMake(130, 480);
}
-(void)threehide
{
    imagethree.hidden = TRUE;
}

-(void)threeshow
{
    imagethree.hidden = FALSE;
    imagethree.center = CGPointMake(180, 160);
}


-(void)twoshow
{
    imagetwo.hidden = FALSE;
    imagetwo.center = CGPointMake(180, 120);
}

-(void)twohide
{
    imagetwo.hidden = TRUE;
}

-(void)oneshow
{
    imageone.hidden = FALSE;
    imageone.center = CGPointMake(50, 180);
}

-(void)onehide
{
    imageone.hidden = YES;
}

-(void)maintimer
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageTappedOne:)];
    imageone.userInteractionEnabled = YES;
    [imageone addGestureRecognizer:tap];
    [tap release];
    
    UITapGestureRecognizer *taptwo = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageTappedTwp:)];
    imagetwo.userInteractionEnabled = YES;
    [imagetwo addGestureRecognizer:taptwo];
    [taptwo release];
    
    
    UITapGestureRecognizer *tapthree = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapthree:)];
    imagethree.userInteractionEnabled = YES;
    [imagethree addGestureRecognizer:tapthree];
    [tapthree release];
    
    
    UITapGestureRecognizer *four = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapfour:)];
    imagefour.userInteractionEnabled = YES;
    [imagefour addGestureRecognizer:four];
    [four release];
    
    
    
    coinsfinal.text = [[NSString alloc]initWithFormat:@"%d", x];
    imagefour.center = CGPointMake(imagefour.center.x, imagefour.center.y -10);
    imagethree.center = CGPointMake(imagethree.center.x +5, imagethree.center.y);
    coins.text = [[NSString alloc]initWithFormat:@"%d", x];
    
    imageone.center = CGPointMake(imageone.center.x+pos.x, imageone.center.y+pos.y);
        if (imageone.center.x >360 || imageone.center.x <0) {
            pos.y = -pos.x;
        if (imageone.center.y >480 || imageone.center.y <0)
            pos.y = -pos.x;
        
        imagetwo.center = CGPointMake(imagetwo.center.x+pos.x, imagetwo.center.y+pos.y);
        if (imagetwo.center.x >360 || imagetwo.center.x <0) {
            pos.y = -pos.x;
        if (imagetwo.center.y >480 || imagetwo.center.y <0)
            pos.y = -pos.x;

        
        }
    }
}

-(void)tapfour:(UITapGestureRecognizer *) gestureRecognizer
{
    x = x +10;
    imagefour.hidden = TRUE;
}


-(void)tapthree:(UITapGestureRecognizer *) gestureRecognizer
{
    x = x +7;
    imagethree.hidden = TRUE;
}




- (void)imageTappedOne:(UITapGestureRecognizer *) gestureRecognizer
{
    
    imageone.hidden = TRUE;
    x = x +5;
    
}

- (void)imageTappedTwp:(UITapGestureRecognizer *) gestureRecognizer
{
    imagetwo.hidden = TRUE;
    x = x -5;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

