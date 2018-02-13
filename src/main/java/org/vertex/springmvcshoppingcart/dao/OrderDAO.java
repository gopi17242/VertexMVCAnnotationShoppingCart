package org.vertex.springmvcshoppingcart.dao;

import java.util.List;

import org.vertex.springmvcshoppingcart.model.CartInfo;
import org.vertex.springmvcshoppingcart.model.OrderDetailInfo;
import org.vertex.springmvcshoppingcart.model.OrderInfo;
import org.vertex.springmvcshoppingcart.model.PaginationResult;

public interface OrderDAO {

public void saveOrder(CartInfo cartInfo);

public PaginationResult<OrderInfo> listOrderInfo(int page,
int maxResult, int maxNavigationPage);

public OrderInfo getOrderInfo(String orderId);

public List<OrderDetailInfo> listOrderDetailInfos(String orderId);

}