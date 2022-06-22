package furnitureShop.e2e;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty"},
        features = "src/test/resources",
        glue = {"furnitureShop/e2e"},
        tags = "@E2E and @SmokeTest"
)
public class TestRunner {
}
