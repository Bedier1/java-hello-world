import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class HelloWorldTest {
    @Test
    public void testHelloWorld() {
        HelloWorld hw = new HelloWorld();
        assertEquals("Hello, World!", hw.main(new String[0]));
    }
}