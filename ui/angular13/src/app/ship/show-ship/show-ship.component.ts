import { Component, OnInit } from '@angular/core';
import { SharedService } from 'src/app/shared.service';

@Component({
  selector: 'app-show-ship',
  templateUrl: './show-ship.component.html',
  styleUrls: ['./show-ship.component.css']
})
export class ShowShipComponent implements OnInit {

  constructor(private service: SharedService) { }

  ShipList: any = [];

  ngOnInit(): void {
    this.refreshShipList();
  }

  refreshShipList() {
    this.service.getShipList().subscribe(data => {
      this.ShipList = data;
    });
  }

}
