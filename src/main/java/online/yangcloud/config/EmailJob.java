package online.yangcloud.config;

import online.yangcloud.tools.BackupData;
import online.yangcloud.tools.EmailUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

    private final Logger log = LoggerFactory.getLogger(EmailJob.class);

    @Value("${setting.windows.backup}")
    private String windowsBackupPath;

    @Value("${setting.linux.backup}")
    private String linuxBackupPath;

    @Autowired
    private EmailUtil emailUtil;

    @Scheduled(cron = "0 0 0 * * ?")
    public void autoSendEmail() throws Exception {
        String backup;
        String systemName = System.getProperty("os.name").toLowerCase();
        if (systemName.equals("windows 10"))
            backup = windowsBackupPath;
        else
            backup = linuxBackupPath;
        File file = new File(backup);
        if (!file.exists()) {
            log.info("备份目录不存在");
            boolean result = file.mkdirs();
            if (result)
                log.info("备份目录创建成功");
            else
                log.info("备份目录创建失败");
        }
        String filepath = backup + "resources.sql";
        BackupData.backupDataToFile("root", "root", filepath);
        Thread.sleep(1000);
        emailUtil.sendEmail("zhuboyang1996@foxmail.com", filepath);
        Thread.sleep(2000);
        File resourceFile = new File(filepath);
        boolean deleteResult= resourceFile.delete();
        if (deleteResult)
            log.info("数据库备份文件删除成功");
        else
            log.info("数据库备份文件删除失败");
    }

}
