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
