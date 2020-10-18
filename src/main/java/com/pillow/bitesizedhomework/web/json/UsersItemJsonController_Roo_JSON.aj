// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.web.json;

import com.pillow.bitesizedhomework.model.User;
import com.pillow.bitesizedhomework.service.api.UserService;
import com.pillow.bitesizedhomework.web.json.UsersItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect UsersItemJsonController_Roo_JSON {
    
    declare @type: UsersItemJsonController: @RestController;
    
    declare @type: UsersItemJsonController: @RequestMapping(value = "/users/{user}", name = "UsersItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private UserService UsersItemJsonController.userService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param userService
     */
    @Autowired
    public UsersItemJsonController.new(UserService userService) {
        this.userService = userService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return UserService
     */
    public UserService UsersItemJsonController.getUserService() {
        return userService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param userService
     */
    public void UsersItemJsonController.setUserService(UserService userService) {
        this.userService = userService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return User
     */
    @ModelAttribute
    public User UsersItemJsonController.getUser(@PathVariable("user") Long id) {
        User user = userService.findOne(id);
        if (user == null) {
            throw new NotFoundException(String.format("User with identifier '%s' not found",id));
        }
        return user;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param user
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> UsersItemJsonController.show(@ModelAttribute User user) {
        return ResponseEntity.ok(user);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param user
     * @return UriComponents
     */
    public static UriComponents UsersItemJsonController.showURI(User user) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(UsersItemJsonController.class).show(user))
            .buildAndExpand(user.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedUser
     * @param user
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> UsersItemJsonController.update(@ModelAttribute User storedUser, @Valid @RequestBody User user, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        user.setId(storedUser.getId());
        getUserService().save(user);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param user
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> UsersItemJsonController.delete(@ModelAttribute User user) {
        getUserService().delete(user);
        return ResponseEntity.ok().build();
    }
    
}
