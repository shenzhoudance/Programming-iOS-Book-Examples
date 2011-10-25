

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void) rockTheCasbah {
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSString* s = @"Hello, world!";
    [(id)s rockTheCasbah]; // when we run the app, we'll crash
    
    // interesting side effect of using ARC here:
    // ARC regards [s rockTheCasbah] as worth a fatal compile error, not a mere warning
    // in order to fool it and demonstrate what happens when we send a non-implemented message,
    // we must *both* cast to id (to get dynamic messaging)...
    // *and* implement some rockTheCasbah method (to get a method signature for it?)
    
    // so if ARC is turned on there is no warning: just the crash at runtime

    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end