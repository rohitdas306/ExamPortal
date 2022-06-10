import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { UserService } from 'src/app/services/user.service';
import Swal from 'sweetalert2';
import swal from 'sweetalert2';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {
  constructor(private userService:UserService,private snack: MatSnackBar) {}

  public user={
    username:'',
    password:'',
    firstName:'',
    lastName:'',
    email:'',
    phone:'',

  };

  ngOnInit(): void {}

  formSubmit(){
    console.log(this.user);
    if (this.user.username == '' || this.user.username == null) {
      alert("need userName require");
      return;
    }
    //addUser: userService
    this.userService.addUser(this.user).subscribe(
      (data:any)=>{
        //success
        console.log(data);
        //alert("success");
        Swal.fire('successfully done','User id is '+data.id,'success');
      },
      (error)=>{
        //error
        console.log(error);
         //alert("something went wrong");
         this.snack.open('something went wrong!!','',{
           duration:3000
         })
      }
    );
  }

}
