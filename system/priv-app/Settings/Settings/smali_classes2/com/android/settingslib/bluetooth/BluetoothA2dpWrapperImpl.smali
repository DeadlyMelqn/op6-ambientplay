.class public Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;
.super Ljava/lang/Object;
.source "BluetoothA2dpWrapperImpl.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl$Factory;
    }
.end annotation


# instance fields
.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0
    .param p1, "service"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 36
    return-void
.end method


# virtual methods
.method public getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getService()Landroid/bluetooth/BluetoothA2dp;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method public setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 61
    return-void
.end method

.method public supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method
