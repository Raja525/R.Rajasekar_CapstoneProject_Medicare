package Medicare_Test;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.By.ById;
import org.openqa.selenium.chrome.ChromeDriver;

//------------------------------Passed------------------------//
public class SignUp_Testcase {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		
	//	driver.get("http://localhost:8081/Medicare");
		driver.get("http://13.232.246.255:8080/medicare/admin.jsp");
		driver.manage().window().maximize();
		
		driver.findElement(ById.id("signin")).click();
		driver.findElement(By.xpath("//*[@id='div2']//a")).click();;
		driver.findElement(By.name("username")).sendKeys("Major");
		driver.findElement(By.name("mailid")).sendKeys("raja525rs@gmial.com");	
		driver.findElement(By.name("mobileno")).sendKeys("8347747470");
		driver.findElement(By.name("address")).sendKeys("Nadondee street,bachar road,chennai");
		driver.findElement(By.name("password")).sendKeys("major");
		driver.findElement(By.id("in3")).click();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		driver.findElement(ById.id("in1")).sendKeys("Major");
		driver.findElement(ById.id("in2")).sendKeys("major");
		driver.findElement(ById.id("in3")).click();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		driver.close();
	}

}
