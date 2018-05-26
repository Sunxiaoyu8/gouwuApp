public class gouwuCartTest {  
  
    public static void main(String[] args) {  
        gouwuCart cart=new gouwuCart();  
        Book p1=new Book(101,"计算机网络书","学生书籍",45);  
        Book p2=new Book(102,"操作系统","学生书籍",79);  
        Book p3=new Book(103,"围城","小说书",25);  
        Book p4=new Book(104,"爱的教育","小说书",20);  
        Book p5=new Book(105,"机械修理","工具书",30);  
        Book p6=new Book(101,"计算机网络书","学生书籍",45); //测试买两件书籍的情况  
        cart.addBook(p1);  
        cart.addBook(p2);  
        cart.addBook(p3);  
        cart.addBook(p4);  
        cart.addBook(p5);  
        cart.addBook(p6);  
        cart.showAll();  
        System.out.println("############");  
        boolean flag=cart.deleteBook(p2.getBookId());  
        if(flag){  
            System.out.println("书籍编号为："+p2.getBookId()+"的书籍删除成功！");  
        }else{  
            System.out.println("删除失败");  
        }  
        cart.showAll();  
        System.out.println("############");  
        boolean flag2=cart.modifyBook(p3.getBookId(), 2);  
        if(flag2){  
            System.out.println("书籍编号为："+p3.getBookId()+"的书籍修改成功！");  
        }else{  
            System.out.println("修改失败");  
        }  
        cart.showAll();  
          
        //cart.clearCart();  
        //cart.showAll();  
        System.out.println("书籍总价钱为："+cart.totalAllMoney());  
  
    }  
  
}  