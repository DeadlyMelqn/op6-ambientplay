.class public abstract Landroid/bluetooth/le/IScannerCallback$Stub;
.super Landroid/os/Binder;
.source "IScannerCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IScannerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IScannerCallback"

.field static final TRANSACTION_onBatchScanResults:I = 0x3

.field static final TRANSACTION_onFoundOrLost:I = 0x4

.field static final TRANSACTION_onScanManagerErrorCallback:I = 0x5

.field static final TRANSACTION_onScanResult:I = 0x2

.field static final TRANSACTION_onScannerRegistered:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.bluetooth.le.IScannerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/le/IScannerCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/bluetooth/le/IScannerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 46
    :sswitch_0
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v7

    .line 51
    :sswitch_1
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 56
    .local v4, "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScannerRegistered(II)V

    .line 57
    return v7

    .line 61
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    sget-object v6, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 69
    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    .line 70
    return v7

    .line 67
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/bluetooth/le/ScanResult;
    goto :goto_0

    .line 74
    .end local v1    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :sswitch_3
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    sget-object v6, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 77
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IScannerCallback$Stub;->onBatchScanResults(Ljava/util/List;)V

    .line 78
    return v7

    .line 82
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    :sswitch_4
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 86
    .local v3, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    sget-object v6, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/le/ScanResult;

    .line 92
    :goto_2
    invoke-virtual {p0, v3, v5}, Landroid/bluetooth/le/IScannerCallback$Stub;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    .line 93
    return v7

    .line 84
    .end local v3    # "_arg0":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_1

    .line 90
    :cond_2
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/bluetooth/le/ScanResult;
    goto :goto_2

    .line 97
    .end local v3    # "_arg0":Z
    .end local v5    # "_arg1":Landroid/bluetooth/le/ScanResult;
    :sswitch_5
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScanManagerErrorCallback(I)V

    .line 101
    return v7

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
