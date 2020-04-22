package com.test.market.service;

import com.test.market.bean.ProductPo;
import com.test.market.bean.PurchaseRecordPo;
import com.test.market.mapper.ProductDao;
import com.test.market.mapper.PurchaseRecordDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PurchaseServiceImpl implements PurchaseService{
    @Autowired
    private ProductDao productDao =  null;
    @Autowired
    private PurchaseRecordDao purchaseRecordDao = null;
    @Override
    // 启用数据库事务
    @Transactional
    public boolean purchase(long userId, long productId, int quantity) {
        // 获取产品
        ProductPo product = productDao.getProduct(productId);
        // 比较库存和购买数量
        if(product.getStock() < quantity) {
            // 库存不足
            return false;
        }
        // 扣减库存
        productDao.decreaseProduct(productId, quantity);
        // 初始化购买记录
        PurchaseRecordPo pr = this.initPurchaseRecord(userId, product, quantity);
        purchaseRecordDao.insertPuerchaseRecord(pr);
        return true;
    }

    private PurchaseRecordPo initPurchaseRecord(long userId, ProductPo product, int quantity){
        PurchaseRecordPo pr = new PurchaseRecordPo();
        pr.setNote("购买日志：时间 " + System.currentTimeMillis());
        pr.setPrice(product.getPrice());
        pr.setProductId(product.getId());
        pr.setQuantity(quantity);
        double sum = product.getPrice() * quantity;
        pr.setSum(sum);
        pr.setUserId(userId);
        return pr;
    }
}
