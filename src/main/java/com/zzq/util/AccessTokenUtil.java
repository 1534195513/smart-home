package com.zzq.util;


import net.sf.json.JSONObject;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AccessTokenUtil {
    public static AccessToken getAccessToken() {
        AccessToken accessToken = new AccessToken();
        try {
            String url = "https://www.bigiot.net/oauth/token";
//            Map map = new HashMap();
//            map.put("client_id", "208");
//            map.put("client_secret", "e008c6037e");
//            map.put("username", "2402");
//            map.put("password", "1c6d5614b1");
//            map.put("grant_type", "password");
//           String entityStr = HttpUtil.doPost(url,map);
            HttpPost httpPost = new HttpPost(url);
            List<NameValuePair> params = new ArrayList<>();
            params.add(new BasicNameValuePair("client_id", "208"));
            params.add(new BasicNameValuePair("client_secret", "e008c6037e"));
            params.add(new BasicNameValuePair("username", "2402"));
            params.add(new BasicNameValuePair("password", "1c6d5614b1"));
            params.add(new BasicNameValuePair("grant_type", "password"));
            httpPost.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8));
            HttpResponse response = new DefaultHttpClient().execute(httpPost);
            HttpEntity entity = response.getEntity();
            String entityStr = EntityUtils.toString(entity,"UTF-8");
            String result = entityStr.substring(1,entityStr.length());
            JSONObject jsonObject = JSONObject.fromObject(result);
            accessToken.setAccess_token(jsonObject.getString("access_token"));
            accessToken.setExpires_in(new Integer(jsonObject.getString("expires_in")));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return accessToken;
    }

}