package Medicare_Test;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Sort_Testcase {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		 JavascriptExecutor js = (JavascriptExecutor) driver;

	//	driver.get("http://localhost:8081/Medicare");
		driver.get("http://13.232.246.255:8080/medicare/admin.jsp");
		driver.manage().window().maximize();
		
		driver.findElement(By.xpath("//*[@id='searchcontainer']//form/button")).click();
		driver.findElement(By.xpath("//*[@id='sort']//span/form[1]")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//*[@id='sort']//span/form[2]")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//*[@id='sort']//span/form[3]")).click();
		Thread.sleep(3000);
		driver.close();
	}

}
