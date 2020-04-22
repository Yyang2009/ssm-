package com.test.market.service;

public interface PurchaseService {
    /*
    * 处理购买业务
    * @paran userid 用户编号
    * @param productid  产品编号
    * @param quantity 购买数量
    * @return 成功 or 失败
    * */
    public boolean purchase(long userId, long productId, int quantity);
}
