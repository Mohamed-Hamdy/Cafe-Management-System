package com.inn.cafe.POJO;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@NamedQuery(name = "Product.getAllProduct", query = "select new com.inn.cafe.wrapper.ProductWrapper(u.id , u.name , u.description , u.price , u.category.id , u.category.name , u.isavailable) from Product u")

//@NamedQuery(name = "Product.updateProductStatus" , query = "update Product u set u.isavailable =:isavailable where u.id =:id")

@NamedQuery(name = "Product.getByCategory", query = "select new com.inn.cafe.wrapper.ProductWrapper(u.id , u.name , u.description , u.price , u.category.id , u.category.name , u.isavailable  ) from Product u where u.category.id=:id and u.isavailable='true'")

@NamedQuery(name = "Product.getProductById", query = "select new com.inn.cafe.wrapper.ProductWrapper(u.id , u.name , u.description , u.price) from Product u where u.id=:id")

@Data
@Entity
@DynamicUpdate
@DynamicInsert
@Table(name = "product")
public class Product implements Serializable {
    private static final long serialVersionUID = 123456L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;

    @Column(name = "name")
    private String name;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_fk", nullable = false)
    private Category category;

    @Column(name = "description")
    private String description;

    @Column(name = "price")
    private Integer price;

    @Column(name = "isavailable")
    private String isavailable;


    public Product() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }


    public String getIsavailable() {
        return isavailable;
    }

    public void setIsavailable(String isavailable) {
        this.isavailable = isavailable;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", category=" + category +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", isavailable='" + isavailable + '\'' +
                '}';
    }
}
