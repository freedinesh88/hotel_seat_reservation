package hotel.model;

import java.io.Serializable;

public class Table implements Serializable {
	private int id;
    private int capacity;
    private boolean available;

    public Table() {
    }

    public Table(int id, int capacity, boolean available) {
        this.id = id;
        this.capacity = capacity;
        this.available = available;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}
    
}
