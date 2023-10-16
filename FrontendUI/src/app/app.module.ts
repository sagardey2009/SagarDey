import { NgModule } from '@angular/core';
import { BrowserModule, platformBrowser } from '@angular/platform-browser';
import {MaterialDesignModule} from './material-design/material-design.module';
import{AppRoutingModule} from './app-routing.module';

import { AppComponent } from './app.component';
import { HeaderComponentComponent } from './header-component/header-component.component';
import { FooterComponentComponent } from './footer-component/footer-component.component';
import { BodyComponentComponent } from './body-component/body-component.component';
import { LoginComponent } from './auth/login/login.component';
import { HomePageComponent } from './home-page/home-page.component';
import { HttpClientModule } from '@angular/common/http';
import { EventlistComponent } from './events/eventlist/eventlist.component';
import { EventmanageComponent } from './events/eventmanage/eventmanage.component';
import { NgxUiLoaderModule, NgxUiLoaderConfig, SPINNER, PB_DIRECTION } from 'ngx-ui-loader';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

const ngxUiLoaderConfig: NgxUiLoaderConfig ={
  text:"Loading...",
  textColor:"#FFFFFF",
  textPosition:"center-center",
  pbColor:"red",
  bgsColor:"red",
  fgsColor:"red",
  fgsType:SPINNER.ballSpinClockwise,
  fgsSize:50,
  pbDirection:PB_DIRECTION.leftToRight,
  pbThickness:2
}


@NgModule({
  declarations: [
    AppComponent,
    HeaderComponentComponent,
    FooterComponentComponent,
    BodyComponentComponent,
    LoginComponent,
    HomePageComponent,
    EventlistComponent,
    EventmanageComponent,
  ],

  imports: [
    BrowserModule,
    MaterialDesignModule,
    AppRoutingModule,
    HttpClientModule,
    NgxUiLoaderModule.forRoot(ngxUiLoaderConfig),
    BrowserAnimationsModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
