package com.bwangai.webstore.service;

/**
 * Created by bwangai on 1/6/17.
 */
public interface OrderService {
    void processOrder(String productId, long quantity);

}
