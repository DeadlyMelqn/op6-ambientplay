.class Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbModeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    const-string/jumbo v4, "connected"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 79
    .local v1, "connected":Z
    const-string/jumbo v4, "host_connected"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 80
    .local v3, "hostConnected":Z
    if-nez v1, :cond_0

    xor-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    .line 83
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "connected":Z
    .end local v3    # "hostConnected":Z
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v1    # "connected":Z
    .restart local v3    # "hostConnected":Z
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
