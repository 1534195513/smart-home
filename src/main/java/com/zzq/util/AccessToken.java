package com.zzq.util;

import net.sf.json.JSONObject;

public class AccessToken {

//    {"access_token":"583c1fb40a0dd225d42c5d8aa1c785e3e9e66eed",
//            "expires_in":3600,"token_type":"Bearer","scope":null,
//            "refresh_token":"7298fa4a4a7cc099a82e113564930f7208c8895d"}
    //获取到token
    private String access_token;
    //有效时间1小时
    private int expires_in;

    public String getAccess_token() {
        return access_token;
    }

    public void setAccess_token(String access_token) {
        this.access_token = access_token;
    }

    public int getExpires_in() {
        return expires_in;
    }

    public void setExpires_in(int expires_in) {
        this.expires_in = expires_in;
    }

}
