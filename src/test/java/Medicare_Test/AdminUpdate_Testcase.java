package Medicare_Test;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

//------------------------------Passing-------------------------//
public class AdminUpdate_Testcase {

	public static void main(String[] args) {
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		WebDriver driver=new ChromeDriver();
	
	//	driver.get("http://localhost:8081/Medicare/admin.jsp");
		driver.get("http://13.232.246.255:8080/medicare/admin.jsp");
		driver.manage().window().maximize();
		driver.findElement(By.xpath("//*[@id='in1']")).sendKeys("admin");
		driver.findElement(By.xpath("//*[@id='in2']")).sendKeys("123");
		driver.findElement(By.xpath("//*[@id='in3']")).click();
		driver.findElement(By.xpath("//*[@id='container']//tbody/tr[1]/td[8]")).click();
		driver.findElement(By.name("price")).clear();
		driver.findElement(By.name("price")).sendKeys("10");
		driver.findElement(By.id("btn")).click();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		driver.close();
	}

}
