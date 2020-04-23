package com.test.market.mapper;

import com.test.market.bean.ProductPo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service
public interface ProductDao {
    // 获取产品
    public ProductPo getProduct(Long id);
    // 减少库存
    public int decreaseProduct(@Param("id") long id, @Param("quantity") int quantity);
}
