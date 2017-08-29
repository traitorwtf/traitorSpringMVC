package Model;

import org.springframework.stereotype.Component;

import javax.validation.constraints.Size;


@Component
public class User {

    @Size(min = 3,  message = "Имя должно быть от 3 символов")
    private String name;

    @Size(min = 5, max = 12, message = "Пароль должен быть от 5 до 12 символов")
    private String password;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
