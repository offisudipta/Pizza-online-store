package com.wipro.pos.util;

import java.sql.Connection;

public interface DBUtil {
	
	Connection getDBConnection(String driverType);

}
