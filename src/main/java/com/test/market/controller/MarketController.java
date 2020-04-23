package com.test.market.controller;

import com.test.market.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MarketController {
    @Autowired
    PurchaseService purchaseService = null;
    @PostMapping("/purchase")
    public Result purchase(Long userId, long productId, Integer quantity) {
        boolean success = purchaseService.purchase(userId, productId, quantity);
        String message = success ? "抢购成功" : "抢购失败";
        Result result = new Result(success, message);
        return result;
    }

    class Result {
        public boolean isSuccess() {
            return success;
        }

        public void setSuccess(boolean success) {
            this.success = success;
        }

        public String getMessage() {
            return message;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        private boolean success = false;
        private String message = null;

        public Result(){}

        public Result(boolean success, String message) {
            this.success = success;
            this.message = message;
        }
    }
}
