import { Component } from '@angular/core';
import {GlobalConstants} from 'src/app/shared/globalconstants'

@Component({
  selector: 'app-header-component',
  templateUrl: './header-component.component.html',
  styleUrls: ['./header-component.component.css']
})


export class HeaderComponentComponent {
  
  protected appName = GlobalConstants.appName;
  protected isLoggedIn = GlobalConstants.isUserLoggedIn;
  userObj: any;

  constructor(){
    this.isLoggedIn = GlobalConstants.isUserLoggedIn;
  };

  ngOnInit()
  {
   
    //alert("ngOnInit");
    //alert(this.isLoggedIn + " in ngOnInit");
  }

  ngOnChanges()
  {
    alert("NgOnchanges");
  }

  ngDoCheck()
  {
    const _userObj = sessionStorage.getItem("userObj");
    this.userObj = _userObj;
    this.isLoggedIn = GlobalConstants.isUserLoggedIn;
    console.log(this.userObj);
    //alert(this.isLoggedIn + " in ngDoCheck");
  }

/*   ngAfterContentInit()
  {
    alert("ngAfterContentInit");
  }

  ngAfterContentChecked()
  {
    alert("ngAfterContentChecked");
  }

  ngAfterViewInit()
  {
    alert("ngAfterViewInit");
  }

  ngAfterViewChecked()
  {
    alert("ngAfterViewChecked");
  }

  ngDestroy()
  {
    alert("ngDestroy");
  } */





}
