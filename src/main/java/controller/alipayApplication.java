package controller;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayTradePagePayResponse;


public class alipayApplication {
        // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
        public static String app_id = "9021000132648331";
        // 商户私钥，您的PKCS8格式RSA2私钥
        public static String merchant_private_key ="MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC8Xg0nXbklqv5MGhqC8kUJ3WjQlMfW9PiuazQTekxUySy0FwPXGmoPTLV5mXv9kzW7NqVwXRamXTodm/sSytYcOVxaDTXiDxnk9sEWhPJLsuoegRy7Rq+cnT7FoJVXKVKlaDrkYXej6HubP+6USbcyOGS8Kw4/oFxweX9YXjes64M8s/wd777SBNf3SDtN2sDpZ/PAbZnDB5n7t+0bF8CU52cfVUVAfQMHMTHNMDYA+tKM30vPZxggojTJ+vAFNBoi3iaJjnaBFmntNhEV1GhaRZcuszOwfrTIzAops4eOHvGZA7nwQkX9RrtMlVaUMfwCAU5b4NQPcm0Mr9IsJbMvAgMBAAECggEAVQffyDV2rppR0Oi3rwTORXW9Kur+ivpqh9G84E4ExwFJPMJm6WLzHZTzFsFCR2V8i9ZPODnNT6wl39fZrtIBdRwvpDbya+mFNuZso03AUouhQ8PkxGVUQM5615t1zrLIrAIxE4csCsGXiq2BdU8Rc4ohbw/AjthE4kD2S128pEGkT3HnTBloslppuiKQENDKXEc99bynCagvYKEVrBRMFt+T7UP0Q6BvIY/j6ivtFw43smfqqCw3qIPMBr8BOXGKye3adP2pb8Ocr3AjwojInErkEhKQ2fOc29Z5weibop/mJeS139ML58w6R0qinOvBdFd1z72SlCG4Zh7+QEiagQKBgQD5YPAjrB54vGGbwbxo1sPLaRorsl1181ryH4aM6K38V6B4iKlAML6MBzlMF/UfUJcX5qT1yaxrlmWCf8lo092/JnA/97hv8LC8PTU+Hninh/55UPfdqE38eqp2F/yAqKr2BePLkmR8kvUTOaVIN6853n+eAF2BSWDUucmza1rSlQKBgQDBXmk9HgwTK5/yPFzMWBGZ3tp/8mtFH7UF7ppoQHL45LRa4uQ38lnsh4XDsyfH4iKHRx0l1wLPQDQ2JP4XzaCHm2/wg4FOThqHcrInrS1p1C+Tk+D4VE0LPlGSwCVBx7lpCoQRxX2ZRzhNN9y5s3k4GZlqPOKykY7JaCgf3fJhswKBgQDKZXjBGwKoLwxxY63M0PGb97N734mnH1mixR9o4bfD5EKjURc8t9MOxxYjwhX50miux0z/By1fLHM6lQgcgkeoykO0RxN0Fr76KBs8TXLTVbadM6/YQK76yXvr2M/ghAQtJN6a7DeOO5+YeOLCWB9pMkIVNGqvcaSbQiaH7guKeQKBgC0MdbALY/zDWQvyDBx/F/qk9HqCW4NLE71CDS7kdOSPQ4U4/roZ9+Em4X7qKgZjJHAnnR7HrJvj9UX38EpTWWa+S6HYwTMg9wU/L0oXClFxYXQcK3kvCpPn/NEXepaMlSFnlcUeIVioQvGaZg3NRhxPunIJpTa8umspnM9vwZwJAoGBALI9hwdEbRWCvpG5IB4UcNKxDZP9XYcFa04QevSK/R9SBfwnoBziH5TpzEatlIpbzhdq0ioNsDjDc4DkANj3l8XIO7Acib5vMqvyiaYGAm9bIM7LJxTCDSaiGjqujbVT5L7ZYae951J+lfKFijgn2I+Qx4FDiBuPTd/a5FfiSRvk";
        // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
        public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqhGkAUo2AvrS7YLOBFC39OqVW0N8vVsPeL5cDvXBISmUSPwUUMw0wf0ATVYjiozlrY3MDCGekRtFkuZnfbxF4DL01aWwN2vD0WWcDLo8yqSr8to3ojak3J/3eJQHKtUMk32Z9fKg03gCIHtlQWZYnkQ6eccSGMX70Q44k73pPKO/G4n24b+6WauEvGpeT44c3igHELw2/hnd8gPH2ZStCNfkdyrKt+U+Py+Y3pWT4C3vgHAeAvt1vVgGmlG7xD6yg+Udl52ZjCFk2+HTY6G4darRyO+RI8tvv/WTg6miKhQ2UBYB7ijuJYrTH38EaEke81aGoGk7E1JlYr02wVCu/QIDAQAB";
        // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
        public static String notify_url = "http://localhost:8080/unnamed/notify";
        // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
        public static String return_url = "";
        // 签名方式
        public static String sign_type = "RSA2";
        // 字符编码格式
        public static String charset = "utf-8";
        // 支付宝网关
        public static String gatewayUrl = "https://openapi-sandbox.dl.alipaydev.com/gateway.do";
		// out_trade_no:订单号16位数字的随机数
		// price：价格
		// subject：订单描述
        public static String pay(int out_trade_no,double price,String subject) throws AlipayApiException {
        AlipayClient alipayClient = new DefaultAlipayClient(gatewayUrl,app_id,merchant_private_key,"json",charset,alipay_public_key,sign_type);
        AlipayTradePagePayRequest request = new AlipayTradePagePayRequest();
        request.setNotifyUrl(notify_url);
        request.setReturnUrl("");
        JSONObject bizContent = new JSONObject();
        bizContent.put("out_trade_no", System.currentTimeMillis()+out_trade_no);
        bizContent.put("total_amount", price);
        bizContent.put("subject", subject);
        bizContent.put("product_code", "FAST_INSTANT_TRADE_PAY");
        request.setBizContent(bizContent.toString());
        System.out.println("bizContent: "+ bizContent.toString());
        AlipayTradePagePayResponse response = alipayClient.pageExecute(request);
        String form ="";
        if(response.isSuccess()){
            System.out.println("调用成功");
            form = response.getBody();
        } else {
            System.out.println("调用失败");
        }
        return form;
    }
}
