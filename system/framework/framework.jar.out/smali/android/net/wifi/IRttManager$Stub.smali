.class public abstract Landroid/net/wifi/IRttManager$Stub;
.super Landroid/os/Binder;
.source "IRttManager.java"

# interfaces
.implements Landroid/net/wifi/IRttManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IRttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IRttManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IRttManager"

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getRttCapabilities:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.net.wifi.IRttManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IRttManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IRttManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.net.wifi.IRttManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IRttManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/net/wifi/IRttManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IRttManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IRttManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 45
    :sswitch_0
    const-string/jumbo v5, "android.net.wifi.IRttManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v6

    .line 50
    :sswitch_1
    const-string/jumbo v5, "android.net.wifi.IRttManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg1_length":I
    if-gez v2, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 61
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IRttManager$Stub;->getMessenger(Landroid/os/IBinder;[I)Landroid/os/Messenger;

    move-result-object v4

    .line 62
    .local v4, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v4, p3, v6}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 71
    return v6

    .line 59
    .end local v4    # "_result":Landroid/os/Messenger;
    :cond_0
    new-array v1, v2, [I

    .local v1, "_arg1":[I
    goto :goto_0

    .line 68
    .end local v1    # "_arg1":[I
    .restart local v4    # "_result":Landroid/os/Messenger;
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 75
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1_length":I
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_2
    const-string/jumbo v5, "android.net.wifi.IRttManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/net/wifi/IRttManager$Stub;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v3

    .line 77
    .local v3, "_result":Landroid/net/wifi/RttManager$RttCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v3, :cond_2

    .line 79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v3, p3, v6}, Landroid/net/wifi/RttManager$RttCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    :goto_2
    return v6

    .line 83
    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
