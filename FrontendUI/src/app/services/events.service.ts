import { HttpClient, HttpErrorResponse, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, throwError } from 'rxjs';
import { environment } from 'src/environments/environment';
import { EventModel } from '../model/event-model';


@Injectable({
  providedIn: 'root'
})
export class EventsService {

  url = environment.apiUrl;
  constructor(private httpClient: HttpClient) { }


  getEventListTest(data: any): Observable<EventModel[]> {
    const queryParameters = new HttpParams().set('college_id', data);
    const myHeaders = new HttpHeaders()
      .set('Content-Type', "application/json")
      .set('Access-Control-Allow-Origin', "*");

    const getEvenListURL = this.url + "/events/getevents";
    // const qryOptions = {
    //   observe: 'body',
    //   responseType: 'json',
    //   params: queryParameters
    // };
    return this.httpClient.get<EventModel[]>(getEvenListURL, { params: queryParameters, headers:myHeaders});

  }


  getEventList(data: any): Observable<EventModel[]> {
    const queryParameters = new HttpParams().set('college_id', data);
    const headers = new HttpHeaders().set('Content-Type', "application/json");

    console.log("queryParameters =" + queryParameters);
    return this.httpClient.get<EventModel[]>(this.url + "/events/getevents", { params: queryParameters });

  }

  createEvent(data: any) {
    return this.httpClient.post(this.url + "/events/createevent", data, {
      headers: new HttpHeaders().set('Content-Type', "application/json")
    })
  }

  private _handleError(error: HttpErrorResponse) {
    if (error.error instanceof ErrorEvent) {
      // A client-side or network error occurred. Handle it accordingly.
      console.error('An error occurred:', error.error.message);
    } else {
      // The backend returned an unsuccessful response code.
      // The response body may contain clues as to what went wrong.
      console.error(
        `Backend returned code ${error.status}, ` +
        `body was: ${error.error}`);
    }
    // Return an observable with a user-facing error message.
    //return throwError(
    //  'Something bad happened; please try again later.');

  }

  // public handleError(error: HttpErrorResponse) {
  //   let errMsg: string;
  //   if (error instanceof Response) {
  //     const body =  || '';
  //     const err = body.error || JSON.stringify(body);
  //     errMsg = `${error.status} - ${error.statusText || ''} ${err}`;
  //   } else {
  //     errMsg = error.message ? error.message : error.toString();
  //   }
  //   console.error(errMsg);
  //   return Observable.throw(errMsg);
  // }
}

