package com.bwangai.webstore.service;

import com.bwangai.webstore.domain.Product;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by bwangai on 1/20/17.
 */
public interface ProductService {
    List<Product> getAllProducts();

    Product getProductById(String productID);

    List<Product> getProductsByCategory(String category);

    Set<Product> getProductsByFilter(Map<String, List<String>> filterParams);

    void addProduct(Product product);
}

