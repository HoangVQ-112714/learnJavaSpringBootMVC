package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.UserService;

import java.util.List;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> arrUser = this.userService.getAllUsers();
        System.out.println(arrUser);
        model.addAttribute("arrUser", arrUser);
        return "hello";
    }

    @RequestMapping(value = "/admin/user", method = RequestMethod.GET)
    public String getAllUserPage(Model model) {
        List<User> arrUser = this.userService.getAllUsers();
        model.addAttribute("allUser", arrUser);
        return "admin/user/list";
    }

    @RequestMapping(value = "/admin/user/{id}", method = RequestMethod.GET)
    public String getUserById(Model model, @PathVariable Long id) {
        User userDetail = this.userService.getUserById(id);
        model.addAttribute("userDetail", userDetail);
        return "admin/user/detail";
    }

    @GetMapping(value = "/admin/user/create")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping(value = "/admin/user/create")
    public String createUserPage(@ModelAttribute("newUser") User hoidanit) {
        System.out.println("run here" + hoidanit);
        this.userService.handleSaveUser(hoidanit);
        return "redirect:/admin/user";
    }

    @GetMapping(value = "/admin/user/update/{id}")
    public String getUserEdit(Model model, @PathVariable Long id) {
        User userDetail = this.userService.getUserById(id);
        model.addAttribute("newUser", userDetail);
        model.addAttribute("userDetail", userDetail);
        return "admin/user/update";
    }

    @PostMapping(value = "/admin/user/update/{id}")
    public String updateUserDone(@ModelAttribute("newUser") User hoidanit) {
        User currentUser = this.userService.getUserById(hoidanit.getId());
        if (currentUser != null) {
            currentUser.setAddress(hoidanit.getAddress());
            currentUser.setFullName(hoidanit.getFullName());
            currentUser.setPhone(hoidanit.getPhone());
            this.userService.handleSaveUser(currentUser);
        }

        return "redirect:/admin/user";
    }

    @PostMapping(value="/admin/user/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        User userDetail = this.userService.getUserById(id);
        if (userDetail != null) {
            this.userService.deleteUserById(id);
        }
        return "redirect:/admin/user";
    }
}
