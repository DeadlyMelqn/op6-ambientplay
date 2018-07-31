.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x11

.field static final TRANSACTION_adbBackup:I = 0xe

.field static final TRANSACTION_adbRestore:I = 0x10

.field static final TRANSACTION_agentConnected:I = 0x4

.field static final TRANSACTION_agentDisconnected:I = 0x5

.field static final TRANSACTION_backupNow:I = 0xd

.field static final TRANSACTION_beginRestoreSession:I = 0x1c

.field static final TRANSACTION_cancelBackups:I = 0x23

.field static final TRANSACTION_clearBackupData:I = 0x2

.field static final TRANSACTION_dataChanged:I = 0x1

.field static final TRANSACTION_fullTransportBackup:I = 0xf

.field static final TRANSACTION_getAvailableRestoreToken:I = 0x20

.field static final TRANSACTION_getConfigurationIntent:I = 0x18

.field static final TRANSACTION_getCurrentTransport:I = 0x12

.field static final TRANSACTION_getDataManagementIntent:I = 0x1a

.field static final TRANSACTION_getDataManagementLabel:I = 0x1b

.field static final TRANSACTION_getDestinationString:I = 0x19

.field static final TRANSACTION_getTransportWhitelist:I = 0x15

.field static final TRANSACTION_hasBackupPassword:I = 0xc

.field static final TRANSACTION_initializeTransports:I = 0x3

.field static final TRANSACTION_isAppEligibleForBackup:I = 0x21

.field static final TRANSACTION_isBackupEnabled:I = 0xa

.field static final TRANSACTION_isBackupServiceActive:I = 0x1f

.field static final TRANSACTION_listAllTransportComponents:I = 0x14

.field static final TRANSACTION_listAllTransports:I = 0x13

.field static final TRANSACTION_opComplete:I = 0x1d

.field static final TRANSACTION_requestBackup:I = 0x22

.field static final TRANSACTION_restoreAtInstall:I = 0x6

.field static final TRANSACTION_selectBackupTransport:I = 0x16

.field static final TRANSACTION_selectBackupTransportAsync:I = 0x17

.field static final TRANSACTION_setAutoRestore:I = 0x8

.field static final TRANSACTION_setBackupEnabled:I = 0x7

.field static final TRANSACTION_setBackupPassword:I = 0xb

.field static final TRANSACTION_setBackupProvisioned:I = 0x9

