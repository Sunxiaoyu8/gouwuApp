public class BookItem {  
    private Book book;//购买的书  
    private int totalcount;//商品数量  
    public double totalMoney(){//小计  
        double price=book.getPrice();//获取书的单价  
        return price*count;  
    }  
      
    public BookItem() {  
        super();  
    }  
  
    public BookItem(Book book, int count) {  
        super();  
        this.book = book;  
        this.count = count;  
    }  
  
    public Book getBook() {  
        return book;  
    }  
    public void setProduct(Book book) {  
        this.book = book;    
    }  
    public int getCount() {  
        return count;  
    }  
    public void setCount(int count) {  
        this.count = count;  
    }  
      
}  