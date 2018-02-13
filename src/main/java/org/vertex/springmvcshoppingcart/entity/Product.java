package org.vertex.springmvcshoppingcart.entity;
 
import java.io.Serializable;
import java.util.Date;
 
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Type;
 
@Entity
@Table(name = "Products")
public class Product implements Serializable {
 
    private static final long serialVersionUID = -1000119078147252957L;
 
    private String code;
    private String name;
    private double price;
    
    
    private byte[] image;
 
    // For sort.
    private Date createDate;
 
    public Product() {
    }
 
    @Id
    @Column(name = "Code", length = 20, nullable = false)
    public String getCode() {
        return code;
    }
 
    public void setCode(String code) {
        this.code = code;
    }
 
    @Column(name = "Name", length = 255, nullable = false)
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    @Column(name = "Price", nullable = false)
    public double getPrice() {
        return price;
    }
 
    public void setPrice(double price) {
        this.price = price;
    }
 
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "Create_Date", nullable = false)
    public Date getCreateDate() {
        return createDate;
    }
 
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
 
    @Lob
    @Column(name = "Image", nullable = true)
    @Type(type="org.hibernate.type.BinaryType")
    public byte[] getImage() {
//    	System.out.println("=========="+image.getClass());
//    	System.out.println("********"+image.length);
        return image;
    }
 
    public void setImage(byte[] image) {
        this.image = image;
    }
 
}