.field static final TRANSACTION_setBackupServiceActive:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string/jumbo v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
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
    const-string/jumbo v1, "android.app.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/app/backup/IBackupManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 45
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
    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 449
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 52
    :sswitch_0
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    const/4 v6, 0x1

    return v6

    .line 57
    :sswitch_1
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 60
    .local v24, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v6, 0x1

    return v6

    .line 66
    .end local v24    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 70
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 71
    .local v33, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v6, 0x1

    return v6

    .line 77
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v26

    .line 81
    .local v26, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v30

    .line 82
    .local v30, "_arg1":Landroid/app/backup/IBackupObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v6, 0x1

    return v6

    .line 88
    .end local v26    # "_arg0":[Ljava/lang/String;
    .end local v30    # "_arg1":Landroid/app/backup/IBackupObserver;
    :sswitch_4
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 92
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 93
    .local v32, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v6, 0x1

    return v6

    .line 99
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v32    # "_arg1":Landroid/os/IBinder;
    :sswitch_5
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 102
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v6, 0x1

    return v6

    .line 108
    .end local v24    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 112
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 113
    .local v27, "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v6, 0x1

    return v6

    .line 119
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    :sswitch_7
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/16 v25, 0x1

    .line 122
    .local v25, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v6, 0x1

    return v6

    .line 121
    .end local v25    # "_arg0":Z
    :cond_0
    const/16 v25, 0x0

    .restart local v25    # "_arg0":Z
    goto :goto_0

    .line 128
    .end local v25    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v25, 0x1

    .line 131
    .restart local v25    # "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v6, 0x1

    return v6

    .line 130
    .end local v25    # "_arg0":Z
    :cond_1
    const/16 v25, 0x0

    .restart local v25    # "_arg0":Z
    goto :goto_1

    .line 137
    .end local v25    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    const/16 v25, 0x1

    .line 140
    .restart local v25    # "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupProvisioned(Z)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v6, 0x1

    return v6

    .line 139
    .end local v25    # "_arg0":Z
    :cond_2
    const/16 v25, 0x0

    .restart local v25    # "_arg0":Z
    goto :goto_2

    .line 146
    .end local v25    # "_arg0":Z
    :sswitch_a
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v42

    .line 148
    .local v42, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v42, :cond_3

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v6, 0x1

    return v6

    .line 149
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 154
    .end local v42    # "_result":Z
    :sswitch_b
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 158
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 159
    .restart local v33    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v42

    .line 160
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v42, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v6, 0x1

    return v6

    .line 161
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 166
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":Z
    :sswitch_c
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v42

    .line 168
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v42, :cond_5

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v6, 0x1

    return v6

    .line 169
    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 174
    .end local v42    # "_result":Z
    :sswitch_d
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/4 v6, 0x1

    return v6

    .line 181
    :sswitch_e
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 184
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 190
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x1

    .line 192
    .local v8, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/4 v9, 0x1

    .line 194
    .local v9, "_arg2":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v10, 0x1

    .line 196
    .local v10, "_arg3":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/4 v11, 0x1

    .line 198
    .local v11, "_arg4":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v12, 0x1

    .line 200
    .local v12, "_arg5":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v13, 0x1

    .line 202
    .local v13, "_arg6":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    const/4 v14, 0x1

    .line 204
    .local v14, "_arg7":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/4 v15, 0x1

    .line 206
    .local v15, "_arg8":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg9":[Ljava/lang/String;
    move-object/from16 v6, p0

    .line 207
    invoke-virtual/range {v6 .. v16}, Landroid/app/backup/IBackupManager$Stub;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/4 v6, 0x1

    return v6

    .line 187
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":Z
    .end local v11    # "_arg4":Z
    .end local v12    # "_arg5":Z
    .end local v13    # "_arg6":Z
    .end local v14    # "_arg7":Z
    .end local v15    # "_arg8":Z
    .end local v16    # "_arg9":[Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .line 190
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_7

    .line 192
    :cond_8
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_8

    .line 194
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Z
    goto :goto_9

    .line 196
    :cond_a
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Z
    goto :goto_a

    .line 198
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Z
    goto :goto_b

    .line 200
    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "_arg6":Z
    goto :goto_c

    .line 202
    :cond_d
    const/4 v14, 0x0

    .restart local v14    # "_arg7":Z
    goto :goto_d

    .line 204
    :cond_e
    const/4 v15, 0x0

    .restart local v15    # "_arg8":Z
    goto :goto_e

    .line 213
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":Z
    .end local v11    # "_arg4":Z
    .end local v12    # "_arg5":Z
    .end local v13    # "_arg6":Z
    .end local v14    # "_arg7":Z
    .end local v15    # "_arg8":Z
    :sswitch_f
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v26

    .line 216
    .restart local v26    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackup([Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v6, 0x1

    return v6

    .line 222
    .end local v26    # "_arg0":[Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 225
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 230
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/backup/IBackupManager$Stub;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    const/4 v6, 0x1

    return v6

    .line 228
    :cond_f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_f

    .line 236
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_11
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 240
    .local v18, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    const/4 v8, 0x1

    .line 242
    .restart local v8    # "_arg1":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 244
    .local v20, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 246
    .local v21, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v22

    .local v22, "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    move-object/from16 v17, p0

    move/from16 v19, v8

    .line 247
    invoke-virtual/range {v17 .. v22}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v6, 0x1

    return v6

    .line 240
    .end local v8    # "_arg1":Z
    .end local v20    # "_arg2":Ljava/lang/String;
    .end local v21    # "_arg3":Ljava/lang/String;
    .end local v22    # "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_10
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_10

    .line 253
    .end local v8    # "_arg1":Z
    .end local v18    # "_arg0":I
    :sswitch_12
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v41

    .line 255
    .local v41, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    const/4 v6, 0x1

    return v6

    .line 261
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v44

    .line 263
    .local v44, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 265
    const/4 v6, 0x1

    return v6

    .line 269
    .end local v44    # "_result":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object v43

    .line 271
    .local v43, "_result":[Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 273
    const/4 v6, 0x1

    return v6

    .line 277
    .end local v43    # "_result":[Landroid/content/ComponentName;
    :sswitch_15
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v44

    .line 279
    .restart local v44    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 281
    const/4 v6, 0x1

    return v6

    .line 285
    .end local v44    # "_result":[Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 288
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 289
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    const/4 v6, 0x1

    return v6

    .line 295
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 298
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ComponentName;

    .line 304
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/ISelectBackupTransportCallback;

    move-result-object v31

    .line 305
    .local v31, "_arg1":Landroid/app/backup/ISelectBackupTransportCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v6, 0x1

    return v6

    .line 301
    .end local v31    # "_arg1":Landroid/app/backup/ISelectBackupTransportCallback;
    :cond_11
    const/16 v23, 0x0

    .local v23, "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    .line 311
    .end local v23    # "_arg0":Landroid/content/ComponentName;
    :sswitch_18
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 314
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v40

    .line 315
    .local v40, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v40, :cond_12

    .line 317
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v6, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 323
    :goto_12
    const/4 v6, 0x1

    return v6

    .line 321
    :cond_12
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 327
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Landroid/content/Intent;
    :sswitch_19
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 330
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 331
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    const/4 v6, 0x1

    return v6

    .line 337
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 340
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v40

    .line 341
    .restart local v40    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v40, :cond_13

    .line 343
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/4 v6, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 349
    :goto_13
    const/4 v6, 0x1

    return v6

    .line 347
    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 353
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Landroid/content/Intent;
    :sswitch_1b
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 356
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 357
    .restart local v41    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    const/4 v6, 0x1

    return v6

    .line 363
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 367
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 368
    .restart local v33    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v37

    .line 369
    .local v37, "_result":Landroid/app/backup/IRestoreSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v37, :cond_14

    invoke-interface/range {v37 .. v37}, Landroid/app/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 371
    const/4 v6, 0x1

    return v6

    .line 370
    :cond_14
    const/4 v6, 0x0

    goto :goto_14

    .line 375
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":Ljava/lang/String;
    .end local v37    # "_result":Landroid/app/backup/IRestoreSession;
    :sswitch_1d
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 379
    .restart local v18    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 380
    .local v28, "_arg1":J
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v6, 0x1

    return v6

    .line 386
    .end local v18    # "_arg0":I
    .end local v28    # "_arg1":J
    :sswitch_1e
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 390
    .restart local v18    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    const/4 v8, 0x1

    .line 391
    .restart local v8    # "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v6, 0x1

    return v6

    .line 390
    .end local v8    # "_arg1":Z
    :cond_15
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_15

    .line 397
    .end local v8    # "_arg1":Z
    .end local v18    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 400
    .restart local v18    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v42

    .line 401
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v42, :cond_16

    const/4 v6, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v6, 0x1

    return v6

    .line 402
    :cond_16
    const/4 v6, 0x0

    goto :goto_16

    .line 407
    .end local v18    # "_arg0":I
    .end local v42    # "_result":Z
    :sswitch_20
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 410
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v38

    .line 411
    .local v38, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 413
    const/4 v6, 0x1

    return v6

    .line 417
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":J
    :sswitch_21
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 420
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v42

    .line 421
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v42, :cond_17

    const/4 v6, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v6, 0x1

    return v6

    .line 422
    :cond_17
    const/4 v6, 0x0

    goto :goto_17

    .line 427
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Z
    :sswitch_22
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v26

    .line 431
    .restart local v26    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v30

    .line 433
    .restart local v30    # "_arg1":Landroid/app/backup/IBackupObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v34

    .line 435
    .local v34, "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 436
    .local v35, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    move-object/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v36

    .line 437
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v6, 0x1

    return v6

    .line 443
    .end local v26    # "_arg0":[Ljava/lang/String;
    .end local v30    # "_arg1":Landroid/app/backup/IBackupObserver;
    .end local v34    # "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    .end local v35    # "_arg3":I
    .end local v36    # "_result":I
    :sswitch_23
    const-string/jumbo v6, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackups()V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v6, 0x1

    return v6

    .line 48
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
