import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SnackbarService {
  openSnackBar(responseMessage: any, arg1: string) {
    throw new Error('Method not implemented.');
  }

  constructor() { }
}
