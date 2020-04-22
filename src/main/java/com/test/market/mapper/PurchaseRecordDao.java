package com.test.market.mapper;

import com.test.market.bean.PurchaseRecordPo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Component
@Mapper
public interface PurchaseRecordDao {
    public int insertPuerchaseRecord(PurchaseRecordPo pr);
}
