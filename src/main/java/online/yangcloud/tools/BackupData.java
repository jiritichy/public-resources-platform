package online.yangcloud.tools;

import java.io.IOException;

/**
 * @author 阳阳丶Sheep
 * created in 2020/3/16 20:06
 */

public class BackupData {

    public static void backupDataToFile(String user, String pwd, String filepath) {
        try {
            String sql = "mysqldump resources -u" + user + " -p" + pwd + " --result-file=" + filepath;
            Runtime.getRuntime().exec(sql);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
