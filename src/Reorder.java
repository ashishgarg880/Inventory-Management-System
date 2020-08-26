import java.sql.*;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import java.awt.event.ActionListener;
import java.text.*;
;

public class Reorder extends javax.swing.JInternalFrame {
Connection con;
ResultSet rs,rs1,rs2,rs3;
Statement st,st1,st2,st3;
int pur, sale, bal;
    public Reorder() {
        initComponents();
            connect();
           read();  
           getdate();       
    }
     public void getdate()
    {
        DateFormat df=new SimpleDateFormat("dd-MM-yyyy");
        java.util.Date dt=new java.util.Date();
        jLabel1.setText(df.format(dt));
        
    }
 public void connect()
{
    
String host = "jdbc:mysql://localhost:3306/mainproject?useSSl=false";
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
  model.addColumn("Re-order Level");
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
            int av= Integer.parseInt(rs.getString("Average_consumption"))*(Integer.parseInt(rs.getString("Delivery_period"))+1);
           
            String danger;
            if(bal<= av )
            {
                danger="yes";
            }
            else
            {
                danger="no";
            }
     model.addRow(new Object[]{rs.getString("Item_name"),rs.getString("Average_consumption"),rs.getString("Delivery_period"),bal,danger});
     
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
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel2 = new javax.swing.JLabel();

        setClosable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Re-order");

        jPanel1.setBackground(new java.awt.Color(0, 0, 0));

        jLabel1.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));

        jTable1.setAutoCreateRowSorter(true);
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
        jTable1.setDragEnabled(true);
        jTable1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTable1FocusGained(evt);
            }
        });
        jScrollPane2.setViewportView(jTable1);

        jLabel2.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("RE_ORDER LEVEL");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 788, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 134, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(174, 174, 174)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane2)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTable1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTable1FocusGained
        // TODO add your handling code here:
    }//GEN-LAST:event_jTable1FocusGained

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}