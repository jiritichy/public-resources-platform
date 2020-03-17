package online.yangcloud.config;

import online.yangcloud.tools.BackupData;
import online.yangcloud.tools.EmailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.io.File;

/**
 * @author 阳阳丶Sheep
 * created in 2020/3/16 18:45
 */

@Component
public class EmailJob {

    @Value("${backup}")
    private String backup;

    @Autowired
    private EmailUtil emailUtil;

    @Scheduled(cron = "0 0 0 * * ?")
    public void autoSendEmail() throws Exception {
        File file = new File(backup);
        if (!file.exists()) {
            boolean result = file.mkdirs();
        }
        String filepath = backup + "resources.sql";
        BackupData.backupDataToFile("root", "root", filepath);
        Thread.sleep(1000);
        emailUtil.sendEmail("zhuboyang1996@foxmail.com", filepath);
    }

}
