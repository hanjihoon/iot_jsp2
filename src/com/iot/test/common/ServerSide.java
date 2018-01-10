package com.iot.test.common;

import java.io.DataOutputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class ServerSide {
    public static void main(String[] args) {
        int count=0;
        try {

         // 프로그램의 매개변수로 지정한 포트 번호를 읽어 정수로 변환
         int port = Integer.parseInt(args[0]);

         // 서버 소켓 객체 ss 생성
         ServerSocket ss = new ServerSocket(80);


         System.out.println("-----------------------------------------");
         System.out.println("SERVER SOCKET Activated------------------");
         System.out.println("-----------------------------------------");
         while(true) {   // 데몬이 되기 위한 무한 루프 
          System.out.println("-----------------------------------------");
          System.out.println("Client Socket를 기다리고 있습니다.----------");
          System.out.println("-----------------------------------------");

          //클라이언트 소켓 s = 서버소켓.accept()
          // 클라이언트의 요청을 기다린다
          // 클라이언트의 요청이 발생하면 Socket 객체 s를 생성
          Socket s = ss.accept();
          
          System.out.println("-----------------------------------------");
          System.out.println(++count + " 번째 Client Socket이 생성되었습니다.");
          System.out.println("-----------------------------------------");       

          //데이터타입 그대로 출력
          OutputStream os = s.getOutputStream();
          
          // 데이터를 출력하기 위한 스트림 객체 생성        
          DataOutputStream dos = new DataOutputStream(os);

          for(int i = 1 ; i <= 10 ; i++){ 
           dos.writeInt(i);
          }
          s.close();  // 소켓을 닫는다
         }
        }
        catch(Exception e) {
         System.out.println("Exception: " + e);
        }
     }
	}

