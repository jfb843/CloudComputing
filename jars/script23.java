import java.io.*;

public class script23{
    public static void main(String[] args){
        try{
            // String[] cmd = new String[]{"/bin/sh", "<path_to_main_dir>/scripts/23_script.sh"};
            String[] cmd = new String[]{"/bin/sh", "/home/hhan16/CloudComputing/scripts/23_script.sh"};
            Process pr = Runtime.getRuntime().exec(cmd);
            System.out.println("executed");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
