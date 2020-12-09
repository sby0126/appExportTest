package service;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import vo.MailHandler;

public class SendMailService {
	
	private String configFilePath;
	private Properties configFile;

	static final String CONFIGSET = "ConfigSet";
	static final int PORT = 587;
		
	public SendMailService() {
		// db.properties 파일은 보안 우려로 추후에 깃허브에서 제거됩니다.  
		configFilePath = Paths.get( System.getProperty("user.dir"), "src", "db.properties" ).toString();
	}
	
	public void loadConfig() {
		try {
			
			System.out.println( System.getProperty("user.dir") );
			
			FileInputStream fis = new FileInputStream(configFilePath);
			configFile = new Properties();
			configFile.load(new BufferedInputStream(fis));
			fis.close();
			
		} catch(IOException e) {
			e.printStackTrace();
		}

	}
	
	/**
	 * 임시 비밀번호 발급 후 이메일을 전송하는 기능입니다. 
	 * SMTP 서버가 없으면 지메일 무료 계정 한도로 하루에 최대 100개의 메일만 보낼 수 있습니다.
	 * 
	 * @link https://support.google.com/a/answer/166852?hl=ko
	 */
	public void sendMail(MailHandler handler) throws Exception {
		
		loadConfig();		
				
		// 보내는 사람
		String FROM = configFile.getProperty("mail.from");
		// 보내는 사람 이름
		String FROMNAME = configFile.getProperty("mail.fromname");
		// SMTP 서버 주소
		String HOST = configFile.getProperty("mail.host");
		
		// 주의: 이메일 비밀번호가 여과 없이 깃허브에 노출될 수 있습니다.
		// (테스트용 지메일이 실제로 필요합니다)
		String SMTP_PASSWORD = configFile.getProperty("mail.password");
		
		int PORT = Integer.parseInt(configFile.getProperty("mail.port"));
		
    	Properties props = System.getProperties();
    	props.put("mail.transport.protocol", "smtp");
    	props.put("mail.smtp.port", PORT); 
    	props.put("mail.smtp.starttls.enable", "true");
    	props.put("mail.smtp.auth", "true");
 
    	Session session = Session.getDefaultInstance(props);

        MimeMessage msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(FROM,FROMNAME));
        msg.setRecipient(Message.RecipientType.TO, new InternetAddress(handler.getTo()));
        msg.setSubject(handler.getSubject());
        msg.setContent(handler.getBody(),"text/html");
        
        msg.setHeader("X-SES-CONFIGURATION-SET", CONFIGSET);
            
        Transport transport = session.getTransport();
                    
        try
        {
            System.out.println("이메일 전송에 실패하였습니다.");
            
            transport.connect(HOST, handler.getUsername(), SMTP_PASSWORD);
        	
            transport.sendMessage(msg, msg.getAllRecipients());
            System.out.println("이메일 전송에 성공하였습니다.");
        }
        catch (Exception ex) {
            System.out.println("The email was not sent.");
            System.out.println("Error message: " + ex.getMessage());
        }
        finally
        {
            transport.close();
        }	
        
	}
		
}
