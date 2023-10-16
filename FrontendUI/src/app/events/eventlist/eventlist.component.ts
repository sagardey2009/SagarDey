import { ObserversModule } from '@angular/cdk/observers';
import { Component } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { NgxUiLoaderService } from 'ngx-ui-loader';
import { EventModel } from 'src/app/model/event-model';
import { EventsService } from 'src/app/services/events.service';
import { SnackbarService } from 'src/app/services/snackbar.service';
import { GlobalConstants } from 'src/app/shared/globalconstants';



@Component({
  selector: 'app-eventlist',
  templateUrl: './eventlist.component.html',
  styleUrls: ['./eventlist.component.css']
})
export class EventlistComponent {

  displayedColumns: string[] = ['EventDate', 'OrganizedBy', 'EventName', 'EventLocation', 'From - To', 'Action'];
  dataSource: any;
  responseMessage: any;
  eventList!: EventModel[];

  constructor(private eventsService: EventsService,
    private ngxService: NgxUiLoaderService,
    private snackBar: SnackbarService) {


  }

  ngOnInit(): void {
   // this.ngxService.start();
    //this.eventTableData();
    this.testData();
  }

  testData() {
    this.eventsService.getEventListTest(2).subscribe(res=>{
      this.eventList = res;
      this.dataSource = new MatTableDataSource<EventModel>(this.eventList);
    })
  }

  eventTableData() {
    //console.log("GlobalConstants.clgId = "+ GlobalConstants.clgId);
    this.eventsService.getEventList(2).subscribe((res: any) => {
      this.ngxService.stop();
      console.log("response = " + res);
      this.eventList = res;
      this.dataSource = new MatTableDataSource<EventModel>(this.eventList);

    }, (error: any) => {
      this.ngxService.stop();
      if (error.error?.message) {
        this.responseMessage = error.error?.message;
      } else {
        this.responseMessage = GlobalConstants.genericErrorMsg;
      }
      this.snackBar.openSnackBar(this.responseMessage, GlobalConstants.error);
    })

  }
}
