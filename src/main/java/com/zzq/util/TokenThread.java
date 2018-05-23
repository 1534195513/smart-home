package com.zzq.util;

public class TokenThread implements Runnable {
    public static AccessToken accessToken = null;
    @Override
    public void run() {
        while (true){
            try{
                accessToken = AccessTokenUtil.getAccessToken();
                if(null!=accessToken)
                {
                    System.out.println("获取成功"+accessToken.getExpires_in());
                    //3500秒之后重新获取
                    Thread.sleep((accessToken.getExpires_in()-100)*1000);
                }else {
                    Thread.sleep(60*1000);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
