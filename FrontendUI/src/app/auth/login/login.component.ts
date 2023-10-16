import { Component } from '@angular/core';
import { Router, RouterLink } from '@angular/router';
import { GlobalConstants } from 'src/app/shared/globalconstants';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {


  constructor(private router:Router){
    
  }

  OnClick() {
    
    //sessionStorage.setItem("userObj", JSON.stringify(loginUser));
    GlobalConstants.isUserLoggedIn = true;
    this.router.navigate(['./']);
    //window.location.reload();
  }

}
