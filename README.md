# gouwuApp
第一天
实现购物过程


1.首先定义模型1Class.jsp


private int totalCount;//总的购书数量
private float totalPrice；//总价
private BOOK book;
private int count;//数量
public book.getPrice(){}//小计


2.分析交互页面
add()
update()
delete()
clear()

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
      
      
   booklist.html
        进入我的购物车之后有两种可能：购物车中有书、没有书
        
   没有书：则显示没有书并跳转到购书页面（需要经过BookClientServlet）
     <c:when test="${empty CART || empty CART.map}">
     购物车中没有一本书, 立即去 <a href="client/BookClientServlet?method=getPageInCondition" >购物 </a>                
   </c:when>
        
        
        
