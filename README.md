# changeYourJDK
Use Batch file in Windows to change your jdk conveniently.
使用bat脚本一键切换jdk版本，免得自己修改环境变量那么麻烦

## 使用：
notepad++编辑，修改变量的值为自己电脑jdk的路径
我的路径如下：
```
set jdk11=D:\DevelopTools\Java\jdk11.0.3
set jdk8=D:\DevelopTools\Java\jdk1.8.0_291
```

若要增加jdk版本，则需要修改三个地方：
1. 增加变量名（前面几行）
  ```set jdk15=D:\DevelopTools\Java\jdk15```
2. 增加提示信息（:admin代码段）
  ```echo 3 for jdk15 in %jdk15%```
3. 增加条件判断（:select代码段）
  ```
  :select
  if %v%==0 (
    ...
  )else if %v%==1 (
    ...
  )else if %v%==2 (
    ...
  )else if %v%==3 (
    echo use %jdk15%
    setx JAVA_HOME %jdk15%
    setx JAVA_HOME %jdk15% /M
  )else ( 
    ...
  )
  ```
  
  修改完毕后右键以管理员身份运行即可 
  
  ![image](https://user-images.githubusercontent.com/75788310/138542890-b405c3fe-b5a3-4c2b-8668-dd44aa05cc29.png)

  
