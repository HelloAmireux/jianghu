package cmstu.util;
import java.sql.*;
import javax.sql.DataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;

public class ConnectionFactory {
    //使用ComboPooledDataSource来生成DataSource的实例
    private static DataSource dataSource = new ComboPooledDataSource();

    //从连接池中获取连接
    public static Connection getConnection(){
        try {
            return dataSource.getConnection();
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return null;
    }

    //释放连接回连接池
    public static void close(Connection connection, PreparedStatement preparedStatement, ResultSet resultSet) {
            try{
                if (resultSet !=null) resultSet.close();
                if(preparedStatement !=null) preparedStatement.close();
                if(connection !=null) connection.close();
            }catch (SQLException e){
                e.printStackTrace();
            }


    }
}