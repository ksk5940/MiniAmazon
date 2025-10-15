package model;

import java.util.ArrayList;
import java.util.List;

public class UserStore {
    private static List<User> users = new ArrayList<>();
    public static void addUser(User u) { users.add(u); }
    public static User findUser(String username) {
        for(User u : users) if(u.getUsername().equals(username)) return u;
        return null;
    }
    public static boolean validate(String username, String password) {
        User u = findUser(username);
        return (u != null && u.getPassword().equals(password));
    }
}
