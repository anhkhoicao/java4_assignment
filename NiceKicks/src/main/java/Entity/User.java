package Entity;

import javax.persistence.Entity;

@Entity
public class User {
private int userId;
private String password;
private String name;
private String email;
private String phone;
private String address;
private Boolean gender;
private String role;
private Boolean isDeleted;


}
