package Medicare_Test;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.By.ById;
import org.openqa.selenium.chrome.ChromeDriver;

public class User_Search_Testcase {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		 JavascriptExecutor js = (JavascriptExecutor) driver;

	//	driver.get("http://localhost:8081/Medicare");
		driver.get("http://13.232.246.255:8080/medicare/admin.jsp");
		driver.manage().window().maximize();
		
		driver.findElement(ById.id("signin")).click();
		driver.findElement(ById.id("in1")).sendKeys("Raja");
		driver.findElement(ById.id("in2")).sendKeys("123");
		driver.findElement(ById.id("in3")).click();
		
		driver.findElement(By.xpath("//*[@id='searchcontainer']//form/button")).click();
		driver.findElement(By.xpath("//*[@class='btn']")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//*[@id='searchbar']")).sendKeys("healthcare");
		driver.findElement(By.xpath("//*[@class='btn']")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//*[@id='searchbar']")).sendKeys("Horlicks");
		driver.findElement(By.xpath("//*[@class='btn']")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//*[@id='logo']")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//*[@id='searchbar']")).sendKeys("facecare");
		driver.findElement(By.xpath("//*[@id='searchcontainer']//form/button")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//*[@id='logo']")).click();
		driver.findElement(By.xpath("//*[@id='searchbar']")).sendKeys("Loral Fc");
		driver.findElement(By.xpath("//*[@id='searchcontainer']//form/button")).click();
		Thread.sleep(3000);
		driver.close();

	}

}
