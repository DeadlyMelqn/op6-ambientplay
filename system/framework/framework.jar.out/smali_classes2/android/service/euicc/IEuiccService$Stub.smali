.class public abstract Landroid/service/euicc/IEuiccService$Stub;
.super Landroid/os/Binder;
.source "IEuiccService.java"

# interfaces
.implements Landroid/service/euicc/IEuiccService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IEuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IEuiccService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.euicc.IEuiccService"

.field static final TRANSACTION_deleteSubscription:I = 0x7

.field static final TRANSACTION_downloadSubscription:I = 0x1

.field static final TRANSACTION_eraseSubscriptions:I = 0xa

.field static final TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x5

.field static final TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final TRANSACTION_getEid:I = 0x3

.field static final TRANSACTION_getEuiccInfo:I = 0x6

.field static final TRANSACTION_getEuiccProfileInfoList:I = 0x4

.field static final TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xb

.field static final TRANSACTION_switchToSubscription:I = 0x8

.field static final TRANSACTION_updateSubscriptionNickname:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.service.euicc.IEuiccService"

    invoke-virtual {p0, p0, v0}, Landroid/service/euicc/IEuiccService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEuiccService;
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
    const-string/jumbo v1, "android.service.euicc.IEuiccService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/euicc/IEuiccService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/service/euicc/IEuiccService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/euicc/IEuiccService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/euicc/IEuiccService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 22
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 189
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 43
    :sswitch_0
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x1

    return v3

    .line 48
    :sswitch_1
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 52
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/euicc/DownloadableSubscription;

    .line 59
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    .line 61
    .local v6, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v7, 0x1

    .line 63
    .local v7, "_arg3":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IDownloadSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDownloadSubscriptionCallback;

    move-result-object v8

    .local v8, "_arg4":Landroid/service/euicc/IDownloadSubscriptionCallback;
    move-object/from16 v3, p0

    .line 64
    invoke-virtual/range {v3 .. v8}, Landroid/service/euicc/IEuiccService$Stub;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V

    .line 65
    const/4 v3, 0x1

    return v3

    .line 56
    .end local v6    # "_arg2":Z
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Landroid/service/euicc/IDownloadSubscriptionCallback;
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    goto :goto_0

    .line 59
    .end local v5    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Z
    goto :goto_1

    .line 61
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Z
    goto :goto_2

    .line 69
    .end local v4    # "_arg0":I
    .end local v6    # "_arg2":Z
    .end local v7    # "_arg3":Z
    :sswitch_2
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 73
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    sget-object v3, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/euicc/DownloadableSubscription;

    .line 80
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v6, 0x1

    .line 82
    .restart local v6    # "_arg2":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    move-result-object v19

    .line 83
    .local v19, "_arg3":Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/service/euicc/IEuiccService$Stub;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    .line 84
    const/4 v3, 0x1

    return v3

    .line 77
    .end local v6    # "_arg2":Z
    .end local v19    # "_arg3":Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    goto :goto_3

    .line 80
    .end local v5    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Z
    goto :goto_4

    .line 88
    .end local v4    # "_arg0":I
    .end local v6    # "_arg2":Z
    :sswitch_3
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 92
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IGetEidCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEidCallback;

    move-result-object v10

    .line 93
    .local v10, "_arg1":Landroid/service/euicc/IGetEidCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/service/euicc/IEuiccService$Stub;->getEid(ILandroid/service/euicc/IGetEidCallback;)V

    .line 94
    const/4 v3, 0x1

    return v3

    .line 98
    .end local v4    # "_arg0":I
    .end local v10    # "_arg1":Landroid/service/euicc/IGetEidCallback;
    :sswitch_4
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IGetEuiccProfileInfoListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

    move-result-object v12

    .line 103
    .local v12, "_arg1":Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    .line 104
    const/4 v3, 0x1

    return v3

    .line 108
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
    :sswitch_5
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v15, 0x1

    .line 114
    .local v15, "_arg1":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    move-result-object v17

    .line 115
    .local v17, "_arg2":Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v15, v1}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    .line 116
    const/4 v3, 0x1

    return v3

    .line 112
    .end local v15    # "_arg1":Z
    .end local v17    # "_arg2":Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
    :cond_5
    const/4 v15, 0x0

    .restart local v15    # "_arg1":Z
    goto :goto_5

    .line 120
    .end local v4    # "_arg0":I
    .end local v15    # "_arg1":Z
    :sswitch_6
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IGetEuiccInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccInfoCallback;

    move-result-object v11

    .line 125
    .local v11, "_arg1":Landroid/service/euicc/IGetEuiccInfoCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    .line 126
    const/4 v3, 0x1

    return v3

    .line 130
    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":Landroid/service/euicc/IGetEuiccInfoCallback;
    :sswitch_7
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 134
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 136
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IDeleteSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDeleteSubscriptionCallback;

    move-result-object v16

    .line 137
    .local v16, "_arg2":Landroid/service/euicc/IDeleteSubscriptionCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v14, v1}, Landroid/service/euicc/IEuiccService$Stub;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    .line 138
    const/4 v3, 0x1

    return v3

    .line 142
    .end local v4    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Landroid/service/euicc/IDeleteSubscriptionCallback;
    :sswitch_8
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 146
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 148
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x1

    .line 150
    .restart local v6    # "_arg2":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/ISwitchToSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/ISwitchToSubscriptionCallback;

    move-result-object v20

    .line 151
    .local v20, "_arg3":Landroid/service/euicc/ISwitchToSubscriptionCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v14, v6, v1}, Landroid/service/euicc/IEuiccService$Stub;->switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V

    .line 152
    const/4 v3, 0x1

    return v3

    .line 148
    .end local v6    # "_arg2":Z
    .end local v20    # "_arg3":Landroid/service/euicc/ISwitchToSubscriptionCallback;
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Z
    goto :goto_6

    .line 156
    .end local v4    # "_arg0":I
    .end local v6    # "_arg2":Z
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 162
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 164
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IUpdateSubscriptionNicknameCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    move-result-object v21

    .line 165
    .local v21, "_arg3":Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v4, v14, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    .line 166
    const/4 v3, 0x1

    return v3

    .line 170
    .end local v4    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v21    # "_arg3":Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;
    :sswitch_a
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 174
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IEraseSubscriptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEraseSubscriptionsCallback;

    move-result-object v9

    .line 175
    .local v9, "_arg1":Landroid/service/euicc/IEraseSubscriptionsCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/service/euicc/IEuiccService$Stub;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    .line 176
    const/4 v3, 0x1

    return v3

    .line 180
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":Landroid/service/euicc/IEraseSubscriptionsCallback;
    :sswitch_b
    const-string/jumbo v3, "android.service.euicc.IEuiccService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;

    move-result-object v13

    .line 185
    .local v13, "_arg1":Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Landroid/service/euicc/IEuiccService$Stub;->retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    .line 186
    const/4 v3, 0x1

    return v3

    .line 39
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
