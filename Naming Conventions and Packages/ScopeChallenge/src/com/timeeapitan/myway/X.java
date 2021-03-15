package com.timeeapitan.myway;

import java.util.Scanner;

public class X {
    private int x = 1;

    public int x(){
        System.out.println("Write a number: ");
        Scanner x = new Scanner(System.in);
        return x.nextInt();
    }

    public void x(int x){
        while(this.x<=12){
            System.out.println(this.x + " times " + x + " equals " + this.x*x);
            this.x++;
        }
    }
}
