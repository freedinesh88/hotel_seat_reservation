package hotel.model;

import java.io.Serializable;
import java.sql.Time;
import java.util.Date;

public class Reservation implements Serializable {
	private int id;
    private String date;
    private String time;
    private int partySize;
    private String customerName;
    private String phoneNumber;
    private int tableId;

    public Reservation() {
    }

    public Reservation(int id, String date, String time, int partySize, String customerName, String phoneNumber, int tableId) {
        this.id = id;
        this.date = date;
        this.time = time;
        this.partySize = partySize;
        this.customerName = customerName;
        this.phoneNumber = phoneNumber;
        this.tableId = tableId;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getPartySize() {
		return partySize;
	}

	public void setPartySize(int partySize) {
		this.partySize = partySize;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public int getTableId() {
		return tableId;
	}

	public void setTableId(int tableId) {
		this.tableId = tableId;
	}
    

}
