#import "SCRootViewController.h"

@implementation SCRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    SCNView *sceneView = [[SCNView alloc] initWithFrame:self.view.frame];
    SCNScene *scene = [SCNScene scene];
    sceneView.scene = scene;
    sceneView.autoenablesDefaultLighting = YES;
    sceneView.allowsCameraControl = YES;
    [self.view addSubview:sceneView];

    SCNBox *box = [SCNBox boxWithWidth:2 height:2 length:2 chamferRadius:0.3];
    SCNNode *boxNode = [SCNNode nodeWithGeometry:box];
    [scene.rootNode addChildNode:boxNode];

    //SCNLight *light = [SCNLight light];
    //light.color = [UIColor blueColor];
    //SCNNode *lightNode = [SCNNode node];
    //lightNode.light = light;
    //lightNode.position = SCNVector3Make( -30, 30, 60);
    //[scene.rootNode addChildNode:lightNode];
    
}
@end
