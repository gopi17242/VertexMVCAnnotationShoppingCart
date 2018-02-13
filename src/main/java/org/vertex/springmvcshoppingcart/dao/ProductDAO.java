package org.vertex.springmvcshoppingcart.dao;

import org.vertex.springmvcshoppingcart.entity.Product;
import org.vertex.springmvcshoppingcart.model.PaginationResult;
import org.vertex.springmvcshoppingcart.model.ProductInfo;

public interface ProductDAO {



public Product findProduct(String code);

public ProductInfo findProductInfo(String code) ;


public PaginationResult<ProductInfo> queryProducts(int page,
int maxResult, int maxNavigationPage );

public PaginationResult<ProductInfo> queryProducts(int page, int maxResult,
int maxNavigationPage, String likeName);

public void save(ProductInfo productInfo);

}