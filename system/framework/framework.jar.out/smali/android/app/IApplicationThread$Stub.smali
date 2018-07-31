.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final TRANSACTION_attachAgent:I = 0x3c

.field static final TRANSACTION_bindApplication:I = 0xc

.field static final TRANSACTION_clearDnsCache:I = 0x25

.field static final TRANSACTION_dispatchPackageBroadcast:I = 0x21

.field static final TRANSACTION_dumpActivity:I = 0x24

.field static final TRANSACTION_dumpDbInfo:I = 0x2d

.field static final TRANSACTION_dumpGfxInfo:I = 0x2b

.field static final TRANSACTION_dumpHeap:I = 0x23

.field static final TRANSACTION_dumpMemInfo:I = 0x2a

.field static final TRANSACTION_dumpProvider:I = 0x2c

.field static final TRANSACTION_dumpService:I = 0x14

.field static final TRANSACTION_handleTrustStorageUpdate:I = 0x3b

.field static final TRANSACTION_notifyCleartextNetwork:I = 0x35

.field static final TRANSACTION_processInBackground:I = 0x11

.field static final TRANSACTION_profilerControl:I = 0x1b

.field static final TRANSACTION_requestAssistContextExtras:I = 0x2f

.field static final TRANSACTION_scheduleActivityConfigurationChanged:I = 0x17

.field static final TRANSACTION_scheduleActivityMovedToDisplay:I = 0x18

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x3d

.field static final TRANSACTION_scheduleBindService:I = 0x12

.field static final TRANSACTION_scheduleConfigurationChanged:I = 0xe

.field static final TRANSACTION_scheduleCrash:I = 0x22

.field static final TRANSACTION_scheduleCreateBackupAgent:I = 0x1d

.field static final TRANSACTION_scheduleCreateService:I = 0xa

.field static final TRANSACTION_scheduleDestroyActivity:I = 0x8

.field static final TRANSACTION_scheduleDestroyBackupAgent:I = 0x1e

.field static final TRANSACTION_scheduleEnterAnimationComplete:I = 0x34

.field static final TRANSACTION_scheduleExit:I = 0xd

.field static final TRANSACTION_scheduleInstallProvider:I = 0x32

.field static final TRANSACTION_scheduleLaunchActivity:I = 0x6

.field static final TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x3a

.field static final TRANSACTION_scheduleLowMemory:I = 0x16

.field static final TRANSACTION_scheduleMultiWindowModeChanged:I = 0x38

.field static final TRANSACTION_scheduleNewIntent:I = 0x7

.field static final TRANSACTION_scheduleOnNewActivityOptions:I = 0x1f

.field static final TRANSACTION_schedulePauseActivity:I = 0x1

.field static final TRANSACTION_schedulePictureInPictureModeChanged:I = 0x39

.field static final TRANSACTION_schedulePreload:I = 0x3f

.field static final TRANSACTION_scheduleReceiver:I = 0x9

.field static final TRANSACTION_scheduleRegisteredReceiver:I = 0x15

.field static final TRANSACTION_scheduleRelaunchActivity:I = 0x19

.field static final TRANSACTION_scheduleResumeActivity:I = 0x4

.field static final TRANSACTION_scheduleSendResult:I = 0x5

.field static final TRANSACTION_scheduleServiceArgs:I = 0xf

.field static final TRANSACTION_scheduleSleeping:I = 0x1a

.field static final TRANSACTION_scheduleStopActivity:I = 0x2

.field static final TRANSACTION_scheduleStopService:I = 0xb

.field static final TRANSACTION_scheduleSuicide:I = 0x20

.field static final TRANSACTION_scheduleTranslucentConversionComplete:I = 0x30

.field static final TRANSACTION_scheduleTrimMemory:I = 0x29

.field static final TRANSACTION_scheduleUnbindService:I = 0x13

.field static final TRANSACTION_scheduleWindowVisibility:I = 0x3

.field static final TRANSACTION_setCoreSettings:I = 0x27

.field static final TRANSACTION_setHttpProxy:I = 0x26

.field static final TRANSACTION_setNetworkBlockSeq:I = 0x3e

.field static final TRANSACTION_setProcessState:I = 0x31

.field static final TRANSACTION_setSchedulingGroup:I = 0x1c

.field static final TRANSACTION_startBinderTracking:I = 0x36

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0x37

.field static final TRANSACTION_switchActivityThreadLog:I = 0x40

.field static final TRANSACTION_unstableProviderDied:I = 0x2e

.field static final TRANSACTION_updatePackageCompatibilityInfo:I = 0x28

.field static final TRANSACTION_updateTimePrefs:I = 0x33

