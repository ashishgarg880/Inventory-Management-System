import java.sql.*;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import java.awt.event.ActionListener;

public class dangerlevell extends javax.swing.JInternalFrame {

   Connection con;
ResultSet rs,rs1,rs2;
Statement st,st1,st2;
  int pur, sale, bal;
  
    public dangerlevell()
    {
        initComponents();
          connect();
           read(); 
    }

    public void connect()
{
    
String host = "jdbc:mysql://localhost:3306/mainproject?useSSL=false";
String user = "root";
String pass ="1234";
try
{
 con= DriverManager.getConnection(host,user,pass) ;  
}
catch(SQLException ex)
{
     JOptionPane.showMessageDialog(this,"Data  not found");
}

}

 public void read()
 {
 DefaultTableModel model =new DefaultTableModel();
 model.addColumn("Item_name");
 model.addColumn("Average_consumption");
 model.addColumn("Delivery_period");
 model.addColumn("Balance in stock");
 model.addColumn("Danger Level");
 try
 {
  st=con.createStatement();
 String cmd="Select * from levelreport";
     rs = st.executeQuery(cmd);
     
     while(rs.next())
     {
            st1=con.createStatement();
            String cmd1="Select sum(Quantity) from stockin where Item='"+rs.getString("Item_name")+"' ";
            rs1 = st1.executeQuery(cmd1);
            rs1.next();
            
            st2=con.createStatement();
            String cmd2="Select sum(Quantity) from stockout where Item='"+rs.getString("Item_name")+"' ";
            rs2 = st2.executeQuery(cmd2);
            rs2.next();
              
            bal=rs1.getInt(1)-rs2.getInt(1);
            int av= Integer.parseInt(rs.getString("Average_consumption"))*Integer.parseInt(rs.getString("Delivery_period"));
           
            String danger="";
            if(bal< av )
            {
                danger="In Danger Level";
 model.addRow(new Object[]{rs.getString("Item_name"),rs.getString("Average_consumption"),rs.getString("Delivery_period"),bal, danger});
            }
     
     }
     jTable1.setModel(model);
 }
 
  catch(SQLException ex)
 {
     
  JOptionPane.showMessageDialog(this,"Data  not found"+ex);
 
 }
 
} 
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();

        setClosable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("DANGER LEVEL");

        jPanel1.setBackground(new java.awt.Color(0, 0, 0));

        jLabel1.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("DANGER LEVEL");

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(234, 234, 234)
                        .addComponent(jLabel1))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(38, 38, 38)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 553, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(24, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(44, 44, 44)
                .addComponent(jLabel1)
                .addGap(42, 42, 42)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}
