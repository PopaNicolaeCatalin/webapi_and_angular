import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';


import { CountryComponent } from './country/country.component';
import { PortComponent } from './port/port.component';
import { ShipComponent } from './ship/ship.component';
import { VoyageComponent } from './voyage/voyage.component';
import { Point5Component } from './point5/point5.component';

const routes: Routes = [

  { path: 'country', component: CountryComponent },
  { path: 'port', component: PortComponent },
  { path: 'ship', component: ShipComponent },
  { path: 'voyage', component: VoyageComponent },
  { path: 'point5', component: Point5Component }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
