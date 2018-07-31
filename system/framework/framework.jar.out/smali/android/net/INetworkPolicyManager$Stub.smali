.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final TRANSACTION_addUidPolicy:I = 0x2

.field static final TRANSACTION_factoryReset:I = 0x15

.field static final TRANSACTION_getNetworkPolicies:I = 0xa

.field static final TRANSACTION_getNetworkQuotaInfo:I = 0x12

.field static final TRANSACTION_getRestrictBackground:I = 0xd

.field static final TRANSACTION_getRestrictBackgroundByCaller:I = 0xf

.field static final TRANSACTION_getSubscriptionPlans:I = 0x13

.field static final TRANSACTION_getUidPolicy:I = 0x4

.field static final TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final TRANSACTION_isUidForeground:I = 0x6

.field static final TRANSACTION_isUidNetworkingBlocked:I = 0x16

.field static final TRANSACTION_onTetheringChanged:I = 0xe

.field static final TRANSACTION_registerListener:I = 0x7

.field static final TRANSACTION_removeUidPolicy:I = 0x3

.field static final TRANSACTION_setDeviceIdleMode:I = 0x10

.field static final TRANSACTION_setNetworkPolicies:I = 0x9

.field static final TRANSACTION_setRestrictBackground:I = 0xc

.field static final TRANSACTION_setSubscriptionPlans:I = 0x14

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_setWifiMeteredOverride:I = 0x11

.field static final TRANSACTION_snoozeLimit:I = 0xb

.field static final TRANSACTION_unregisterListener:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/INetworkPolicyManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 288
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v21

    return v21

    .line 47
    :sswitch_0
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v21, 0x1

    return v21

    .line 52
    :sswitch_1
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 57
    .local v10, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/16 v21, 0x1

    return v21

    .line 63
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":I
    :sswitch_2
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 68
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/16 v21, 0x1

    return v21

    .line 74
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":I
    :sswitch_3
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 79
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/16 v21, 0x1

    return v21

    .line 85
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":I
    :sswitch_4
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v15

    .line 89
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/16 v21, 0x1

    return v21

    .line 95
    .end local v3    # "_arg0":I
    .end local v15    # "_result":I
    :sswitch_5
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v18

    .line 99
    .local v18, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 101
    const/16 v21, 0x1

    return v21

    .line 105
    .end local v3    # "_arg0":I
    .end local v18    # "_result":[I
    :sswitch_6
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->isUidForeground(I)Z

    move-result v17

    .line 109
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v17, :cond_0

    const/16 v21, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/16 v21, 0x1

    return v21

    .line 110
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 115
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_7
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v4

    .line 118
    .local v4, "_arg0":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/16 v21, 0x1

    return v21

    .line 124
    .end local v4    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_8
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v4

    .line 127
    .restart local v4    # "_arg0":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/16 v21, 0x1

    return v21

    .line 133
    .end local v4    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_9
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    sget-object v21, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/NetworkPolicy;

    .line 136
    .local v9, "_arg0":[Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/16 v21, 0x1

    return v21

    .line 142
    .end local v9    # "_arg0":[Landroid/net/NetworkPolicy;
    :sswitch_a
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v19

    .line 146
    .local v19, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 148
    const/16 v21, 0x1

    return v21

    .line 152
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":[Landroid/net/NetworkPolicy;
    :sswitch_b
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_1

    .line 155
    sget-object v21, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    .line 160
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/16 v21, 0x1

    return v21

    .line 158
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_1

    .line 166
    .end local v6    # "_arg0":Landroid/net/NetworkTemplate;
    :sswitch_c
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_2

    const/4 v8, 0x1

    .line 169
    .local v8, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/16 v21, 0x1

    return v21

    .line 168
    .end local v8    # "_arg0":Z
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_2

    .line 175
    .end local v8    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v17

    .line 177
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v17, :cond_3

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/16 v21, 0x1

    return v21

    .line 178
    :cond_3
    const/16 v21, 0x0

    goto :goto_3

    .line 183
    .end local v17    # "_result":Z
    :sswitch_e
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 187
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_4

    const/4 v12, 0x1

    .line 188
    .local v12, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Landroid/net/INetworkPolicyManager$Stub;->onTetheringChanged(Ljava/lang/String;Z)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/16 v21, 0x1

    return v21

    .line 187
    .end local v12    # "_arg1":Z
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Z
    goto :goto_4

    .line 194
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Z
    :sswitch_f
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    move-result v15

    .line 196
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/16 v21, 0x1

    return v21

    .line 202
    .end local v15    # "_result":I
    :sswitch_10
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_5

    const/4 v8, 0x1

    .line 205
    .restart local v8    # "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/16 v21, 0x1

    return v21

    .line 204
    .end local v8    # "_arg0":Z
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_5

    .line 211
    .end local v8    # "_arg0":Z
    :sswitch_11
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 215
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 216
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Landroid/net/INetworkPolicyManager$Stub;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/16 v21, 0x1

    return v21

    .line 222
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    :sswitch_12
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_6

    .line 225
    sget-object v21, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkState;

    .line 230
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;

    move-result-object v16

    .line 231
    .local v16, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v16, :cond_7

    .line 233
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 239
    :goto_7
    const/16 v21, 0x1

    return v21

    .line 228
    .end local v16    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_6
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/NetworkState;
    goto :goto_6

    .line 237
    .end local v5    # "_arg0":Landroid/net/NetworkState;
    .restart local v16    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_7
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 243
    .end local v16    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_13
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 248
    .local v11, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v20

    .line 249
    .local v20, "_result":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 251
    const/16 v21, 0x1

    return v21

    .line 255
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":[Landroid/telephony/SubscriptionPlan;
    :sswitch_14
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 259
    .restart local v3    # "_arg0":I
    sget-object v21, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/telephony/SubscriptionPlan;

    .line 261
    .local v13, "_arg1":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 262
    .local v14, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/16 v21, 0x1

    return v21

    .line 268
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":[Landroid/telephony/SubscriptionPlan;
    .end local v14    # "_arg2":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 271
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/16 v21, 0x1

    return v21

    .line 277
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v21, "android.net.INetworkPolicyManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 281
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_8

    const/4 v12, 0x1

    .line 282
    .restart local v12    # "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Landroid/net/INetworkPolicyManager$Stub;->isUidNetworkingBlocked(IZ)Z

    move-result v17

    .line 283
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v17, :cond_9

    const/16 v21, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/16 v21, 0x1

    return v21

    .line 281
    .end local v12    # "_arg1":Z
    .end local v17    # "_result":Z
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Z
    goto :goto_8

    .line 284
    .restart local v17    # "_result":Z
    :cond_9
    const/16 v21, 0x0

    goto :goto_9

    .line 43
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
