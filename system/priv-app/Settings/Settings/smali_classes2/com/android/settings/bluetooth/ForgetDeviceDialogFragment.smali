.class public Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ForgetDeviceDialogFragment.java"


# static fields
.field private static final KEY_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field public static final TAG:Ljava/lang/String; = "ForgetBluetoothDevice"


# instance fields
.field private mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    .locals 3
    .param p0, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "device_address"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;-><init>()V

    .line 46
    .local v1, "dialog":Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method


# virtual methods
.method getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "device_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "deviceAddress":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 54
    .local v2, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 55
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    return-object v3
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x407

    return v0
.end method

.method synthetic lambda$-com_android_settings_bluetooth_ForgetDeviceDialogFragment_2580(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 65
    new-instance v2, Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;

    invoke-direct {v2, v6, p0}, Lcom/android/settings/bluetooth/-$Lambda$6YEwhqk2vgNDNoc9mMbyUEMRMpw;-><init>(BLjava/lang/Object;)V

    .line 72
    .local v2, "onConfirm":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 74
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    const v4, 0x7f0f12be

    .line 74
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 77
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 79
    .local v1, "dialog":Landroid/app/AlertDialog;
    const v3, 0x7f0f12bf

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 80
    new-array v3, v6, [Ljava/lang/Object;

    .line 81
    iget-object v4, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 80
    const v4, 0x7f0f12c0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    return-object v1
.end method
