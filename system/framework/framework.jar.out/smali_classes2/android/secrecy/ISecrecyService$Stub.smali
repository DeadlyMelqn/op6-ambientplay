.class public abstract Landroid/secrecy/ISecrecyService$Stub;
.super Landroid/os/Binder;
.source "ISecrecyService.java"

# interfaces
.implements Landroid/secrecy/ISecrecyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/secrecy/ISecrecyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/secrecy/ISecrecyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.secrecy.ISecrecyService"

.field static final TRANSACTION_getSecrecyKey:I = 0x2

.field static final TRANSACTION_getSecrecyState:I = 0x1

.field static final TRANSACTION_isInEncryptedAppList:I = 0x5

.field static final TRANSACTION_isSecrecySupport:I = 0x4

.field static final TRANSACTION_registerSecrecyServiceReceiver:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.secrecy.ISecrecyService"

    invoke-virtual {p0, p0, v0}, Landroid/secrecy/ISecrecyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/secrecy/ISecrecyService;
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
    const-string/jumbo v1, "android.secrecy.ISecrecyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/secrecy/ISecrecyService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/secrecy/ISecrecyService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/secrecy/ISecrecyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/secrecy/ISecrecyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 46
    :sswitch_0
    const-string/jumbo v9, "android.secrecy.ISecrecyService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v9, 0x1

    return v9

    .line 51
    :sswitch_1
    const-string/jumbo v9, "android.secrecy.ISecrecyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/secrecy/ISecrecyService$Stub;->getSecrecyState(I)Z

    move-result v8

    .line 55
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v8, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v9, 0x1

    return v9

    .line 56
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "android.secrecy.ISecrecyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 64
    .local v4, "_arg0_length":I
    if-gez v4, :cond_1

    .line 65
    const/4 v3, 0x0

    .line 70
    :goto_1
    invoke-virtual {p0, v3}, Landroid/secrecy/ISecrecyService$Stub;->getSecrecyKey([B)Z

    move-result v8

    .line 71
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v8, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 74
    const/4 v9, 0x1

    return v9

    .line 68
    .end local v8    # "_result":Z
    :cond_1
    new-array v3, v4, [B

    .local v3, "_arg0":[B
    goto :goto_1

    .line 72
    .end local v3    # "_arg0":[B
    .restart local v8    # "_result":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 78
    .end local v4    # "_arg0_length":I
    .end local v8    # "_result":Z
    :sswitch_3
    const-string/jumbo v9, "android.secrecy.ISecrecyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/secrecy/ISecrecyServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/secrecy/ISecrecyServiceReceiver;

    move-result-object v2

    .line 81
    .local v2, "_arg0":Landroid/secrecy/ISecrecyServiceReceiver;
    invoke-virtual {p0, v2}, Landroid/secrecy/ISecrecyService$Stub;->registerSecrecyServiceReceiver(Landroid/secrecy/ISecrecyServiceReceiver;)Z

    move-result v8

    .line 82
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v8, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v9, 0x1

    return v9

    .line 83
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 88
    .end local v2    # "_arg0":Landroid/secrecy/ISecrecyServiceReceiver;
    .end local v8    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "android.secrecy.ISecrecyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/secrecy/ISecrecyService$Stub;->isSecrecySupport()Z

    move-result v8

    .line 90
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v8, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v9, 0x1

    return v9

    .line 91
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 96
    .end local v8    # "_result":Z
    :sswitch_5
    const-string/jumbo v9, "android.secrecy.ISecrecyService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    .line 99
    sget-object v9, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 105
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 109
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 110
    .local v7, "_arg3":I
    invoke-virtual {p0, v1, v5, v6, v7}, Landroid/secrecy/ISecrecyService$Stub;->isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v8

    .line 111
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v8, :cond_6

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v9, 0x1

    return v9

    .line 102
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_5

    .line 112
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":I
    .restart local v8    # "_result":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .line 42
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
