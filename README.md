# gouwuApp

实现购物过程

1.首先我们需要设计一个登陆界面
第一部分     我们从网上选取一个背景图片
            复制其地址链接使用 <body background=""></body>语言，这样打开登录界面的时候背景图就出现了
            之后我们需要设置登录名和密码
第二部分     整体样式
            登录标题的样式
            用户名和密码的输入框和我们可以给用户名和密码设计一些属性

第三部分      用户名和密码的输入框，长宽高边框设置
第四部分      登录按钮以及清空重输的设置

2.设计一个导购界面
第一部分       我们从网上选取一个背景图片（同上）
第二部分       查看购物车判断有无书籍，没有商品调转到buybook.html界面去购买书籍
                       有书籍，想要继续购买，点击"购买"调转到buybook.html
                       有书籍，不想要继续购买，调转到count.html去支付
                       
3.    设计一个购买书籍的界面
                       
private int totalCount;//总的购书数量
private float totalPrice；//总价
private BOOK book;
private int count;//数量
public book.getPrice(){}//小计

//向购物车中添加书，书→book 购物车→cart
  public void add(Book book ,Cart cart);
  
//删除一个购物项 ，在购物车中找到要删除的购物项的bookId
    public void deleteItem(Integer BookId,Cart cart);
     
//更新购物车中书的数量
     public void updateCount(int BookId,int count,Cart cart);
 
//清空购物车
     public void clear(Cart cart);

public CartItem(Book book, int count) {
           super();
           this.book = book;
           this.count = count;
     }

public Book getBook() {
           return book ;
     }
public int getCount() {
           return count ;
     }
     
      // 得到小计
public float getItemPrice() {
 return book .getPrice() * count;
     }


text.java内容，测试购物车
gouwuCart cart=new gouwuCart();  
        Book p1=new Book(101,"计算机网络书","学生书籍",45);  
        Book p2=new Book(102,"操作系统","学生书籍",79);  
        Book p3=new Book(103,"围城","小说书",25);  
        Book p4=new Book(104,"爱的教育","小说书",20);  
        Book p5=new Book(105,"机械修理","工具书",30);  
        Book p6=new Book(101,"计算机网络书","学生书籍",45); //测试买两件书籍的情况 
      
      
  4.count.html支付结算
     第一部分   确认顾客姓名/手机号码/送货地址
     第二部分   支付方式 网银/支付宝/微信
   5. exit.html 退出界面   订单提交成功！请耐心等待发货
        
        
        
