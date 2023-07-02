//package com.amireux.web;
//
//import javax.swing.*;
//import java.awt.*;
//import java.awt.event.ActionEvent;
//import java.awt.event.ActionListener;
//
//
//public class test
//{
//    private static JButton jb1;
//    private static JButton jb2;
//    private static  boolean flag=false;
//    public static void main(String[] args) {
//        test01();
//    }
//    public static void  test01()
//    {
//        JFrame jf=new JFrame("这是窗口");
//        jf.setSize(500,500);
//
//
//        jf.setLocationRelativeTo(null);
//        jf.setVisible(true);
//        jb1.setBounds(700,550,50,10);
//        jb2.setBounds(800,550,50,10);
//        JLabel jl1 = new JLabel("你确定要删除吗");
//         jb1=new JButton("确定");
//         jb2=new JButton("取消");
//        jf.add(jl1);
//        jf.add(jb1);
//        jf.add(jb2);
////增加监听
//        jb1.addActionListener((ActionListener) jf);
//        jb2.addActionListener((ActionListener) jf);
//        System.out.println(flag);
//    }
//
//    public void actionPerformed(ActionEvent e) {
//
//        if (e.getSource() == jb1) {//如果点击的是"登陆"的button,则对账号密码进行判断
//
//            flag = true;
//        } else if (e.getSource() == jb2) {//如果点击的是"退出"的button那么就直接退出程序
//            flag = false;
//        }
//        System.exit(0);
//    }
//}
