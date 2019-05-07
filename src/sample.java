// Author: Heather
// This is an example file to act as the template for the jar files for each
// script. Replace the file path before "path_to_script" prior to using.
import java.io.*;

public class sample{
    public static void main(String[] args){
        try{
            // String[] cmd = new String[]{"/bin/sh", "<path_to_main_dir>/path_to_script"};
            String[] cmd = new String[]{"/bin/sh", "/home/hhan16/CloudComputing/path_to_script"};
            Process pr = Runtime.getRuntime().exec(cmd);
            System.out.println("executed");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
