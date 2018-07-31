.class public abstract Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.super Landroid/os/Binder;
.source "IEuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IEuiccController"

.field static final TRANSACTION_continueOperation:I = 0x1

.field static final TRANSACTION_deleteSubscription:I = 0x7

.field static final TRANSACTION_downloadSubscription:I = 0x5

.field static final TRANSACTION_eraseSubscriptions:I = 0xa

.field static final TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x3

.field static final TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final TRANSACTION_getEid:I = 0x4

.field static final TRANSACTION_getEuiccInfo:I = 0x6

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
    const-string/jumbo v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;
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
    const-string/jumbo v1, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccController;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/telephony/euicc/IEuiccController;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 16
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

    .line 227
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    .line 43
    :sswitch_0
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v15, 0x1

    return v15

    .line 48
    :sswitch_1
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_0

    .line 51
    sget-object v15, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 57
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1

    .line 58
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 63
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 64
    const/4 v15, 0x1

    return v15

    .line 54
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 61
    .end local v3    # "_arg0":Landroid/content/Intent;
    :cond_1
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 68
    .end local v7    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    .line 71
    sget-object v15, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/euicc/DownloadableSubscription;

    .line 77
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_3

    .line 80
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 85
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v10}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 86
    const/4 v15, 0x1

    return v15

    .line 74
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    goto :goto_2

    .line 83
    .end local v4    # "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    .restart local v8    # "_arg1":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    .local v10, "_arg2":Landroid/app/PendingIntent;
    goto :goto_3

    .line 90
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_3
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_4

    .line 95
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 100
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDefaultDownloadableSubscriptionList(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 101
    const/4 v15, 0x1

    return v15

    .line 98
    :cond_4
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/app/PendingIntent;
    goto :goto_4

    .line 105
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_4
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEid()Ljava/lang/String;

    move-result-object v14

    .line 107
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    const/4 v15, 0x1

    return v15

    .line 113
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_5

    .line 116
    sget-object v15, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/euicc/DownloadableSubscription;

    .line 122
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_6

    const/4 v9, 0x1

    .line 124
    .local v9, "_arg1":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_7

    .line 127
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .line 132
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v11, v12}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 133
    const/4 v15, 0x1

    return v15

    .line 119
    .end local v9    # "_arg1":Z
    .end local v11    # "_arg2":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    goto :goto_5

    .line 122
    .end local v4    # "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_6

    .line 130
    .restart local v11    # "_arg2":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    .local v12, "_arg3":Landroid/app/PendingIntent;
    goto :goto_7

    .line 137
    .end local v9    # "_arg1":Z
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_6
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;

    move-result-object v13

    .line 139
    .local v13, "_result":Landroid/telephony/euicc/EuiccInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v13, :cond_8

    .line 141
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v15}, Landroid/telephony/euicc/EuiccInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    :goto_8
    const/4 v15, 0x1

    return v15

    .line 145
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 151
    .end local v13    # "_result":Landroid/telephony/euicc/EuiccInfo;
    :sswitch_7
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 157
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_9

    .line 158
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 163
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v10}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->deleteSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 164
    const/4 v15, 0x1

    return v15

    .line 161
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_9

    .line 168
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_8
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 174
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_a

    .line 175
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 180
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v10}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->switchToSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 181
    const/4 v15, 0x1

    return v15

    .line 178
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_a

    .line 185
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_9
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 191
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_b

    .line 192
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 197
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v10}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 198
    const/4 v15, 0x1

    return v15

    .line 195
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_b

    .line 202
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_a
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_c

    .line 205
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 210
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 211
    const/4 v15, 0x1

    return v15

    .line 208
    :cond_c
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/app/PendingIntent;
    goto :goto_c

    .line 215
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_b
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_d

    .line 218
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 223
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V

    .line 224
    const/4 v15, 0x1

    return v15

    .line 221
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_d

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
