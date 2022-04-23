import { Component, OnInit } from '@angular/core';
import { SharedService } from 'src/app/shared.service';

@Component({
  selector: 'app-show-port',
  templateUrl: './show-port.component.html',
  styleUrls: ['./show-port.component.css']
})
export class ShowPortComponent implements OnInit {

  constructor(private service: SharedService) { }

  PortList: any = [];

  ngOnInit(): void {
    this.refreshPortList();
  }

  refreshPortList() {
    this.service.getPortList().subscribe(data => {
      this.PortList = data;
    });
  }

}
