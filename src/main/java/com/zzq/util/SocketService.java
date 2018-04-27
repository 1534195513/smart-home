package com.zzq.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

import net.sf.json.JSONObject;

public class SocketService {
    public static void main(String[] args) {
        Scanner in=new Scanner(System.in);
        InputStreamReader isr;
        BufferedReader br;
        OutputStreamWriter osw;
        BufferedWriter rw;
        //  String str =" {\"M\":\"update\",\"ID\":\"2656\",\"V\":{\"4588\":\"26\"}}";

        try {
            ServerSocket serverSocket=new ServerSocket(8181);
            System.out.println("等待esp8266连接");
            Socket socket=serverSocket.accept();
            System.out.println("客户端已连接"+socket.hashCode());
            isr=new InputStreamReader(socket.getInputStream());
            br=new BufferedReader(isr);
            String str=br.readLine();
            JSONObject object=JSONObject.fromObject(str);
            System.out.println("ID:"+object.getInt("ID"));
            System.out.println("Name:"+object.getString("M"));
//            br.close();
//            socket.close();
//            serverSocket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}