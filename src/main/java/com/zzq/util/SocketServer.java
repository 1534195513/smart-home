package com.zzq.util;



import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;

public class SocketServer {

    public static void main(String[] args) {
      //  String str =" {\"M\":\"update\",\"ID\":\"2656\",\"V\":{\"4588\":\"26\"}}";

        SocketServer socketServer = new SocketServer();
        socketServer.startServer();
    }

    public static void startServer() {
        ServerSocket serverSocket = null;
        BufferedReader reader = null;
        Socket socket = null;
        String receiveMsg = "";
        try {
            // 端口号只要不冲突就行
            serverSocket = new ServerSocket(8181);
            System.out.println("server started..");
            // 进入阻塞状态，等待客户端接入
            socket = serverSocket.accept();
            System.out.println("client " + socket.hashCode() + " connected");
            // 从socket中读取数据
            reader = new BufferedReader(new InputStreamReader(socket.getInputStream()));

//            JSONObject jsonObject = JSONObject.fromObject(receiveMsg);
//            jsonObject.getJSONObject("V").get("4588").toString();
            while ((receiveMsg = reader.readLine()) != null) { // 以"\n"结束
                System.out.println(receiveMsg);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                reader.close();
                socket.close();
                serverSocket.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}