package util;
import com.alibaba.druid.pool.DruidDataSourceFactory;
import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class StuUtil {
    private static DataSource ds;

    static {
        try {
            Properties pro = new Properties();
            InputStream is = StuUtil.class.getClassLoader().getResourceAsStream("druid.properties");
            pro.load(is);
            ds= DruidDataSourceFactory.createDataSource(pro);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static DataSource getDs(){
        return ds;
    }
    public static Connection getConn() throws SQLException {
        return ds.getConnection();
    }
}
