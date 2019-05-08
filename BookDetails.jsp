//package database;
<%
public class BookDetails {
    private String bookId = null;
    private String title = null;
   
    
    private float price = 0.0F;
   
    private String description = null;
    
    public BookDetails(String bookId, 
                       String title, float price,
                       String description) {
        this.bookId = bookId;
        this.title = title;
        this.firstName =  firstName;
        this.surname = surname;
        this.price = price;
        this.year = year;
        this.description = description;
    }

    public String getTitle() {
        return title;
    }
    
    public float getPrice() {
        return price;
    }

    public int getYear() {
        return year;
    }

    public String getDescription() {
        return description;
    }

    public String getBookId() {
        return this.bookId;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getSurname() {
        return this.surname;
    }
}
%>
