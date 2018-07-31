.class public abstract Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.super Landroid/os/Binder;
.source "IUceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/uceservice/IUceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/IUceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.uceservice.IUceService"

.field static final TRANSACTION_createOptionsService:I = 0x4

.field static final TRANSACTION_createOptionsServiceForSubscription:I = 0x5

.field static final TRANSACTION_createPresenceService:I = 0x7

.field static final TRANSACTION_createPresenceServiceForSubscription:I = 0x8

.field static final TRANSACTION_destroyOptionsService:I = 0x6

.field static final TRANSACTION_destroyPresenceService:I = 0x9

.field static final TRANSACTION_getOptionsService:I = 0xd

.field static final TRANSACTION_getOptionsServiceForSubscription:I = 0xe

.field static final TRANSACTION_getPresenceService:I = 0xb

.field static final TRANSACTION_getPresenceServiceForSubscription:I = 0xc

.field static final TRANSACTION_getServiceStatus:I = 0xa

.field static final TRANSACTION_isServiceStarted:I = 0x3

.field static final TRANSACTION_startService:I = 0x1

.field static final TRANSACTION_stopService:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;
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
    const-string/jumbo v1, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 237
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 45
    :sswitch_0
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v11, 0x1

    return v11

    .line 50
    :sswitch_1
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/uceservice/IUceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceListener;

    move-result-object v3

    .line 53
    .local v3, "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    invoke-virtual {p0, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result v10

    .line 54
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v10, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v11, 0x1

    return v11

    .line 55
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 60
    .end local v3    # "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    .end local v10    # "_result":Z
    :sswitch_2
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->stopService()Z

    move-result v10

    .line 62
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v10, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v11, 0x1

    return v11

    .line 63
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 68
    .end local v10    # "_result":Z
    :sswitch_3
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->isServiceStarted()Z

    move-result v10

    .line 70
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v10, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v11, 0x1

    return v11

    .line 71
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 76
    .end local v10    # "_result":Z
    :sswitch_4
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v1

    .line 80
    .local v1, "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    .line 81
    sget-object v11, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/common/UceLong;

    .line 86
    :goto_3
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v7

    .line 87
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    if-eqz v5, :cond_4

    .line 90
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v11, 0x1

    invoke-virtual {v5, p3, v11}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_4
    const/4 v11, 0x1

    return v11

    .line 84
    .end local v7    # "_result":I
    :cond_3
    const/4 v5, 0x0

    .local v5, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_3

    .line 94
    .end local v5    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v7    # "_result":I
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 100
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v7    # "_result":I
    :sswitch_5
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v1

    .line 104
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    .line 105
    sget-object v11, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/common/UceLong;

    .line 111
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsServiceForSubscription(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v7

    .line 113
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    if-eqz v5, :cond_6

    .line 116
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v11, 0x1

    invoke-virtual {v5, p3, v11}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    .line 122
    :goto_6
    const/4 v11, 0x1

    return v11

    .line 108
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_result":I
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_5

    .line 120
    .end local v5    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v7    # "_result":I
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 126
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_result":I
    :sswitch_6
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyOptionsService(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v11, 0x1

    return v11

    .line 135
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v2

    .line 139
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    .line 140
    sget-object v11, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/common/UceLong;

    .line 145
    :goto_7
    invoke-virtual {p0, v2, v5}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v7

    .line 146
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    if-eqz v5, :cond_8

    .line 149
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v11, 0x1

    invoke-virtual {v5, p3, v11}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_8
    const/4 v11, 0x1

    return v11

    .line 143
    .end local v7    # "_result":I
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_7

    .line 153
    .end local v5    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v7    # "_result":I
    :cond_8
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 159
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v7    # "_result":I
    :sswitch_8
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v2

    .line 163
    .restart local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_9

    .line 164
    sget-object v11, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/common/UceLong;

    .line 170
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 171
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v5, v6}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceServiceForSubscription(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v7

    .line 172
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    if-eqz v5, :cond_a

    .line 175
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v11, 0x1

    invoke-virtual {v5, p3, v11}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    :goto_a
    const/4 v11, 0x1

    return v11

    .line 167
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_result":I
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_9

    .line 179
    .end local v5    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v7    # "_result":I
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 185
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_result":I
    :sswitch_9
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyPresenceService(I)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v11, 0x1

    return v11

    .line 194
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getServiceStatus()Z

    move-result v10

    .line 196
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v10, :cond_b

    const/4 v11, 0x1

    :goto_b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v11, 0x1

    return v11

    .line 197
    :cond_b
    const/4 v11, 0x0

    goto :goto_b

    .line 202
    .end local v10    # "_result":Z
    :sswitch_b
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v9

    .line 204
    .local v9, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v9, :cond_c

    invoke-interface {v9}, Lcom/android/ims/internal/uce/presence/IPresenceService;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    :goto_c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 206
    const/4 v11, 0x1

    return v11

    .line 205
    :cond_c
    const/4 v11, 0x0

    goto :goto_c

    .line 210
    .end local v9    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :sswitch_c
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v9

    .line 214
    .restart local v9    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v9, :cond_d

    invoke-interface {v9}, Lcom/android/ims/internal/uce/presence/IPresenceService;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    :goto_d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 216
    const/4 v11, 0x1

    return v11

    .line 215
    :cond_d
    const/4 v11, 0x0

    goto :goto_d

    .line 220
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :sswitch_d
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v8

    .line 222
    .local v8, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v8, :cond_e

    invoke-interface {v8}, Lcom/android/ims/internal/uce/options/IOptionsService;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    :goto_e
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 224
    const/4 v11, 0x1

    return v11

    .line 223
    :cond_e
    const/4 v11, 0x0

    goto :goto_e

    .line 228
    .end local v8    # "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    :sswitch_e
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 231
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v8

    .line 232
    .restart local v8    # "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v8, :cond_f

    invoke-interface {v8}, Lcom/android/ims/internal/uce/options/IOptionsService;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    :goto_f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 234
    const/4 v11, 0x1

    return v11

    .line 233
    :cond_f
    const/4 v11, 0x0

    goto :goto_f

    .line 41
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
