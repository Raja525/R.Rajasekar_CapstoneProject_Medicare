package Medicare_Test;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Filter_Testcase {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		 JavascriptExecutor js = (JavascriptExecutor) driver;

	//	driver.get("http://localhost:8081/Medicare");
		driver.get("http://13.232.246.255:8080/medicare/admin.jsp");
		driver.manage().window().maximize();
		
		driver.findElement(By.xpath("//*[@id='searchcontainer']//form/button")).click();
		
		driver.findElement(By.id("flush-headingOne")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseOne']//div/span/form[1]")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("flush-headingOne")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseOne']//div/span/form[2]")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("flush-headingOne")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseOne']//div/span/form[3]")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("flush-headingOne")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseOne']//div/span/form[4]")).click();
		Thread.sleep(3000);
		
		driver.findElement(By.id("flush-headingTwo")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseTwo']//div/span/form[1]")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("flush-headingTwo")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseTwo']//div/span/form[2]")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("flush-headingTwo")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseTwo']//div/span/form[3]")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("flush-headingTwo")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseTwo']//div/span/form[4]")).click();
		Thread.sleep(3000);
		
		driver.findElement(By.id("flush-headingThree")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseThree']//div/span/form[1]")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("flush-headingThree")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseThree']//div/span/form[2]")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("flush-headingThree")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseThree']//div/span/form[3]")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("flush-headingThree")).click();
		driver.findElement(By.xpath("//*[@id='flush-collapseThree']//div/span/form[4]")).click();
		Thread.sleep(3000);
		
		driver.close();
	}

}
