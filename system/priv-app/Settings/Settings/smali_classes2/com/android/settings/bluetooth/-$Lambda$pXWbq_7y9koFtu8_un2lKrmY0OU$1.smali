.class final synthetic Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->lambda$-com_android_settings_bluetooth_BluetoothPairingDialogFragment_9945(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU$1;->$m$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
