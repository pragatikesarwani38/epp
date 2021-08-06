package mypackage;

import java.util.Random;
public class CaptchaGenerator {
    public String getCode(){
        String capcode="";
        capcode=capcode+(char)randInt(65,90);
         capcode=capcode+(char)randInt(65,90);
         capcode=capcode+(char)randInt(48,57);
         capcode=capcode+(char)randInt(48,57);
         capcode=capcode+(char)randInt(97,122);
         capcode=capcode+(char)randInt(97,122);
        return capcode;
    }
    public int randInt(int min,int max){
        Random r=new Random();
        int n=r.nextInt((max-min)+1)+min;
        return n;
    }
}
