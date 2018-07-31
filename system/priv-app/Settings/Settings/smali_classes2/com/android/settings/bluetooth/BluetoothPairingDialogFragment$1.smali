.class Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$1;
.super Landroid/os/Handler;
.source "BluetoothPairingDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    .line 360
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 365
    :pswitch_0
    const-string/jumbo v0, "BTPairingDialogFragment"

    const-string/jumbo v1, "Delayed pairing pop up handler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->-get0(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
