package com.bwangai.webstore.service.impl;

/**
 * Created by bwangai on 1/13/17.
 */

import com.bwangai.webstore.domain.Product;
import com.bwangai.webstore.domain.repository.ProductRepository;
import com.bwangai.webstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceAppl implements OrderService {

    @Autowired
    private ProductRepository productRepository;


    public void processOrder(String productId, long quantity) {
        Product productById = productRepository.getProductById(productId);

        if (productById.getUnitsInStock() < quantity) {
            throw new IllegalArgumentException("Out of Stock. Available Units in stock" + productById.getUnitsInStock());
        }
        productById.setUnitsInStock(productById.getUnitsInStock() - quantity);

    }


}
