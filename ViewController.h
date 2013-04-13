
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //NSTimers for one & main
    NSTimer *maintimer;
    NSTimer *onetimerhide;
    NSTimer *onetimershow;
    
    //NSTimers for two
    NSTimer *twotimerhide;
    NSTimer *twotimershow;
    
    //NSTimers for three
    NSTimer *threetimershow;
    NSTimer *threetimerhide;
    
    //NSTimers for four
    NSTimer *fourtimershow;
    NSTimer *fourtimerhide;
    
    //Pictures
    IBOutlet UIImageView *imageone;
    IBOutlet UIImageView *imagetwo;
    
    IBOutlet UIImageView *imagethree;
    IBOutlet UIImageView *imagefour;

    
    //Labels
    IBOutlet UILabel *coins;
    IBOutlet UILabel *coinsfinal;
    IBOutlet UILabel *keeper;
    
    
    //Other
    CGPoint pos;
    NSTimer *timerleft;
}

@end
