.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final TRANSACTION_addAutomaticZenRule:I = 0x51

.field static final TRANSACTION_applyAdjustmentFromAssistant:I = 0x36

.field static final TRANSACTION_applyAdjustmentsFromAssistant:I = 0x37

.field static final TRANSACTION_applyEnqueuedAdjustmentFromAssistant:I = 0x35

.field static final TRANSACTION_applyRestore:I = 0x57

.field static final TRANSACTION_areNotificationsEnabled:I = 0xb

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0xa

.field static final TRANSACTION_canShowBadge:I = 0x8

.field static final TRANSACTION_cancelAllNotifications:I = 0x1

.field static final TRANSACTION_cancelNotificationFromListener:I = 0x21

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x6

.field static final TRANSACTION_cancelNotificationsFromListener:I = 0x22

.field static final TRANSACTION_cancelToast:I = 0x4

.field static final TRANSACTION_clearData:I = 0x2

.field static final TRANSACTION_createNotificationChannelGroups:I = 0xd

.field static final TRANSACTION_createNotificationChannels:I = 0xe

.field static final TRANSACTION_createNotificationChannelsForPackage:I = 0xf

.field static final TRANSACTION_deleteNotificationChannel:I = 0x15

.field static final TRANSACTION_deleteNotificationChannelGroup:I = 0x1a

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x5

.field static final TRANSACTION_enqueueToast:I = 0x3

.field static final TRANSACTION_getActiveNotifications:I = 0x1d

.field static final TRANSACTION_getActiveNotificationsFromListener:I = 0x2a

.field static final TRANSACTION_getAppActiveNotifications:I = 0x58

.field static final TRANSACTION_getAutomaticZenRule:I = 0x4f

.field static final TRANSACTION_getBackupPayload:I = 0x56

.field static final TRANSACTION_getDeletedChannelCount:I = 0x19

.field static final TRANSACTION_getEffectsSuppressor:I = 0x39

.field static final TRANSACTION_getEnabledNotificationListenerPackages:I = 0x43

.field static final TRANSACTION_getEnabledNotificationListeners:I = 0x44

.field static final TRANSACTION_getHintsFromListener:I = 0x2d

.field static final TRANSACTION_getHistoricalNotifications:I = 0x1e

.field static final TRANSACTION_getInterruptionFilterFromListener:I = 0x2f

.field static final TRANSACTION_getNotificationChannel:I = 0x13

.field static final TRANSACTION_getNotificationChannelForPackage:I = 0x14

.field static final TRANSACTION_getNotificationChannelGroupForPackage:I = 0x11

.field static final TRANSACTION_getNotificationChannelGroups:I = 0x1b

.field static final TRANSACTION_getNotificationChannelGroupsForPackage:I = 0x10

.field static final TRANSACTION_getNotificationChannelGroupsFromPrivilegedListener:I = 0x34

.field static final TRANSACTION_getNotificationChannels:I = 0x16

.field static final TRANSACTION_getNotificationChannelsForPackage:I = 0x17

.field static final TRANSACTION_getNotificationChannelsFromPrivilegedListener:I = 0x33

.field static final TRANSACTION_getNotificationPolicy:I = 0x4a

.field static final TRANSACTION_getNumNotificationChannelsForPackage:I = 0x18

.field static final TRANSACTION_getOnePlusPackagePriority:I = 0x5d

.field static final TRANSACTION_getPackageImportance:I = 0xc

.field static final TRANSACTION_getRuleInstanceCount:I = 0x55

.field static final TRANSACTION_getSnoozedNotificationsFromListener:I = 0x2b

.field static final TRANSACTION_getZenMode:I = 0x45

.field static final TRANSACTION_getZenModeConfig:I = 0x46

.field static final TRANSACTION_getZenRules:I = 0x50

.field static final TRANSACTION_isNotificationAssistantAccessGranted:I = 0x3e

.field static final TRANSACTION_isNotificationLedEnabled:I = 0x5a

.field static final TRANSACTION_isNotificationListenerAccessGranted:I = 0x3c

.field static final TRANSACTION_isNotificationListenerAccessGrantedForUser:I = 0x3d

