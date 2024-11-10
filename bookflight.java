
package AMS;

import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
import java.sql.*;

public class BookedFlightDetails extends JFrame implements ActionListener {
    JLabel l1, l2, l3, l4, l5, l6, l7, l8;
    JButton bt1, bt2;
    JTextField tf1, tf2, tf3, tf4, tf5, tf6, tf7;
    JComboBox<String> flightComboBox;
    JFrame f;

    BookedFlightDetails() {
        f = new JFrame("Book Flight Details");
        f.setBackground(Color.WHITE);
        f.setLayout(null);

        l1 = new JLabel();
        l1.setBounds(0, 0, 900, 600);
        l1.setLayout(null);
        ImageIcon img = new ImageIcon(ClassLoader.getSystemResource("AMS/icons/flight.png"));
        Image i1 = img.getImage().getScaledInstance(900, 600, Image.SCALE_SMOOTH);
        ImageIcon img2 = new ImageIcon(i1);
        l1.setIcon(img2);

        l3 = new JLabel("Welcome to Flight Booking");
        l3.setBounds(250, 30, 550, 50);
        l3.setForeground(Color.BLACK);
        l3.setFont(new Font("Arial", Font.BOLD, 20));
        l1.add(l3);

        l2 = new JLabel("Username");
        l2.setBounds(50, 150, 150, 30);
        l2.setForeground(Color.BLACK);
        l2.setFont(new Font("Arial", Font.BOLD, 20));
        l1.add(l2);

        tf1 = new JTextField();
        tf1.setBounds(200, 150, 150, 30);
        l1.add(tf1);

        l4 = new JLabel("Name");
        l4.setBounds(450, 150, 200, 30);
        l4.setForeground(Color.BLACK);
        l4.setFont(new Font("Arial", Font.BOLD, 20));
        l1.add(l4);

        tf2 = new JTextField();
        tf2.setBounds(600, 150, 150, 30);
        l1.add(tf2);

        l5 = new JLabel("Age");
        l5.setBounds(50, 200, 100, 30);
        l5.setForeground(Color.BLACK);
        l5.setFont(new Font("Arial", Font.BOLD, 20));
        l1.add(l5);

        tf3 = new JTextField();
        tf3.setBounds(200, 200, 150, 30);
        l1.add(tf3);

        l6 = new JLabel("Contact Number");
        l6.setBounds(450, 200, 200, 30);
        l6.setForeground(Color.BLACK);
        l6.setFont(new Font("Arial", Font.BOLD, 20));
        l1.add(l6);

        tf4 = new JTextField();
        tf4.setBounds(600, 200, 150, 30);
        l1.add(tf4);

        l7 = new JLabel("Email ID");
        l7.setBounds(50, 250, 100, 30);
        l7.setForeground(Color.BLACK);
        l7.setFont(new Font("Arial", Font.BOLD, 20));
        l1.add(l7);

        tf5 = new JTextField();
        tf5.setBounds(200, 250, 150, 30);
        l1.add(tf5);

        l8 = new JLabel("Select Flight");
        l8.setBounds(50, 300, 150, 30);
        l8.setForeground(Color.BLACK);
        l8.setFont(new Font("Arial", Font.BOLD, 20));
        l1.add(l8);

        flightComboBox = new JComboBox<>();
        flightComboBox.setBounds(200, 300, 150, 30);
        loadAvailableFlights();
        l1.add(flightComboBox);

        bt1 = new JButton("Book Flight");
        bt1.setBackground(Color.BLACK);
        bt1.setForeground(Color.WHITE);
        bt1.setBounds(250, 400, 150, 40);
        l1.add(bt1);

        bt2 = new JButton("Close");
        bt2.setBackground(Color.RED);
        bt2.setForeground(Color.WHITE);
        bt2.setBounds(450, 400, 150, 40);
        l1.add(bt2);

        bt1.addActionListener(this);
        bt2.addActionListener(this);

        f.setVisible(true);
        f.setSize(900, 600);
        f.setLocation(300, 100);
    }

    private void loadAvailableFlights() {
        try {
            ConnectionClass obj = new ConnectionClass();
            String query = "SELECT fcode, fname FROM flights";
            ResultSet rs = obj.stm.executeQuery(query);

            while (rs.next()) {
                flightComboBox.addItem(rs.getString("fcode") + " - " + rs.getString("fname"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == bt1) {
            String username = tf1.getText();
            String name = tf2.getText();
            String age = tf3.getText();
            String contact = tf4.getText();
            String email = tf5.getText();
            String selectedFlight = flightComboBox.getSelectedItem().toString();
            String flightCode = selectedFlight.split(" - ")[0];

            try {
                ConnectionClass obj = new ConnectionClass();
                String query = "INSERT INTO booked_flights (fcode, username, name, age, contact_number, email, booking_date) "
                        + "VALUES ('" + flightCode + "', '" + username + "', '" + name + "', '" + age + "', '" + contact + "', '" + email + "', CURDATE())";
                obj.stm.executeUpdate(query);
                JOptionPane.showMessageDialog(null, "Flight Booked Successfully");
                f.setVisible(false);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }

        if (e.getSource() == bt2) {
            JOptionPane.showMessageDialog(null, "Booking Cancelled");
            f.setVisible(false);
        }
    }

    public static void main(String[] args) {
        new BookedFlightDetails();
    }
}
