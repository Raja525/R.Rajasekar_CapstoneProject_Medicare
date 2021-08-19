package Medicare_Test;

import java.awt.Window;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class AdminAdd_Testcase {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		WebDriver driver=new ChromeDriver();
	//	 JavascriptExecutor js = (JavascriptExecutor) driver;

		//driver.get("http://localhost:8081/Medicare/admin.jsp");
		driver.get("http://13.232.246.255:8080/medicare/admin.jsp");
		driver.manage().window().maximize();
		driver.findElement(By.xpath("//*[@id='in1']")).sendKeys("admin");
		driver.findElement(By.xpath("//*[@id='in2']")).sendKeys("123");
		driver.findElement(By.xpath("//*[@id='in3']")).click();
		
		WebElement l=driver.findElement(By.name("productname"));
		 ((JavascriptExecutor)driver).executeScript("arguments[0].scrollIntoView(true);", l);
	      Thread.sleep(1000);
		
		driver.findElement(By.name("productname")).sendKeys("demo");
		driver.findElement(By.name("price")).sendKeys("demo");
		driver.findElement(By.name("description")).sendKeys("demo");
		driver.findElement(By.name("category")).sendKeys("demo");
		driver.findElement(By.name("imgname")).sendKeys("demo");
		driver.findElement(By.name("producttype")).sendKeys("demo");
		driver.findElement(By.name("brand")).sendKeys("demo");
		
		driver.findElement(By.xpath("//*[@id='btn']")).click();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		driver.close();
	}

}
