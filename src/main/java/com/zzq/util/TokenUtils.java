package com.zzq.util;


import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.codehaus.jackson.map.ObjectMapper;

import java.io.IOException;

public class TokenUtils {
    public static AccessToken getAccessToken(String appId,String appSecret) throws ClientProtocolException, IOException {
        StringBuilder requestUrl = new StringBuilder();
        requestUrl.append("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=")
                .append(appId)
                .append("&secret=")
                .append(appSecret);
        CloseableHttpClient client = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet(requestUrl.toString());
        CloseableHttpResponse response = client.execute(httpGet);
        try {
            System.out.println(response.getStatusLine());
            HttpEntity entity = response.getEntity();
            return new ObjectMapper().readValue(EntityUtils.toString(entity), AccessToken.class);
        } finally {
            response.close();
        }
    }
}