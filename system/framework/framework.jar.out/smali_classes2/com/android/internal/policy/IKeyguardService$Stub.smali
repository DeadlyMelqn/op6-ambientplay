.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_dismiss:I = 0x4

.field static final TRANSACTION_doKeyguardTimeout:I = 0x11

.field static final TRANSACTION_notifyLidSwitchChanged:I = 0x17

.field static final TRANSACTION_onBootCompleted:I = 0x14

.field static final TRANSACTION_onDreamingStarted:I = 0x5

.field static final TRANSACTION_onDreamingStopped:I = 0x6

.field static final TRANSACTION_onFinishedGoingToSleep:I = 0x8

.field static final TRANSACTION_onFinishedWakingUp:I = 0xa

.field static final TRANSACTION_onScreenTurnedOff:I = 0xe

.field static final TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final TRANSACTION_onScreenTurningOff:I = 0xd

.field static final TRANSACTION_onScreenTurningOn:I = 0xb

.field static final TRANSACTION_onShortPowerPressedGoHome:I = 0x16

.field static final TRANSACTION_onStartedGoingToSleep:I = 0x7

.field static final TRANSACTION_onStartedWakingUp:I = 0x9

.field static final TRANSACTION_onSystemReady:I = 0x10

.field static final TRANSACTION_setCurrentUser:I = 0x13

.field static final TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_setSwitchingUser:I = 0x12

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x15

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 221
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    .line 42
    :sswitch_0
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v14, 0x1

    return v14

    .line 47
    :sswitch_1
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_0

    const/4 v10, 0x1

    .line 51
    .local v10, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    const/4 v11, 0x1

    .line 52
    .local v11, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v10, v11}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    .line 53
    const/4 v14, 0x1

    return v14

    .line 49
    .end local v10    # "_arg0":Z
    .end local v11    # "_arg1":Z
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_0

    .line 51
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Z
    goto :goto_1

    .line 57
    .end local v10    # "_arg0":Z
    .end local v11    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v9

    .line 60
    .local v9, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 61
    const/4 v14, 0x1

    return v14

    .line 65
    .end local v9    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :sswitch_3
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v8

    .line 68
    .local v8, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 69
    const/4 v14, 0x1

    return v14

    .line 73
    .end local v8    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :sswitch_4
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v6

    .line 76
    .local v6, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 77
    const/4 v14, 0x1

    return v14

    .line 81
    .end local v6    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    :sswitch_5
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    .line 83
    const/4 v14, 0x1

    return v14

    .line 87
    :sswitch_6
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    .line 89
    const/4 v14, 0x1

    return v14

    .line 93
    :sswitch_7
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    .line 97
    const/4 v14, 0x1

    return v14

    .line 101
    .end local v2    # "_arg0":I
    :sswitch_8
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v11, 0x1

    .line 106
    .restart local v11    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v2, v11}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    .line 107
    const/4 v14, 0x1

    return v14

    .line 105
    .end local v11    # "_arg1":Z
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Z
    goto :goto_2

    .line 111
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":Z
    :sswitch_9
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp()V

    .line 113
    const/4 v14, 0x1

    return v14

    .line 117
    :sswitch_a
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    .line 119
    const/4 v14, 0x1

    return v14

    .line 123
    :sswitch_b
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v7

    .line 126
    .local v7, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 127
    const/4 v14, 0x1

    return v14

    .line 131
    .end local v7    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :sswitch_c
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    .line 133
    const/4 v14, 0x1

    return v14

    .line 137
    :sswitch_d
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    .line 139
    const/4 v14, 0x1

    return v14

    .line 143
    :sswitch_e
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    .line 145
    const/4 v14, 0x1

    return v14

    .line 149
    :sswitch_f
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    const/4 v10, 0x1

    .line 152
    .restart local v10    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    .line 153
    const/4 v14, 0x1

    return v14

    .line 151
    .end local v10    # "_arg0":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_3

    .line 157
    .end local v10    # "_arg0":Z
    :sswitch_10
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    .line 159
    const/4 v14, 0x1

    return v14

    .line 163
    :sswitch_11
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_4

    .line 166
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 171
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 172
    const/4 v14, 0x1

    return v14

    .line 169
    :cond_4
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 176
    .end local v3    # "_arg0":Landroid/os/Bundle;
    :sswitch_12
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_5

    const/4 v10, 0x1

    .line 179
    .restart local v10    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    .line 180
    const/4 v14, 0x1

    return v14

    .line 178
    .end local v10    # "_arg0":Z
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_5

    .line 184
    .end local v10    # "_arg0":Z
    :sswitch_13
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    .line 188
    const/4 v14, 0x1

    return v14

    .line 192
    .end local v2    # "_arg0":I
    :sswitch_14
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    .line 194
    const/4 v14, 0x1

    return v14

    .line 198
    :sswitch_15
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 202
    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 203
    .local v12, "_arg1":J
    invoke-virtual {p0, v4, v5, v12, v13}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    .line 204
    const/4 v14, 0x1

    return v14

    .line 208
    .end local v4    # "_arg0":J
    .end local v12    # "_arg1":J
    :sswitch_16
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    .line 210
    const/4 v14, 0x1

    return v14

    .line 214
    :sswitch_17
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_6

    const/4 v10, 0x1

    .line 217
    .restart local v10    # "_arg0":Z
    :goto_6
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->notifyLidSwitchChanged(Z)V

    .line 218
    const/4 v14, 0x1

    return v14

    .line 216
    .end local v10    # "_arg0":Z
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_6

    .line 38
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
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
