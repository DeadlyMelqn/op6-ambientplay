.class public interface abstract Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;
.super Ljava/lang/Object;
.source "BluetoothA2dpWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper$Factory;
    }
.end annotation


# virtual methods
.method public abstract getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;
.end method

.method public abstract getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getService()Landroid/bluetooth/BluetoothA2dp;
.end method

.method public abstract setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I
.end method
