package Medicare_Test;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.By.ById;
import org.openqa.selenium.chrome.ChromeDriver;

public class SignIn_Testcase {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		
	//	driver.get("http://localhost:8081/Medicare");
		driver.get("http://13.232.246.255:8080/medicare/admin.jsp");
		driver.manage().window().maximize();
		
		driver.findElement(ById.id("signin")).click();
		driver.findElement(ById.id("in1")).sendKeys("Raja");
		driver.findElement(ById.id("in2")).sendKeys("123");
		driver.findElement(ById.id("in3")).click();
		Thread.sleep(3000);
		driver.close();
	}

}
