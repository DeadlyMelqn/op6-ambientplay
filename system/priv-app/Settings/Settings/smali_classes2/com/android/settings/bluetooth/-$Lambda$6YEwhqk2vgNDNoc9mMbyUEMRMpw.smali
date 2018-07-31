.class final synthetic Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->lambda$-com_android_settings_bluetooth_BluetoothNameDialogFragment_3134(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->lambda$-com_android_settings_bluetooth_ForgetDeviceDialogFragment_2580(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;->$id:B

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;->$m$0(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;->$m$1(Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