.field static final TRANSACTION_isNotificationPolicyAccessGranted:I = 0x49

.field static final TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x4c

.field static final TRANSACTION_isSystemConditionProviderEnabled:I = 0x3b

.field static final TRANSACTION_matchesCallFilter:I = 0x3a

.field static final TRANSACTION_notifyConditions:I = 0x48

.field static final TRANSACTION_onlyHasDefaultChannel:I = 0x1c

.field static final TRANSACTION_registerListener:I = 0x1f

.field static final TRANSACTION_removeAutomaticZenRule:I = 0x53

.field static final TRANSACTION_removeAutomaticZenRules:I = 0x54

.field static final TRANSACTION_requestBindListener:I = 0x25

.field static final TRANSACTION_requestBindProvider:I = 0x27

.field static final TRANSACTION_requestHintsFromListener:I = 0x2c

.field static final TRANSACTION_requestInterruptionFilterFromListener:I = 0x2e

.field static final TRANSACTION_requestUnbindListener:I = 0x26

.field static final TRANSACTION_requestUnbindProvider:I = 0x28

.field static final TRANSACTION_setAppLock:I = 0x5c

.field static final TRANSACTION_setAppUnlock:I = 0x5b

.field static final TRANSACTION_setInterruptionFilter:I = 0x31

.field static final TRANSACTION_setNotificationAssistantAccessGranted:I = 0x40

.field static final TRANSACTION_setNotificationAssistantAccessGrantedForUser:I = 0x42

.field static final TRANSACTION_setNotificationLedStatus:I = 0x59

.field static final TRANSACTION_setNotificationListenerAccessGranted:I = 0x3f

.field static final TRANSACTION_setNotificationListenerAccessGrantedForUser:I = 0x41

.field static final TRANSACTION_setNotificationPolicy:I = 0x4b

.field static final TRANSACTION_setNotificationPolicyAccessGranted:I = 0x4d

.field static final TRANSACTION_setNotificationPolicyAccessGrantedForUser:I = 0x4e

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x9

.field static final TRANSACTION_setNotificationsShownFromListener:I = 0x29

.field static final TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x30

.field static final TRANSACTION_setOnePlusVibrateInSilentMode:I = 0x5e

.field static final TRANSACTION_setShowBadge:I = 0x7

.field static final TRANSACTION_setZenMode:I = 0x47

.field static final TRANSACTION_snoozeNotificationUntilContextFromListener:I = 0x23

.field static final TRANSACTION_snoozeNotificationUntilFromListener:I = 0x24

.field static final TRANSACTION_unregisterListener:I = 0x20

.field static final TRANSACTION_unsnoozeNotificationFromAssistant:I = 0x38

.field static final TRANSACTION_updateAutomaticZenRule:I = 0x52

.field static final TRANSACTION_updateNotificationChannelForPackage:I = 0x12

