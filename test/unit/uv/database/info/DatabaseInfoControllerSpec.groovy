package uv.database.info

import grails.test.mixin.TestFor
import spock.lang.Specification
import uv.databaseinfo.TO.DatabaseConnectionTO;
import uv.databaseinfo.impl.DatabaseInfo;

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(DatabaseInfoController)
class DatabaseInfoControllerSpec extends Specification {
	

	public void readPropertiesFileTestSuite(){
		String propertiesFile = "conf.properties";
		readPropertiesFileTestCase(propertiesFile);
		
		
	}


	private void readPropertiesFileTestCase(String propertiesFile){
		DatabaseInfo bi= new DatabaseInfo();
		DatabaseConnectionTO prop = new DatabaseConnectionTO();
		prop = bi.readPropertiesFile(propertiesFile);
		
		System.out.println(String.format("getDatabaseName():%s, getDriverClass():%s,", prop.getDatabaseName(),prop.getDriverClass(),prop.getPassword(),
				prop.getUrl(),prop.getUser()));
		
	}

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
    }
}
