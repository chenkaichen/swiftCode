
简单几行代码就可实现无限自动轮播



        //图片数组
        let imagesArr = ["second.jpeg","third.jpeg","fourth.jpeg","fifth.jpeg","sixth.jpeg","seventh.jpeg","eighth.jpg"]
        
        //创建轮播视图
        let scrollView = CKCScrollView(frame: CGRect(x: 0, y: 20, width: view.width, height: 200))
        view.addSubview(scrollView)
        
        //展示图片
        scrollView.imageArray = imagesArr

        //是否自动轮播
        scrollView.isAutoScroll = true
        
        //切换时间间隔（可不设置，默认三秒）
        //scrollView.autoScrollDeley = 1
        
        //点击屏幕中间图片回调
        scrollView.blockWithClick = {(senderCLick : Int) ->() in
        
            label.text = "点击了第\(senderCLick + 1)张图片"
        
        }
