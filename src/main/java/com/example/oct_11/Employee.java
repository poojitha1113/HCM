package com.example.oct_11;
import java.util.List;
public class Employee {
    private int employeeId;
    private String firstName;
    private String lastName;
    private String dateOfBirth;
    private String email;
    private String mobileNumber;
    private List<TimeSheet> timeSheetList;
    // Constructors, getters, and setters

    // Example constructor
    public Employee(int employeeId, String firstName, String lastName, String dateOfBirth, String email,
                    String mobileNumber) {
        this.employeeId = employeeId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.mobileNumber = mobileNumber;
    }
    public List<TimeSheet> getTimeSheetList() {
        return timeSheetList;
    }
    public void setTimeSheetList(List<TimeSheet> timeSheetList) {
        this.timeSheetList = timeSheetList;
    }
}
