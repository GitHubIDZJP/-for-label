//
//  ViewController.m
//  点击按钮for循环添加label
//
//  Created by zoujunping on 2020/12/31.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel *label;
}
@property(nonatomic,copy) NSMutableArray *testArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    
    
    UIButton *btn = [[UIButton  alloc]initWithFrame:CGRectMake(10, 100, 80, 80)];
    [btn setTitleColor:UIColor.redColor forState:0];
    btn.backgroundColor = UIColor.purpleColor;
    [btn setTitle:@"添加" forState:0];
    [btn addTarget:self action:@selector(tasg:) forControlEvents:1 << 6];
    [self.view addSubview:btn];
  
    _testArr = [[NSMutableArray alloc]initWithObjects:@"1",@"2",nil];
   
    for (int i = 0;i< _testArr.count;i++){
        label = [[UILabel alloc]init];
        label.frame  = CGRectMake(100,90+i*40,100,30);
        label.text = _testArr[i];
        label.backgroundColor = UIColor.redColor;
        label.textColor = UIColor.purpleColor;
        [self.view addSubview:label];
      
    }
}
-(void)tasg:(UIButton*)sender{
    NSLog(@"点击了");
    [_testArr insertObject:@"sddf" atIndex:0];
    for (int i = 0;i< _testArr.count;i++){
        UILabel *label = [[UILabel alloc]init];
        label.frame  = CGRectMake(100,90+i*40,100,30);
        label.text = _testArr[i];
        label.backgroundColor = UIColor.redColor;
        label.textColor = UIColor.purpleColor;
        [self.view addSubview:label];

    }
   
   
  
    
}
-(void)dealloc{
    
}
@end