.field static final TRANSACTION_updateTimeZone:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/app/IApplicationThread;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 123
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 1090
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 49
    :sswitch_0
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v6, 0x1

    return v6

    .line 54
    :sswitch_1
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 58
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    .line 60
    .local v8, "_arg1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v9, 0x1

    .line 62
    .local v9, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 64
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v11, 0x1

    .local v11, "_arg4":Z
    :goto_2
    move-object/from16 v6, p0

    .line 65
    invoke-virtual/range {v6 .. v11}, Landroid/app/IApplicationThread$Stub;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 66
    const/4 v6, 0x1

    return v6

    .line 58
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Z
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_0

    .line 60
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_1

    .line 64
    .restart local v10    # "_arg3":I
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Z
    goto :goto_2

    .line 70
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Z
    :sswitch_2
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 74
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x1

    .line 76
    .restart local v8    # "_arg1":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 77
    .local v15, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Landroid/app/IApplicationThread$Stub;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 78
    const/4 v6, 0x1

    return v6

    .line 74
    .end local v8    # "_arg1":Z
    .end local v15    # "_arg2":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_3

    .line 82
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 86
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v8, 0x1

    .line 87
    .restart local v8    # "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 88
    const/4 v6, 0x1

    return v6

    .line 86
    .end local v8    # "_arg1":Z
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_4

    .line 92
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 96
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v105

    .line 98
    .local v105, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v9, 0x1

    .line 100
    .restart local v9    # "_arg2":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 101
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v119

    check-cast v119, Landroid/os/Bundle;

    .line 106
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v105

    move-object/from16 v2, v119

    invoke-virtual {v0, v7, v1, v9, v2}, Landroid/app/IApplicationThread$Stub;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 107
    const/4 v6, 0x1

    return v6

    .line 98
    .end local v9    # "_arg2":Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_5

    .line 104
    :cond_6
    const/16 v119, 0x0

    .local v119, "_arg3":Landroid/os/Bundle;
    goto :goto_6

    .line 111
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg2":Z
    .end local v105    # "_arg1":I
    .end local v119    # "_arg3":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 115
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v68

    .line 116
    .local v68, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 117
    const/4 v6, 0x1

    return v6

    .line 121
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v68    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :sswitch_6
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 124
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 130
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 132
    .local v14, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 134
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 135
    sget-object v6, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ActivityInfo;

    .line 141
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 142
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/Configuration;

    .line 148
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 149
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/Configuration;

    .line 155
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 156
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/CompatibilityInfo;

    .line 162
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 164
    .local v20, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v21

    .line 166
    .local v21, "_arg8":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 168
    .local v22, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 169
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    .line 175
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 176
    sget-object v6, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/PersistableBundle;

    .line 182
    :goto_d
    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 184
    .local v25, "_arg12":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 186
    .local v26, "_arg13":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v27, 0x1

    .line 188
    .local v27, "_arg14":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    const/16 v28, 0x1

    .line 190
    .local v28, "_arg15":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 191
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/ProfilerInfo;

    :goto_10
    move-object/from16 v12, p0

    .line 196
    invoke-virtual/range {v12 .. v29}, Landroid/app/IApplicationThread$Stub;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 197
    const/4 v6, 0x1

    return v6

    .line 127
    .end local v14    # "_arg1":Landroid/os/IBinder;
    .end local v15    # "_arg2":I
    .end local v20    # "_arg7":Ljava/lang/String;
    .end local v21    # "_arg8":Lcom/android/internal/app/IVoiceInteractor;
    .end local v22    # "_arg9":I
    .end local v25    # "_arg12":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v26    # "_arg13":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    :cond_7
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/content/Intent;
    goto/16 :goto_7

    .line 138
    .end local v13    # "_arg0":Landroid/content/Intent;
    .restart local v14    # "_arg1":Landroid/os/IBinder;
    .restart local v15    # "_arg2":I
    :cond_8
    const/16 v16, 0x0

    .local v16, "_arg3":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_8

    .line 145
    .end local v16    # "_arg3":Landroid/content/pm/ActivityInfo;
    :cond_9
    const/16 v17, 0x0

    .local v17, "_arg4":Landroid/content/res/Configuration;
    goto/16 :goto_9

    .line 152
    .end local v17    # "_arg4":Landroid/content/res/Configuration;
    :cond_a
    const/16 v18, 0x0

    .local v18, "_arg5":Landroid/content/res/Configuration;
    goto/16 :goto_a

    .line 159
    .end local v18    # "_arg5":Landroid/content/res/Configuration;
    :cond_b
    const/16 v19, 0x0

    .local v19, "_arg6":Landroid/content/res/CompatibilityInfo;
    goto :goto_b

    .line 172
    .end local v19    # "_arg6":Landroid/content/res/CompatibilityInfo;
    .restart local v20    # "_arg7":Ljava/lang/String;
    .restart local v21    # "_arg8":Lcom/android/internal/app/IVoiceInteractor;
    .restart local v22    # "_arg9":I
    :cond_c
    const/16 v23, 0x0

    .local v23, "_arg10":Landroid/os/Bundle;
    goto :goto_c

    .line 179
    .end local v23    # "_arg10":Landroid/os/Bundle;
    :cond_d
    const/16 v24, 0x0

    .local v24, "_arg11":Landroid/os/PersistableBundle;
    goto :goto_d

    .line 186
    .end local v24    # "_arg11":Landroid/os/PersistableBundle;
    .restart local v25    # "_arg12":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v26    # "_arg13":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_e
    const/16 v27, 0x0

    .restart local v27    # "_arg14":Z
    goto :goto_e

    .line 188
    :cond_f
    const/16 v28, 0x0

    .restart local v28    # "_arg15":Z
    goto :goto_f

    .line 194
    :cond_10
    const/16 v29, 0x0

    .local v29, "_arg16":Landroid/app/ProfilerInfo;
    goto :goto_10

    .line 201
    .end local v14    # "_arg1":Landroid/os/IBinder;
    .end local v15    # "_arg2":I
    .end local v20    # "_arg7":Ljava/lang/String;
    .end local v21    # "_arg8":Lcom/android/internal/app/IVoiceInteractor;
    .end local v22    # "_arg9":I
    .end local v25    # "_arg12":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v26    # "_arg13":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    .end local v29    # "_arg16":Landroid/app/ProfilerInfo;
    :sswitch_7
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v103

    .line 205
    .local v103, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 207
    .restart local v14    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    const/4 v9, 0x1

    .line 208
    .restart local v9    # "_arg2":Z
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v1, v14, v9}, Landroid/app/IApplicationThread$Stub;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    .line 209
    const/4 v6, 0x1

    return v6

    .line 207
    .end local v9    # "_arg2":Z
    :cond_11
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_11

    .line 213
    .end local v9    # "_arg2":Z
    .end local v14    # "_arg1":Landroid/os/IBinder;
    .end local v103    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :sswitch_8
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 217
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/4 v8, 0x1

    .line 219
    .restart local v8    # "_arg1":Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 220
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 221
    const/4 v6, 0x1

    return v6

    .line 217
    .end local v8    # "_arg1":Z
    .end local v15    # "_arg2":I
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_12

    .line 225
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Z
    :sswitch_9
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    .line 228
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 234
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 235
    sget-object v6, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ActivityInfo;

    .line 241
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 242
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/res/CompatibilityInfo;

    .line 248
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 250
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 252
    .local v35, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 253
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/Bundle;

    .line 259
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    const/16 v37, 0x1

    .line 261
    .local v37, "_arg6":Z
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 263
    .local v38, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .local v39, "_arg8":I
    move-object/from16 v30, p0

    move-object/from16 v31, v13

    move/from16 v34, v10

    .line 264
    invoke-virtual/range {v30 .. v39}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 265
    const/4 v6, 0x1

    return v6

    .line 231
    .end local v10    # "_arg3":I
    .end local v35    # "_arg4":Ljava/lang/String;
    .end local v37    # "_arg6":Z
    .end local v38    # "_arg7":I
    .end local v39    # "_arg8":I
    :cond_13
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/Intent;
    goto :goto_13

    .line 238
    .end local v13    # "_arg0":Landroid/content/Intent;
    :cond_14
    const/16 v32, 0x0

    .local v32, "_arg1":Landroid/content/pm/ActivityInfo;
    goto :goto_14

    .line 245
    .end local v32    # "_arg1":Landroid/content/pm/ActivityInfo;
    :cond_15
    const/16 v33, 0x0

    .local v33, "_arg2":Landroid/content/res/CompatibilityInfo;
    goto :goto_15

    .line 256
    .end local v33    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .restart local v10    # "_arg3":I
    .restart local v35    # "_arg4":Ljava/lang/String;
    :cond_16
    const/16 v36, 0x0

    .local v36, "_arg5":Landroid/os/Bundle;
    goto :goto_16

    .line 259
    .end local v36    # "_arg5":Landroid/os/Bundle;
    :cond_17
    const/16 v37, 0x0

    .restart local v37    # "_arg6":Z
    goto :goto_17

    .line 269
    .end local v10    # "_arg3":I
    .end local v35    # "_arg4":Ljava/lang/String;
    .end local v37    # "_arg6":Z
    :sswitch_a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 273
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    .line 274
    sget-object v6, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/content/pm/ServiceInfo;

    .line 280
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    .line 281
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/res/CompatibilityInfo;

    .line 287
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 288
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    move-object/from16 v2, v33

    invoke-virtual {v0, v7, v1, v2, v10}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 289
    const/4 v6, 0x1

    return v6

    .line 277
    .end local v10    # "_arg3":I
    :cond_18
    const/16 v108, 0x0

    .local v108, "_arg1":Landroid/content/pm/ServiceInfo;
    goto :goto_18

    .line 284
    .end local v108    # "_arg1":Landroid/content/pm/ServiceInfo;
    :cond_19
    const/16 v33, 0x0

    .restart local v33    # "_arg2":Landroid/content/res/CompatibilityInfo;
    goto :goto_19

    .line 293
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v33    # "_arg2":Landroid/content/res/CompatibilityInfo;
    :sswitch_b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 296
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    .line 297
    const/4 v6, 0x1

    return v6

    .line 301
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 305
    .local v41, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 306
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/pm/ApplicationInfo;

    .line 312
    :goto_1a
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v43

    .line 314
    .local v43, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 315
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/ComponentName;

    .line 321
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 322
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/app/ProfilerInfo;

    .line 328
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 329
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/Bundle;

    .line 335
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v47

    .line 337
    .local v47, "_arg6":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v48

    .line 339
    .local v48, "_arg7":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 341
    .restart local v39    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v50, 0x1

    .line 343
    .local v50, "_arg9":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v51, 0x1

    .line 345
    .local v51, "_arg10":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    const/16 v52, 0x1

    .line 347
    .local v52, "_arg11":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v53, 0x1

    .line 349
    .local v53, "_arg12":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    .line 350
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/content/res/Configuration;

    .line 356
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 357
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/content/res/CompatibilityInfo;

    .line 363
    :goto_23
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v122

    .line 364
    .local v122, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v56

    .line 366
    .local v56, "_arg15":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    .line 367
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/os/Bundle;

    .line 373
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    .local v58, "_arg17":Ljava/lang/String;
    move-object/from16 v40, p0

    move-object/from16 v46, v36

    move/from16 v49, v39

    .line 374
    invoke-virtual/range {v40 .. v58}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 375
    const/4 v6, 0x1

    return v6

    .line 309
    .end local v39    # "_arg8":I
    .end local v43    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v47    # "_arg6":Landroid/app/IInstrumentationWatcher;
    .end local v48    # "_arg7":Landroid/app/IUiAutomationConnection;
    .end local v50    # "_arg9":Z
    .end local v51    # "_arg10":Z
    .end local v52    # "_arg11":Z
    .end local v53    # "_arg12":Z
    .end local v56    # "_arg15":Ljava/util/Map;
    .end local v58    # "_arg17":Ljava/lang/String;
    .end local v122    # "cl":Ljava/lang/ClassLoader;
    :cond_1a
    const/16 v42, 0x0

    .local v42, "_arg1":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_1a

    .line 318
    .end local v42    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .restart local v43    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_1b
    const/16 v44, 0x0

    .local v44, "_arg3":Landroid/content/ComponentName;
    goto/16 :goto_1b

    .line 325
    .end local v44    # "_arg3":Landroid/content/ComponentName;
    :cond_1c
    const/16 v45, 0x0

    .local v45, "_arg4":Landroid/app/ProfilerInfo;
    goto/16 :goto_1c

    .line 332
    .end local v45    # "_arg4":Landroid/app/ProfilerInfo;
    :cond_1d
    const/16 v36, 0x0

    .restart local v36    # "_arg5":Landroid/os/Bundle;
    goto/16 :goto_1d

    .line 341
    .end local v36    # "_arg5":Landroid/os/Bundle;
    .restart local v39    # "_arg8":I
    .restart local v47    # "_arg6":Landroid/app/IInstrumentationWatcher;
    .restart local v48    # "_arg7":Landroid/app/IUiAutomationConnection;
    :cond_1e
    const/16 v50, 0x0

    .restart local v50    # "_arg9":Z
    goto :goto_1e

    .line 343
    :cond_1f
    const/16 v51, 0x0

    .restart local v51    # "_arg10":Z
    goto :goto_1f

    .line 345
    :cond_20
    const/16 v52, 0x0

    .restart local v52    # "_arg11":Z
    goto :goto_20

    .line 347
    :cond_21
    const/16 v53, 0x0

    .restart local v53    # "_arg12":Z
    goto :goto_21

    .line 353
    :cond_22
    const/16 v54, 0x0

    .local v54, "_arg13":Landroid/content/res/Configuration;
    goto :goto_22

    .line 360
    .end local v54    # "_arg13":Landroid/content/res/Configuration;
    :cond_23
    const/16 v55, 0x0

    .local v55, "_arg14":Landroid/content/res/CompatibilityInfo;
    goto :goto_23

    .line 370
    .end local v55    # "_arg14":Landroid/content/res/CompatibilityInfo;
    .restart local v56    # "_arg15":Ljava/util/Map;
    .restart local v122    # "cl":Ljava/lang/ClassLoader;
    :cond_24
    const/16 v57, 0x0

    .local v57, "_arg16":Landroid/os/Bundle;
    goto :goto_24

    .line 379
    .end local v39    # "_arg8":I
    .end local v41    # "_arg0":Ljava/lang/String;
    .end local v43    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v47    # "_arg6":Landroid/app/IInstrumentationWatcher;
    .end local v48    # "_arg7":Landroid/app/IUiAutomationConnection;
    .end local v50    # "_arg9":Z
    .end local v51    # "_arg10":Z
    .end local v52    # "_arg11":Z
    .end local v53    # "_arg12":Z
    .end local v56    # "_arg15":Ljava/util/Map;
    .end local v57    # "_arg16":Landroid/os/Bundle;
    .end local v122    # "cl":Ljava/lang/ClassLoader;
    :sswitch_d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    .line 381
    const/4 v6, 0x1

    return v6

    .line 385
    :sswitch_e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    .line 388
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/content/res/Configuration;

    .line 393
    :goto_25
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 394
    const/4 v6, 0x1

    return v6

    .line 391
    :cond_25
    const/16 v101, 0x0

    .local v101, "_arg0":Landroid/content/res/Configuration;
    goto :goto_25

    .line 398
    .end local v101    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 402
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26

    .line 403
    sget-object v6, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/content/pm/ParceledListSlice;

    .line 408
    :goto_26
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 409
    const/4 v6, 0x1

    return v6

    .line 406
    :cond_26
    const/16 v107, 0x0

    .local v107, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_26

    .line 413
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v107    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :sswitch_10
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    .line 415
    const/4 v6, 0x1

    return v6

    .line 419
    :sswitch_11
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    .line 421
    const/4 v6, 0x1

    return v6

    .line 425
    :sswitch_12
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 429
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    .line 430
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/content/Intent;

    .line 436
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    const/4 v9, 0x1

    .line 438
    .restart local v9    # "_arg2":Z
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 439
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 440
    const/4 v6, 0x1

    return v6

    .line 433
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":I
    :cond_27
    const/16 v61, 0x0

    .local v61, "_arg1":Landroid/content/Intent;
    goto :goto_27

    .line 436
    .end local v61    # "_arg1":Landroid/content/Intent;
    :cond_28
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_28

    .line 444
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg2":Z
    :sswitch_13
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 448
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    .line 449
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/content/Intent;

    .line 454
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 455
    const/4 v6, 0x1

    return v6

    .line 452
    :cond_29
    const/16 v61, 0x0

    .restart local v61    # "_arg1":Landroid/content/Intent;
    goto :goto_29

    .line 459
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v61    # "_arg1":Landroid/content/Intent;
    :sswitch_14
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    .line 462
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    .line 468
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 470
    .restart local v14    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v117

    .line 471
    .local v117, "_arg2":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v14, v2}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 472
    const/4 v6, 0x1

    return v6

    .line 465
    .end local v14    # "_arg1":Landroid/os/IBinder;
    .end local v117    # "_arg2":[Ljava/lang/String;
    :cond_2a
    const/16 v82, 0x0

    .local v82, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_2a

    .line 476
    .end local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_15
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v60

    .line 480
    .local v60, "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b

    .line 481
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/content/Intent;

    .line 487
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 489
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v63

    .line 491
    .local v63, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    .line 492
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/os/Bundle;

    .line 498
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    const/16 v65, 0x1

    .line 500
    .local v65, "_arg5":Z
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v37, 0x1

    .line 502
    .restart local v37    # "_arg6":Z
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 504
    .restart local v38    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .restart local v39    # "_arg8":I
    move-object/from16 v59, p0

    move/from16 v62, v15

    move/from16 v66, v37

    move/from16 v67, v38

    move/from16 v68, v39

    .line 505
    invoke-virtual/range {v59 .. v68}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 506
    const/4 v6, 0x1

    return v6

    .line 484
    .end local v15    # "_arg2":I
    .end local v37    # "_arg6":Z
    .end local v38    # "_arg7":I
    .end local v39    # "_arg8":I
    .end local v63    # "_arg3":Ljava/lang/String;
    .end local v65    # "_arg5":Z
    :cond_2b
    const/16 v61, 0x0

    .restart local v61    # "_arg1":Landroid/content/Intent;
    goto :goto_2b

    .line 495
    .end local v61    # "_arg1":Landroid/content/Intent;
    .restart local v15    # "_arg2":I
    .restart local v63    # "_arg3":Ljava/lang/String;
    :cond_2c
    const/16 v64, 0x0

    .local v64, "_arg4":Landroid/os/Bundle;
    goto :goto_2c

    .line 498
    .end local v64    # "_arg4":Landroid/os/Bundle;
    :cond_2d
    const/16 v65, 0x0

    .restart local v65    # "_arg5":Z
    goto :goto_2d

    .line 500
    :cond_2e
    const/16 v37, 0x0

    .restart local v37    # "_arg6":Z
    goto :goto_2e

    .line 510
    .end local v15    # "_arg2":I
    .end local v37    # "_arg6":Z
    .end local v60    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v63    # "_arg3":Ljava/lang/String;
    .end local v65    # "_arg5":Z
    :sswitch_16
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    .line 512
    const/4 v6, 0x1

    return v6

    .line 516
    :sswitch_17
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 520
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    .line 521
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/content/res/Configuration;

    .line 526
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 527
    const/4 v6, 0x1

    return v6

    .line 524
    :cond_2f
    const/16 v110, 0x0

    .local v110, "_arg1":Landroid/content/res/Configuration;
    goto :goto_2f

    .line 531
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v110    # "_arg1":Landroid/content/res/Configuration;
    :sswitch_18
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 535
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v105

    .line 537
    .restart local v105    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    .line 538
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/content/res/Configuration;

    .line 543
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v105

    move-object/from16 v2, v115

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleActivityMovedToDisplay(Landroid/os/IBinder;ILandroid/content/res/Configuration;)V

    .line 544
    const/4 v6, 0x1

    return v6

    .line 541
    :cond_30
    const/16 v115, 0x0

    .local v115, "_arg2":Landroid/content/res/Configuration;
    goto :goto_30

    .line 548
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v105    # "_arg1":I
    .end local v115    # "_arg2":Landroid/content/res/Configuration;
    :sswitch_19
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 552
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v68

    .line 554
    .restart local v68    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v69

    .line 556
    .local v69, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 558
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/4 v11, 0x1

    .line 560
    .restart local v11    # "_arg4":Z
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    .line 561
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/Configuration;

    .line 567
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    .line 568
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/res/Configuration;

    .line 574
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    const/16 v74, 0x1

    .local v74, "_arg7":Z
    :goto_34
    move-object/from16 v66, p0

    move-object/from16 v67, v7

    move/from16 v70, v10

    move/from16 v71, v11

    move-object/from16 v72, v18

    .line 575
    invoke-virtual/range {v66 .. v74}, Landroid/app/IApplicationThread$Stub;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 576
    const/4 v6, 0x1

    return v6

    .line 558
    .end local v11    # "_arg4":Z
    .end local v74    # "_arg7":Z
    :cond_31
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Z
    goto :goto_31

    .line 564
    :cond_32
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/content/res/Configuration;
    goto :goto_32

    .line 571
    .end local v18    # "_arg5":Landroid/content/res/Configuration;
    :cond_33
    const/16 v73, 0x0

    .local v73, "_arg6":Landroid/content/res/Configuration;
    goto :goto_33

    .line 574
    .end local v73    # "_arg6":Landroid/content/res/Configuration;
    :cond_34
    const/16 v74, 0x0

    .restart local v74    # "_arg7":Z
    goto :goto_34

    .line 580
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Z
    .end local v68    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v69    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v74    # "_arg7":Z
    :sswitch_1a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 584
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/4 v8, 0x1

    .line 585
    .restart local v8    # "_arg1":Z
    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 586
    const/4 v6, 0x1

    return v6

    .line 584
    .end local v8    # "_arg1":Z
    :cond_35
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_35

    .line 590
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Z
    :sswitch_1b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v76, 0x1

    .line 594
    .local v76, "_arg0":Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    .line 595
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/app/ProfilerInfo;

    .line 601
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 602
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    move-object/from16 v2, v106

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 603
    const/4 v6, 0x1

    return v6

    .line 592
    .end local v15    # "_arg2":I
    .end local v76    # "_arg0":Z
    :cond_36
    const/16 v76, 0x0

    .restart local v76    # "_arg0":Z
    goto :goto_36

    .line 598
    :cond_37
    const/16 v106, 0x0

    .local v106, "_arg1":Landroid/app/ProfilerInfo;
    goto :goto_37

    .line 607
    .end local v76    # "_arg0":Z
    .end local v106    # "_arg1":Landroid/app/ProfilerInfo;
    :sswitch_1c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 610
    .local v96, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    .line 611
    const/4 v6, 0x1

    return v6

    .line 615
    .end local v96    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    .line 618
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/content/pm/ApplicationInfo;

    .line 624
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    .line 625
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/content/res/CompatibilityInfo;

    .line 631
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 632
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v109

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 633
    const/4 v6, 0x1

    return v6

    .line 621
    .end local v15    # "_arg2":I
    :cond_38
    const/16 v97, 0x0

    .local v97, "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_38

    .line 628
    .end local v97    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :cond_39
    const/16 v109, 0x0

    .local v109, "_arg1":Landroid/content/res/CompatibilityInfo;
    goto :goto_39

    .line 637
    .end local v109    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :sswitch_1e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    .line 640
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/content/pm/ApplicationInfo;

    .line 646
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 647
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/content/res/CompatibilityInfo;

    .line 652
    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 653
    const/4 v6, 0x1

    return v6

    .line 643
    :cond_3a
    const/16 v97, 0x0

    .restart local v97    # "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_3a

    .line 650
    .end local v97    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :cond_3b
    const/16 v109, 0x0

    .restart local v109    # "_arg1":Landroid/content/res/CompatibilityInfo;
    goto :goto_3b

    .line 657
    .end local v109    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :sswitch_1f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 661
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    .line 662
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/os/Bundle;

    .line 667
    :goto_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 668
    const/4 v6, 0x1

    return v6

    .line 665
    :cond_3c
    const/16 v111, 0x0

    .local v111, "_arg1":Landroid/os/Bundle;
    goto :goto_3c

    .line 672
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v111    # "_arg1":Landroid/os/Bundle;
    :sswitch_20
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    .line 674
    const/4 v6, 0x1

    return v6

    .line 678
    :sswitch_21
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 682
    .restart local v96    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v114

    .line 683
    .local v114, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v96

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 684
    const/4 v6, 0x1

    return v6

    .line 688
    .end local v96    # "_arg0":I
    .end local v114    # "_arg1":[Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 691
    .restart local v41    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;)V

    .line 692
    const/4 v6, 0x1

    return v6

    .line 696
    .end local v41    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v76, 0x1

    .line 700
    .restart local v76    # "_arg0":Z
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/4 v8, 0x1

    .line 702
    .restart local v8    # "_arg1":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v9, 0x1

    .line 704
    .restart local v9    # "_arg2":Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v63

    .line 706
    .restart local v63    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    .line 707
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/os/ParcelFileDescriptor;

    :goto_40
    move-object/from16 v75, p0

    move/from16 v77, v8

    move/from16 v78, v9

    move-object/from16 v79, v63

    .line 712
    invoke-virtual/range {v75 .. v80}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 713
    const/4 v6, 0x1

    return v6

    .line 698
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v63    # "_arg3":Ljava/lang/String;
    .end local v76    # "_arg0":Z
    :cond_3d
    const/16 v76, 0x0

    .restart local v76    # "_arg0":Z
    goto :goto_3d

    .line 700
    :cond_3e
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_3e

    .line 702
    :cond_3f
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_3f

    .line 710
    .restart local v63    # "_arg3":Ljava/lang/String;
    :cond_40
    const/16 v80, 0x0

    .local v80, "_arg4":Landroid/os/ParcelFileDescriptor;
    goto :goto_40

    .line 717
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v63    # "_arg3":Ljava/lang/String;
    .end local v76    # "_arg0":Z
    .end local v80    # "_arg4":Landroid/os/ParcelFileDescriptor;
    :sswitch_24
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    .line 720
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    .line 726
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 728
    .restart local v14    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 730
    .local v116, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v121

    .line 731
    .local v121, "_arg3":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v116

    move-object/from16 v3, v121

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 732
    const/4 v6, 0x1

    return v6

    .line 723
    .end local v14    # "_arg1":Landroid/os/IBinder;
    .end local v116    # "_arg2":Ljava/lang/String;
    .end local v121    # "_arg3":[Ljava/lang/String;
    :cond_41
    const/16 v82, 0x0

    .restart local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_41

    .line 736
    .end local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_25
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    .line 738
    const/4 v6, 0x1

    return v6

    .line 742
    :sswitch_26
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 746
    .restart local v41    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 748
    .local v113, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 750
    .restart local v116    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    .line 751
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Landroid/net/Uri;

    .line 756
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v113

    move-object/from16 v3, v116

    move-object/from16 v4, v118

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 757
    const/4 v6, 0x1

    return v6

    .line 754
    :cond_42
    const/16 v118, 0x0

    .local v118, "_arg3":Landroid/net/Uri;
    goto :goto_42

    .line 761
    .end local v41    # "_arg0":Ljava/lang/String;
    .end local v113    # "_arg1":Ljava/lang/String;
    .end local v116    # "_arg2":Ljava/lang/String;
    .end local v118    # "_arg3":Landroid/net/Uri;
    :sswitch_27
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 764
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/os/Bundle;

    .line 769
    :goto_43
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    .line 770
    const/4 v6, 0x1

    return v6

    .line 767
    :cond_43
    const/16 v102, 0x0

    .local v102, "_arg0":Landroid/os/Bundle;
    goto :goto_43

    .line 774
    .end local v102    # "_arg0":Landroid/os/Bundle;
    :sswitch_28
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 778
    .restart local v41    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    .line 779
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/content/res/CompatibilityInfo;

    .line 784
    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 785
    const/4 v6, 0x1

    return v6

    .line 782
    :cond_44
    const/16 v109, 0x0

    .restart local v109    # "_arg1":Landroid/content/res/CompatibilityInfo;
    goto :goto_44

    .line 789
    .end local v41    # "_arg0":Ljava/lang/String;
    .end local v109    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :sswitch_29
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 792
    .restart local v96    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    .line 793
    const/4 v6, 0x1

    return v6

    .line 797
    .end local v96    # "_arg0":I
    :sswitch_2a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    .line 800
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    .line 806
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    .line 807
    sget-object v6, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Landroid/os/Debug$MemoryInfo;

    .line 813
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/4 v9, 0x1

    .line 815
    .restart local v9    # "_arg2":Z
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v85, 0x1

    .line 817
    .local v85, "_arg3":Z
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/4 v11, 0x1

    .line 819
    .restart local v11    # "_arg4":Z
    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v65, 0x1

    .line 821
    .restart local v65    # "_arg5":Z
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v37, 0x1

    .line 823
    .restart local v37    # "_arg6":Z
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v89

    .local v89, "_arg7":[Ljava/lang/String;
    move-object/from16 v81, p0

    move/from16 v84, v9

    move/from16 v86, v11

    move/from16 v87, v65

    move/from16 v88, v37

    .line 824
    invoke-virtual/range {v81 .. v89}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V

    .line 825
    const/4 v6, 0x1

    return v6

    .line 803
    .end local v9    # "_arg2":Z
    .end local v11    # "_arg4":Z
    .end local v37    # "_arg6":Z
    .end local v65    # "_arg5":Z
    .end local v85    # "_arg3":Z
    .end local v89    # "_arg7":[Ljava/lang/String;
    :cond_45
    const/16 v82, 0x0

    .restart local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_45

    .line 810
    .end local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_46
    const/16 v83, 0x0

    .local v83, "_arg1":Landroid/os/Debug$MemoryInfo;
    goto :goto_46

    .line 813
    .end local v83    # "_arg1":Landroid/os/Debug$MemoryInfo;
    :cond_47
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_47

    .line 815
    :cond_48
    const/16 v85, 0x0

    .restart local v85    # "_arg3":Z
    goto :goto_48

    .line 817
    :cond_49
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Z
    goto :goto_49

    .line 819
    :cond_4a
    const/16 v65, 0x0

    .restart local v65    # "_arg5":Z
    goto :goto_4a

    .line 821
    :cond_4b
    const/16 v37, 0x0

    .restart local v37    # "_arg6":Z
    goto :goto_4b

    .line 829
    .end local v9    # "_arg2":Z
    .end local v11    # "_arg4":Z
    .end local v37    # "_arg6":Z
    .end local v65    # "_arg5":Z
    .end local v85    # "_arg3":Z
    :sswitch_2b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    .line 832
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    .line 838
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v114

    .line 839
    .restart local v114    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 840
    const/4 v6, 0x1

    return v6

    .line 835
    .end local v114    # "_arg1":[Ljava/lang/String;
    :cond_4c
    const/16 v82, 0x0

    .restart local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4c

    .line 844
    .end local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    .line 847
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    .line 853
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 855
    .restart local v14    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v117

    .line 856
    .restart local v117    # "_arg2":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v14, v2}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 857
    const/4 v6, 0x1

    return v6

    .line 850
    .end local v14    # "_arg1":Landroid/os/IBinder;
    .end local v117    # "_arg2":[Ljava/lang/String;
    :cond_4d
    const/16 v82, 0x0

    .restart local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4d

    .line 861
    .end local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    .line 864
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    .line 870
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v114

    .line 871
    .restart local v114    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 872
    const/4 v6, 0x1

    return v6

    .line 867
    .end local v114    # "_arg1":[Ljava/lang/String;
    :cond_4e
    const/16 v82, 0x0

    .restart local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4e

    .line 876
    .end local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 879
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 880
    const/4 v6, 0x1

    return v6

    .line 884
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_2f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 888
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 890
    .restart local v14    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 892
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 894
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .local v95, "_arg4":I
    move-object/from16 v90, p0

    move-object/from16 v91, v7

    move-object/from16 v92, v14

    move/from16 v93, v15

    move/from16 v94, v10

    .line 895
    invoke-virtual/range {v90 .. v95}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 896
    const/4 v6, 0x1

    return v6

    .line 900
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg3":I
    .end local v14    # "_arg1":Landroid/os/IBinder;
    .end local v15    # "_arg2":I
    .end local v95    # "_arg4":I
    :sswitch_30
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 904
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v8, 0x1

    .line 905
    .restart local v8    # "_arg1":Z
    :goto_4f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 906
    const/4 v6, 0x1

    return v6

    .line 904
    .end local v8    # "_arg1":Z
    :cond_4f
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_4f

    .line 910
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Z
    :sswitch_31
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 913
    .restart local v96    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    .line 914
    const/4 v6, 0x1

    return v6

    .line 918
    .end local v96    # "_arg0":I
    :sswitch_32
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    .line 921
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Landroid/content/pm/ProviderInfo;

    .line 926
    :goto_50
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 927
    const/4 v6, 0x1

    return v6

    .line 924
    :cond_50
    const/16 v100, 0x0

    .local v100, "_arg0":Landroid/content/pm/ProviderInfo;
    goto :goto_50

    .line 931
    .end local v100    # "_arg0":Landroid/content/pm/ProviderInfo;
    :sswitch_33
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 934
    .restart local v96    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    .line 935
    const/4 v6, 0x1

    return v6

    .line 939
    .end local v96    # "_arg0":I
    :sswitch_34
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 942
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 943
    const/4 v6, 0x1

    return v6

    .line 947
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_35
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v104

    .line 950
    .local v104, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    .line 951
    const/4 v6, 0x1

    return v6

    .line 955
    .end local v104    # "_arg0":[B
    :sswitch_36
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    .line 957
    const/4 v6, 0x1

    return v6

    .line 961
    :sswitch_37
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    .line 964
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    .line 969
    :goto_51
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 970
    const/4 v6, 0x1

    return v6

    .line 967
    :cond_51
    const/16 v82, 0x0

    .restart local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_51

    .line 974
    .end local v82    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_38
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 978
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    const/4 v8, 0x1

    .line 980
    .restart local v8    # "_arg1":Z
    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    .line 981
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/content/res/Configuration;

    .line 986
    :goto_53
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/IApplicationThread$Stub;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    .line 987
    const/4 v6, 0x1

    return v6

    .line 978
    .end local v8    # "_arg1":Z
    :cond_52
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_52

    .line 984
    :cond_53
    const/16 v115, 0x0

    .restart local v115    # "_arg2":Landroid/content/res/Configuration;
    goto :goto_53

    .line 991
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Z
    .end local v115    # "_arg2":Landroid/content/res/Configuration;
    :sswitch_39
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 995
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/4 v8, 0x1

    .line 997
    .restart local v8    # "_arg1":Z
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    .line 998
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/content/res/Configuration;

    .line 1003
    :goto_55
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/IApplicationThread$Stub;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    .line 1004
    const/4 v6, 0x1

    return v6

    .line 995
    .end local v8    # "_arg1":Z
    :cond_54
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_54

    .line 1001
    :cond_55
    const/16 v115, 0x0

    .restart local v115    # "_arg2":Landroid/content/res/Configuration;
    goto :goto_55

    .line 1008
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Z
    .end local v115    # "_arg2":Landroid/content/res/Configuration;
    :sswitch_3a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1012
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v112

    .line 1013
    .local v112, "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1014
    const/4 v6, 0x1

    return v6

    .line 1018
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v112    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    :sswitch_3b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    .line 1020
    const/4 v6, 0x1

    return v6

    .line 1024
    :sswitch_3c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 1027
    .restart local v41    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    .line 1028
    const/4 v6, 0x1

    return v6

    .line 1032
    .end local v41    # "_arg0":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    .line 1035
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/content/pm/ApplicationInfo;

    .line 1040
    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 1041
    const/4 v6, 0x1

    return v6

    .line 1038
    :cond_56
    const/16 v97, 0x0

    .restart local v97    # "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_56

    .line 1045
    .end local v97    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :sswitch_3e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v98

    .line 1048
    .local v98, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    .line 1049
    const/4 v6, 0x1

    return v6

    .line 1053
    .end local v98    # "_arg0":J
    :sswitch_3f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    .line 1056
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/content/pm/ApplicationInfo;

    .line 1062
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    .line 1063
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/content/res/CompatibilityInfo;

    .line 1069
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    .line 1070
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/content/res/Configuration;

    .line 1076
    :goto_59
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v122

    .line 1077
    .restart local v122    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v120

    .line 1078
    .local v120, "_arg3":Ljava/util/Map;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v109

    move-object/from16 v3, v115

    move-object/from16 v4, v120

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->schedulePreload(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Ljava/util/Map;)V

    .line 1079
    const/4 v6, 0x1

    return v6

    .line 1059
    .end local v120    # "_arg3":Ljava/util/Map;
    .end local v122    # "cl":Ljava/lang/ClassLoader;
    :cond_57
    const/16 v97, 0x0

    .restart local v97    # "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_57

    .line 1066
    .end local v97    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :cond_58
    const/16 v109, 0x0

    .restart local v109    # "_arg1":Landroid/content/res/CompatibilityInfo;
    goto :goto_58

    .line 1073
    .end local v109    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :cond_59
    const/16 v115, 0x0

    .restart local v115    # "_arg2":Landroid/content/res/Configuration;
    goto :goto_59

    .line 1083
    .end local v115    # "_arg2":Landroid/content/res/Configuration;
    :sswitch_40
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    const/16 v76, 0x1

    .line 1086
    .restart local v76    # "_arg0":Z
    :goto_5a
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->switchActivityThreadLog(Z)V

    .line 1087
    const/4 v6, 0x1

    return v6

    .line 1085
    .end local v76    # "_arg0":Z
    :cond_5a
    const/16 v76, 0x0

    .restart local v76    # "_arg0":Z
    goto :goto_5a

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
