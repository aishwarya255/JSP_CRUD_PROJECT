package jspcrudpkg; 
import static java.lang.System.out;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import jspcrudpkg.user;  

public class jspcruddb {

 
     public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root","");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    
 
       public static List<user> getAllRecords(){  
    List<user> list=new ArrayList<user>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from signup");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
                 user e=new user();  
                e.setId(rs.getInt(1));  
                e.setFullname(rs.getString(2));
                e.setAddress(rs.getString(3));
                e.setPhone(rs.getString(4));
                e.setUname(rs.getString(5));
                e.setPassword(rs.getString(6));  
                
                list.add(e);    
            }  
            con.close();  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    } 
          
    
  
    
    
    
    
    
    
      public static user getCustomerById(int id){  
        user e=new user();  
          
        try{  
            Connection con=jspcruddb.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from signup where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                e.setId(rs.getInt(1));  
                e.setFullname(rs.getString(2));  
                e.setAddress(rs.getString(3)); 
                e.setPhone(rs.getString(4)); 
                e.setUname(rs.getString(5)); 
                e.setPassword(rs.getString(6));  
                  
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return e;  
    }  
    
    
     
 

  
public static int update(user e){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update signup set fullname=?,address=?,phone=?,uname=?,password=? where id=?");  
        ps.setString(1,e.getFullname());  
        ps.setString(2,e.getAddress());  
        ps.setString(3,e.getPhone());  
        ps.setString(4,e.getUname());  
        ps.setString(5,e.getPassword());  
        ps.setInt(6,e.getId());  
        status=ps.executeUpdate();  
    }catch(Exception ex){System.out.println(ex);}  
    return status;  
}  
  
     public static int delete(user e){  
        int status=0;  
        try{  
            Connection con=jspcruddb.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from signup where id=?"); 
            ps.setInt(1,e.getId());
            
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
     }
     
     
     
     
     
     
     
     
    
       public static List<order> getAllOrderRecords(){  
    List<order> list=new ArrayList<order>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from cakeorder");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
                 order f=new order();  
                f.setId(rs.getInt(1));  
                f.setCakeselect(rs.getString(2));
                f.setKg(rs.getString(3));
                f.setQuantity(rs.getString(4));
                f.setDate(rs.getString(5));
                f.setTime(rs.getString(6));  
                f.setContactno(rs.getString(7));
                f.setUname(rs.getString(8));
                list.add(f);    
            }  
            con.close();  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    } 
          
    
  
    
    
    
    
    
    
      public static order getOrderId(int id){  
        order f=new order();  
          
        try{  
            Connection con=jspcruddb.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from cakeorder where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
              
                f.setId(rs.getInt(1));  
                f.setCakeselect(rs.getString(2));
                f.setKg(rs.getString(3));
                f.setQuantity(rs.getString(4));
                f.setDate(rs.getString(5));
                f.setTime(rs.getString(6));  
                f.setContactno(rs.getString(7));
                f.setUname(rs.getString(8));
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
return f; 
    }  
    
    
 
  
  
 
  
  public static int updateorder(order f){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update cakeorder set cakeselect=?,kg=?,quantity=?,date=?,time=?,contactno=? where id=?");  
        ps.setString(1,f.getCakeselect());  
        ps.setString(2,f.getKg());  
        ps.setString(3,f.getQuantity());  
        ps.setString(4,f.getDate());  
        ps.setString(5,f.getTime());
        ps.setString(6,f.getContactno());
       
        ps.setInt(7,f.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
  
  
  
  
  
     public static int deleteorder(order f){  
        int status=0;  
        try{  
            Connection con=jspcruddb.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from cakeorder where id=?"); 
            ps.setInt(1,f.getId());
            
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
     }   
     
     
     
     

} 
   
     
     
     
     
     
     
     

      



