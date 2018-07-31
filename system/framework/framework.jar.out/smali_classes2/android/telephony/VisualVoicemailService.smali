.class public abstract Landroid/telephony/VisualVoicemailService;
.super Landroid/app/Service;
.source "VisualVoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VisualVoicemailService$1;,
        Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;
    }
.end annotation


# static fields
.field public static final DATA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "data_phone_account_handle"

.field public static final DATA_SMS:Ljava/lang/String; = "data_sms"

.field public static final MSG_ON_CELL_SERVICE_CONNECTED:I = 0x1

.field public static final MSG_ON_SIM_REMOVED:I = 0x3

.field public static final MSG_ON_SMS_RECEIVED:I = 0x2

.field public static final MSG_TASK_ENDED:I = 0x4

.field public static final MSG_TASK_STOPPED:I = 0x5

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.VisualVoicemailService"

.field private static final TAG:Ljava/lang/String; = "VvmService"


# instance fields
.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 156
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/telephony/VisualVoicemailService$1;

    invoke-direct {v1, p0}, Landroid/telephony/VisualVoicemailService$1;-><init>(Landroid/telephony/VisualVoicemailService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/VisualVoicemailService;->mMessenger:Landroid/os/Messenger;

    .line 61
    return-void
.end method

.method private static getSubId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 290
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 291
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 293
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v2

    return v2
.end method

.method public static final sendVisualVoicemailSms(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;SLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "port"    # S
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 284
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 285
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0, p1}, Landroid/telephony/VisualVoicemailService;->getSubId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 287
    return-void
.end method

.method public static final setSmsFilterSettings(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .prologue
    .line 252
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 253
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0, p1}, Landroid/telephony/VisualVoicemailService;->getSubId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 254
    .local v0, "subId":I
    if-nez p2, :cond_0

    .line 255
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->disableVisualVoicemailSmsFilter(I)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {v1, v0, p2}, Landroid/telephony/TelephonyManager;->enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    iget-object v0, p0, Landroid/telephony/VisualVoicemailService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCellServiceConnected(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V
.end method

.method public abstract onSimRemoved(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V
.end method

.method public abstract onSmsReceived(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telephony/VisualVoicemailSms;)V
.end method

.method public abstract onStopped(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V
.end method
