.class public abstract Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.super Landroid/os/Binder;
.source "ILowpanInterfaceListener.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanInterfaceListener"

.field static final TRANSACTION_onConnectedChanged:I = 0x2

.field static final TRANSACTION_onEnabledChanged:I = 0x1

.field static final TRANSACTION_onLinkAddressAdded:I = 0x9

.field static final TRANSACTION_onLinkAddressRemoved:I = 0xa

.field static final TRANSACTION_onLinkNetworkAdded:I = 0x7

.field static final TRANSACTION_onLinkNetworkRemoved:I = 0x8

.field static final TRANSACTION_onLowpanIdentityChanged:I = 0x6

.field static final TRANSACTION_onReceiveFromCommissioner:I = 0xb

.field static final TRANSACTION_onRoleChanged:I = 0x4

.field static final TRANSACTION_onStateChanged:I = 0x5

.field static final TRANSACTION_onUpChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;
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
    const-string/jumbo v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterfaceListener;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/lowpan/ILowpanInterfaceListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 43
    :sswitch_0
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v6

    .line 48
    :sswitch_1
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 51
    .local v3, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v3}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onEnabledChanged(Z)V

    .line 52
    return v6

    .line 50
    .end local v3    # "_arg0":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_0

    .line 56
    .end local v3    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 59
    .restart local v3    # "_arg0":Z
    :goto_1
    invoke-virtual {p0, v3}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onConnectedChanged(Z)V

    .line 60
    return v6

    .line 58
    .end local v3    # "_arg0":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_1

    .line 64
    .end local v3    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 67
    .restart local v3    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v3}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onUpChanged(Z)V

    .line 68
    return v6

    .line 66
    .end local v3    # "_arg0":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_2

    .line 72
    .end local v3    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onRoleChanged(Ljava/lang/String;)V

    .line 76
    return v6

    .line 80
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onStateChanged(Ljava/lang/String;)V

    .line 84
    return v6

    .line 88
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 91
    sget-object v5, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/LowpanIdentity;

    .line 96
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    .line 97
    return v6

    .line 94
    :cond_3
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/net/lowpan/LowpanIdentity;
    goto :goto_3

    .line 101
    .end local v1    # "_arg0":Landroid/net/lowpan/LowpanIdentity;
    :sswitch_7
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    sget-object v5, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 109
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    .line 110
    return v6

    .line 107
    :cond_4
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/net/IpPrefix;
    goto :goto_4

    .line 114
    .end local v0    # "_arg0":Landroid/net/IpPrefix;
    :sswitch_8
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 117
    sget-object v5, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 122
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    .line 123
    return v6

    .line 120
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/IpPrefix;
    goto :goto_5

    .line 127
    .end local v0    # "_arg0":Landroid/net/IpPrefix;
    :sswitch_9
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressAdded(Ljava/lang/String;)V

    .line 131
    return v6

    .line 135
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressRemoved(Ljava/lang/String;)V

    .line 139
    return v6

    .line 143
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 146
    .local v4, "_arg0":[B
    invoke-virtual {p0, v4}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onReceiveFromCommissioner([B)V

    .line 147
    return v6

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
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
