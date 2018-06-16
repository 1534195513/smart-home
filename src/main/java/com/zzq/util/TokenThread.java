package com.zzq.util;

import java.util.Date;

public class TokenThread implements Runnable {
    public static AccessToken accessToken = null;
    @Override
    public void run() {
        while (true){
            try{
                accessToken = AccessTokenUtil.getAccessToken();
                if(accessToken!=null)
                {
                    System.out.println(new Date()+"获取成功"+accessToken.getAccess_token());
                    //3500秒之后重新获取
                    Thread.sleep((accessToken.getExpires_in()-100)*1000);
                }else {
                    System.out.println("获取失败");
                    Thread.sleep(60);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
