import { Component } from '@angular/core';
import { NavController, NavParams, Loading, LoadingController, AlertController } from 'ionic-angular';
import { AuthServiceProvider } from '../../providers/auth-service/auth-service';

/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage {
  loading: Loading;
  credentials = { email: '', password: '' };

  constructor(
    public navCtrl: NavController, 
    public navParams: NavParams,
    private loadingCtrl: LoadingController,
    private authServiceProvider: AuthServiceProvider,
    private alertCtrl: AlertController
    ) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad LoginPage');
  }

  public createAccount() {
    // this.navCtrl.push('RegisterPage');
  }

  public login() {
    this.showLoading()
    // this.auth.login(this.registerCredentials).subscribe(allowed => {
    //   if (allowed) {        
    //     this.navCtrl.setRoot('HomePage');
    //   } else {
    //     this.showError("Access Denied");
    //   }
    // },
    //   error => {
    //     this.showError(error);
    //   });
    let userData={
      auth:{
          email:this.credentials.email,
          password:this.credentials.password
      }
  }
  //console.log(this.credentials);
  //console.log(userData);
  this.authServiceProvider.postData(userData, "usuario_token")
      .subscribe(
          data => {
              // localStorage.setItem('user', JSON.stringify(data["user"]));
              // localStorage.setItem('jwt', data["jwt"]);
              // this.showNotification(data);
              // this.navCtrl.setRoot(MyListsPage);
              console.log("Respuesta exitosa")

          },
          err => { console.log(err); this.showError(err) }
      );

  }

  showLoading() {
    this.loading = this.loadingCtrl.create({
      content: 'Please wait...',
      dismissOnPageChange: true
    });
    this.loading.present();
  }

  showError(text) {
    this.loading.dismiss();
 
    let alert = this.alertCtrl.create({
      title: 'Fail',
      subTitle: text,
      buttons: ['OK']
    });
    alert.present();
  }

}
