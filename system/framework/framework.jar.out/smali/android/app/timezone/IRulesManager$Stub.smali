.class public abstract Landroid/app/timezone/IRulesManager$Stub;
.super Landroid/os/Binder;
.source "IRulesManager.java"

# interfaces
.implements Landroid/app/timezone/IRulesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/IRulesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/IRulesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.timezone.IRulesManager"

.field static final TRANSACTION_getRulesState:I = 0x1

.field static final TRANSACTION_requestInstall:I = 0x2

.field static final TRANSACTION_requestNothing:I = 0x4

.field static final TRANSACTION_requestUninstall:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string/jumbo v0, "android.app.timezone.IRulesManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/timezone/IRulesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/timezone/IRulesManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    return-object v1

    .line 36
    :cond_0
    const-string/jumbo v1, "android.app.timezone.IRulesManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/timezone/IRulesManager;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/app/timezone/IRulesManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/timezone/IRulesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/timezone/IRulesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 52
    :sswitch_0
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v9

    .line 57
    :sswitch_1
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/timezone/IRulesManager$Stub;->getRulesState()Landroid/app/timezone/RulesState;

    move-result-object v7

    .line 59
    .local v7, "_result":Landroid/app/timezone/RulesState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v7, p3, v9}, Landroid/app/timezone/RulesState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_0
    return v9

    .line 65
    :cond_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v7    # "_result":Landroid/app/timezone/RulesState;
    :sswitch_2
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    sget-object v8, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 80
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 82
    .local v4, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/timezone/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/ICallback;

    move-result-object v5

    .line 83
    .local v5, "_arg2":Landroid/app/timezone/ICallback;
    invoke-virtual {p0, v0, v4, v5}, Landroid/app/timezone/IRulesManager$Stub;->requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I

    move-result v6

    .line 84
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v9

    .line 77
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":Landroid/app/timezone/ICallback;
    .end local v6    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 90
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 94
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/timezone/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/ICallback;

    move-result-object v2

    .line 95
    .local v2, "_arg1":Landroid/app/timezone/ICallback;
    invoke-virtual {p0, v1, v2}, Landroid/app/timezone/IRulesManager$Stub;->requestUninstall([BLandroid/app/timezone/ICallback;)I

    move-result v6

    .line 96
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v9

    .line 102
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":Landroid/app/timezone/ICallback;
    .end local v6    # "_result":I
    :sswitch_4
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 106
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    .line 107
    .local v3, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v1, v3}, Landroid/app/timezone/IRulesManager$Stub;->requestNothing([BZ)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    return v9

    .line 106
    .end local v3    # "_arg1":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Z
    goto :goto_2

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
