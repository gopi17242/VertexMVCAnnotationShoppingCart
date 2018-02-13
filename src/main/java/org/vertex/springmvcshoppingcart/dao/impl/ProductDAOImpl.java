package org.vertex.springmvcshoppingcart.dao.impl;

import java.util.Date;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.vertex.springmvcshoppingcart.dao.ProductDAO;
import org.vertex.springmvcshoppingcart.entity.Product;
import org.vertex.springmvcshoppingcart.model.PaginationResult;
import org.vertex.springmvcshoppingcart.model.ProductInfo;

// Transactional for Hibernate
@Transactional
public class ProductDAOImpl implements ProductDAO {

@Autowired
private SessionFactory sessionFactory;


public Product findProduct(String code) {
Session session = sessionFactory.getCurrentSession();
Criteria crit = session.createCriteria(Product.class);
crit.add(Restrictions.eq("code", code));
return (Product) crit.uniqueResult();
}


public ProductInfo findProductInfo(String code) {
Product product = this.findProduct(code);
if (product == null) {
return null;
}
return new ProductInfo(product.getCode(), product.getName(), product.getPrice());
}


public void save(ProductInfo productInfo) {
String code = productInfo.getCode();
System.out.println("file data=2222222==");
Product product = null;

boolean isNew = false;
if (code != null) {
product = this.findProduct(code);
}
if (product == null) {
isNew = true;
product = new Product();
product.setCreateDate(new Date());
}
product.setCode(code);
product.setName(productInfo.getName());
product.setPrice(productInfo.getPrice());

if (productInfo.getFileData() != null) {
byte[] image = productInfo.getFileData().getBytes();
//System.out.println("=====11====="+image.getClass());
//System.out.println("****22****"+image.length);

if (image != null && image.length > 0) {
	System.out.println("****33****"+image);
product.setImage(image);
}
}
if (isNew) {
//	System.out.println("****is newwwwwwwww****");
this.sessionFactory.getCurrentSession().persist(product);
}
// If error in DB, Exceptions will be thrown out immediately
// N?u c� l?i t?i DB, ngo?i l? s? n�m ra ngay l?p t?c
this.sessionFactory.getCurrentSession().flush();
}


public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage,
String likeName) {
String sql = "Select new " + ProductInfo.class.getName() //
+ "(p.code, p.name, p.price) " + " from "//
+ Product.class.getName() + " p ";
if (likeName != null && likeName.length() > 0) {
sql += " Where lower(p.name) like :likeName ";
}
sql += " order by p.createDate desc ";
//
Session session = sessionFactory.getCurrentSession();

Query query = session.createQuery(sql);
if (likeName != null && likeName.length() > 0) {
query.setParameter("likeName", "%" + likeName.toLowerCase() + "%");
}
return new PaginationResult<ProductInfo>(query, page, maxResult, maxNavigationPage);
}


public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage) {
return queryProducts(page, maxResult, maxNavigationPage, null);
}

}