import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './auth/login/login.component';
import { HomePageComponent } from './home-page/home-page.component';
import { EventlistComponent } from './events/eventlist/eventlist.component';

const routes: Routes = [
  {path:"login", component:LoginComponent},
  {path:"home", component:HomePageComponent},
  {path:"events", component:EventlistComponent}
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule { }
