
    public class ShoppingCart {
    private Map<Integer,BookItem> map=new LinkedHashMap<Integer,BooktItem>();  
    public void addBook(Book b){//添加商品  
        int BookId=p.getBookId();  
        if(map.containsKey(BookId)){  
            BookItem BookItem=map.get(bookId);  
            BookItem.setCount(bookItem.getCount()+1);  
        }else{  
            map.put(bookId, new  BookItem(b,1));  
        }  
    }  
    public void showAll(){//查看订单信息  
        Collection<BookItem> bookItems = map.values();  
        Iterator<BookItem> iterator =  bookItems.iterator();  
        while(iterator.hasNext()){  
            BookItem bookItem = iterator.next();  
            Book book =  bookItem.getProduct();  
            System.out.println("商品编号："+book.getProductId()+",商品名称："  
            +book.getBookName()+",单价："+book.getPrice()+",数量："+BookItem.getCount()  
            +",小计："+bookItem.totalMoney());  
        }  
    }  
    public boolean deleteBookt(int bookId){//删除商品  
        if(map.containsKey(bookId)){  
            map.remove(bookId);  
            return true;  
        }  
        return false;  
    }  
    public boolean modifyBook(int bookId,int count){//修改  
        if(map.containsKey(bookId)){  
            if(count>=1){  
                BookItem bookItem = map.get(bookId);  
                bookItem.setCount(count);  
                return true;  
            }else if(count==0){//删除该商品  
                deleteBook(bookId);  
                return true;  
            }     
        }  
        return false;  
    }  
      
    public void clearCart(){//清空购物车  
        map.clear();  
    }  