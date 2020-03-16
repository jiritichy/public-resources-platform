package online.yangcloud.tools;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

/**
 * @author 阳阳丶Sheep
 * created in 2020/3/16 20:55
 */

@Component
public class EmailUtil {

    @Value("${email.port}")
    private String emailPort;

    @Value("${email.user}")
    private String emailUser;

    @Value("${email.password}")
    private String emailPassword;

    public void sendEmail(String copyUser, String filepath) throws Exception {

        // 创建Properties 类用于记录邮箱的一些属性
        Properties props = new Properties();

        // 表示SMTP发送邮件，必须进行身份验证
        props.put("mail.smtp.auth", "true");

        //此处填写SMTP服务器
        props.put("mail.smtp.host", "smtp.qq.com");

        //端口号
        props.put("mail.smtp.port", emailPort);

        // 此处填写你的账号
        props.put("mail.user", emailUser);

        // 此处的密码就是前面说的16位STMP口令
        props.put("mail.password", emailPassword);

        // 构建授权信息，用于进行SMTP进行身份验证

        Authenticator authenticator = new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {

                // 用户名、密码
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };

        // 使用环境属性和授权信息，创建邮件会话
        Session mailSession = Session.getInstance(props, authenticator);

        // 创建邮件消息
        MimeMessage message = new MimeMessage(mailSession);

        // 设置发件人
        InternetAddress form = new InternetAddress(props.getProperty("mail.user"));
        message.setFrom(form);

        // 设置收件人的邮箱
        InternetAddress to = new InternetAddress(copyUser);
        message.setRecipient(Message.RecipientType.TO, to);

        // 设置邮件标题

        // 创建附件“附件节点”
        MimeBodyPart attachment = new MimeBodyPart();

        // 读取本地文件
        DataHandler dh2 = new DataHandler(new FileDataSource(filepath));

        // 将附件数据添加到“节点”
        attachment.setDataHandler(dh2);

        // 设置附件的文件名（需要编码）
        attachment.setFileName(MimeUtility.encodeText(dh2.getName()));

        //设置整个邮件的关系(将最终的混合“节点”作为邮件的内容添加到邮件对象)
        MimeMultipart mm = new MimeMultipart();
        mm.addBodyPart(attachment);

        // 混合关系
        mm.setSubType("mixed");
        message.setSubject("资源数据备份");

        // 设置邮件的内容体
        message.setContent("资源数据备份", "text/html;charset=UTF-8");
        message.setContent(mm);

        //保存设置
        message.saveChanges();

        // 最后当然就是发送邮件啦
        Transport.send(message);
    }

}
