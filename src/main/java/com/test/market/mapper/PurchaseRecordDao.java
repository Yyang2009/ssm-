package com.test.market.mapper;

import com.test.market.bean.PurchaseRecordPo;
import org.springframework.stereotype.Service;

@Service
public interface PurchaseRecordDao {
    public int insertPuerchaseRecord(PurchaseRecordPo pr);
}
