.class public abstract Landroid/net/lowpan/ILowpanManager$Stub;
.super Landroid/os/Binder;
.source "ILowpanManager.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanManager"

.field static final TRANSACTION_addInterface:I = 0x5

.field static final TRANSACTION_addListener:I = 0x3

.field static final TRANSACTION_getInterface:I = 0x1

.field static final TRANSACTION_getInterfaceList:I = 0x2

.field static final TRANSACTION_removeInterface:I = 0x6

.field static final TRANSACTION_removeListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.net.lowpan.ILowpanManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/lowpan/ILowpanManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/lowpan/ILowpanManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/lowpan/ILowpanManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 43
    :sswitch_0
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v7

    .line 48
    :sswitch_1
    const-string/jumbo v6, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanManager$Stub;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v3

    .line 52
    .local v3, "_result":Landroid/net/lowpan/ILowpanInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    return v7

    .line 58
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/lowpan/ILowpanInterface;
    :sswitch_2
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanManager$Stub;->getInterfaceList()[Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 62
    return v7

    .line 66
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/lowpan/ILowpanManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManagerListener;

    move-result-object v1

    .line 69
    .local v1, "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanManager$Stub;->addListener(Landroid/net/lowpan/ILowpanManagerListener;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v7

    .line 75
    .end local v1    # "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    :sswitch_4
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/lowpan/ILowpanManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManagerListener;

    move-result-object v1

    .line 78
    .restart local v1    # "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanManager$Stub;->removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v7

    .line 84
    .end local v1    # "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    :sswitch_5
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/lowpan/ILowpanInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v0

    .line 87
    .local v0, "_arg0":Landroid/net/lowpan/ILowpanInterface;
    invoke-virtual {p0, v0}, Landroid/net/lowpan/ILowpanManager$Stub;->addInterface(Landroid/net/lowpan/ILowpanInterface;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v7

    .line 93
    .end local v0    # "_arg0":Landroid/net/lowpan/ILowpanInterface;
    :sswitch_6
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/lowpan/ILowpanInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v0

    .line 96
    .restart local v0    # "_arg0":Landroid/net/lowpan/ILowpanInterface;
    invoke-virtual {p0, v0}, Landroid/net/lowpan/ILowpanManager$Stub;->removeInterface(Landroid/net/lowpan/ILowpanInterface;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v7

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