.field static final TRANSACTION_updateNotificationChannelFromPrivilegedListener:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
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
    const-string/jumbo v1, "android.app.INotificationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/INotificationManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/INotificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 56
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

    .line 1344
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 53
    .local v19, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v4, 0x1

    return v4

    .line 59
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    :sswitch_2
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 63
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 65
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v37, 0x1

    .line 66
    .local v37, "_arg2":Z
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->clearData(Ljava/lang/String;IZ)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v4, 0x1

    return v4

    .line 65
    .end local v37    # "_arg2":Z
    :cond_0
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_0

    .line 72
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_3
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 76
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v21

    .line 78
    .local v21, "_arg1":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 79
    .local v31, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v4, 0x1

    return v4

    .line 85
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Landroid/app/ITransientNotification;
    .end local v31    # "_arg2":I
    :sswitch_4
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v21

    .line 90
    .restart local v21    # "_arg1":Landroid/app/ITransientNotification;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v4, 0x1

    return v4

    .line 96
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Landroid/app/ITransientNotification;
    :sswitch_5
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 106
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    sget-object v4, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification;

    .line 113
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg5":I
    move-object/from16 v4, p0

    .line 114
    invoke-virtual/range {v4 .. v10}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    const/4 v4, 0x1

    return v4

    .line 110
    .end local v10    # "_arg5":I
    :cond_1
    const/4 v9, 0x0

    .local v9, "_arg4":Landroid/app/Notification;
    goto :goto_1

    .line 120
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/app/Notification;
    :sswitch_6
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 124
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 126
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 128
    .restart local v31    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 129
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v4, 0x1

    return v4

    .line 135
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v31    # "_arg2":I
    :sswitch_7
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 139
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 141
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v37, 0x1

    .line 142
    .restart local v37    # "_arg2":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->setShowBadge(Ljava/lang/String;IZ)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v4, 0x1

    return v4

    .line 141
    .end local v37    # "_arg2":Z
    :cond_2
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_2

    .line 148
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_8
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 152
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 153
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->canShowBadge(Ljava/lang/String;I)Z

    move-result v53

    .line 154
    .local v53, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v53, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v4, 0x1

    return v4

    .line 155
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 160
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 164
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 166
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v37, 0x1

    .line 167
    .restart local v37    # "_arg2":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v4, 0x1

    return v4

    .line 166
    .end local v37    # "_arg2":Z
    :cond_4
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_4

    .line 173
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 177
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 178
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v53

    .line 179
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v53, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v4, 0x1

    return v4

    .line 180
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 185
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result v53

    .line 189
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v53, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v4, 0x1

    return v4

    .line 190
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 195
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 198
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getPackageImportance(Ljava/lang/String;)I

    move-result v41

    .line 199
    .local v41, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v4, 0x1

    return v4

    .line 205
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 209
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 210
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ParceledListSlice;

    .line 215
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v4, 0x1

    return v4

    .line 213
    :cond_7
    const/16 v24, 0x0

    .local v24, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_7

    .line 221
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :sswitch_e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 225
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 226
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ParceledListSlice;

    .line 231
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v4, 0x1

    return v4

    .line 229
    :cond_8
    const/16 v24, 0x0

    .restart local v24    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_8

    .line 237
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :sswitch_f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 241
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 243
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 244
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/ParceledListSlice;

    .line 249
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v35

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v4, 0x1

    return v4

    .line 247
    :cond_9
    const/16 v35, 0x0

    .local v35, "_arg2":Landroid/content/pm/ParceledListSlice;
    goto :goto_9

    .line 255
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v35    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :sswitch_10
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 259
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 261
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v37, 0x1

    .line 262
    .restart local v37    # "_arg2":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .line 263
    .local v47, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v47, :cond_b

    .line 265
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 271
    :goto_b
    const/4 v4, 0x1

    return v4

    .line 261
    .end local v37    # "_arg2":Z
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_a
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_a

    .line 269
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 275
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_11
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 279
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 281
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 282
    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v44

    .line 283
    .local v44, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v44, :cond_c

    .line 285
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationChannelGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 291
    :goto_c
    const/4 v4, 0x1

    return v4

    .line 289
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 295
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":I
    .end local v44    # "_result":Landroid/app/NotificationChannelGroup;
    :sswitch_12
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 301
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 302
    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/NotificationChannel;

    .line 307
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v34

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    const/4 v4, 0x1

    return v4

    .line 305
    :cond_d
    const/16 v34, 0x0

    .local v34, "_arg2":Landroid/app/NotificationChannel;
    goto :goto_d

    .line 313
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v34    # "_arg2":Landroid/app/NotificationChannel;
    :sswitch_13
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 318
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/INotificationManager$Stub;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v43

    .line 319
    .local v43, "_result":Landroid/app/NotificationChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v43, :cond_e

    .line 321
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 327
    :goto_e
    const/4 v4, 0x1

    return v4

    .line 325
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 331
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Landroid/app/NotificationChannel;
    :sswitch_14
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 335
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 337
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 339
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v40, 0x1

    .line 340
    .local v40, "_arg3":Z
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v5, v1, v7, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v43

    .line 341
    .restart local v43    # "_result":Landroid/app/NotificationChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v43, :cond_10

    .line 343
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 349
    :goto_10
    const/4 v4, 0x1

    return v4

    .line 339
    .end local v40    # "_arg3":Z
    .end local v43    # "_result":Landroid/app/NotificationChannel;
    :cond_f
    const/16 v40, 0x0

    .restart local v40    # "_arg3":Z
    goto :goto_f

    .line 347
    .restart local v43    # "_result":Landroid/app/NotificationChannel;
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 353
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v40    # "_arg3":Z
    .end local v43    # "_result":Landroid/app/NotificationChannel;
    :sswitch_15
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 357
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 358
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/4 v4, 0x1

    return v4

    .line 364
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 367
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getNotificationChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .line 368
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    if-eqz v47, :cond_11

    .line 370
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 376
    :goto_11
    const/4 v4, 0x1

    return v4

    .line 374
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 380
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_17
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 384
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 386
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v37, 0x1

    .line 387
    .restart local v37    # "_arg2":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .line 388
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    if-eqz v47, :cond_13

    .line 390
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 396
    :goto_13
    const/4 v4, 0x1

    return v4

    .line 386
    .end local v37    # "_arg2":Z
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_12
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_12

    .line 394
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 400
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_18
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 404
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 406
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/16 v37, 0x1

    .line 407
    .restart local v37    # "_arg2":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v41

    .line 408
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/4 v4, 0x1

    return v4

    .line 406
    .end local v37    # "_arg2":Z
    .end local v41    # "_result":I
    :cond_14
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_14

    .line 414
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_19
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 418
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 419
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v41

    .line 420
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v4, 0x1

    return v4

    .line 426
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v41    # "_result":I
    :sswitch_1a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 430
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 431
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v4, 0x1

    return v4

    .line 437
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 440
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .line 441
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v47, :cond_15

    .line 443
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 449
    :goto_15
    const/4 v4, 0x1

    return v4

    .line 447
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 453
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_1c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 457
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 458
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v53

    .line 459
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v53, :cond_16

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v4, 0x1

    return v4

    .line 460
    :cond_16
    const/4 v4, 0x0

    goto :goto_16

    .line 465
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 468
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v55

    .line 469
    .local v55, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 471
    const/4 v4, 0x1

    return v4

    .line 475
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v55    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_1e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 479
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 480
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v55

    .line 481
    .restart local v55    # "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 483
    const/4 v4, 0x1

    return v4

    .line 487
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v55    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_1f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 491
    .local v16, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 492
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ComponentName;

    .line 498
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 499
    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    const/4 v4, 0x1

    return v4

    .line 495
    .end local v31    # "_arg2":I
    :cond_17
    const/16 v23, 0x0

    .local v23, "_arg1":Landroid/content/ComponentName;
    goto :goto_17

    .line 505
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v23    # "_arg1":Landroid/content/ComponentName;
    :sswitch_20
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 509
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 510
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v4, 0x1

    return v4

    .line 516
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    :sswitch_21
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 520
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 522
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 524
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 525
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v4, 0x1

    return v4

    .line 531
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_22
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 535
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v30

    .line 536
    .local v30, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v4, 0x1

    return v4

    .line 542
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v30    # "_arg1":[Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 546
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 548
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 549
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6, v7}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    const/4 v4, 0x1

    return v4

    .line 555
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_24
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 559
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 561
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .line 562
    .local v32, "_arg2":J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    const/4 v4, 0x1

    return v4

    .line 568
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v32    # "_arg2":J
    :sswitch_25
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 571
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 576
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->requestBindListener(Landroid/content/ComponentName;)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    const/4 v4, 0x1

    return v4

    .line 574
    :cond_18
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    .line 582
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_26
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 585
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v4, 0x1

    return v4

    .line 591
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_27
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 594
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 599
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->requestBindProvider(Landroid/content/ComponentName;)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v4, 0x1

    return v4

    .line 597
    :cond_19
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19

    .line 605
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_28
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v15

    .line 608
    .local v15, "_arg0":Landroid/service/notification/IConditionProvider;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/INotificationManager$Stub;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v4, 0x1

    return v4

    .line 614
    .end local v15    # "_arg0":Landroid/service/notification/IConditionProvider;
    :sswitch_29
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 618
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v30

    .line 619
    .restart local v30    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/4 v4, 0x1

    return v4

    .line 625
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v30    # "_arg1":[Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 629
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v30

    .line 631
    .restart local v30    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 632
    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .line 633
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v47, :cond_1a

    .line 635
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 641
    :goto_1a
    const/4 v4, 0x1

    return v4

    .line 639
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 645
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v30    # "_arg1":[Ljava/lang/String;
    .end local v31    # "_arg2":I
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 649
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 650
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .line 651
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v47, :cond_1b

    .line 653
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 659
    :goto_1b
    const/4 v4, 0x1

    return v4

    .line 657
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 663
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 667
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 668
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    const/4 v4, 0x1

    return v4

    .line 674
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    :sswitch_2d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 677
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v41

    .line 678
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v4, 0x1

    return v4

    .line 684
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v41    # "_result":I
    :sswitch_2e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 688
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 689
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    const/4 v4, 0x1

    return v4

    .line 695
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    :sswitch_2f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 698
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v41

    .line 699
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v4, 0x1

    return v4

    .line 705
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v41    # "_result":I
    :sswitch_30
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 709
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 710
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    const/4 v4, 0x1

    return v4

    .line 716
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    :sswitch_31
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 720
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 721
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;I)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    const/4 v4, 0x1

    return v4

    .line 727
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    :sswitch_32
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 731
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 733
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 734
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserHandle;

    .line 740
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 741
    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/app/NotificationChannel;

    .line 746
    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v36

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    const/4 v4, 0x1

    return v4

    .line 737
    :cond_1c
    const/16 v36, 0x0

    .local v36, "_arg2":Landroid/os/UserHandle;
    goto :goto_1c

    .line 744
    .end local v36    # "_arg2":Landroid/os/UserHandle;
    :cond_1d
    const/16 v39, 0x0

    .local v39, "_arg3":Landroid/app/NotificationChannel;
    goto :goto_1d

    .line 752
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v39    # "_arg3":Landroid/app/NotificationChannel;
    :sswitch_33
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 756
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 758
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 759
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserHandle;

    .line 764
    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .line 765
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    if-eqz v47, :cond_1f

    .line 767
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 773
    :goto_1f
    const/4 v4, 0x1

    return v4

    .line 762
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1e
    const/16 v36, 0x0

    .restart local v36    # "_arg2":Landroid/os/UserHandle;
    goto :goto_1e

    .line 771
    .end local v36    # "_arg2":Landroid/os/UserHandle;
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 777
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_34
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 781
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 783
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 784
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserHandle;

    .line 789
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .line 790
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    if-eqz v47, :cond_21

    .line 792
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 798
    :goto_21
    const/4 v4, 0x1

    return v4

    .line 787
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_20
    const/16 v36, 0x0

    .restart local v36    # "_arg2":Landroid/os/UserHandle;
    goto :goto_20

    .line 796
    .end local v36    # "_arg2":Landroid/os/UserHandle;
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 802
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_35
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 806
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    .line 807
    sget-object v4, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/service/notification/Adjustment;

    .line 812
    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    const/4 v4, 0x1

    return v4

    .line 810
    :cond_22
    const/16 v26, 0x0

    .local v26, "_arg1":Landroid/service/notification/Adjustment;
    goto :goto_22

    .line 818
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v26    # "_arg1":Landroid/service/notification/Adjustment;
    :sswitch_36
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 822
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 823
    sget-object v4, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/service/notification/Adjustment;

    .line 828
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    const/4 v4, 0x1

    return v4

    .line 826
    :cond_23
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/service/notification/Adjustment;
    goto :goto_23

    .line 834
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v26    # "_arg1":Landroid/service/notification/Adjustment;
    :sswitch_37
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 838
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v4, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v28

    .line 839
    .local v28, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    const/4 v4, 0x1

    return v4

    .line 845
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v28    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    :sswitch_38
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .line 849
    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 850
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    const/4 v4, 0x1

    return v4

    .line 856
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_39
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v46

    .line 858
    .local v46, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    if-eqz v46, :cond_24

    .line 860
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 866
    :goto_24
    const/4 v4, 0x1

    return v4

    .line 864
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 870
    .end local v46    # "_result":Landroid/content/ComponentName;
    :sswitch_3a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    .line 873
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 878
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v53

    .line 879
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    if-eqz v53, :cond_26

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    const/4 v4, 0x1

    return v4

    .line 876
    .end local v53    # "_result":Z
    :cond_25
    const/4 v14, 0x0

    .local v14, "_arg0":Landroid/os/Bundle;
    goto :goto_25

    .line 880
    .end local v14    # "_arg0":Landroid/os/Bundle;
    .restart local v53    # "_result":Z
    :cond_26
    const/4 v4, 0x0

    goto :goto_26

    .line 885
    .end local v53    # "_result":Z
    :sswitch_3b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 888
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v53

    .line 889
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    if-eqz v53, :cond_27

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    const/4 v4, 0x1

    return v4

    .line 890
    :cond_27
    const/4 v4, 0x0

    goto :goto_27

    .line 895
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_3c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 898
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 903
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v53

    .line 904
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    if-eqz v53, :cond_29

    const/4 v4, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/4 v4, 0x1

    return v4

    .line 901
    .end local v53    # "_result":Z
    :cond_28
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    .line 905
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v53    # "_result":Z
    :cond_29
    const/4 v4, 0x0

    goto :goto_29

    .line 910
    .end local v53    # "_result":Z
    :sswitch_3d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 913
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 919
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 920
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result v53

    .line 921
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    if-eqz v53, :cond_2b

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v4, 0x1

    return v4

    .line 916
    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :cond_2a
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2a

    .line 922
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v19    # "_arg1":I
    .restart local v53    # "_result":Z
    :cond_2b
    const/4 v4, 0x0

    goto :goto_2b

    .line 927
    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_3e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 930
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 935
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result v53

    .line 936
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    if-eqz v53, :cond_2d

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    const/4 v4, 0x1

    return v4

    .line 933
    .end local v53    # "_result":Z
    :cond_2c
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2c

    .line 937
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v53    # "_result":Z
    :cond_2d
    const/4 v4, 0x0

    goto :goto_2d

    .line 942
    .end local v53    # "_result":Z
    :sswitch_3f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    .line 945
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 951
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    const/16 v29, 0x1

    .line 952
    .local v29, "_arg1":Z
    :goto_2f
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v13, v1}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v4, 0x1

    return v4

    .line 948
    .end local v29    # "_arg1":Z
    :cond_2e
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2e

    .line 951
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :cond_2f
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Z
    goto :goto_2f

    .line 958
    .end local v29    # "_arg1":Z
    :sswitch_40
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    .line 961
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 967
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    const/16 v29, 0x1

    .line 968
    .restart local v29    # "_arg1":Z
    :goto_31
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v13, v1}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    const/4 v4, 0x1

    return v4

    .line 964
    .end local v29    # "_arg1":Z
    :cond_30
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_30

    .line 967
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :cond_31
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Z
    goto :goto_31

    .line 974
    .end local v29    # "_arg1":Z
    :sswitch_41
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 977
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 983
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 985
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    const/16 v37, 0x1

    .line 986
    .restart local v37    # "_arg2":Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v13, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    const/4 v4, 0x1

    return v4

    .line 980
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :cond_32
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_32

    .line 985
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v19    # "_arg1":I
    :cond_33
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_33

    .line 992
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_42
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    .line 995
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1001
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1003
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    const/16 v37, 0x1

    .line 1004
    .restart local v37    # "_arg2":Z
    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v13, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    const/4 v4, 0x1

    return v4

    .line 998
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :cond_34
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    .line 1003
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v19    # "_arg1":I
    :cond_35
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_35

    .line 1010
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_43
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v52

    .line 1012
    .local v52, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1014
    const/4 v4, 0x1

    return v4

    .line 1018
    .end local v52    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_44
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1021
    .local v11, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v50

    .line 1022
    .local v50, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1024
    const/4 v4, 0x1

    return v4

    .line 1028
    .end local v11    # "_arg0":I
    .end local v50    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_45
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    move-result v41

    .line 1030
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    const/4 v4, 0x1

    return v4

    .line 1036
    .end local v41    # "_result":I
    :sswitch_46
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v48

    .line 1038
    .local v48, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    if-eqz v48, :cond_36

    .line 1040
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    const/4 v4, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1046
    :goto_36
    const/4 v4, 0x1

    return v4

    .line 1044
    :cond_36
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 1050
    .end local v48    # "_result":Landroid/service/notification/ZenModeConfig;
    :sswitch_47
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1054
    .restart local v11    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    .line 1055
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    .line 1061
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1062
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1, v7}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 1063
    const/4 v4, 0x1

    return v4

    .line 1058
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_37
    const/16 v25, 0x0

    .local v25, "_arg1":Landroid/net/Uri;
    goto :goto_37

    .line 1067
    .end local v11    # "_arg0":I
    .end local v25    # "_arg1":Landroid/net/Uri;
    :sswitch_48
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1071
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v27

    .line 1073
    .local v27, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v4, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [Landroid/service/notification/Condition;

    .line 1074
    .local v38, "_arg2":[Landroid/service/notification/Condition;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v38

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    .line 1075
    const/4 v4, 0x1

    return v4

    .line 1079
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v38    # "_arg2":[Landroid/service/notification/Condition;
    :sswitch_49
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1082
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v53

    .line 1083
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    if-eqz v53, :cond_38

    const/4 v4, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    const/4 v4, 0x1

    return v4

    .line 1084
    :cond_38
    const/4 v4, 0x0

    goto :goto_38

    .line 1089
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_4a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1092
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v45

    .line 1093
    .local v45, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    if-eqz v45, :cond_39

    .line 1095
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1101
    :goto_39
    const/4 v4, 0x1

    return v4

    .line 1099
    :cond_39
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    .line 1105
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Landroid/app/NotificationManager$Policy;
    :sswitch_4b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1109
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 1110
    sget-object v4, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationManager$Policy;

    .line 1115
    :goto_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V

    .line 1116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    const/4 v4, 0x1

    return v4

    .line 1113
    :cond_3a
    const/16 v22, 0x0

    .local v22, "_arg1":Landroid/app/NotificationManager$Policy;
    goto :goto_3a

    .line 1121
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":Landroid/app/NotificationManager$Policy;
    :sswitch_4c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1124
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v53

    .line 1125
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    if-eqz v53, :cond_3b

    const/4 v4, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    const/4 v4, 0x1

    return v4

    .line 1126
    :cond_3b
    const/4 v4, 0x0

    goto :goto_3b

    .line 1131
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_4d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1135
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    const/16 v29, 0x1

    .line 1136
    .restart local v29    # "_arg1":Z
    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 1137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    const/4 v4, 0x1

    return v4

    .line 1135
    .end local v29    # "_arg1":Z
    :cond_3c
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Z
    goto :goto_3c

    .line 1142
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":Z
    :sswitch_4e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1146
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1148
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v37, 0x1

    .line 1149
    .restart local v37    # "_arg2":Z
    :goto_3d
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 1150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    const/4 v4, 0x1

    return v4

    .line 1148
    .end local v37    # "_arg2":Z
    :cond_3d
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_3d

    .line 1155
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_4f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1158
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v42

    .line 1159
    .local v42, "_result":Landroid/app/AutomaticZenRule;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    if-eqz v42, :cond_3e

    .line 1161
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    const/4 v4, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/AutomaticZenRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1167
    :goto_3e
    const/4 v4, 0x1

    return v4

    .line 1165
    :cond_3e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e

    .line 1171
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Landroid/app/AutomaticZenRule;
    :sswitch_50
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenRules()Ljava/util/List;

    move-result-object v51

    .line 1173
    .local v51, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1175
    const/4 v4, 0x1

    return v4

    .line 1179
    .end local v51    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    :sswitch_51
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 1182
    sget-object v4, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AutomaticZenRule;

    .line 1187
    :goto_3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/INotificationManager$Stub;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v49

    .line 1188
    .local v49, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1190
    const/4 v4, 0x1

    return v4

    .line 1185
    .end local v49    # "_result":Ljava/lang/String;
    :cond_3f
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/app/AutomaticZenRule;
    goto :goto_3f

    .line 1194
    .end local v12    # "_arg0":Landroid/app/AutomaticZenRule;
    :sswitch_52
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1198
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    .line 1199
    sget-object v4, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/AutomaticZenRule;

    .line 1204
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v53

    .line 1205
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    if-eqz v53, :cond_41

    const/4 v4, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    const/4 v4, 0x1

    return v4

    .line 1202
    .end local v53    # "_result":Z
    :cond_40
    const/16 v20, 0x0

    .local v20, "_arg1":Landroid/app/AutomaticZenRule;
    goto :goto_40

    .line 1206
    .end local v20    # "_arg1":Landroid/app/AutomaticZenRule;
    .restart local v53    # "_result":Z
    :cond_41
    const/4 v4, 0x0

    goto :goto_41

    .line 1211
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_53
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1214
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v53

    .line 1215
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    if-eqz v53, :cond_42

    const/4 v4, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    const/4 v4, 0x1

    return v4

    .line 1216
    :cond_42
    const/4 v4, 0x0

    goto :goto_42

    .line 1221
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_54
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1224
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRules(Ljava/lang/String;)Z

    move-result v53

    .line 1225
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    if-eqz v53, :cond_43

    const/4 v4, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    const/4 v4, 0x1

    return v4

    .line 1226
    :cond_43
    const/4 v4, 0x0

    goto :goto_43

    .line 1231
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_55
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    .line 1234
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1239
    :goto_44
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v41

    .line 1240
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    const/4 v4, 0x1

    return v4

    .line 1237
    .end local v41    # "_result":I
    :cond_44
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_44

    .line 1246
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_56
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1249
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    move-result-object v54

    .line 1250
    .local v54, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1252
    const/4 v4, 0x1

    return v4

    .line 1256
    .end local v11    # "_arg0":I
    .end local v54    # "_result":[B
    :sswitch_57
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 1260
    .local v18, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1261
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    const/4 v4, 0x1

    return v4

    .line 1267
    .end local v18    # "_arg0":[B
    .end local v19    # "_arg1":I
    :sswitch_58
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1271
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1272
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .line 1273
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    if-eqz v47, :cond_45

    .line 1275
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1281
    :goto_45
    const/4 v4, 0x1

    return v4

    .line 1279
    :cond_45
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 1285
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_59
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1289
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    const/16 v29, 0x1

    .line 1290
    .restart local v29    # "_arg1":Z
    :goto_46
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->setNotificationLedStatus(Ljava/lang/String;Z)V

    .line 1291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    const/4 v4, 0x1

    return v4

    .line 1289
    .end local v29    # "_arg1":Z
    :cond_46
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Z
    goto :goto_46

    .line 1296
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":Z
    :sswitch_5a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1299
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->isNotificationLedEnabled(Ljava/lang/String;)Z

    move-result v53

    .line 1300
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    if-eqz v53, :cond_47

    const/4 v4, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/4 v4, 0x1

    return v4

    .line 1301
    :cond_47
    const/4 v4, 0x0

    goto :goto_47

    .line 1306
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_5b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1310
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1311
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->setAppUnlock(Ljava/lang/String;I)V

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    const/4 v4, 0x1

    return v4

    .line 1317
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    :sswitch_5c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->setAppLock()V

    .line 1319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    const/4 v4, 0x1

    return v4

    .line 1324
    :sswitch_5d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1328
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1329
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->getOnePlusPackagePriority(Ljava/lang/String;I)I

    move-result v41

    .line 1330
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    const/4 v4, 0x1

    return v4

    .line 1336
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v41    # "_result":I
    :sswitch_5e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    const/16 v17, 0x1

    .line 1339
    .local v17, "_arg0":Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/INotificationManager$Stub;->setOnePlusVibrateInSilentMode(Z)V

    .line 1340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    const/4 v4, 0x1

    return v4

    .line 1338
    .end local v17    # "_arg0":Z
    :cond_48
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Z
    goto :goto_48

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
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
