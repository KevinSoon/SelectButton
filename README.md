# SelectButton
一款简单封装的图片在前文字在后的按钮
![images](https://github.com/KevinSoon/SelectButton/blob/master/images/135095BB-F97C-493C-B67B-8734EDF74ACC.png)

CheckSelectButton *maleButton = [CheckSelectButton buttonWithType:UIButtonTypeCustom];
    maleButton.frame = CGRectMake(self.view.frame.size.width/2, 100, 50, 50);
    [maleButton setTitle:@"男" forState:UIControlStateNormal];
    [self.view addSubview:maleButton];
    [maleButton addTarget:self action:@selector(selectSexButton:) forControlEvents:UIControlEventTouchUpInside];
