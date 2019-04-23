import java.io.*;

public class generateScriptTimes{
    public static void main(String[] args){
        try{
            String[] cmd = new String[]{"/bin/sh", "/Users/heather/Projects/CloudComputing/generate_script_times.sh"};
            Process pr = Runtime.getRuntime().exec(cmd);
            System.out.println("executed");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
