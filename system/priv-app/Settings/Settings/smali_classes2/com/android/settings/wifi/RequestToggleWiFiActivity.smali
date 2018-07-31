.class public Lcom/android/settings/wifi/RequestToggleWiFiActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestToggleWiFiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RequestToggleWiFiActivity"

.field private static final STATE_DISABLE:I = 0x3

.field private static final STATE_DISABLING:I = 0x4

.field private static final STATE_ENABLE:I = 0x1

.field private static final STATE_ENABLING:I = 0x2

.field private static final STATE_UNKNOWN:I = -0x1

.field private static final TOGGLE_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastUpdateState:I

.field private final mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

.field private mState:I

.field private final mTimeoutCommand:Ljava/lang/Runnable;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    .prologue
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    .line 54
    new-instance v0, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    .line 63
    iput v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 64
    iput v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    .line 40
    return-void
.end method

.method private scheduleToggleTimeout()V
    .locals 4

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    return-void
.end method

.method private unscheduleToggleTimeout()V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 221
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    if-ne v0, v1, :cond_0

    .line 222
    return-void

    .line 224
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    .line 226
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setupAlert()V

    .line 269
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0f05e4

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0f05e5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v2, v1, v5

    const v2, 0x7f0f1264

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4, v2, v2, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0f0818

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0f05e4

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0f05e5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v2, v1, v5

    const v2, 0x7f0f1265

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 258
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4, v2, v2, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0f0819

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method synthetic lambda$-com_android_settings_wifi_RequestToggleWiFiActivity_1984()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    packed-switch p2, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 114
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 120
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 121
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_0

    .line 128
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 110
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-class v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 72
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 77
    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 82
    const/4 v5, 0x0

    .line 81
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 83
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.net.wifi.action.REQUEST_ENABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 104
    :goto_0
    return-void

    .line 84
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "RequestToggleWiFiActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t find app with package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 87
    return-void

    .line 91
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string/jumbo v4, "android.net.wifi.action.REQUEST_DISABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 136
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 138
    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->register()V

    .line 140
    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 142
    .local v0, "wifiState":I
    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 210
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    .line 211
    return-void

    .line 144
    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 151
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 152
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 148
    return-void

    .line 158
    :pswitch_3
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 160
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 163
    return-void

    .line 166
    :pswitch_5
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 167
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    .line 174
    :pswitch_6
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 186
    :pswitch_7
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_0

    .line 176
    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 178
    return-void

    .line 181
    :pswitch_9
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    .line 192
    :pswitch_a
    packed-switch v0, :pswitch_data_4

    goto :goto_0

    .line 199
    :pswitch_b
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    .line 194
    :pswitch_c
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 196
    return-void

    .line 204
    :pswitch_d
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_a
    .end packed-switch

    .line 144
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 158
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 174
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 192
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->unregister()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->unscheduleToggleTimeout()V

    .line 217
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 218
    return-void
.end method
