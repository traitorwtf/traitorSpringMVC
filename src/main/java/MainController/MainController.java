package MainController;

import Model.User;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Map;


@Controller
@SessionAttributes("userJSP")
public class MainController {

    /*First method on start application*/
    /*Попадаем сюда на старте приложения (см. параметры аннтоции и настройки пути после деплоя) */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userJSP", new User());
        modelAndView.setViewName("index");
        return modelAndView;
    }

    /*как только на index.jsp подтвердится форма
    <spring:form method="post"  modelAttribute="userJSP" action="check-user">,
    то попадем вот сюда
     */
    @RequestMapping(value = "/check-user", method = RequestMethod.POST)
    public ModelAndView checkUser(@Valid @ModelAttribute("userJSP") User user,
                                  BindingResult bindingResult) {
        ModelAndView modelAndView = new ModelAndView();

        if (bindingResult.hasErrors()){

            modelAndView.setViewName("index");
        } else {
            //Применяем модель Post-Redirect-View.
            RedirectView redirectView = new RedirectView("secondPage");
            redirectView.setStatusCode(HttpStatus.MOVED_PERMANENTLY);

            modelAndView.setView(redirectView);
        }
        //записываем в атрибут userJSP (используется на странице *.jsp объект user
        modelAndView.addObject("userJSP", user);

        return modelAndView; //после уйдем на представление, указанное чуть выше, если оно будет найдено.
    }

    @RequestMapping(value = "/secondPage", method = RequestMethod.GET)
    public String moveToSecondPage(Model model){

        return "secondPage";
    }
}
