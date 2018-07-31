.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final TRANSACTION_activityDestroyed:I = 0x35

.field static final TRANSACTION_activityIdle:I = 0xc

.field static final TRANSACTION_activityPaused:I = 0xd

.field static final TRANSACTION_activityRelaunched:I = 0xfa

.field static final TRANSACTION_activityResumed:I = 0x1f

.field static final TRANSACTION_activitySlept:I = 0x75

.field static final TRANSACTION_activityStopped:I = 0xe

.field static final TRANSACTION_addAppTask:I = 0xc7

.field static final TRANSACTION_addInstrumentationResults:I = 0x23

.field static final TRANSACTION_addPackageDependency:I = 0x59

.field static final TRANSACTION_appNotRespondingViaProvider:I = 0xb0

.field static final TRANSACTION_attachApplication:I = 0xb

.field static final TRANSACTION_backgroundWhitelistUid:I = 0x122

.field static final TRANSACTION_backupAgentCreated:I = 0x55

.field static final TRANSACTION_bindBackupAgent:I = 0x54

.field static final TRANSACTION_bindService:I = 0x1c

.field static final TRANSACTION_bootAnimationComplete:I = 0xcb

.field static final TRANSACTION_broadcastIntent:I = 0x8

.field static final TRANSACTION_cancelIntentSender:I = 0x37

.field static final TRANSACTION_cancelTaskThumbnailTransition:I = 0x11b

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x11a

.field static final TRANSACTION_checkGrantUriPermission:I = 0x71

.field static final TRANSACTION_checkPermission:I = 0x2c

.field static final TRANSACTION_checkPermissionWithToken:I = 0xcf

.field static final TRANSACTION_checkUriPermission:I = 0x2d

.field static final TRANSACTION_clearApplicationUserData:I = 0x47

.field static final TRANSACTION_clearGrantedUriPermissions:I = 0xff

.field static final TRANSACTION_clearPendingBackup:I = 0x9a

.field static final TRANSACTION_closeSystemDialogs:I = 0x5b

.field static final TRANSACTION_convertFromTranslucent:I = 0xa7

.field static final TRANSACTION_convertToTranslucent:I = 0xa8

.field static final TRANSACTION_crashApplication:I = 0x6c

.field static final TRANSACTION_createStackOnDisplay:I = 0xd2

.field static final TRANSACTION_dismissKeyguard:I = 0x118

.field static final TRANSACTION_dumpHeap:I = 0x72

.field static final TRANSACTION_dumpHeapFinished:I = 0xd9

.field static final TRANSACTION_enterPictureInPictureMode:I = 0xf7

.field static final TRANSACTION_enterSafeMode:I = 0x3b

.field static final TRANSACTION_exitFreeformMode:I = 0xec

.field static final TRANSACTION_finishActivity:I = 0x5

.field static final TRANSACTION_finishActivityAffinity:I = 0x8e

.field static final TRANSACTION_finishHeavyWeightApp:I = 0x67

.field static final TRANSACTION_finishInstrumentation:I = 0x24

.field static final TRANSACTION_finishReceiver:I = 0xa

.field static final TRANSACTION_finishSubActivity:I = 0x18

.field static final TRANSACTION_finishVoiceTask:I = 0xc1

.field static final TRANSACTION_forceStopPackage:I = 0x48

.field static final TRANSACTION_getActivityClassForToken:I = 0x28

.field static final TRANSACTION_getActivityDisplayId:I = 0xb2

.field static final TRANSACTION_getActivityOptions:I = 0xbd

.field static final TRANSACTION_getActivityStackId:I = 0xeb

.field static final TRANSACTION_getAllStackInfos:I = 0xa4

.field static final TRANSACTION_getAppTaskThumbnailSize:I = 0xc8

.field static final TRANSACTION_getAppTasks:I = 0xbe

.field static final TRANSACTION_getAssistContextExtras:I = 0x9c

.field static final TRANSACTION_getCallingActivity:I = 0x10

.field static final TRANSACTION_getCallingPackage:I = 0xf

.field static final TRANSACTION_getConfiguration:I = 0x25

.field static final TRANSACTION_getContentProvider:I = 0x15

.field static final TRANSACTION_getContentProviderExternal:I = 0x86

.field static final TRANSACTION_getCurrentUser:I = 0x8a

.field static final TRANSACTION_getDeviceConfigurationInfo:I = 0x4e

.field static final TRANSACTION_getFocusedStackId:I = 0xd3

.field static final TRANSACTION_getFrontActivityScreenCompatMode:I = 0x76

.field static final TRANSACTION_getGrantedUriPermissions:I = 0xfe

.field static final TRANSACTION_getIntentForIntentSender:I = 0x9b

.field static final TRANSACTION_getIntentSender:I = 0x36

.field static final TRANSACTION_getLastResumedActivityUserId:I = 0x121

.field static final TRANSACTION_getLaunchedFromPackage:I = 0x9e

.field static final TRANSACTION_getLaunchedFromUid:I = 0x8f

.field static final TRANSACTION_getLockTaskModeState:I = 0xd7

.field static final TRANSACTION_getMaxNumPictureInPictureActions:I = 0xf9

.field static final TRANSACTION_getMemoryInfo:I = 0x45

.field static final TRANSACTION_getMemoryTrimLevel:I = 0x108

.field static final TRANSACTION_getMyMemoryState:I = 0x88

.field static final TRANSACTION_getPackageAskScreenCompat:I = 0x7a

.field static final TRANSACTION_getPackageForIntentSender:I = 0x38

.field static final TRANSACTION_getPackageForToken:I = 0x29

.field static final TRANSACTION_getPackageProcessState:I = 0xde

.field static final TRANSACTION_getPackageScreenCompatMode:I = 0x78

.field static final TRANSACTION_getPersistedUriPermissions:I = 0xaf

.field static final TRANSACTION_getProcessLimit:I = 0x2b

.field static final TRANSACTION_getProcessMemoryInfo:I = 0x5c

.field static final TRANSACTION_getProcessPss:I = 0x83

.field static final TRANSACTION_getProcessesInErrorState:I = 0x46

.field static final TRANSACTION_getProviderMimeType:I = 0x6d

.field static final TRANSACTION_getRecentTasks:I = 0x33

.field static final TRANSACTION_getRequestedOrientation:I = 0x40

.field static final TRANSACTION_getRunningAppProcesses:I = 0x4d

.field static final TRANSACTION_getRunningExternalApplications:I = 0x66

.field static final TRANSACTION_getRunningServiceControlPanel:I = 0x19

.field static final TRANSACTION_getRunningUserIds:I = 0x96

.field static final TRANSACTION_getServices:I = 0x4a

.field static final TRANSACTION_getStackInfo:I = 0xa6

.field static final TRANSACTION_getTagForIntentSender:I = 0xb4

.field static final TRANSACTION_getTaskBounds:I = 0xb1

.field static final TRANSACTION_getTaskDescription:I = 0x4c

.field static final TRANSACTION_getTaskDescriptionIcon:I = 0xcc

.field static final TRANSACTION_getTaskForActivity:I = 0x14

.field static final TRANSACTION_getTaskSnapshot:I = 0x11c

.field static final TRANSACTION_getTaskThumbnail:I = 0x4b

.field static final TRANSACTION_getTasks:I = 0x11

.field static final TRANSACTION_getUidForIntentSender:I = 0x57

.field static final TRANSACTION_getUidProcessState:I = 0xe2

.field static final TRANSACTION_getUriPermissionOwnerForActivity:I = 0xfb

.field static final TRANSACTION_grantUriPermission:I = 0x2e

.field static final TRANSACTION_grantUriPermissionFromOwner:I = 0x6f

.field static final TRANSACTION_handleApplicationCrash:I = 0x2

.field static final TRANSACTION_handleApplicationStrictModeViolation:I = 0x68

.field static final TRANSACTION_handleApplicationWtf:I = 0x60

.field static final TRANSACTION_handleIncomingUser:I = 0x58

.field static final TRANSACTION_hang:I = 0xa1

.field static final TRANSACTION_initialAllPackages:I = 0x128

.field static final TRANSACTION_inputDispatchingTimedOut:I = 0x99

.field static final TRANSACTION_isAppForeground:I = 0x100

.field static final TRANSACTION_isAppLocked:I = 0x126

.field static final TRANSACTION_isAppStartModeDisabled:I = 0xf2

.field static final TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0xe5

.field static final TRANSACTION_isImmersive:I = 0x69

.field static final TRANSACTION_isInLockTaskMode:I = 0xb9

.field static final TRANSACTION_isInMultiWindowMode:I = 0xf4

.field static final TRANSACTION_isInPictureInPictureMode:I = 0xf5

.field static final TRANSACTION_isIntentSenderAnActivity:I = 0x91

.field static final TRANSACTION_isIntentSenderTargetedToPackage:I = 0x81

.field static final TRANSACTION_isKeyguardDone:I = 0x127

.field static final TRANSACTION_isRootVoiceInteraction:I = 0xe7

.field static final TRANSACTION_isTopActivityImmersive:I = 0x6b

.field static final TRANSACTION_isTopOfTask:I = 0xc2

.field static final TRANSACTION_isUserAMonkey:I = 0x62

.field static final TRANSACTION_isUserRunning:I = 0x74

.field static final TRANSACTION_isVrModePackageEnabled:I = 0x10a

.field static final TRANSACTION_keyguardGoingAway:I = 0xe1

.field static final TRANSACTION_killAllBackgroundProcesses:I = 0x85

.field static final TRANSACTION_killApplication:I = 0x5a

.field static final TRANSACTION_killApplicationProcess:I = 0x5d

.field static final TRANSACTION_killBackgroundProcesses:I = 0x61

.field static final TRANSACTION_killPackageDependents:I = 0xf6

.field static final TRANSACTION_killPids:I = 0x49

.field static final TRANSACTION_killProcessesBelowForeground:I = 0x89

.field static final TRANSACTION_killUid:I = 0x9f

.field static final TRANSACTION_launchAssistIntent:I = 0xcd

.field static final TRANSACTION_makePackageIdle:I = 0x107

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x44

.field static final TRANSACTION_moveStackToDisplay:I = 0x116

.field static final TRANSACTION_moveTaskBackwards:I = 0x13

.field static final TRANSACTION_moveTaskToDockedStack:I = 0xee

.field static final TRANSACTION_moveTaskToFront:I = 0x12

.field static final TRANSACTION_moveTaskToStack:I = 0xa2

.field static final TRANSACTION_moveTasksToFullscreenStack:I = 0xf0

.field static final TRANSACTION_moveTopActivityToPinnedStack:I = 0xf1

.field static final TRANSACTION_navigateUpTo:I = 0x8c

.field static final TRANSACTION_newUriPermissionOwner:I = 0x6e

.field static final TRANSACTION_noteAlarmFinish:I = 0xdd

.field static final TRANSACTION_noteAlarmStart:I = 0xdc

.field static final TRANSACTION_noteWakeupAlarm:I = 0x3d

.field static final TRANSACTION_notifyActivityDrawn:I = 0xa9

.field static final TRANSACTION_notifyCleartextNetwork:I = 0xd1

.field static final TRANSACTION_notifyEnterAnimationComplete:I = 0xc5

.field static final TRANSACTION_notifyLaunchTaskBehindComplete:I = 0xc3

.field static final TRANSACTION_notifyLockedProfile:I = 0x10c

.field static final TRANSACTION_notifyPinnedStackAnimationEnded:I = 0x105

.field static final TRANSACTION_notifyPinnedStackAnimationStarted:I = 0x104

.field static final TRANSACTION_openContentUri:I = 0x1

.field static final TRANSACTION_overridePendingTransition:I = 0x5f

.field static final TRANSACTION_peekService:I = 0x4f

.field static final TRANSACTION_performIdleMaintenance:I = 0xac

.field static final TRANSACTION_positionTaskInStack:I = 0xea

.field static final TRANSACTION_profileControl:I = 0x50

.field static final TRANSACTION_publishContentProviders:I = 0x16

.field static final TRANSACTION_publishService:I = 0x1e

.field static final TRANSACTION_refContentProvider:I = 0x17

.field static final TRANSACTION_registerIntentSenderCancelListener:I = 0x39

.field static final TRANSACTION_registerProcessObserver:I = 0x7f

.field static final TRANSACTION_registerReceiver:I = 0x6

.field static final TRANSACTION_registerTaskStackListener:I = 0xd0

.field static final TRANSACTION_registerUidObserver:I = 0xe3

.field static final TRANSACTION_registerUserSwitchObserver:I = 0x94

.field static final TRANSACTION_releaseActivityInstance:I = 0xc9

.field static final TRANSACTION_releasePersistableUriPermission:I = 0xae

.field static final TRANSACTION_releaseSomeActivities:I = 0xca

.field static final TRANSACTION_removeContentProvider:I = 0x3e

.field static final TRANSACTION_removeContentProviderExternal:I = 0x87

.field static final TRANSACTION_removeStack:I = 0x106

.field static final TRANSACTION_removeTask:I = 0x7e

.field static final TRANSACTION_reportActivityFullyDrawn:I = 0xaa

.field static final TRANSACTION_reportAssistContextExtras:I = 0x9d

.field static final TRANSACTION_reportSizeConfigurations:I = 0xed

.field static final TRANSACTION_requestActivityRelaunch:I = 0x113

.field static final TRANSACTION_requestAssistContextExtras:I = 0xd5

.field static final TRANSACTION_requestAutofillData:I = 0x117

.field static final TRANSACTION_requestBugReport:I = 0x97

.field static final TRANSACTION_requestTelephonyBugReport:I = 0x98

.field static final TRANSACTION_resizeDockedStack:I = 0xfc

.field static final TRANSACTION_resizePinnedStack:I = 0x109

.field static final TRANSACTION_resizeStack:I = 0xa3

.field static final TRANSACTION_resizeTask:I = 0xd6

.field static final TRANSACTION_restart:I = 0xab

.field static final TRANSACTION_restartUserInBackground:I = 0x119

.field static final TRANSACTION_resumeAppSwitches:I = 0x53

.field static final TRANSACTION_revokeUriPermission:I = 0x2f

.field static final TRANSACTION_revokeUriPermissionFromOwner:I = 0x70

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x11d

.field static final TRANSACTION_sendIdleJobTrigger:I = 0x10e

.field static final TRANSACTION_sendIntentSender:I = 0x10f

.field static final TRANSACTION_serviceDoneExecuting:I = 0x34

.field static final TRANSACTION_setActivityController:I = 0x30

.field static final TRANSACTION_setAlwaysFinish:I = 0x21

.field static final TRANSACTION_setDebugApp:I = 0x20

.field static final TRANSACTION_setDisablePreviewScreenshots:I = 0x120

.field static final TRANSACTION_setDumpHeapDebugLimit:I = 0xd8

.field static final TRANSACTION_setFocusedStack:I = 0xa5

.field static final TRANSACTION_setFocusedTask:I = 0x7d

.field static final TRANSACTION_setFrontActivityScreenCompatMode:I = 0x77

.field static final TRANSACTION_setHasTopUi:I = 0x112

.field static final TRANSACTION_setImmersive:I = 0x6a

.field static final TRANSACTION_setKeyguardDone:I = 0x125

.field static final TRANSACTION_setLockScreenShown:I = 0x8d

.field static final TRANSACTION_setPackageAskScreenCompat:I = 0x7b

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x79

.field static final TRANSACTION_setPersistentVrThread:I = 0x11e

.field static final TRANSACTION_setPictureInPictureParams:I = 0xf8

.field static final TRANSACTION_setProcessImportant:I = 0x42

.field static final TRANSACTION_setProcessLimit:I = 0x2a

.field static final TRANSACTION_setProcessMemoryTrimLevel:I = 0xb3

.field static final TRANSACTION_setRenderThread:I = 0x111

.field static final TRANSACTION_setRequestedOrientation:I = 0x3f

.field static final TRANSACTION_setServiceForeground:I = 0x43

.field static final TRANSACTION_setShowWhenLocked:I = 0x123

.field static final TRANSACTION_setTaskDescription:I = 0xba

.field static final TRANSACTION_setTaskResizeable:I = 0xd4

.field static final TRANSACTION_setTurnScreenOn:I = 0x124

.field static final TRANSACTION_setUserIsMonkey:I = 0xa0

.field static final TRANSACTION_setVoiceKeepAwake:I = 0xda

.field static final TRANSACTION_setVrMode:I = 0xfd

.field static final TRANSACTION_setVrThread:I = 0x110

.field static final TRANSACTION_shouldUpRecreateTask:I = 0x8b

.field static final TRANSACTION_showAssistFromActivity:I = 0xe6

.field static final TRANSACTION_showBootMessage:I = 0x84

.field static final TRANSACTION_showLockTaskEscapeMessage:I = 0xdf

.field static final TRANSACTION_showWaitingForDebugger:I = 0x31

.field static final TRANSACTION_shutdown:I = 0x51

.field static final TRANSACTION_signalPersistentProcesses:I = 0x32

.field static final TRANSACTION_startActivities:I = 0x73

.field static final TRANSACTION_startActivity:I = 0x3

.field static final TRANSACTION_startActivityAndWait:I = 0x63

.field static final TRANSACTION_startActivityAsCaller:I = 0xc6

.field static final TRANSACTION_startActivityAsUser:I = 0x92

.field static final TRANSACTION_startActivityFromRecents:I = 0xc4

.field static final TRANSACTION_startActivityIntentSender:I = 0x5e

.field static final TRANSACTION_startActivityWithConfig:I = 0x65

.field static final TRANSACTION_startAssistantActivity:I = 0xbc

.field static final TRANSACTION_startBinderTracking:I = 0xe8

.field static final TRANSACTION_startConfirmDeviceCredentialIntent:I = 0x10d

.field static final TRANSACTION_startInPlaceAnimationOnFrontMostApplication:I = 0xce

.field static final TRANSACTION_startInstrumentation:I = 0x22

.field static final TRANSACTION_startLocalVoiceInteraction:I = 0x101

.field static final TRANSACTION_startLockTaskModeById:I = 0xb6

.field static final TRANSACTION_startLockTaskModeByToken:I = 0xb7

.field static final TRANSACTION_startNextMatchingActivity:I = 0x3c

.field static final TRANSACTION_startService:I = 0x1a

.field static final TRANSACTION_startSystemLockTaskMode:I = 0xbf

.field static final TRANSACTION_startUserInBackground:I = 0xb5

.field static final TRANSACTION_startVoiceActivity:I = 0xbb

.field static final TRANSACTION_stopAppSwitches:I = 0x52

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0xe9

.field static final TRANSACTION_stopLocalVoiceInteraction:I = 0x102

.field static final TRANSACTION_stopLockTaskMode:I = 0xb8

.field static final TRANSACTION_stopService:I = 0x1b

.field static final TRANSACTION_stopServiceToken:I = 0x27

.field static final TRANSACTION_stopSystemLockTaskMode:I = 0xc0

.field static final TRANSACTION_stopUser:I = 0x93

.field static final TRANSACTION_supportsLocalVoiceInteraction:I = 0x103

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0xef

.field static final TRANSACTION_swapDockedAndFullscreenStack:I = 0x10b

.field static final TRANSACTION_switchUser:I = 0x7c

.field static final TRANSACTION_takePersistableUriPermission:I = 0xad

.field static final TRANSACTION_unbindBackupAgent:I = 0x56

.field static final TRANSACTION_unbindFinished:I = 0x41

.field static final TRANSACTION_unbindService:I = 0x1d

.field static final TRANSACTION_unbroadcastIntent:I = 0x9

.field static final TRANSACTION_unhandledBack:I = 0x4

.field static final TRANSACTION_unlockUser:I = 0xf3

.field static final TRANSACTION_unregisterIntentSenderCancelListener:I = 0x3a

.field static final TRANSACTION_unregisterProcessObserver:I = 0x80

.field static final TRANSACTION_unregisterReceiver:I = 0x7

.field static final TRANSACTION_unregisterTaskStackListener:I = 0x115

.field static final TRANSACTION_unregisterUidObserver:I = 0xe4

.field static final TRANSACTION_unregisterUserSwitchObserver:I = 0x95

.field static final TRANSACTION_unstableProviderDied:I = 0x90

.field static final TRANSACTION_updateConfiguration:I = 0x26

.field static final TRANSACTION_updateDeviceOwner:I = 0xe0

.field static final TRANSACTION_updateDisplayOverrideConfiguration:I = 0x114

.field static final TRANSACTION_updateLockTaskPackages:I = 0xdb

.field static final TRANSACTION_updatePersistentConfiguration:I = 0x82

.field static final TRANSACTION_waitForNetworkStateUpdate:I = 0x11f

.field static final TRANSACTION_willActivityBeVisible:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/app/IActivityManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 251
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 4281
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 48
    :sswitch_0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v6, 0x1

    return v6

    .line 53
    :sswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 56
    .local v94, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v238

    .line 57
    .local v238, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v238, :cond_0

    .line 59
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/4 v6, 0x1

    move-object/from16 v0, v238

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 63
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v238    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 73
    .local v39, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    sget-object v6, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v193

    check-cast v193, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 79
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v193

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v6, 0x1

    return v6

    .line 77
    :cond_1
    const/16 v193, 0x0

    .local v193, "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    goto :goto_1

    .line 85
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v193    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :sswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 89
    .local v7, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 98
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 102
    .local v11, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 104
    .local v12, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 106
    .local v13, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 108
    .local v14, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 109
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 115
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 116
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_4
    move-object/from16 v6, p0

    .line 121
    invoke-virtual/range {v6 .. v16}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v216

    .line 122
    .local v216, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v6, 0x1

    return v6

    .line 95
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v216    # "_result":I
    :cond_2
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/content/Intent;
    goto :goto_2

    .line 112
    .end local v9    # "_arg2":Landroid/content/Intent;
    .restart local v10    # "_arg3":Ljava/lang/String;
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    .restart local v12    # "_arg5":Ljava/lang/String;
    .restart local v13    # "_arg6":I
    .restart local v14    # "_arg7":I
    :cond_3
    const/4 v15, 0x0

    .local v15, "_arg8":Landroid/app/ProfilerInfo;
    goto :goto_3

    .line 119
    .end local v15    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_4
    const/16 v16, 0x0

    .local v16, "_arg9":Landroid/os/Bundle;
    goto :goto_4

    .line 128
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v16    # "_arg9":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v6, 0x1

    return v6

    .line 135
    :sswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 139
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 141
    .local v40, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 148
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 149
    .local v70, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v247

    .line 150
    .local v247, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v247, :cond_6

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v6, 0x1

    return v6

    .line 145
    .end local v70    # "_arg3":I
    .end local v247    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/content/Intent;
    goto :goto_5

    .line 151
    .end local v9    # "_arg2":Landroid/content/Intent;
    .restart local v70    # "_arg3":I
    .restart local v247    # "_result":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    .line 156
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_arg1":I
    .end local v70    # "_arg3":I
    .end local v247    # "_result":Z
    :sswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 160
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 162
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v20

    .line 164
    .local v20, "_arg2":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 165
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/IntentFilter;

    .line 171
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 173
    .local v22, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 175
    .local v23, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg6":I
    move-object/from16 v17, p0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v24, v13

    .line 176
    invoke-virtual/range {v17 .. v24}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v228

    .line 177
    .local v228, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v228, :cond_8

    .line 179
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v6, 0x1

    move-object/from16 v0, v228

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    :goto_8
    const/4 v6, 0x1

    return v6

    .line 168
    .end local v13    # "_arg6":I
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg5":I
    .end local v228    # "_result":Landroid/content/Intent;
    :cond_7
    const/16 v21, 0x0

    .local v21, "_arg3":Landroid/content/IntentFilter;
    goto :goto_7

    .line 183
    .end local v21    # "_arg3":Landroid/content/IntentFilter;
    .restart local v13    # "_arg6":I
    .restart local v22    # "_arg4":Ljava/lang/String;
    .restart local v23    # "_arg5":I
    .restart local v228    # "_result":Landroid/content/Intent;
    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 189
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v20    # "_arg2":Landroid/content/IIntentReceiver;
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg5":I
    .end local v228    # "_result":Landroid/content/Intent;
    :sswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v181

    .line 192
    .local v181, "_arg0":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v6, 0x1

    return v6

    .line 198
    .end local v181    # "_arg0":Landroid/content/IIntentReceiver;
    :sswitch_8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 202
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 203
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 209
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 211
    .local v27, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v28

    .line 213
    .local v28, "_arg3":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 215
    .local v29, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 217
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 218
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/Bundle;

    .line 224
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v32

    .line 226
    .local v32, "_arg7":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 228
    .local v33, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 229
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 235
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    const/16 v35, 0x1

    .line 237
    .local v35, "_arg10":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v36, 0x1

    .line 239
    .local v36, "_arg11":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .local v37, "_arg12":I
    move-object/from16 v24, p0

    move-object/from16 v25, v7

    move-object/from16 v30, v12

    move-object/from16 v34, v16

    .line 240
    invoke-virtual/range {v24 .. v37}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v216

    .line 241
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v6, 0x1

    return v6

    .line 206
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v28    # "_arg3":Landroid/content/IIntentReceiver;
    .end local v29    # "_arg4":I
    .end local v32    # "_arg7":[Ljava/lang/String;
    .end local v33    # "_arg8":I
    .end local v35    # "_arg10":Z
    .end local v36    # "_arg11":Z
    .end local v37    # "_arg12":I
    .end local v216    # "_result":I
    :cond_9
    const/16 v26, 0x0

    .local v26, "_arg1":Landroid/content/Intent;
    goto :goto_9

    .line 221
    .end local v26    # "_arg1":Landroid/content/Intent;
    .restart local v12    # "_arg5":Ljava/lang/String;
    .restart local v27    # "_arg2":Ljava/lang/String;
    .restart local v28    # "_arg3":Landroid/content/IIntentReceiver;
    .restart local v29    # "_arg4":I
    :cond_a
    const/16 v31, 0x0

    .local v31, "_arg6":Landroid/os/Bundle;
    goto :goto_a

    .line 232
    .end local v31    # "_arg6":Landroid/os/Bundle;
    .restart local v32    # "_arg7":[Ljava/lang/String;
    .restart local v33    # "_arg8":I
    :cond_b
    const/16 v16, 0x0

    .restart local v16    # "_arg9":Landroid/os/Bundle;
    goto :goto_b

    .line 235
    .end local v16    # "_arg9":Landroid/os/Bundle;
    :cond_c
    const/16 v35, 0x0

    .restart local v35    # "_arg10":Z
    goto :goto_c

    .line 237
    :cond_d
    const/16 v36, 0x0

    .restart local v36    # "_arg11":Z
    goto :goto_d

    .line 247
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v28    # "_arg3":Landroid/content/IIntentReceiver;
    .end local v29    # "_arg4":I
    .end local v32    # "_arg7":[Ljava/lang/String;
    .end local v33    # "_arg8":I
    .end local v35    # "_arg10":Z
    .end local v36    # "_arg11":Z
    :sswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 251
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 252
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 258
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 259
    .local v60, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v60

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v6, 0x1

    return v6

    .line 255
    .end local v60    # "_arg2":I
    :cond_e
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/content/Intent;
    goto :goto_e

    .line 265
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v26    # "_arg1":Landroid/content/Intent;
    :sswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 269
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 271
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 273
    .restart local v27    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 274
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/Bundle;

    .line 280
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    const/16 v43, 0x1

    .line 282
    .local v43, "_arg4":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg5":I
    move-object/from16 v38, p0

    move-object/from16 v41, v27

    move/from16 v44, v23

    .line 283
    invoke-virtual/range {v38 .. v44}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 284
    const/4 v6, 0x1

    return v6

    .line 277
    .end local v23    # "_arg5":I
    .end local v43    # "_arg4":Z
    :cond_f
    const/16 v42, 0x0

    .local v42, "_arg3":Landroid/os/Bundle;
    goto :goto_f

    .line 280
    .end local v42    # "_arg3":Landroid/os/Bundle;
    :cond_10
    const/16 v43, 0x0

    .restart local v43    # "_arg4":Z
    goto :goto_10

    .line 288
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_arg1":I
    .end local v43    # "_arg4":Z
    :sswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 291
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v6, 0x1

    return v6

    .line 297
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    :sswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 301
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 302
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v196

    check-cast v196, Landroid/content/res/Configuration;

    .line 308
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v96, 0x1

    .line 309
    .local v96, "_arg2":Z
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v196

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 310
    const/4 v6, 0x1

    return v6

    .line 305
    .end local v96    # "_arg2":Z
    :cond_11
    const/16 v196, 0x0

    .local v196, "_arg1":Landroid/content/res/Configuration;
    goto :goto_11

    .line 308
    .end local v196    # "_arg1":Landroid/content/res/Configuration;
    :cond_12
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_12

    .line 314
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v96    # "_arg2":Z
    :sswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 317
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activityPaused(Landroid/os/IBinder;)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v6, 0x1

    return v6

    .line 323
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 327
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    .line 328
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    .line 334
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 335
    sget-object v6, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v207

    check-cast v207, Landroid/os/PersistableBundle;

    .line 341
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 342
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v214

    check-cast v214, Ljava/lang/CharSequence;

    .line 347
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v105

    move-object/from16 v3, v207

    move-object/from16 v4, v214

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 348
    const/4 v6, 0x1

    return v6

    .line 331
    :cond_13
    const/16 v105, 0x0

    .local v105, "_arg1":Landroid/os/Bundle;
    goto :goto_13

    .line 338
    .end local v105    # "_arg1":Landroid/os/Bundle;
    :cond_14
    const/16 v207, 0x0

    .local v207, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_14

    .line 345
    .end local v207    # "_arg2":Landroid/os/PersistableBundle;
    :cond_15
    const/16 v214, 0x0

    .local v214, "_arg3":Ljava/lang/CharSequence;
    goto :goto_15

    .line 352
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v214    # "_arg3":Ljava/lang/CharSequence;
    :sswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 355
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v239

    .line 356
    .local v239, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    move-object/from16 v0, p3

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    const/4 v6, 0x1

    return v6

    .line 362
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v239    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 365
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v226

    .line 366
    .local v226, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v226, :cond_16

    .line 368
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    const/4 v6, 0x1

    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 374
    :goto_16
    const/4 v6, 0x1

    return v6

    .line 372
    :cond_16
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 378
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v226    # "_result":Landroid/content/ComponentName;
    :sswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 382
    .local v78, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 383
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTasks(II)Ljava/util/List;

    move-result-object v243

    .line 384
    .local v243, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    move-object/from16 v0, p3

    move-object/from16 v1, v243

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 386
    const/4 v6, 0x1

    return v6

    .line 390
    .end local v40    # "_arg1":I
    .end local v78    # "_arg0":I
    .end local v243    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :sswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 394
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 396
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    .line 397
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/os/Bundle;

    .line 402
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move-object/from16 v3, v146

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v6, 0x1

    return v6

    .line 400
    :cond_17
    const/16 v146, 0x0

    .local v146, "_arg2":Landroid/os/Bundle;
    goto :goto_17

    .line 408
    .end local v40    # "_arg1":I
    .end local v78    # "_arg0":I
    .end local v146    # "_arg2":Landroid/os/Bundle;
    :sswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 411
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->moveTaskBackwards(I)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v6, 0x1

    return v6

    .line 417
    .end local v78    # "_arg0":I
    :sswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 421
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    const/16 v200, 0x1

    .line 422
    .local v200, "_arg1":Z
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v216

    .line 423
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v6, 0x1

    return v6

    .line 421
    .end local v200    # "_arg1":Z
    .end local v216    # "_result":I
    :cond_18
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_18

    .line 429
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    :sswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 433
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 435
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 437
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    const/16 v48, 0x1

    .line 438
    .local v48, "_arg3":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v60

    move/from16 v2, v48

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v223

    .line 439
    .local v223, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v223, :cond_1a

    .line 441
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/4 v6, 0x1

    move-object/from16 v0, v223

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 447
    :goto_1a
    const/4 v6, 0x1

    return v6

    .line 437
    .end local v48    # "_arg3":Z
    .end local v223    # "_result":Landroid/app/ContentProviderHolder;
    :cond_19
    const/16 v48, 0x0

    .restart local v48    # "_arg3":Z
    goto :goto_19

    .line 445
    .restart local v223    # "_result":Landroid/app/ContentProviderHolder;
    :cond_1a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 451
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v48    # "_arg3":Z
    .end local v60    # "_arg2":I
    .end local v223    # "_result":Landroid/app/ContentProviderHolder;
    :sswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 455
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v199

    .line 456
    .local v199, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v199

    invoke-virtual {v0, v7, v1}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v6, 0x1

    return v6

    .line 462
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v199    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :sswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 466
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 468
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 469
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v247

    .line 470
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v247, :cond_1b

    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    const/4 v6, 0x1

    return v6

    .line 471
    :cond_1b
    const/4 v6, 0x0

    goto :goto_1b

    .line 476
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v247    # "_result":Z
    :sswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 480
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 482
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 483
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v60

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/IActivityManager$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/4 v6, 0x1

    return v6

    .line 489
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v60    # "_arg2":I
    :sswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 492
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    .line 497
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v224

    .line 498
    .local v224, "_result":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v224, :cond_1d

    .line 500
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v6, 0x1

    move-object/from16 v0, v224

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 506
    :goto_1d
    const/4 v6, 0x1

    return v6

    .line 495
    .end local v224    # "_result":Landroid/app/PendingIntent;
    :cond_1c
    const/16 v58, 0x0

    .local v58, "_arg0":Landroid/content/ComponentName;
    goto :goto_1c

    .line 504
    .end local v58    # "_arg0":Landroid/content/ComponentName;
    .restart local v224    # "_result":Landroid/app/PendingIntent;
    :cond_1d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 510
    .end local v224    # "_result":Landroid/app/PendingIntent;
    :sswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 514
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 515
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 521
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 523
    .restart local v27    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v48, 0x1

    .line 525
    .restart local v48    # "_arg3":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 527
    .restart local v22    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg5":I
    move-object/from16 v44, p0

    move-object/from16 v45, v7

    move-object/from16 v46, v26

    move-object/from16 v47, v27

    move-object/from16 v49, v22

    move/from16 v50, v23

    .line 528
    invoke-virtual/range {v44 .. v50}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v226

    .line 529
    .restart local v226    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v226, :cond_20

    .line 531
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v6, 0x1

    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 537
    :goto_20
    const/4 v6, 0x1

    return v6

    .line 518
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg5":I
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v48    # "_arg3":Z
    .end local v226    # "_result":Landroid/content/ComponentName;
    :cond_1e
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/content/Intent;
    goto :goto_1e

    .line 523
    .end local v26    # "_arg1":Landroid/content/Intent;
    .restart local v27    # "_arg2":Ljava/lang/String;
    :cond_1f
    const/16 v48, 0x0

    .restart local v48    # "_arg3":Z
    goto :goto_1f

    .line 535
    .restart local v22    # "_arg4":Ljava/lang/String;
    .restart local v23    # "_arg5":I
    .restart local v226    # "_result":Landroid/content/ComponentName;
    :cond_20
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 541
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg5":I
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v48    # "_arg3":Z
    .end local v226    # "_result":Landroid/content/ComponentName;
    :sswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 545
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    .line 546
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 552
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 554
    .restart local v27    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 555
    .restart local v70    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v70

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v216

    .line 556
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/4 v6, 0x1

    return v6

    .line 549
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v70    # "_arg3":I
    .end local v216    # "_result":I
    :cond_21
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/content/Intent;
    goto :goto_21

    .line 562
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v26    # "_arg1":Landroid/content/Intent;
    :sswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 566
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    .line 568
    .local v51, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    .line 569
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 575
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 577
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v54

    .line 579
    .local v54, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 581
    .restart local v23    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 583
    .local v56, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg7":I
    move-object/from16 v49, p0

    move-object/from16 v50, v7

    move-object/from16 v52, v9

    move-object/from16 v53, v10

    move/from16 v55, v23

    move/from16 v57, v14

    .line 584
    invoke-virtual/range {v49 .. v57}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v216

    .line 585
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    const/4 v6, 0x1

    return v6

    .line 572
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v14    # "_arg7":I
    .end local v23    # "_arg5":I
    .end local v54    # "_arg4":Landroid/app/IServiceConnection;
    .end local v56    # "_arg6":Ljava/lang/String;
    .end local v216    # "_result":I
    :cond_22
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/content/Intent;
    goto :goto_22

    .line 591
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v9    # "_arg2":Landroid/content/Intent;
    .end local v51    # "_arg1":Landroid/os/IBinder;
    :sswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v177

    .line 594
    .local v177, "_arg0":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v177

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v247

    .line 595
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    if-eqz v247, :cond_23

    const/4 v6, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v6, 0x1

    return v6

    .line 596
    :cond_23
    const/4 v6, 0x0

    goto :goto_23

    .line 601
    .end local v177    # "_arg0":Landroid/app/IServiceConnection;
    .end local v247    # "_result":Z
    :sswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 605
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    .line 606
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 612
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    .line 613
    .local v80, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-object/from16 v3, v80

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    const/4 v6, 0x1

    return v6

    .line 609
    .end local v80    # "_arg2":Landroid/os/IBinder;
    :cond_24
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/content/Intent;
    goto :goto_24

    .line 619
    .end local v26    # "_arg1":Landroid/content/Intent;
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 622
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activityResumed(Landroid/os/IBinder;)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    const/4 v6, 0x1

    return v6

    .line 628
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 632
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/16 v200, 0x1

    .line 634
    .restart local v200    # "_arg1":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26

    const/16 v96, 0x1

    .line 635
    .restart local v96    # "_arg2":Z
    :goto_26
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v200

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v6, 0x1

    return v6

    .line 632
    .end local v96    # "_arg2":Z
    .end local v200    # "_arg1":Z
    :cond_25
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_25

    .line 634
    :cond_26
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_26

    .line 641
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v96    # "_arg2":Z
    .end local v200    # "_arg1":Z
    :sswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    const/16 v190, 0x1

    .line 644
    .local v190, "_arg0":Z
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    const/4 v6, 0x1

    return v6

    .line 643
    .end local v190    # "_arg0":Z
    :cond_27
    const/16 v190, 0x0

    .restart local v190    # "_arg0":Z
    goto :goto_27

    .line 650
    .end local v190    # "_arg0":Z
    :sswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    .line 653
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    .line 659
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 661
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 663
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    .line 664
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/Bundle;

    .line 670
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v62

    .line 672
    .local v62, "_arg4":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v63

    .line 674
    .local v63, "_arg5":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 676
    .restart local v13    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .local v65, "_arg7":Ljava/lang/String;
    move-object/from16 v57, p0

    move-object/from16 v59, v8

    move-object/from16 v61, v42

    move/from16 v64, v13

    .line 677
    invoke-virtual/range {v57 .. v65}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v247

    .line 678
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v247, :cond_2a

    const/4 v6, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v6, 0x1

    return v6

    .line 656
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v60    # "_arg2":I
    .end local v62    # "_arg4":Landroid/app/IInstrumentationWatcher;
    .end local v63    # "_arg5":Landroid/app/IUiAutomationConnection;
    .end local v65    # "_arg7":Ljava/lang/String;
    .end local v247    # "_result":Z
    :cond_28
    const/16 v58, 0x0

    .restart local v58    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    .line 667
    .end local v58    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v60    # "_arg2":I
    :cond_29
    const/16 v42, 0x0

    .restart local v42    # "_arg3":Landroid/os/Bundle;
    goto :goto_29

    .line 679
    .end local v42    # "_arg3":Landroid/os/Bundle;
    .restart local v13    # "_arg6":I
    .restart local v62    # "_arg4":Landroid/app/IInstrumentationWatcher;
    .restart local v63    # "_arg5":Landroid/app/IUiAutomationConnection;
    .restart local v65    # "_arg7":Ljava/lang/String;
    .restart local v247    # "_result":Z
    :cond_2a
    const/4 v6, 0x0

    goto :goto_2a

    .line 684
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v60    # "_arg2":I
    .end local v62    # "_arg4":Landroid/app/IInstrumentationWatcher;
    .end local v63    # "_arg5":Landroid/app/IUiAutomationConnection;
    .end local v65    # "_arg7":Ljava/lang/String;
    .end local v247    # "_result":Z
    :sswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 688
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b

    .line 689
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    .line 694
    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    const/4 v6, 0x1

    return v6

    .line 692
    :cond_2b
    const/16 v105, 0x0

    .restart local v105    # "_arg1":Landroid/os/Bundle;
    goto :goto_2b

    .line 700
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v105    # "_arg1":Landroid/os/Bundle;
    :sswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 704
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 706
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    .line 707
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/os/Bundle;

    .line 712
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v146

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v6, 0x1

    return v6

    .line 710
    :cond_2c
    const/16 v146, 0x0

    .restart local v146    # "_arg2":Landroid/os/Bundle;
    goto :goto_2c

    .line 718
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v40    # "_arg1":I
    .end local v146    # "_arg2":Landroid/os/Bundle;
    :sswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v232

    .line 720
    .local v232, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v232, :cond_2d

    .line 722
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    const/4 v6, 0x1

    move-object/from16 v0, v232

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 728
    :goto_2d
    const/4 v6, 0x1

    return v6

    .line 726
    :cond_2d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 732
    .end local v232    # "_result":Landroid/content/res/Configuration;
    :sswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    .line 735
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v183

    check-cast v183, Landroid/content/res/Configuration;

    .line 740
    :goto_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v247

    .line 741
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    if-eqz v247, :cond_2f

    const/4 v6, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v6, 0x1

    return v6

    .line 738
    .end local v247    # "_result":Z
    :cond_2e
    const/16 v183, 0x0

    .local v183, "_arg0":Landroid/content/res/Configuration;
    goto :goto_2e

    .line 742
    .end local v183    # "_arg0":Landroid/content/res/Configuration;
    .restart local v247    # "_result":Z
    :cond_2f
    const/4 v6, 0x0

    goto :goto_2f

    .line 747
    .end local v247    # "_result":Z
    :sswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    .line 750
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    .line 756
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    .line 758
    .restart local v51    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 759
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v51

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v247

    .line 760
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    if-eqz v247, :cond_31

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/4 v6, 0x1

    return v6

    .line 753
    .end local v51    # "_arg1":Landroid/os/IBinder;
    .end local v60    # "_arg2":I
    .end local v247    # "_result":Z
    :cond_30
    const/16 v58, 0x0

    .restart local v58    # "_arg0":Landroid/content/ComponentName;
    goto :goto_30

    .line 761
    .end local v58    # "_arg0":Landroid/content/ComponentName;
    .restart local v51    # "_arg1":Landroid/os/IBinder;
    .restart local v60    # "_arg2":I
    .restart local v247    # "_result":Z
    :cond_31
    const/4 v6, 0x0

    goto :goto_31

    .line 766
    .end local v51    # "_arg1":Landroid/os/IBinder;
    .end local v60    # "_arg2":I
    .end local v247    # "_result":Z
    :sswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 769
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v226

    .line 770
    .restart local v226    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    if-eqz v226, :cond_32

    .line 772
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    const/4 v6, 0x1

    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 778
    :goto_32
    const/4 v6, 0x1

    return v6

    .line 776
    :cond_32
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 782
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v226    # "_result":Landroid/content/ComponentName;
    :sswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 785
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v239

    .line 786
    .restart local v239    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    move-object/from16 v0, p3

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 788
    const/4 v6, 0x1

    return v6

    .line 792
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v239    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 795
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    .line 796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    const/4 v6, 0x1

    return v6

    .line 801
    .end local v78    # "_arg0":I
    :sswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v216

    .line 803
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    const/4 v6, 0x1

    return v6

    .line 809
    .end local v216    # "_result":I
    :sswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 813
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 815
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 816
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v216

    .line 817
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v6, 0x1

    return v6

    .line 823
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v216    # "_result":I
    :sswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    .line 826
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/net/Uri;

    .line 832
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 834
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 836
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 838
    .restart local v70    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 840
    .restart local v29    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .local v72, "_arg5":Landroid/os/IBinder;
    move-object/from16 v66, p0

    move/from16 v68, v40

    move/from16 v69, v60

    move/from16 v71, v29

    .line 841
    invoke-virtual/range {v66 .. v72}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v216

    .line 842
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    const/4 v6, 0x1

    return v6

    .line 829
    .end local v29    # "_arg4":I
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v70    # "_arg3":I
    .end local v72    # "_arg5":Landroid/os/IBinder;
    .end local v216    # "_result":I
    :cond_33
    const/16 v67, 0x0

    .local v67, "_arg0":Landroid/net/Uri;
    goto :goto_33

    .line 848
    .end local v67    # "_arg0":Landroid/net/Uri;
    :sswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 852
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 854
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    .line 855
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/net/Uri;

    .line 861
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 863
    .restart local v70    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .restart local v29    # "_arg4":I
    move-object/from16 v73, p0

    move-object/from16 v74, v7

    move-object/from16 v75, v8

    move/from16 v77, v70

    move/from16 v78, v29

    .line 864
    invoke-virtual/range {v73 .. v78}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    const/4 v6, 0x1

    return v6

    .line 858
    .end local v29    # "_arg4":I
    .end local v70    # "_arg3":I
    :cond_34
    const/16 v76, 0x0

    .local v76, "_arg2":Landroid/net/Uri;
    goto :goto_34

    .line 870
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v76    # "_arg2":Landroid/net/Uri;
    :sswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 874
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 876
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    .line 877
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/net/Uri;

    .line 883
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 885
    .restart local v70    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .restart local v29    # "_arg4":I
    move-object/from16 v73, p0

    move-object/from16 v74, v7

    move-object/from16 v75, v8

    move/from16 v77, v70

    move/from16 v78, v29

    .line 886
    invoke-virtual/range {v73 .. v78}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    const/4 v6, 0x1

    return v6

    .line 880
    .end local v29    # "_arg4":I
    .end local v70    # "_arg3":I
    :cond_35
    const/16 v76, 0x0

    .restart local v76    # "_arg2":Landroid/net/Uri;
    goto :goto_35

    .line 892
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v76    # "_arg2":Landroid/net/Uri;
    :sswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v175

    .line 896
    .local v175, "_arg0":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v200, 0x1

    .line 897
    .restart local v200    # "_arg1":Z
    :goto_36
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    const/4 v6, 0x1

    return v6

    .line 896
    .end local v200    # "_arg1":Z
    :cond_36
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_36

    .line 903
    .end local v175    # "_arg0":Landroid/app/IActivityController;
    .end local v200    # "_arg1":Z
    :sswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 907
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    const/16 v200, 0x1

    .line 908
    .restart local v200    # "_arg1":Z
    :goto_37
    move-object/from16 v0, p0

    move/from16 v1, v200

    invoke-virtual {v0, v7, v1}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    const/4 v6, 0x1

    return v6

    .line 907
    .end local v200    # "_arg1":Z
    :cond_37
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_37

    .line 914
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v200    # "_arg1":Z
    :sswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 917
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    const/4 v6, 0x1

    return v6

    .line 923
    .end local v78    # "_arg0":I
    :sswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 927
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 929
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 930
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v230

    .line 931
    .local v230, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    if-eqz v230, :cond_38

    .line 933
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    const/4 v6, 0x1

    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 939
    :goto_38
    const/4 v6, 0x1

    return v6

    .line 937
    :cond_38
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 943
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v78    # "_arg0":I
    .end local v230    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 947
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 949
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 951
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 952
    .restart local v70    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v60

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 953
    const/4 v6, 0x1

    return v6

    .line 957
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v70    # "_arg3":I
    :sswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 960
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    .line 961
    const/4 v6, 0x1

    return v6

    .line 965
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 969
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 971
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    .line 973
    .restart local v80    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 975
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 977
    .restart local v29    # "_arg4":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v83

    check-cast v83, [Landroid/content/Intent;

    .line 979
    .local v83, "_arg5":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v84

    .line 981
    .local v84, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 983
    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    .line 984
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/os/Bundle;

    .line 990
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .local v87, "_arg9":I
    move-object/from16 v77, p0

    move-object/from16 v79, v8

    move-object/from16 v81, v10

    move/from16 v82, v29

    move/from16 v85, v14

    .line 991
    invoke-virtual/range {v77 .. v87}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v227

    .line 992
    .local v227, "_result":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    if-eqz v227, :cond_3a

    invoke-interface/range {v227 .. v227}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 994
    const/4 v6, 0x1

    return v6

    .line 987
    .end local v87    # "_arg9":I
    .end local v227    # "_result":Landroid/content/IIntentSender;
    :cond_39
    const/16 v86, 0x0

    .local v86, "_arg8":Landroid/os/Bundle;
    goto :goto_39

    .line 993
    .end local v86    # "_arg8":Landroid/os/Bundle;
    .restart local v87    # "_arg9":I
    .restart local v227    # "_result":Landroid/content/IIntentSender;
    :cond_3a
    const/4 v6, 0x0

    goto :goto_3a

    .line 998
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v14    # "_arg7":I
    .end local v29    # "_arg4":I
    .end local v78    # "_arg0":I
    .end local v80    # "_arg2":Landroid/os/IBinder;
    .end local v83    # "_arg5":[Landroid/content/Intent;
    .end local v84    # "_arg6":[Ljava/lang/String;
    .end local v87    # "_arg9":I
    .end local v227    # "_result":Landroid/content/IIntentSender;
    :sswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 1001
    .local v163, "_arg0":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    const/4 v6, 0x1

    return v6

    .line 1007
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    :sswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 1010
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v239

    .line 1011
    .restart local v239    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    move-object/from16 v0, p3

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    const/4 v6, 0x1

    return v6

    .line 1017
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    .end local v239    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 1021
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v145

    .line 1022
    .local v145, "_arg1":Lcom/android/internal/os/IResultReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move-object/from16 v2, v145

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    const/4 v6, 0x1

    return v6

    .line 1028
    .end local v145    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    :sswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 1032
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v145

    .line 1033
    .restart local v145    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move-object/from16 v2, v145

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    const/4 v6, 0x1

    return v6

    .line 1039
    .end local v145    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    :sswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    .line 1041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    const/4 v6, 0x1

    return v6

    .line 1046
    :sswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1050
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 1051
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 1057
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    .line 1058
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/os/Bundle;

    .line 1063
    :goto_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-object/from16 v3, v146

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v247

    .line 1064
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    if-eqz v247, :cond_3d

    const/4 v6, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    const/4 v6, 0x1

    return v6

    .line 1054
    .end local v247    # "_result":Z
    :cond_3b
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/content/Intent;
    goto :goto_3b

    .line 1061
    .end local v26    # "_arg1":Landroid/content/Intent;
    :cond_3c
    const/16 v146, 0x0

    .restart local v146    # "_arg2":Landroid/os/Bundle;
    goto :goto_3c

    .line 1065
    .end local v146    # "_arg2":Landroid/os/Bundle;
    .restart local v247    # "_result":Z
    :cond_3d
    const/4 v6, 0x0

    goto :goto_3d

    .line 1070
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 1074
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1076
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1078
    .restart local v27    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1079
    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move/from16 v2, v40

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    const/4 v6, 0x1

    return v6

    .line 1085
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    :sswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1089
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/16 v200, 0x1

    .line 1090
    .restart local v200    # "_arg1":Z
    :goto_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 1091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    const/4 v6, 0x1

    return v6

    .line 1089
    .end local v200    # "_arg1":Z
    :cond_3e
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_3e

    .line 1096
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    :sswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1100
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1101
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    const/4 v6, 0x1

    return v6

    .line 1107
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_arg1":I
    :sswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1110
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v216

    .line 1111
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    const/4 v6, 0x1

    return v6

    .line 1117
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v216    # "_result":I
    :sswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1121
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    .line 1122
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 1128
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    const/16 v96, 0x1

    .line 1129
    .restart local v96    # "_arg2":Z
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    const/4 v6, 0x1

    return v6

    .line 1125
    .end local v96    # "_arg2":Z
    :cond_3f
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/content/Intent;
    goto :goto_3f

    .line 1128
    .end local v26    # "_arg1":Landroid/content/Intent;
    :cond_40
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_40

    .line 1135
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v96    # "_arg2":Z
    :sswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1139
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1141
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/16 v96, 0x1

    .line 1143
    .restart local v96    # "_arg2":Z
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1144
    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    const/4 v6, 0x1

    return v6

    .line 1141
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v96    # "_arg2":Z
    :cond_41
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_41

    .line 1150
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_arg1":I
    .end local v96    # "_arg2":Z
    :sswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    .line 1153
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    .line 1159
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    .line 1161
    .restart local v51    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1163
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 1164
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Landroid/app/Notification;

    .line 1170
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .restart local v29    # "_arg4":I
    move-object/from16 v88, p0

    move-object/from16 v89, v58

    move-object/from16 v90, v51

    move/from16 v91, v60

    move/from16 v93, v29

    .line 1171
    invoke-virtual/range {v88 .. v93}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    const/4 v6, 0x1

    return v6

    .line 1156
    .end local v29    # "_arg4":I
    .end local v51    # "_arg1":Landroid/os/IBinder;
    .end local v60    # "_arg2":I
    :cond_42
    const/16 v58, 0x0

    .restart local v58    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    .line 1167
    .end local v58    # "_arg0":Landroid/content/ComponentName;
    .restart local v51    # "_arg1":Landroid/os/IBinder;
    .restart local v60    # "_arg2":I
    :cond_43
    const/16 v92, 0x0

    .local v92, "_arg3":Landroid/app/Notification;
    goto :goto_43

    .line 1177
    .end local v51    # "_arg1":Landroid/os/IBinder;
    .end local v60    # "_arg2":I
    .end local v92    # "_arg3":Landroid/app/Notification;
    :sswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1181
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    const/16 v200, 0x1

    .line 1182
    .restart local v200    # "_arg1":Z
    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v247

    .line 1183
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    if-eqz v247, :cond_45

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    const/4 v6, 0x1

    return v6

    .line 1181
    .end local v200    # "_arg1":Z
    .end local v247    # "_result":Z
    :cond_44
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_44

    .line 1184
    .restart local v247    # "_result":Z
    :cond_45
    const/4 v6, 0x0

    goto :goto_45

    .line 1189
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    .end local v247    # "_result":Z
    :sswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    new-instance v171, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v171 .. v171}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1192
    .local v171, "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    if-eqz v171, :cond_46

    .line 1195
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    const/4 v6, 0x1

    move-object/from16 v0, v171

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1201
    :goto_46
    const/4 v6, 0x1

    return v6

    .line 1199
    :cond_46
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_46

    .line 1205
    .end local v171    # "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v240

    .line 1207
    .local v240, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    move-object/from16 v0, p3

    move-object/from16 v1, v240

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1209
    const/4 v6, 0x1

    return v6

    .line 1213
    .end local v240    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1217
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v195

    .line 1219
    .local v195, "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1220
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v195

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v247

    .line 1221
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    if-eqz v247, :cond_47

    const/4 v6, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    const/4 v6, 0x1

    return v6

    .line 1222
    :cond_47
    const/4 v6, 0x0

    goto :goto_47

    .line 1227
    .end local v60    # "_arg2":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v195    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    .end local v247    # "_result":Z
    :sswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1231
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1232
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    const/4 v6, 0x1

    return v6

    .line 1238
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v191

    .line 1242
    .local v191, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1244
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v96, 0x1

    .line 1245
    .restart local v96    # "_arg2":Z
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v191

    move/from16 v2, v96

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v247

    .line 1246
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    if-eqz v247, :cond_49

    const/4 v6, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    const/4 v6, 0x1

    return v6

    .line 1244
    .end local v96    # "_arg2":Z
    .end local v247    # "_result":Z
    :cond_48
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_48

    .line 1247
    .restart local v247    # "_result":Z
    :cond_49
    const/4 v6, 0x0

    goto :goto_49

    .line 1252
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v96    # "_arg2":Z
    .end local v191    # "_arg0":[I
    .end local v247    # "_result":Z
    :sswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1256
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1257
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v242

    .line 1258
    .local v242, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    move-object/from16 v0, p3

    move-object/from16 v1, v242

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1260
    const/4 v6, 0x1

    return v6

    .line 1264
    .end local v40    # "_arg1":I
    .end local v78    # "_arg0":I
    .end local v242    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :sswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1267
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v222

    .line 1268
    .local v222, "_result":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    if-eqz v222, :cond_4a

    .line 1270
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    const/4 v6, 0x1

    move-object/from16 v0, v222

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1276
    :goto_4a
    const/4 v6, 0x1

    return v6

    .line 1274
    :cond_4a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a

    .line 1280
    .end local v78    # "_arg0":I
    .end local v222    # "_result":Landroid/app/ActivityManager$TaskThumbnail;
    :sswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1283
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v220

    .line 1284
    .local v220, "_result":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    if-eqz v220, :cond_4b

    .line 1286
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    const/4 v6, 0x1

    move-object/from16 v0, v220

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1292
    :goto_4b
    const/4 v6, 0x1

    return v6

    .line 1290
    :cond_4b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4b

    .line 1296
    .end local v78    # "_arg0":I
    .end local v220    # "_result":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v241

    .line 1298
    .local v241, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    move-object/from16 v0, p3

    move-object/from16 v1, v241

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1300
    const/4 v6, 0x1

    return v6

    .line 1304
    .end local v241    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v229

    .line 1306
    .local v229, "_result":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    if-eqz v229, :cond_4c

    .line 1308
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    const/4 v6, 0x1

    move-object/from16 v0, v229

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1314
    :goto_4c
    const/4 v6, 0x1

    return v6

    .line 1312
    :cond_4c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    .line 1318
    .end local v229    # "_result":Landroid/content/pm/ConfigurationInfo;
    :sswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    .line 1321
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/content/Intent;

    .line 1327
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1329
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1330
    .restart local v27    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v237

    .line 1331
    .local v237, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    move-object/from16 v0, p3

    move-object/from16 v1, v237

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1333
    const/4 v6, 0x1

    return v6

    .line 1324
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v237    # "_result":Landroid/os/IBinder;
    :cond_4d
    const/16 v121, 0x0

    .local v121, "_arg0":Landroid/content/Intent;
    goto :goto_4d

    .line 1337
    .end local v121    # "_arg0":Landroid/content/Intent;
    :sswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1341
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1343
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/16 v96, 0x1

    .line 1345
    .restart local v96    # "_arg2":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    .line 1346
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/app/ProfilerInfo;

    .line 1352
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .restart local v29    # "_arg4":I
    move-object/from16 v93, p0

    move/from16 v95, v40

    move/from16 v98, v29

    .line 1353
    invoke-virtual/range {v93 .. v98}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v247

    .line 1354
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    if-eqz v247, :cond_50

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    const/4 v6, 0x1

    return v6

    .line 1343
    .end local v29    # "_arg4":I
    .end local v96    # "_arg2":Z
    .end local v247    # "_result":Z
    :cond_4e
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_4e

    .line 1349
    :cond_4f
    const/16 v97, 0x0

    .local v97, "_arg3":Landroid/app/ProfilerInfo;
    goto :goto_4f

    .line 1355
    .end local v97    # "_arg3":Landroid/app/ProfilerInfo;
    .restart local v29    # "_arg4":I
    .restart local v247    # "_result":Z
    :cond_50
    const/4 v6, 0x0

    goto :goto_50

    .line 1360
    .end local v29    # "_arg4":I
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v96    # "_arg2":Z
    .end local v247    # "_result":Z
    :sswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1363
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v247

    .line 1364
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    if-eqz v247, :cond_51

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    const/4 v6, 0x1

    return v6

    .line 1365
    :cond_51
    const/4 v6, 0x0

    goto :goto_51

    .line 1370
    .end local v78    # "_arg0":I
    .end local v247    # "_result":Z
    :sswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    .line 1372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    const/4 v6, 0x1

    return v6

    .line 1377
    :sswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    .line 1379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    const/4 v6, 0x1

    return v6

    .line 1384
    :sswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1388
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1390
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1391
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v247

    .line 1392
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    if-eqz v247, :cond_52

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    const/4 v6, 0x1

    return v6

    .line 1393
    :cond_52
    const/4 v6, 0x0

    goto :goto_52

    .line 1398
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v247    # "_result":Z
    :sswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1402
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    .line 1403
    .restart local v51    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    const/4 v6, 0x1

    return v6

    .line 1409
    .end local v51    # "_arg1":Landroid/os/IBinder;
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    .line 1412
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v182

    check-cast v182, Landroid/content/pm/ApplicationInfo;

    .line 1417
    :goto_53
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    const/4 v6, 0x1

    return v6

    .line 1415
    :cond_53
    const/16 v182, 0x0

    .local v182, "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_53

    .line 1423
    .end local v182    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :sswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 1426
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v216

    .line 1427
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    const/4 v6, 0x1

    return v6

    .line 1433
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    .end local v216    # "_result":I
    :sswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1437
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1439
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1441
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/16 v48, 0x1

    .line 1443
    .restart local v48    # "_arg3":Z
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    const/16 v43, 0x1

    .line 1445
    .restart local v43    # "_arg4":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1447
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "_arg6":Ljava/lang/String;
    move-object/from16 v98, p0

    move/from16 v99, v78

    move/from16 v100, v40

    move/from16 v101, v60

    move/from16 v102, v48

    move/from16 v103, v43

    move-object/from16 v104, v12

    move-object/from16 v105, v56

    .line 1448
    invoke-virtual/range {v98 .. v105}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v216

    .line 1449
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    const/4 v6, 0x1

    return v6

    .line 1441
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v43    # "_arg4":Z
    .end local v48    # "_arg3":Z
    .end local v56    # "_arg6":Ljava/lang/String;
    .end local v216    # "_result":I
    :cond_54
    const/16 v48, 0x0

    .restart local v48    # "_arg3":Z
    goto :goto_54

    .line 1443
    :cond_55
    const/16 v43, 0x0

    .restart local v43    # "_arg4":Z
    goto :goto_55

    .line 1455
    .end local v40    # "_arg1":I
    .end local v43    # "_arg4":Z
    .end local v48    # "_arg3":Z
    .end local v60    # "_arg2":I
    .end local v78    # "_arg0":I
    :sswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1458
    .restart local v94    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    const/4 v6, 0x1

    return v6

    .line 1464
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1468
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1470
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1472
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1473
    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 1474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    const/4 v6, 0x1

    return v6

    .line 1479
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1482
    .restart local v94    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    const/4 v6, 0x1

    return v6

    .line 1488
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v191

    .line 1491
    .restart local v191    # "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v250

    .line 1492
    .local v250, "_result":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v250

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1494
    const/4 v6, 0x1

    return v6

    .line 1498
    .end local v191    # "_arg0":[I
    .end local v250    # "_result":[Landroid/os/Debug$MemoryInfo;
    :sswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1502
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1503
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    const/4 v6, 0x1

    return v6

    .line 1509
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1513
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v100

    .line 1515
    .local v100, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    .line 1517
    .restart local v80    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    .line 1518
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    .line 1524
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1526
    .restart local v22    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 1528
    .restart local v72    # "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 1530
    .restart local v56    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1532
    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 1534
    .restart local v33    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 1536
    .restart local v87    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    .line 1537
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/os/Bundle;

    :goto_57
    move-object/from16 v98, p0

    move-object/from16 v99, v7

    move-object/from16 v101, v80

    move-object/from16 v103, v22

    move-object/from16 v104, v72

    move-object/from16 v105, v56

    move/from16 v106, v14

    move/from16 v107, v33

    move/from16 v108, v87

    .line 1542
    invoke-virtual/range {v98 .. v109}, Landroid/app/IActivityManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v216

    .line 1543
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    const/4 v6, 0x1

    return v6

    .line 1521
    .end local v14    # "_arg7":I
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v33    # "_arg8":I
    .end local v56    # "_arg6":Ljava/lang/String;
    .end local v72    # "_arg5":Landroid/os/IBinder;
    .end local v87    # "_arg9":I
    .end local v216    # "_result":I
    :cond_56
    const/16 v102, 0x0

    .local v102, "_arg3":Landroid/content/Intent;
    goto :goto_56

    .line 1540
    .end local v102    # "_arg3":Landroid/content/Intent;
    .restart local v14    # "_arg7":I
    .restart local v22    # "_arg4":Ljava/lang/String;
    .restart local v33    # "_arg8":I
    .restart local v56    # "_arg6":Ljava/lang/String;
    .restart local v72    # "_arg5":Landroid/os/IBinder;
    .restart local v87    # "_arg9":I
    :cond_57
    const/16 v109, 0x0

    .local v109, "_arg10":Landroid/os/Bundle;
    goto :goto_57

    .line 1549
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v14    # "_arg7":I
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v33    # "_arg8":I
    .end local v56    # "_arg6":Ljava/lang/String;
    .end local v72    # "_arg5":Landroid/os/IBinder;
    .end local v80    # "_arg2":Landroid/os/IBinder;
    .end local v87    # "_arg9":I
    .end local v100    # "_arg1":Landroid/content/IIntentSender;
    .end local v109    # "_arg10":Landroid/os/Bundle;
    :sswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1553
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1555
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1557
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1558
    .restart local v70    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v60

    move/from16 v3, v70

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/app/IActivityManager$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    const/4 v6, 0x1

    return v6

    .line 1564
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v60    # "_arg2":I
    .end local v70    # "_arg3":I
    :sswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1568
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1570
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v96, 0x1

    .line 1572
    .restart local v96    # "_arg2":Z
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    .line 1573
    sget-object v6, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 1578
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v96

    move-object/from16 v3, v211

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;)Z

    move-result v247

    .line 1579
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    if-eqz v247, :cond_5a

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    const/4 v6, 0x1

    return v6

    .line 1570
    .end local v96    # "_arg2":Z
    .end local v247    # "_result":Z
    :cond_58
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_58

    .line 1576
    :cond_59
    const/16 v211, 0x0

    .local v211, "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    goto :goto_59

    .line 1580
    .end local v211    # "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .restart local v247    # "_result":Z
    :cond_5a
    const/4 v6, 0x0

    goto :goto_5a

    .line 1585
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v96    # "_arg2":Z
    .end local v247    # "_result":Z
    :sswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1589
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1590
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    const/4 v6, 0x1

    return v6

    .line 1596
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v247

    .line 1598
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    if-eqz v247, :cond_5b

    const/4 v6, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    const/4 v6, 0x1

    return v6

    .line 1599
    :cond_5b
    const/4 v6, 0x0

    goto :goto_5b

    .line 1604
    .end local v247    # "_result":Z
    :sswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1608
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1610
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c

    .line 1611
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1617
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1619
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1621
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1623
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1625
    .restart local v13    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1627
    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    .line 1628
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 1634
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5e

    .line 1635
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1641
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg10":I
    move-object/from16 v6, p0

    .line 1642
    invoke-virtual/range {v6 .. v17}, Landroid/app/IActivityManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v225

    .line 1643
    .local v225, "_result":Landroid/app/WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    if-eqz v225, :cond_5f

    .line 1645
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    const/4 v6, 0x1

    move-object/from16 v0, v225

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1651
    :goto_5f
    const/4 v6, 0x1

    return v6

    .line 1614
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v17    # "_arg10":I
    .end local v225    # "_result":Landroid/app/WaitResult;
    :cond_5c
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/content/Intent;
    goto :goto_5c

    .line 1631
    .end local v9    # "_arg2":Landroid/content/Intent;
    .restart local v10    # "_arg3":Ljava/lang/String;
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    .restart local v12    # "_arg5":Ljava/lang/String;
    .restart local v13    # "_arg6":I
    .restart local v14    # "_arg7":I
    :cond_5d
    const/4 v15, 0x0

    .restart local v15    # "_arg8":Landroid/app/ProfilerInfo;
    goto :goto_5d

    .line 1638
    .end local v15    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_5e
    const/16 v16, 0x0

    .restart local v16    # "_arg9":Landroid/os/Bundle;
    goto :goto_5e

    .line 1649
    .end local v16    # "_arg9":Landroid/os/Bundle;
    .restart local v17    # "_arg10":I
    .restart local v225    # "_result":Landroid/app/WaitResult;
    :cond_5f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5f

    .line 1655
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v17    # "_arg10":I
    .end local v225    # "_result":Landroid/app/WaitResult;
    :sswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1658
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v247

    .line 1659
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    if-eqz v247, :cond_60

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    const/4 v6, 0x1

    return v6

    .line 1660
    :cond_60
    const/4 v6, 0x0

    goto :goto_60

    .line 1665
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1669
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1671
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61

    .line 1672
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1678
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1680
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1682
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1684
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1686
    .restart local v13    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1688
    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62

    .line 1689
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v119

    check-cast v119, Landroid/content/res/Configuration;

    .line 1695
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_63

    .line 1696
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1702
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg10":I
    move-object/from16 v110, p0

    move-object/from16 v111, v7

    move-object/from16 v112, v8

    move-object/from16 v113, v9

    move-object/from16 v114, v10

    move-object/from16 v115, v11

    move-object/from16 v116, v12

    move/from16 v117, v13

    move/from16 v118, v14

    move-object/from16 v120, v16

    move/from16 v121, v17

    .line 1703
    invoke-virtual/range {v110 .. v121}, Landroid/app/IActivityManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v216

    .line 1704
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    const/4 v6, 0x1

    return v6

    .line 1675
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v17    # "_arg10":I
    .end local v216    # "_result":I
    :cond_61
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/content/Intent;
    goto :goto_61

    .line 1692
    .end local v9    # "_arg2":Landroid/content/Intent;
    .restart local v10    # "_arg3":Ljava/lang/String;
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    .restart local v12    # "_arg5":Ljava/lang/String;
    .restart local v13    # "_arg6":I
    .restart local v14    # "_arg7":I
    :cond_62
    const/16 v119, 0x0

    .local v119, "_arg8":Landroid/content/res/Configuration;
    goto :goto_62

    .line 1699
    .end local v119    # "_arg8":Landroid/content/res/Configuration;
    :cond_63
    const/16 v16, 0x0

    .restart local v16    # "_arg9":Landroid/os/Bundle;
    goto :goto_63

    .line 1710
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v16    # "_arg9":Landroid/os/Bundle;
    :sswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1711
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v245

    .line 1712
    .local v245, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    move-object/from16 v0, p3

    move-object/from16 v1, v245

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1714
    const/4 v6, 0x1

    return v6

    .line 1718
    .end local v245    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    .line 1720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    const/4 v6, 0x1

    return v6

    .line 1725
    :sswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1729
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1731
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64

    .line 1732
    sget-object v6, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v208

    check-cast v208, Landroid/os/StrictMode$ViolationInfo;

    .line 1737
    :goto_64
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v208

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    const/4 v6, 0x1

    return v6

    .line 1735
    :cond_64
    const/16 v208, 0x0

    .local v208, "_arg2":Landroid/os/StrictMode$ViolationInfo;
    goto :goto_64

    .line 1743
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_arg1":I
    .end local v208    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    :sswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1746
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v247

    .line 1747
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    if-eqz v247, :cond_65

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1749
    const/4 v6, 0x1

    return v6

    .line 1748
    :cond_65
    const/4 v6, 0x0

    goto :goto_65

    .line 1753
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1757
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    const/16 v200, 0x1

    .line 1758
    .restart local v200    # "_arg1":Z
    :goto_66
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    const/4 v6, 0x1

    return v6

    .line 1757
    .end local v200    # "_arg1":Z
    :cond_66
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_66

    .line 1764
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    :sswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v247

    .line 1766
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    if-eqz v247, :cond_67

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    const/4 v6, 0x1

    return v6

    .line 1767
    :cond_67
    const/4 v6, 0x0

    goto :goto_67

    .line 1772
    .end local v247    # "_result":Z
    :sswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1776
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1778
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1780
    .restart local v27    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1782
    .restart local v70    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "_arg4":Ljava/lang/String;
    move-object/from16 v103, p0

    move/from16 v104, v78

    move/from16 v105, v40

    move-object/from16 v106, v27

    move/from16 v107, v70

    move-object/from16 v108, v22

    .line 1783
    invoke-virtual/range {v103 .. v108}, Landroid/app/IActivityManager$Stub;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    .line 1784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    const/4 v6, 0x1

    return v6

    .line 1789
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v70    # "_arg3":I
    .end local v78    # "_arg0":I
    :sswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    .line 1792
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/net/Uri;

    .line 1798
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1799
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v239

    .line 1800
    .restart local v239    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    move-object/from16 v0, p3

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1802
    const/4 v6, 0x1

    return v6

    .line 1795
    .end local v40    # "_arg1":I
    .end local v239    # "_result":Ljava/lang/String;
    :cond_68
    const/16 v67, 0x0

    .restart local v67    # "_arg0":Landroid/net/Uri;
    goto :goto_68

    .line 1806
    .end local v67    # "_arg0":Landroid/net/Uri;
    :sswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1809
    .restart local v94    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v237

    .line 1810
    .restart local v237    # "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1811
    move-object/from16 v0, p3

    move-object/from16 v1, v237

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1812
    const/4 v6, 0x1

    return v6

    .line 1816
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v237    # "_result":Landroid/os/IBinder;
    :sswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1820
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1822
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1824
    .restart local v27    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    .line 1825
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/net/Uri;

    .line 1831
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1833
    .restart local v29    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1835
    .restart local v23    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg6":I
    move-object/from16 v110, p0

    move-object/from16 v111, v39

    move/from16 v112, v40

    move-object/from16 v113, v27

    move/from16 v115, v29

    move/from16 v116, v23

    move/from16 v117, v13

    .line 1836
    invoke-virtual/range {v110 .. v117}, Landroid/app/IActivityManager$Stub;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 1837
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    const/4 v6, 0x1

    return v6

    .line 1828
    .end local v13    # "_arg6":I
    .end local v23    # "_arg5":I
    .end local v29    # "_arg4":I
    :cond_69
    const/16 v114, 0x0

    .local v114, "_arg3":Landroid/net/Uri;
    goto :goto_69

    .line 1842
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_arg1":I
    .end local v114    # "_arg3":Landroid/net/Uri;
    :sswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1846
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    .line 1847
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v197

    check-cast v197, Landroid/net/Uri;

    .line 1853
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1855
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1856
    .restart local v70    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v197

    move/from16 v3, v60

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 1857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    const/4 v6, 0x1

    return v6

    .line 1850
    .end local v60    # "_arg2":I
    .end local v70    # "_arg3":I
    :cond_6a
    const/16 v197, 0x0

    .local v197, "_arg1":Landroid/net/Uri;
    goto :goto_6a

    .line 1862
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v197    # "_arg1":Landroid/net/Uri;
    :sswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1866
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1868
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6b

    .line 1869
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/net/Uri;

    .line 1875
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1877
    .restart local v70    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .restart local v29    # "_arg4":I
    move-object/from16 v103, p0

    move/from16 v104, v78

    move-object/from16 v105, v8

    move-object/from16 v106, v76

    move/from16 v107, v70

    move/from16 v108, v29

    .line 1878
    invoke-virtual/range {v103 .. v108}, Landroid/app/IActivityManager$Stub;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v216

    .line 1879
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1880
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1881
    const/4 v6, 0x1

    return v6

    .line 1872
    .end local v29    # "_arg4":I
    .end local v70    # "_arg3":I
    .end local v216    # "_result":I
    :cond_6b
    const/16 v76, 0x0

    .restart local v76    # "_arg2":Landroid/net/Uri;
    goto :goto_6b

    .line 1885
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v76    # "_arg2":Landroid/net/Uri;
    .end local v78    # "_arg0":I
    :sswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1889
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1891
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    const/16 v96, 0x1

    .line 1893
    .restart local v96    # "_arg2":Z
    :goto_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    const/16 v48, 0x1

    .line 1895
    .restart local v48    # "_arg3":Z
    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6e

    const/16 v43, 0x1

    .line 1897
    .restart local v43    # "_arg4":Z
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1899
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f

    .line 1900
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v127

    check-cast v127, Landroid/os/ParcelFileDescriptor;

    :goto_6f
    move-object/from16 v120, p0

    move-object/from16 v121, v94

    move/from16 v122, v40

    move/from16 v123, v96

    move/from16 v124, v48

    move/from16 v125, v43

    move-object/from16 v126, v12

    .line 1905
    invoke-virtual/range {v120 .. v127}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v247

    .line 1906
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1907
    if-eqz v247, :cond_70

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    const/4 v6, 0x1

    return v6

    .line 1891
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v43    # "_arg4":Z
    .end local v48    # "_arg3":Z
    .end local v96    # "_arg2":Z
    .end local v247    # "_result":Z
    :cond_6c
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_6c

    .line 1893
    :cond_6d
    const/16 v48, 0x0

    .restart local v48    # "_arg3":Z
    goto :goto_6d

    .line 1895
    :cond_6e
    const/16 v43, 0x0

    .restart local v43    # "_arg4":Z
    goto :goto_6e

    .line 1903
    .restart local v12    # "_arg5":Ljava/lang/String;
    :cond_6f
    const/16 v127, 0x0

    .local v127, "_arg6":Landroid/os/ParcelFileDescriptor;
    goto :goto_6f

    .line 1907
    .end local v127    # "_arg6":Landroid/os/ParcelFileDescriptor;
    .restart local v247    # "_result":Z
    :cond_70
    const/4 v6, 0x0

    goto :goto_70

    .line 1912
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v43    # "_arg4":Z
    .end local v48    # "_arg3":Z
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v96    # "_arg2":Z
    .end local v247    # "_result":Z
    :sswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1916
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1918
    .restart local v8    # "_arg1":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v131

    check-cast v131, [Landroid/content/Intent;

    .line 1920
    .local v131, "_arg2":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v132

    .line 1922
    .local v132, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1924
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    .line 1925
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v134

    check-cast v134, Landroid/os/Bundle;

    .line 1931
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg6":I
    move-object/from16 v128, p0

    move-object/from16 v129, v7

    move-object/from16 v130, v8

    move-object/from16 v133, v11

    move/from16 v135, v13

    .line 1932
    invoke-virtual/range {v128 .. v135}, Landroid/app/IActivityManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v216

    .line 1933
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    const/4 v6, 0x1

    return v6

    .line 1928
    .end local v13    # "_arg6":I
    .end local v216    # "_result":I
    :cond_71
    const/16 v134, 0x0

    .local v134, "_arg5":Landroid/os/Bundle;
    goto :goto_71

    .line 1939
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v131    # "_arg2":[Landroid/content/Intent;
    .end local v132    # "_arg3":[Ljava/lang/String;
    .end local v134    # "_arg5":Landroid/os/Bundle;
    :sswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1943
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1944
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v247

    .line 1945
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1946
    if-eqz v247, :cond_72

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    const/4 v6, 0x1

    return v6

    .line 1946
    :cond_72
    const/4 v6, 0x0

    goto :goto_72

    .line 1951
    .end local v40    # "_arg1":I
    .end local v78    # "_arg0":I
    .end local v247    # "_result":Z
    :sswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 1954
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activitySlept(Landroid/os/IBinder;)V

    .line 1955
    const/4 v6, 0x1

    return v6

    .line 1959
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1960
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v216

    .line 1961
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1963
    const/4 v6, 0x1

    return v6

    .line 1967
    .end local v216    # "_result":I
    :sswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1970
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setFrontActivityScreenCompatMode(I)V

    .line 1971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    const/4 v6, 0x1

    return v6

    .line 1976
    .end local v78    # "_arg0":I
    :sswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1979
    .restart local v94    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v216

    .line 1980
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1981
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    const/4 v6, 0x1

    return v6

    .line 1986
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v216    # "_result":I
    :sswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1990
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1991
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    const/4 v6, 0x1

    return v6

    .line 1997
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2000
    .restart local v94    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v247

    .line 2001
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    if-eqz v247, :cond_73

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2003
    const/4 v6, 0x1

    return v6

    .line 2002
    :cond_73
    const/4 v6, 0x0

    goto :goto_73

    .line 2007
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v247    # "_result":Z
    :sswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2011
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_74

    const/16 v200, 0x1

    .line 2012
    .restart local v200    # "_arg1":Z
    :goto_74
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    const/4 v6, 0x1

    return v6

    .line 2011
    .end local v200    # "_arg1":Z
    :cond_74
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_74

    .line 2018
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v200    # "_arg1":Z
    :sswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2021
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v247

    .line 2022
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2023
    if-eqz v247, :cond_75

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    const/4 v6, 0x1

    return v6

    .line 2023
    :cond_75
    const/4 v6, 0x0

    goto :goto_75

    .line 2028
    .end local v78    # "_arg0":I
    .end local v247    # "_result":Z
    :sswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2031
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setFocusedTask(I)V

    .line 2032
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2033
    const/4 v6, 0x1

    return v6

    .line 2037
    .end local v78    # "_arg0":I
    :sswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2040
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v247

    .line 2041
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    if-eqz v247, :cond_76

    const/4 v6, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2043
    const/4 v6, 0x1

    return v6

    .line 2042
    :cond_76
    const/4 v6, 0x0

    goto :goto_76

    .line 2047
    .end local v78    # "_arg0":I
    .end local v247    # "_result":Z
    :sswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v176

    .line 2050
    .local v176, "_arg0":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    const/4 v6, 0x1

    return v6

    .line 2056
    .end local v176    # "_arg0":Landroid/app/IProcessObserver;
    :sswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v176

    .line 2059
    .restart local v176    # "_arg0":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2061
    const/4 v6, 0x1

    return v6

    .line 2065
    .end local v176    # "_arg0":Landroid/app/IProcessObserver;
    :sswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 2068
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v247

    .line 2069
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2070
    if-eqz v247, :cond_77

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2071
    const/4 v6, 0x1

    return v6

    .line 2070
    :cond_77
    const/4 v6, 0x0

    goto :goto_77

    .line 2075
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    .end local v247    # "_result":Z
    :sswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_78

    .line 2078
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v183

    check-cast v183, Landroid/content/res/Configuration;

    .line 2083
    :goto_78
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2085
    const/4 v6, 0x1

    return v6

    .line 2081
    :cond_78
    const/16 v183, 0x0

    .restart local v183    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_78

    .line 2089
    .end local v183    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v191

    .line 2092
    .restart local v191    # "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v249

    .line 2093
    .local v249, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2094
    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2095
    const/4 v6, 0x1

    return v6

    .line 2099
    .end local v191    # "_arg0":[I
    .end local v249    # "_result":[J
    :sswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_79

    .line 2102
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v188

    check-cast v188, Ljava/lang/CharSequence;

    .line 2108
    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7a

    const/16 v200, 0x1

    .line 2109
    .restart local v200    # "_arg1":Z
    :goto_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v188

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2111
    const/4 v6, 0x1

    return v6

    .line 2105
    .end local v200    # "_arg1":Z
    :cond_79
    const/16 v188, 0x0

    .local v188, "_arg0":Ljava/lang/CharSequence;
    goto :goto_79

    .line 2108
    .end local v188    # "_arg0":Ljava/lang/CharSequence;
    :cond_7a
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_7a

    .line 2115
    .end local v200    # "_arg1":Z
    :sswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2116
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    .line 2117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2118
    const/4 v6, 0x1

    return v6

    .line 2122
    :sswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2126
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2128
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    .line 2129
    .restart local v80    # "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move-object/from16 v3, v80

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/ContentProviderHolder;

    move-result-object v223

    .line 2130
    .restart local v223    # "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2131
    if-eqz v223, :cond_7b

    .line 2132
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2133
    const/4 v6, 0x1

    move-object/from16 v0, v223

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2138
    :goto_7b
    const/4 v6, 0x1

    return v6

    .line 2136
    :cond_7b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7b

    .line 2142
    .end local v40    # "_arg1":I
    .end local v80    # "_arg2":Landroid/os/IBinder;
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v223    # "_result":Landroid/app/ContentProviderHolder;
    :sswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2146
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    .line 2147
    .restart local v51    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2149
    const/4 v6, 0x1

    return v6

    .line 2153
    .end local v51    # "_arg1":Landroid/os/IBinder;
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2155
    new-instance v174, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v174 .. v174}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 2156
    .local v174, "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 2157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2158
    if-eqz v174, :cond_7c

    .line 2159
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2160
    const/4 v6, 0x1

    move-object/from16 v0, v174

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2165
    :goto_7c
    const/4 v6, 0x1

    return v6

    .line 2163
    :cond_7c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7c

    .line 2169
    .end local v174    # "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2172
    .restart local v94    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v247

    .line 2173
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2174
    if-eqz v247, :cond_7d

    const/4 v6, 0x1

    :goto_7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2175
    const/4 v6, 0x1

    return v6

    .line 2174
    :cond_7d
    const/4 v6, 0x0

    goto :goto_7d

    .line 2179
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v247    # "_result":Z
    :sswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2180
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v231

    .line 2181
    .local v231, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2182
    if-eqz v231, :cond_7e

    .line 2183
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    const/4 v6, 0x1

    move-object/from16 v0, v231

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2189
    :goto_7e
    const/4 v6, 0x1

    return v6

    .line 2187
    :cond_7e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7e

    .line 2193
    .end local v231    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2197
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2198
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v247

    .line 2199
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2200
    if-eqz v247, :cond_7f

    const/4 v6, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2201
    const/4 v6, 0x1

    return v6

    .line 2200
    :cond_7f
    const/4 v6, 0x0

    goto :goto_7f

    .line 2205
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2209
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_80

    .line 2210
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 2216
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 2218
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    .line 2219
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    .line 2224
    :goto_81
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move/from16 v3, v60

    move-object/from16 v4, v102

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v247

    .line 2225
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2226
    if-eqz v247, :cond_82

    const/4 v6, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2227
    const/4 v6, 0x1

    return v6

    .line 2213
    .end local v60    # "_arg2":I
    .end local v247    # "_result":Z
    :cond_80
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/content/Intent;
    goto :goto_80

    .line 2222
    .end local v26    # "_arg1":Landroid/content/Intent;
    .restart local v60    # "_arg2":I
    :cond_81
    const/16 v102, 0x0

    .restart local v102    # "_arg3":Landroid/content/Intent;
    goto :goto_81

    .line 2226
    .end local v102    # "_arg3":Landroid/content/Intent;
    .restart local v247    # "_result":Z
    :cond_82
    const/4 v6, 0x0

    goto :goto_82

    .line 2231
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v60    # "_arg2":I
    .end local v247    # "_result":Z
    :sswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_83

    const/16 v190, 0x1

    .line 2235
    .restart local v190    # "_arg0":Z
    :goto_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2236
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v190

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setLockScreenShown(ZI)V

    .line 2237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2238
    const/4 v6, 0x1

    return v6

    .line 2233
    .end local v40    # "_arg1":I
    .end local v190    # "_arg0":Z
    :cond_83
    const/16 v190, 0x0

    .restart local v190    # "_arg0":Z
    goto :goto_83

    .line 2242
    .end local v190    # "_arg0":Z
    :sswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2245
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v247

    .line 2246
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2247
    if-eqz v247, :cond_84

    const/4 v6, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2248
    const/4 v6, 0x1

    return v6

    .line 2247
    :cond_84
    const/4 v6, 0x0

    goto :goto_84

    .line 2252
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2255
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v216

    .line 2256
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2257
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2258
    const/4 v6, 0x1

    return v6

    .line 2262
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v216    # "_result":I
    :sswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2265
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 2266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2267
    const/4 v6, 0x1

    return v6

    .line 2271
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 2274
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v247

    .line 2275
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2276
    if-eqz v247, :cond_85

    const/4 v6, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2277
    const/4 v6, 0x1

    return v6

    .line 2276
    :cond_85
    const/4 v6, 0x0

    goto :goto_85

    .line 2281
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    .end local v247    # "_result":Z
    :sswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 2285
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2287
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_86

    .line 2288
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2294
    :goto_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2296
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2298
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2300
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2302
    .restart local v13    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2304
    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_87

    .line 2305
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 2311
    :goto_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_88

    .line 2312
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 2318
    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg10":I
    move-object/from16 v6, p0

    .line 2319
    invoke-virtual/range {v6 .. v17}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v216

    .line 2320
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2321
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    const/4 v6, 0x1

    return v6

    .line 2291
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v17    # "_arg10":I
    .end local v216    # "_result":I
    :cond_86
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/content/Intent;
    goto :goto_86

    .line 2308
    .end local v9    # "_arg2":Landroid/content/Intent;
    .restart local v10    # "_arg3":Ljava/lang/String;
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    .restart local v12    # "_arg5":Ljava/lang/String;
    .restart local v13    # "_arg6":I
    .restart local v14    # "_arg7":I
    :cond_87
    const/4 v15, 0x0

    .restart local v15    # "_arg8":Landroid/app/ProfilerInfo;
    goto :goto_87

    .line 2315
    .end local v15    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_88
    const/16 v16, 0x0

    .restart local v16    # "_arg9":Landroid/os/Bundle;
    goto :goto_88

    .line 2326
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v16    # "_arg9":Landroid/os/Bundle;
    :sswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2330
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    const/16 v200, 0x1

    .line 2332
    .restart local v200    # "_arg1":Z
    :goto_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v205

    .line 2333
    .local v205, "_arg2":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v200

    move-object/from16 v3, v205

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v216

    .line 2334
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2336
    const/4 v6, 0x1

    return v6

    .line 2330
    .end local v200    # "_arg1":Z
    .end local v205    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v216    # "_result":I
    :cond_89
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_89

    .line 2340
    .end local v78    # "_arg0":I
    .end local v200    # "_arg1":Z
    :sswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v180

    .line 2344
    .local v180, "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2345
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 2346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2347
    const/4 v6, 0x1

    return v6

    .line 2351
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v180    # "_arg0":Landroid/app/IUserSwitchObserver;
    :sswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v180

    .line 2354
    .restart local v180    # "_arg0":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2356
    const/4 v6, 0x1

    return v6

    .line 2360
    .end local v180    # "_arg0":Landroid/app/IUserSwitchObserver;
    :sswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2361
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v248

    .line 2362
    .local v248, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2363
    move-object/from16 v0, p3

    move-object/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2364
    const/4 v6, 0x1

    return v6

    .line 2368
    .end local v248    # "_result":[I
    :sswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2371
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    .line 2372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2373
    const/4 v6, 0x1

    return v6

    .line 2377
    .end local v78    # "_arg0":I
    :sswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2381
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2382
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2384
    const/4 v6, 0x1

    return v6

    .line 2388
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2392
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8a

    const/16 v200, 0x1

    .line 2394
    .restart local v200    # "_arg1":Z
    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 2395
    .restart local v27    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v200

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v218

    .line 2396
    .local v218, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2397
    move-object/from16 v0, p3

    move-wide/from16 v1, v218

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2398
    const/4 v6, 0x1

    return v6

    .line 2392
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v200    # "_arg1":Z
    .end local v218    # "_result":J
    :cond_8a
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_8a

    .line 2402
    .end local v78    # "_arg0":I
    .end local v200    # "_arg1":Z
    :sswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2403
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->clearPendingBackup()V

    .line 2404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2405
    const/4 v6, 0x1

    return v6

    .line 2409
    :sswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 2412
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v228

    .line 2413
    .restart local v228    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2414
    if-eqz v228, :cond_8b

    .line 2415
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2416
    const/4 v6, 0x1

    move-object/from16 v0, v228

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2421
    :goto_8b
    const/4 v6, 0x1

    return v6

    .line 2419
    :cond_8b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b

    .line 2425
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    .end local v228    # "_result":Landroid/content/Intent;
    :sswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2428
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v236

    .line 2429
    .local v236, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2430
    if-eqz v236, :cond_8c

    .line 2431
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2432
    const/4 v6, 0x1

    move-object/from16 v0, v236

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2437
    :goto_8c
    const/4 v6, 0x1

    return v6

    .line 2435
    :cond_8c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8c

    .line 2441
    .end local v78    # "_arg0":I
    .end local v236    # "_result":Landroid/os/Bundle;
    :sswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2445
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8d

    .line 2446
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    .line 2452
    :goto_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8e

    .line 2453
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/app/assist/AssistStructure;

    .line 2459
    :goto_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8f

    .line 2460
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/app/assist/AssistContent;

    .line 2466
    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_90

    .line 2467
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/net/Uri;

    :goto_90
    move-object/from16 v103, p0

    move-object/from16 v104, v39

    .line 2472
    invoke-virtual/range {v103 .. v108}, Landroid/app/IActivityManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2474
    const/4 v6, 0x1

    return v6

    .line 2449
    :cond_8d
    const/16 v105, 0x0

    .restart local v105    # "_arg1":Landroid/os/Bundle;
    goto :goto_8d

    .line 2456
    .end local v105    # "_arg1":Landroid/os/Bundle;
    :cond_8e
    const/16 v106, 0x0

    .local v106, "_arg2":Landroid/app/assist/AssistStructure;
    goto :goto_8e

    .line 2463
    .end local v106    # "_arg2":Landroid/app/assist/AssistStructure;
    :cond_8f
    const/16 v107, 0x0

    .local v107, "_arg3":Landroid/app/assist/AssistContent;
    goto :goto_8f

    .line 2470
    .end local v107    # "_arg3":Landroid/app/assist/AssistContent;
    :cond_90
    const/16 v108, 0x0

    .local v108, "_arg4":Landroid/net/Uri;
    goto :goto_90

    .line 2478
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v108    # "_arg4":Landroid/net/Uri;
    :sswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2481
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v239

    .line 2482
    .restart local v239    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2483
    move-object/from16 v0, p3

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2484
    const/4 v6, 0x1

    return v6

    .line 2488
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v239    # "_result":Ljava/lang/String;
    :sswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2492
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2494
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 2495
    .restart local v27    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    .line 2496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    const/4 v6, 0x1

    return v6

    .line 2501
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v78    # "_arg0":I
    :sswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_91

    const/16 v190, 0x1

    .line 2504
    .restart local v190    # "_arg0":Z
    :goto_91
    move-object/from16 v0, p0

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    .line 2505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2506
    const/4 v6, 0x1

    return v6

    .line 2503
    .end local v190    # "_arg0":Z
    :cond_91
    const/16 v190, 0x0

    .restart local v190    # "_arg0":Z
    goto :goto_91

    .line 2510
    .end local v190    # "_arg0":Z
    :sswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2514
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_92

    const/16 v200, 0x1

    .line 2515
    .restart local v200    # "_arg1":Z
    :goto_92
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    .line 2516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2517
    const/4 v6, 0x1

    return v6

    .line 2514
    .end local v200    # "_arg1":Z
    :cond_92
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_92

    .line 2521
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    :sswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2525
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2527
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_93

    const/16 v96, 0x1

    .line 2528
    .restart local v96    # "_arg2":Z
    :goto_93
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->moveTaskToStack(IIZ)V

    .line 2529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    const/4 v6, 0x1

    return v6

    .line 2527
    .end local v96    # "_arg2":Z
    :cond_93
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_93

    .line 2534
    .end local v40    # "_arg1":I
    .end local v78    # "_arg0":I
    .end local v96    # "_arg2":Z
    :sswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2538
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_94

    .line 2539
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    .line 2545
    :goto_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_95

    const/16 v96, 0x1

    .line 2547
    .restart local v96    # "_arg2":Z
    :goto_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_96

    const/16 v48, 0x1

    .line 2549
    .restart local v48    # "_arg3":Z
    :goto_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_97

    const/16 v43, 0x1

    .line 2551
    .restart local v43    # "_arg4":Z
    :goto_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg5":I
    move-object/from16 v44, p0

    move/from16 v45, v78

    move/from16 v47, v96

    move/from16 v49, v43

    move/from16 v50, v23

    .line 2552
    invoke-virtual/range {v44 .. v50}, Landroid/app/IActivityManager$Stub;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 2553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2554
    const/4 v6, 0x1

    return v6

    .line 2542
    .end local v23    # "_arg5":I
    .end local v43    # "_arg4":Z
    .end local v48    # "_arg3":Z
    .end local v96    # "_arg2":Z
    :cond_94
    const/16 v46, 0x0

    .local v46, "_arg1":Landroid/graphics/Rect;
    goto :goto_94

    .line 2545
    .end local v46    # "_arg1":Landroid/graphics/Rect;
    :cond_95
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_95

    .line 2547
    :cond_96
    const/16 v48, 0x0

    .restart local v48    # "_arg3":Z
    goto :goto_96

    .line 2549
    :cond_97
    const/16 v43, 0x0

    .restart local v43    # "_arg4":Z
    goto :goto_97

    .line 2558
    .end local v43    # "_arg4":Z
    .end local v48    # "_arg3":Z
    .end local v78    # "_arg0":I
    .end local v96    # "_arg2":Z
    :sswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2559
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAllStackInfos()Ljava/util/List;

    move-result-object v244

    .line 2560
    .local v244, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2561
    move-object/from16 v0, p3

    move-object/from16 v1, v244

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2562
    const/4 v6, 0x1

    return v6

    .line 2566
    .end local v244    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :sswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2569
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setFocusedStack(I)V

    .line 2570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2571
    const/4 v6, 0x1

    return v6

    .line 2575
    .end local v78    # "_arg0":I
    :sswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2578
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v217

    .line 2579
    .local v217, "_result":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2580
    if-eqz v217, :cond_98

    .line 2581
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2582
    const/4 v6, 0x1

    move-object/from16 v0, v217

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2587
    :goto_98
    const/4 v6, 0x1

    return v6

    .line 2585
    :cond_98
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_98

    .line 2591
    .end local v78    # "_arg0":I
    .end local v217    # "_result":Landroid/app/ActivityManager$StackInfo;
    :sswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2594
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v247

    .line 2595
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2596
    if-eqz v247, :cond_99

    const/4 v6, 0x1

    :goto_99
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2597
    const/4 v6, 0x1

    return v6

    .line 2596
    :cond_99
    const/4 v6, 0x0

    goto :goto_99

    .line 2601
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2605
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9a

    .line 2606
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    .line 2611
    :goto_9a
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v247

    .line 2612
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    if-eqz v247, :cond_9b

    const/4 v6, 0x1

    :goto_9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    const/4 v6, 0x1

    return v6

    .line 2609
    .end local v247    # "_result":Z
    :cond_9a
    const/16 v105, 0x0

    .restart local v105    # "_arg1":Landroid/os/Bundle;
    goto :goto_9a

    .line 2613
    .end local v105    # "_arg1":Landroid/os/Bundle;
    .restart local v247    # "_result":Z
    :cond_9b
    const/4 v6, 0x0

    goto :goto_9b

    .line 2618
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2621
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2623
    const/4 v6, 0x1

    return v6

    .line 2627
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2631
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9c

    const/16 v200, 0x1

    .line 2632
    .restart local v200    # "_arg1":Z
    :goto_9c
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 2633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2634
    const/4 v6, 0x1

    return v6

    .line 2631
    .end local v200    # "_arg1":Z
    :cond_9c
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_9c

    .line 2638
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    :sswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2639
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->restart()V

    .line 2640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2641
    const/4 v6, 0x1

    return v6

    .line 2645
    :sswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2646
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    .line 2647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2648
    const/4 v6, 0x1

    return v6

    .line 2652
    :sswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9d

    .line 2655
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/net/Uri;

    .line 2661
    :goto_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2663
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 2664
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 2665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2666
    const/4 v6, 0x1

    return v6

    .line 2658
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    :cond_9d
    const/16 v67, 0x0

    .restart local v67    # "_arg0":Landroid/net/Uri;
    goto :goto_9d

    .line 2670
    .end local v67    # "_arg0":Landroid/net/Uri;
    :sswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9e

    .line 2673
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/net/Uri;

    .line 2679
    :goto_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2681
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 2682
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 2683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2684
    const/4 v6, 0x1

    return v6

    .line 2676
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    :cond_9e
    const/16 v67, 0x0

    .restart local v67    # "_arg0":Landroid/net/Uri;
    goto :goto_9e

    .line 2688
    .end local v67    # "_arg0":Landroid/net/Uri;
    :sswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2692
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9f

    const/16 v200, 0x1

    .line 2693
    .restart local v200    # "_arg1":Z
    :goto_9f
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v230

    .line 2694
    .restart local v230    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2695
    if-eqz v230, :cond_a0

    .line 2696
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2697
    const/4 v6, 0x1

    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2702
    :goto_a0
    const/4 v6, 0x1

    return v6

    .line 2692
    .end local v200    # "_arg1":Z
    .end local v230    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_9f
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_9f

    .line 2700
    .restart local v230    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_a0
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a0

    .line 2706
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v200    # "_arg1":Z
    .end local v230    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2709
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 2710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2711
    const/4 v6, 0x1

    return v6

    .line 2715
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2718
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v235

    .line 2719
    .local v235, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2720
    if-eqz v235, :cond_a1

    .line 2721
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2722
    const/4 v6, 0x1

    move-object/from16 v0, v235

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2727
    :goto_a1
    const/4 v6, 0x1

    return v6

    .line 2725
    :cond_a1
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a1

    .line 2731
    .end local v78    # "_arg0":I
    .end local v235    # "_result":Landroid/graphics/Rect;
    :sswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2734
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v216

    .line 2735
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2736
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    const/4 v6, 0x1

    return v6

    .line 2741
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v216    # "_result":I
    :sswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2745
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2747
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 2748
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v247

    .line 2749
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2750
    if-eqz v247, :cond_a2

    const/4 v6, 0x1

    :goto_a2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    const/4 v6, 0x1

    return v6

    .line 2750
    :cond_a2
    const/4 v6, 0x0

    goto :goto_a2

    .line 2755
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v247    # "_result":Z
    :sswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 2759
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2760
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v239

    .line 2761
    .restart local v239    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2762
    move-object/from16 v0, p3

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2763
    const/4 v6, 0x1

    return v6

    .line 2767
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    .end local v239    # "_result":Ljava/lang/String;
    :sswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2770
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v247

    .line 2771
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    if-eqz v247, :cond_a3

    const/4 v6, 0x1

    :goto_a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    const/4 v6, 0x1

    return v6

    .line 2772
    :cond_a3
    const/4 v6, 0x0

    goto :goto_a3

    .line 2777
    .end local v78    # "_arg0":I
    .end local v247    # "_result":Z
    :sswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2780
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startLockTaskModeById(I)V

    .line 2781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2782
    const/4 v6, 0x1

    return v6

    .line 2786
    .end local v78    # "_arg0":I
    :sswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2789
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 2790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2791
    const/4 v6, 0x1

    return v6

    .line 2795
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2796
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopLockTaskMode()V

    .line 2797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2798
    const/4 v6, 0x1

    return v6

    .line 2802
    :sswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2803
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v247

    .line 2804
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2805
    if-eqz v247, :cond_a4

    const/4 v6, 0x1

    :goto_a4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2806
    const/4 v6, 0x1

    return v6

    .line 2805
    :cond_a4
    const/4 v6, 0x0

    goto :goto_a4

    .line 2810
    .end local v247    # "_result":Z
    :sswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2814
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a5

    .line 2815
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v192

    check-cast v192, Landroid/app/ActivityManager$TaskDescription;

    .line 2820
    :goto_a5
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v192

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2822
    const/4 v6, 0x1

    return v6

    .line 2818
    :cond_a5
    const/16 v192, 0x0

    .local v192, "_arg1":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_a5

    .line 2826
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v192    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2830
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2832
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 2834
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a6

    .line 2835
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    .line 2841
    :goto_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 2843
    .restart local v22    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v141

    .line 2845
    .local v141, "_arg5":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v142

    .line 2847
    .local v142, "_arg6":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2849
    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a7

    .line 2850
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 2856
    :goto_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a8

    .line 2857
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 2863
    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg10":I
    move-object/from16 v135, p0

    move-object/from16 v136, v94

    move/from16 v137, v40

    move/from16 v138, v60

    move-object/from16 v139, v102

    move-object/from16 v140, v22

    move/from16 v143, v14

    move-object/from16 v144, v15

    move-object/from16 v145, v16

    move/from16 v146, v17

    .line 2864
    invoke-virtual/range {v135 .. v146}, Landroid/app/IActivityManager$Stub;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v216

    .line 2865
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2866
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2867
    const/4 v6, 0x1

    return v6

    .line 2838
    .end local v14    # "_arg7":I
    .end local v17    # "_arg10":I
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v141    # "_arg5":Landroid/service/voice/IVoiceInteractionSession;
    .end local v142    # "_arg6":Lcom/android/internal/app/IVoiceInteractor;
    .end local v216    # "_result":I
    :cond_a6
    const/16 v102, 0x0

    .restart local v102    # "_arg3":Landroid/content/Intent;
    goto :goto_a6

    .line 2853
    .end local v102    # "_arg3":Landroid/content/Intent;
    .restart local v14    # "_arg7":I
    .restart local v22    # "_arg4":Ljava/lang/String;
    .restart local v141    # "_arg5":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v142    # "_arg6":Lcom/android/internal/app/IVoiceInteractor;
    :cond_a7
    const/4 v15, 0x0

    .restart local v15    # "_arg8":Landroid/app/ProfilerInfo;
    goto :goto_a7

    .line 2860
    .end local v15    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_a8
    const/16 v16, 0x0

    .restart local v16    # "_arg9":Landroid/os/Bundle;
    goto :goto_a8

    .line 2871
    .end local v14    # "_arg7":I
    .end local v16    # "_arg9":Landroid/os/Bundle;
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v141    # "_arg5":Landroid/service/voice/IVoiceInteractionSession;
    .end local v142    # "_arg6":Lcom/android/internal/app/IVoiceInteractor;
    :sswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2875
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2877
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 2879
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a9

    .line 2880
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    .line 2886
    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 2888
    .restart local v22    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_aa

    .line 2889
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v134

    check-cast v134, Landroid/os/Bundle;

    .line 2895
    :goto_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg6":I
    move-object/from16 v143, p0

    move-object/from16 v144, v94

    move/from16 v145, v40

    move/from16 v146, v60

    move-object/from16 v147, v102

    move-object/from16 v148, v22

    move-object/from16 v149, v134

    move/from16 v150, v13

    .line 2896
    invoke-virtual/range {v143 .. v150}, Landroid/app/IActivityManager$Stub;->startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v216

    .line 2897
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2898
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2899
    const/4 v6, 0x1

    return v6

    .line 2883
    .end local v13    # "_arg6":I
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v216    # "_result":I
    :cond_a9
    const/16 v102, 0x0

    .restart local v102    # "_arg3":Landroid/content/Intent;
    goto :goto_a9

    .line 2892
    .end local v102    # "_arg3":Landroid/content/Intent;
    .restart local v22    # "_arg4":Ljava/lang/String;
    :cond_aa
    const/16 v134, 0x0

    .restart local v134    # "_arg5":Landroid/os/Bundle;
    goto :goto_aa

    .line 2903
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v134    # "_arg5":Landroid/os/Bundle;
    :sswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2906
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v236

    .line 2907
    .restart local v236    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2908
    if-eqz v236, :cond_ab

    .line 2909
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2910
    const/4 v6, 0x1

    move-object/from16 v0, v236

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2915
    :goto_ab
    const/4 v6, 0x1

    return v6

    .line 2913
    :cond_ab
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ab

    .line 2919
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v236    # "_result":Landroid/os/Bundle;
    :sswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 2922
    .restart local v94    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v246

    .line 2923
    .local v246, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2924
    move-object/from16 v0, p3

    move-object/from16 v1, v246

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 2925
    const/4 v6, 0x1

    return v6

    .line 2929
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v246    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2932
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    .line 2933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    const/4 v6, 0x1

    return v6

    .line 2938
    .end local v78    # "_arg0":I
    :sswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2939
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopSystemLockTaskMode()V

    .line 2940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    const/4 v6, 0x1

    return v6

    .line 2945
    :sswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v186

    .line 2948
    .local v186, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v186

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2950
    const/4 v6, 0x1

    return v6

    .line 2954
    .end local v186    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2957
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v247

    .line 2958
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2959
    if-eqz v247, :cond_ac

    const/4 v6, 0x1

    :goto_ac
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2960
    const/4 v6, 0x1

    return v6

    .line 2959
    :cond_ac
    const/4 v6, 0x0

    goto :goto_ac

    .line 2964
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2967
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2969
    const/4 v6, 0x1

    return v6

    .line 2973
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 2977
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ad

    .line 2978
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    .line 2983
    :goto_ad
    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v216

    .line 2984
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2985
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2986
    const/4 v6, 0x1

    return v6

    .line 2981
    .end local v216    # "_result":I
    :cond_ad
    const/16 v105, 0x0

    .restart local v105    # "_arg1":Landroid/os/Bundle;
    goto :goto_ad

    .line 2990
    .end local v78    # "_arg0":I
    .end local v105    # "_arg1":Landroid/os/Bundle;
    :sswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 2993
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2995
    const/4 v6, 0x1

    return v6

    .line 2999
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 3003
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3005
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ae

    .line 3006
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 3012
    :goto_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3014
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 3016
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3018
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 3020
    .restart local v13    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3022
    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_af

    .line 3023
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 3029
    :goto_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b0

    .line 3030
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 3036
    :goto_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b1

    const/16 v35, 0x1

    .line 3038
    .restart local v35    # "_arg10":Z
    :goto_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v155

    .local v155, "_arg11":I
    move-object/from16 v143, p0

    move-object/from16 v144, v7

    move-object/from16 v145, v8

    move-object/from16 v146, v9

    move-object/from16 v147, v10

    move-object/from16 v148, v11

    move-object/from16 v149, v12

    move/from16 v150, v13

    move/from16 v151, v14

    move-object/from16 v152, v15

    move-object/from16 v153, v16

    move/from16 v154, v35

    .line 3039
    invoke-virtual/range {v143 .. v155}, Landroid/app/IActivityManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v216

    .line 3040
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3041
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3042
    const/4 v6, 0x1

    return v6

    .line 3009
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v35    # "_arg10":Z
    .end local v155    # "_arg11":I
    .end local v216    # "_result":I
    :cond_ae
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/content/Intent;
    goto :goto_ae

    .line 3026
    .end local v9    # "_arg2":Landroid/content/Intent;
    .restart local v10    # "_arg3":Ljava/lang/String;
    .restart local v11    # "_arg4":Landroid/os/IBinder;
    .restart local v12    # "_arg5":Ljava/lang/String;
    .restart local v13    # "_arg6":I
    .restart local v14    # "_arg7":I
    :cond_af
    const/4 v15, 0x0

    .restart local v15    # "_arg8":Landroid/app/ProfilerInfo;
    goto :goto_af

    .line 3033
    .end local v15    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_b0
    const/16 v16, 0x0

    .restart local v16    # "_arg9":Landroid/os/Bundle;
    goto :goto_b0

    .line 3036
    .end local v16    # "_arg9":Landroid/os/Bundle;
    :cond_b1
    const/16 v35, 0x0

    .restart local v35    # "_arg10":Z
    goto :goto_b1

    .line 3046
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v35    # "_arg10":Z
    :sswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3050
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b2

    .line 3051
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 3057
    :goto_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b3

    .line 3058
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v204

    check-cast v204, Landroid/app/ActivityManager$TaskDescription;

    .line 3064
    :goto_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b4

    .line 3065
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v212

    check-cast v212, Landroid/graphics/Bitmap;

    .line 3070
    :goto_b4
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-object/from16 v3, v204

    move-object/from16 v4, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v216

    .line 3071
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3072
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3073
    const/4 v6, 0x1

    return v6

    .line 3054
    .end local v216    # "_result":I
    :cond_b2
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/content/Intent;
    goto :goto_b2

    .line 3061
    .end local v26    # "_arg1":Landroid/content/Intent;
    :cond_b3
    const/16 v204, 0x0

    .local v204, "_arg2":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_b3

    .line 3068
    .end local v204    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    :cond_b4
    const/16 v212, 0x0

    .local v212, "_arg3":Landroid/graphics/Bitmap;
    goto :goto_b4

    .line 3077
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v212    # "_arg3":Landroid/graphics/Bitmap;
    :sswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3078
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v234

    .line 3079
    .local v234, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    if-eqz v234, :cond_b5

    .line 3081
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3082
    const/4 v6, 0x1

    move-object/from16 v0, v234

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3087
    :goto_b5
    const/4 v6, 0x1

    return v6

    .line 3085
    :cond_b5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b5

    .line 3091
    .end local v234    # "_result":Landroid/graphics/Point;
    :sswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3094
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v247

    .line 3095
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3096
    if-eqz v247, :cond_b6

    const/4 v6, 0x1

    :goto_b6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3097
    const/4 v6, 0x1

    return v6

    .line 3096
    :cond_b6
    const/4 v6, 0x0

    goto :goto_b6

    .line 3101
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 3104
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IActivityManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 3105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3106
    const/4 v6, 0x1

    return v6

    .line 3110
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    :sswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3111
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    .line 3112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3113
    const/4 v6, 0x1

    return v6

    .line 3117
    :sswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3121
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3122
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v233

    .line 3123
    .local v233, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3124
    if-eqz v233, :cond_b7

    .line 3125
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    const/4 v6, 0x1

    move-object/from16 v0, v233

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3131
    :goto_b7
    const/4 v6, 0x1

    return v6

    .line 3129
    :cond_b7
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b7

    .line 3135
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v233    # "_result":Landroid/graphics/Bitmap;
    :sswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b8

    .line 3138
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/content/Intent;

    .line 3144
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3146
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 3148
    .restart local v27    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 3150
    .restart local v70    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b9

    .line 3151
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v125

    check-cast v125, Landroid/os/Bundle;

    :goto_b9
    move-object/from16 v120, p0

    move/from16 v122, v40

    move-object/from16 v123, v27

    move/from16 v124, v70

    .line 3156
    invoke-virtual/range {v120 .. v125}, Landroid/app/IActivityManager$Stub;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v247

    .line 3157
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3158
    if-eqz v247, :cond_ba

    const/4 v6, 0x1

    :goto_ba
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    const/4 v6, 0x1

    return v6

    .line 3141
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v70    # "_arg3":I
    .end local v247    # "_result":Z
    :cond_b8
    const/16 v121, 0x0

    .restart local v121    # "_arg0":Landroid/content/Intent;
    goto :goto_b8

    .line 3154
    .end local v121    # "_arg0":Landroid/content/Intent;
    .restart local v27    # "_arg2":Ljava/lang/String;
    .restart local v40    # "_arg1":I
    .restart local v70    # "_arg3":I
    :cond_b9
    const/16 v125, 0x0

    .local v125, "_arg4":Landroid/os/Bundle;
    goto :goto_b9

    .line 3158
    .end local v125    # "_arg4":Landroid/os/Bundle;
    .restart local v247    # "_result":Z
    :cond_ba
    const/4 v6, 0x0

    goto :goto_ba

    .line 3163
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v70    # "_arg3":I
    .end local v247    # "_result":Z
    :sswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bb

    .line 3166
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v184

    check-cast v184, Landroid/os/Bundle;

    .line 3171
    :goto_bb
    move-object/from16 v0, p0

    move-object/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V

    .line 3172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3173
    const/4 v6, 0x1

    return v6

    .line 3169
    :cond_bb
    const/16 v184, 0x0

    .local v184, "_arg0":Landroid/os/Bundle;
    goto :goto_bb

    .line 3177
    .end local v184    # "_arg0":Landroid/os/Bundle;
    :sswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3181
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3183
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 3185
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 3186
    .local v147, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    move-object/from16 v4, v147

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v216

    .line 3187
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3188
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3189
    const/4 v6, 0x1

    return v6

    .line 3193
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v147    # "_arg3":Landroid/os/IBinder;
    .end local v216    # "_result":I
    :sswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v178

    .line 3196
    .local v178, "_arg0":Landroid/app/ITaskStackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v178

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3198
    const/4 v6, 0x1

    return v6

    .line 3202
    .end local v178    # "_arg0":Landroid/app/ITaskStackListener;
    :sswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3206
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v201

    .line 3207
    .local v201, "_arg1":[B
    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v201

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    .line 3208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3209
    const/4 v6, 0x1

    return v6

    .line 3213
    .end local v78    # "_arg0":I
    .end local v201    # "_arg1":[B
    :sswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3216
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->createStackOnDisplay(I)I

    move-result v216

    .line 3217
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3218
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3219
    const/4 v6, 0x1

    return v6

    .line 3223
    .end local v78    # "_arg0":I
    .end local v216    # "_result":I
    :sswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3224
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFocusedStackId()I

    move-result v216

    .line 3225
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3226
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3227
    const/4 v6, 0x1

    return v6

    .line 3231
    .end local v216    # "_result":I
    :sswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3235
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3236
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    .line 3237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3238
    const/4 v6, 0x1

    return v6

    .line 3242
    .end local v40    # "_arg1":I
    .end local v78    # "_arg0":I
    :sswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3246
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v145

    .line 3248
    .restart local v145    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bc

    .line 3249
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/os/Bundle;

    .line 3255
    :goto_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 3257
    .restart local v147    # "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bd

    const/16 v43, 0x1

    .line 3259
    .restart local v43    # "_arg4":Z
    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_be

    const/16 v149, 0x1

    .local v149, "_arg5":Z
    :goto_be
    move-object/from16 v143, p0

    move/from16 v144, v78

    move/from16 v148, v43

    .line 3260
    invoke-virtual/range {v143 .. v149}, Landroid/app/IActivityManager$Stub;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v247

    .line 3261
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3262
    if-eqz v247, :cond_bf

    const/4 v6, 0x1

    :goto_bf
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    const/4 v6, 0x1

    return v6

    .line 3252
    .end local v43    # "_arg4":Z
    .end local v147    # "_arg3":Landroid/os/IBinder;
    .end local v149    # "_arg5":Z
    .end local v247    # "_result":Z
    :cond_bc
    const/16 v146, 0x0

    .restart local v146    # "_arg2":Landroid/os/Bundle;
    goto :goto_bc

    .line 3257
    .end local v146    # "_arg2":Landroid/os/Bundle;
    .restart local v147    # "_arg3":Landroid/os/IBinder;
    :cond_bd
    const/16 v43, 0x0

    .restart local v43    # "_arg4":Z
    goto :goto_bd

    .line 3259
    :cond_be
    const/16 v149, 0x0

    .restart local v149    # "_arg5":Z
    goto :goto_be

    .line 3262
    .restart local v247    # "_result":Z
    :cond_bf
    const/4 v6, 0x0

    goto :goto_bf

    .line 3267
    .end local v43    # "_arg4":Z
    .end local v78    # "_arg0":I
    .end local v145    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v147    # "_arg3":Landroid/os/IBinder;
    .end local v149    # "_arg5":Z
    .end local v247    # "_result":Z
    :sswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3271
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c0

    .line 3272
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    .line 3278
    :goto_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 3279
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v46

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 3280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3281
    const/4 v6, 0x1

    return v6

    .line 3275
    .end local v60    # "_arg2":I
    :cond_c0
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Landroid/graphics/Rect;
    goto :goto_c0

    .line 3285
    .end local v46    # "_arg1":Landroid/graphics/Rect;
    .end local v78    # "_arg0":I
    :sswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3286
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v216

    .line 3287
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3288
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3289
    const/4 v6, 0x1

    return v6

    .line 3293
    .end local v216    # "_result":I
    :sswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3297
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3299
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v138

    .line 3301
    .local v138, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v135, p0

    move-object/from16 v136, v94

    move/from16 v137, v40

    move-object/from16 v140, v10

    .line 3302
    invoke-virtual/range {v135 .. v140}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 3303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3304
    const/4 v6, 0x1

    return v6

    .line 3308
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v138    # "_arg2":J
    :sswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3311
    .restart local v94    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    .line 3312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3313
    const/4 v6, 0x1

    return v6

    .line 3317
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v186

    .line 3321
    .restart local v186    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c1

    const/16 v200, 0x1

    .line 3322
    .restart local v200    # "_arg1":Z
    :goto_c1
    move-object/from16 v0, p0

    move-object/from16 v1, v186

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 3323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3324
    const/4 v6, 0x1

    return v6

    .line 3321
    .end local v200    # "_arg1":Z
    :cond_c1
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_c1

    .line 3328
    .end local v186    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    .end local v200    # "_arg1":Z
    :sswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3332
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v203

    .line 3333
    .local v203, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v203

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 3334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3335
    const/4 v6, 0x1

    return v6

    .line 3339
    .end local v78    # "_arg0":I
    .end local v203    # "_arg1":[Ljava/lang/String;
    :sswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 3343
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3345
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 3346
    .restart local v27    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move/from16 v2, v40

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 3347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3348
    const/4 v6, 0x1

    return v6

    .line 3352
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    :sswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 3356
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3358
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 3359
    .restart local v27    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move/from16 v2, v40

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 3360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3361
    const/4 v6, 0x1

    return v6

    .line 3365
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    :sswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3369
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3370
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v216

    .line 3371
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3372
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3373
    const/4 v6, 0x1

    return v6

    .line 3377
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v216    # "_result":I
    :sswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3380
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 3381
    const/4 v6, 0x1

    return v6

    .line 3385
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3388
    .restart local v94    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updateDeviceOwner(Ljava/lang/String;)V

    .line 3389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3390
    const/4 v6, 0x1

    return v6

    .line 3394
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3397
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->keyguardGoingAway(I)V

    .line 3398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3399
    const/4 v6, 0x1

    return v6

    .line 3403
    .end local v78    # "_arg0":I
    :sswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3407
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3408
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v216

    .line 3409
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3410
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3411
    const/4 v6, 0x1

    return v6

    .line 3415
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v78    # "_arg0":I
    .end local v216    # "_result":I
    :sswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v179

    .line 3419
    .local v179, "_arg0":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3421
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 3423
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3424
    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 3425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3426
    const/4 v6, 0x1

    return v6

    .line 3430
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v179    # "_arg0":Landroid/app/IUidObserver;
    :sswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v179

    .line 3433
    .restart local v179    # "_arg0":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 3434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3435
    const/4 v6, 0x1

    return v6

    .line 3439
    .end local v179    # "_arg0":Landroid/app/IUidObserver;
    :sswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3440
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v247

    .line 3441
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3442
    if-eqz v247, :cond_c2

    const/4 v6, 0x1

    :goto_c2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3443
    const/4 v6, 0x1

    return v6

    .line 3442
    :cond_c2
    const/4 v6, 0x0

    goto :goto_c2

    .line 3447
    .end local v247    # "_result":Z
    :sswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3451
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c3

    .line 3452
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    .line 3457
    :goto_c3
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v247

    .line 3458
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3459
    if-eqz v247, :cond_c4

    const/4 v6, 0x1

    :goto_c4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3460
    const/4 v6, 0x1

    return v6

    .line 3455
    .end local v247    # "_result":Z
    :cond_c3
    const/16 v105, 0x0

    .restart local v105    # "_arg1":Landroid/os/Bundle;
    goto :goto_c3

    .line 3459
    .end local v105    # "_arg1":Landroid/os/Bundle;
    .restart local v247    # "_result":Z
    :cond_c4
    const/4 v6, 0x0

    goto :goto_c4

    .line 3464
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_e7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3467
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v247

    .line 3468
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3469
    if-eqz v247, :cond_c5

    const/4 v6, 0x1

    :goto_c5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3470
    const/4 v6, 0x1

    return v6

    .line 3469
    :cond_c5
    const/4 v6, 0x0

    goto :goto_c5

    .line 3474
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_e8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3475
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v247

    .line 3476
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3477
    if-eqz v247, :cond_c6

    const/4 v6, 0x1

    :goto_c6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3478
    const/4 v6, 0x1

    return v6

    .line 3477
    :cond_c6
    const/4 v6, 0x0

    goto :goto_c6

    .line 3482
    .end local v247    # "_result":Z
    :sswitch_e9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c7

    .line 3485
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v185

    check-cast v185, Landroid/os/ParcelFileDescriptor;

    .line 3490
    :goto_c7
    move-object/from16 v0, p0

    move-object/from16 v1, v185

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v247

    .line 3491
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3492
    if-eqz v247, :cond_c8

    const/4 v6, 0x1

    :goto_c8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3493
    const/4 v6, 0x1

    return v6

    .line 3488
    .end local v247    # "_result":Z
    :cond_c7
    const/16 v185, 0x0

    .local v185, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_c7

    .line 3492
    .end local v185    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .restart local v247    # "_result":Z
    :cond_c8
    const/4 v6, 0x0

    goto :goto_c8

    .line 3497
    .end local v247    # "_result":Z
    :sswitch_ea
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3501
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3503
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 3504
    .restart local v60    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->positionTaskInStack(III)V

    .line 3505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3506
    const/4 v6, 0x1

    return v6

    .line 3510
    .end local v40    # "_arg1":I
    .end local v60    # "_arg2":I
    .end local v78    # "_arg0":I
    :sswitch_eb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3513
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getActivityStackId(Landroid/os/IBinder;)I

    move-result v216

    .line 3514
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3515
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3516
    const/4 v6, 0x1

    return v6

    .line 3520
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v216    # "_result":I
    :sswitch_ec
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3523
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 3524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3525
    const/4 v6, 0x1

    return v6

    .line 3529
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_ed
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3533
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v202

    .line 3535
    .local v202, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v210

    .line 3537
    .local v210, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v215

    .line 3538
    .local v215, "_arg3":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v202

    move-object/from16 v3, v210

    move-object/from16 v4, v215

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    .line 3539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3540
    const/4 v6, 0x1

    return v6

    .line 3544
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v202    # "_arg1":[I
    .end local v210    # "_arg2":[I
    .end local v215    # "_arg3":[I
    :sswitch_ee
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3548
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3550
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c9

    const/16 v96, 0x1

    .line 3552
    .restart local v96    # "_arg2":Z
    :goto_c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ca

    const/16 v48, 0x1

    .line 3554
    .restart local v48    # "_arg3":Z
    :goto_ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cb

    .line 3555
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v161

    check-cast v161, Landroid/graphics/Rect;

    :goto_cb
    move-object/from16 v156, p0

    move/from16 v157, v78

    move/from16 v158, v40

    move/from16 v159, v96

    move/from16 v160, v48

    .line 3560
    invoke-virtual/range {v156 .. v161}, Landroid/app/IActivityManager$Stub;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;)Z

    move-result v247

    .line 3561
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3562
    if-eqz v247, :cond_cc

    const/4 v6, 0x1

    :goto_cc
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3563
    const/4 v6, 0x1

    return v6

    .line 3550
    .end local v48    # "_arg3":Z
    .end local v96    # "_arg2":Z
    .end local v247    # "_result":Z
    :cond_c9
    const/16 v96, 0x0

    .restart local v96    # "_arg2":Z
    goto :goto_c9

    .line 3552
    :cond_ca
    const/16 v48, 0x0

    .restart local v48    # "_arg3":Z
    goto :goto_ca

    .line 3558
    :cond_cb
    const/16 v161, 0x0

    .local v161, "_arg4":Landroid/graphics/Rect;
    goto :goto_cb

    .line 3562
    .end local v161    # "_arg4":Landroid/graphics/Rect;
    .restart local v247    # "_result":Z
    :cond_cc
    const/4 v6, 0x0

    goto :goto_cc

    .line 3567
    .end local v40    # "_arg1":I
    .end local v48    # "_arg3":Z
    .end local v78    # "_arg0":I
    .end local v96    # "_arg2":Z
    .end local v247    # "_result":Z
    :sswitch_ef
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cd

    const/16 v190, 0x1

    .line 3570
    .restart local v190    # "_arg0":Z
    :goto_cd
    move-object/from16 v0, p0

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 3571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3572
    const/4 v6, 0x1

    return v6

    .line 3569
    .end local v190    # "_arg0":Z
    :cond_cd
    const/16 v190, 0x0

    .restart local v190    # "_arg0":Z
    goto :goto_cd

    .line 3576
    .end local v190    # "_arg0":Z
    :sswitch_f0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3580
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ce

    const/16 v200, 0x1

    .line 3581
    .restart local v200    # "_arg1":Z
    :goto_ce
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveTasksToFullscreenStack(IZ)V

    .line 3582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3583
    const/4 v6, 0x1

    return v6

    .line 3580
    .end local v200    # "_arg1":Z
    :cond_ce
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_ce

    .line 3587
    .end local v78    # "_arg0":I
    .end local v200    # "_arg1":Z
    :sswitch_f1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3591
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cf

    .line 3592
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    .line 3597
    :goto_cf
    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v247

    .line 3598
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3599
    if-eqz v247, :cond_d0

    const/4 v6, 0x1

    :goto_d0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3600
    const/4 v6, 0x1

    return v6

    .line 3595
    .end local v247    # "_result":Z
    :cond_cf
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Landroid/graphics/Rect;
    goto :goto_cf

    .line 3599
    .end local v46    # "_arg1":Landroid/graphics/Rect;
    .restart local v247    # "_result":Z
    :cond_d0
    const/4 v6, 0x0

    goto :goto_d0

    .line 3604
    .end local v78    # "_arg0":I
    .end local v247    # "_result":Z
    :sswitch_f2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3608
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3609
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v247

    .line 3610
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3611
    if-eqz v247, :cond_d1

    const/4 v6, 0x1

    :goto_d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3612
    const/4 v6, 0x1

    return v6

    .line 3611
    :cond_d1
    const/4 v6, 0x0

    goto :goto_d1

    .line 3616
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v78    # "_arg0":I
    .end local v247    # "_result":Z
    :sswitch_f3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3620
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v201

    .line 3622
    .restart local v201    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v209

    .line 3624
    .local v209, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v213

    .line 3625
    .local v213, "_arg3":Landroid/os/IProgressListener;
    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v201

    move-object/from16 v3, v209

    move-object/from16 v4, v213

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v247

    .line 3626
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3627
    if-eqz v247, :cond_d2

    const/4 v6, 0x1

    :goto_d2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3628
    const/4 v6, 0x1

    return v6

    .line 3627
    :cond_d2
    const/4 v6, 0x0

    goto :goto_d2

    .line 3632
    .end local v78    # "_arg0":I
    .end local v201    # "_arg1":[B
    .end local v209    # "_arg2":[B
    .end local v213    # "_arg3":Landroid/os/IProgressListener;
    .end local v247    # "_result":Z
    :sswitch_f4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3635
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    move-result v247

    .line 3636
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3637
    if-eqz v247, :cond_d3

    const/4 v6, 0x1

    :goto_d3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3638
    const/4 v6, 0x1

    return v6

    .line 3637
    :cond_d3
    const/4 v6, 0x0

    goto :goto_d3

    .line 3642
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_f5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3645
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    move-result v247

    .line 3646
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3647
    if-eqz v247, :cond_d4

    const/4 v6, 0x1

    :goto_d4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3648
    const/4 v6, 0x1

    return v6

    .line 3647
    :cond_d4
    const/4 v6, 0x0

    goto :goto_d4

    .line 3652
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_f6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3656
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3657
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    .line 3658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3659
    const/4 v6, 0x1

    return v6

    .line 3663
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_f7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3667
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d5

    .line 3668
    sget-object v6, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v194

    check-cast v194, Landroid/app/PictureInPictureParams;

    .line 3673
    :goto_d5
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v194

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v247

    .line 3674
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3675
    if-eqz v247, :cond_d6

    const/4 v6, 0x1

    :goto_d6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3676
    const/4 v6, 0x1

    return v6

    .line 3671
    .end local v247    # "_result":Z
    :cond_d5
    const/16 v194, 0x0

    .local v194, "_arg1":Landroid/app/PictureInPictureParams;
    goto :goto_d5

    .line 3675
    .end local v194    # "_arg1":Landroid/app/PictureInPictureParams;
    .restart local v247    # "_result":Z
    :cond_d6
    const/4 v6, 0x0

    goto :goto_d6

    .line 3680
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :sswitch_f8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3684
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d7

    .line 3685
    sget-object v6, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v194

    check-cast v194, Landroid/app/PictureInPictureParams;

    .line 3690
    :goto_d7
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v194

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 3691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3692
    const/4 v6, 0x1

    return v6

    .line 3688
    :cond_d7
    const/16 v194, 0x0

    .restart local v194    # "_arg1":Landroid/app/PictureInPictureParams;
    goto :goto_d7

    .line 3696
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v194    # "_arg1":Landroid/app/PictureInPictureParams;
    :sswitch_f9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3699
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result v216

    .line 3700
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3701
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3702
    const/4 v6, 0x1

    return v6

    .line 3706
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v216    # "_result":I
    :sswitch_fa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3709
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    .line 3710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3711
    const/4 v6, 0x1

    return v6

    .line 3715
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_fb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3718
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v237

    .line 3719
    .restart local v237    # "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3720
    move-object/from16 v0, p3

    move-object/from16 v1, v237

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3721
    const/4 v6, 0x1

    return v6

    .line 3725
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v237    # "_result":Landroid/os/IBinder;
    :sswitch_fc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d8

    .line 3728
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v157

    check-cast v157, Landroid/graphics/Rect;

    .line 3734
    :goto_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d9

    .line 3735
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    .line 3741
    :goto_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_da

    .line 3742
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v159

    check-cast v159, Landroid/graphics/Rect;

    .line 3748
    :goto_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_db

    .line 3749
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v160

    check-cast v160, Landroid/graphics/Rect;

    .line 3755
    :goto_db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_dc

    .line 3756
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v161

    check-cast v161, Landroid/graphics/Rect;

    :goto_dc
    move-object/from16 v156, p0

    move-object/from16 v158, v46

    .line 3761
    invoke-virtual/range {v156 .. v161}, Landroid/app/IActivityManager$Stub;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3763
    const/4 v6, 0x1

    return v6

    .line 3731
    :cond_d8
    const/16 v157, 0x0

    .local v157, "_arg0":Landroid/graphics/Rect;
    goto :goto_d8

    .line 3738
    .end local v157    # "_arg0":Landroid/graphics/Rect;
    :cond_d9
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Landroid/graphics/Rect;
    goto :goto_d9

    .line 3745
    .end local v46    # "_arg1":Landroid/graphics/Rect;
    :cond_da
    const/16 v159, 0x0

    .local v159, "_arg2":Landroid/graphics/Rect;
    goto :goto_da

    .line 3752
    .end local v159    # "_arg2":Landroid/graphics/Rect;
    :cond_db
    const/16 v160, 0x0

    .local v160, "_arg3":Landroid/graphics/Rect;
    goto :goto_db

    .line 3759
    .end local v160    # "_arg3":Landroid/graphics/Rect;
    :cond_dc
    const/16 v161, 0x0

    .restart local v161    # "_arg4":Landroid/graphics/Rect;
    goto :goto_dc

    .line 3767
    .end local v161    # "_arg4":Landroid/graphics/Rect;
    :sswitch_fd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3771
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_dd

    const/16 v200, 0x1

    .line 3773
    .restart local v200    # "_arg1":Z
    :goto_dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_de

    .line 3774
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v206

    check-cast v206, Landroid/content/ComponentName;

    .line 3779
    :goto_de
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    move-object/from16 v3, v206

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v216

    .line 3780
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3781
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3782
    const/4 v6, 0x1

    return v6

    .line 3771
    .end local v200    # "_arg1":Z
    .end local v216    # "_result":I
    :cond_dd
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_dd

    .line 3777
    :cond_de
    const/16 v206, 0x0

    .local v206, "_arg2":Landroid/content/ComponentName;
    goto :goto_de

    .line 3786
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    .end local v206    # "_arg2":Landroid/content/ComponentName;
    :sswitch_fe
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3790
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3791
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v230

    .line 3792
    .restart local v230    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3793
    if-eqz v230, :cond_df

    .line 3794
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3795
    const/4 v6, 0x1

    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3800
    :goto_df
    const/4 v6, 0x1

    return v6

    .line 3798
    :cond_df
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_df

    .line 3804
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v230    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_ff
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3808
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3809
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 3810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3811
    const/4 v6, 0x1

    return v6

    .line 3815
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_100
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3818
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isAppForeground(I)Z

    move-result v247

    .line 3819
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3820
    if-eqz v247, :cond_e0

    const/4 v6, 0x1

    :goto_e0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3821
    const/4 v6, 0x1

    return v6

    .line 3820
    :cond_e0
    const/4 v6, 0x0

    goto :goto_e0

    .line 3825
    .end local v78    # "_arg0":I
    .end local v247    # "_result":Z
    :sswitch_101
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3829
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e1

    .line 3830
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    .line 3835
    :goto_e1
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 3836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3837
    const/4 v6, 0x1

    return v6

    .line 3833
    :cond_e1
    const/16 v105, 0x0

    .restart local v105    # "_arg1":Landroid/os/Bundle;
    goto :goto_e1

    .line 3841
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v105    # "_arg1":Landroid/os/Bundle;
    :sswitch_102
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 3844
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 3845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3846
    const/4 v6, 0x1

    return v6

    .line 3850
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_103
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3851
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v247

    .line 3852
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3853
    if-eqz v247, :cond_e2

    const/4 v6, 0x1

    :goto_e2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3854
    const/4 v6, 0x1

    return v6

    .line 3853
    :cond_e2
    const/4 v6, 0x0

    goto :goto_e2

    .line 3858
    .end local v247    # "_result":Z
    :sswitch_104
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3859
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationStarted()V

    .line 3860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3861
    const/4 v6, 0x1

    return v6

    .line 3865
    :sswitch_105
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3866
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationEnded()V

    .line 3867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3868
    const/4 v6, 0x1

    return v6

    .line 3872
    :sswitch_106
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3875
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->removeStack(I)V

    .line 3876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3877
    const/4 v6, 0x1

    return v6

    .line 3881
    .end local v78    # "_arg0":I
    :sswitch_107
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 3885
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 3886
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    .line 3887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3888
    const/4 v6, 0x1

    return v6

    .line 3892
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    :sswitch_108
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3893
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v216

    .line 3894
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3895
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3896
    const/4 v6, 0x1

    return v6

    .line 3900
    .end local v216    # "_result":I
    :sswitch_109
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e3

    .line 3903
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v157

    check-cast v157, Landroid/graphics/Rect;

    .line 3909
    :goto_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e4

    .line 3910
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    .line 3915
    :goto_e4
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3917
    const/4 v6, 0x1

    return v6

    .line 3906
    :cond_e3
    const/16 v157, 0x0

    .restart local v157    # "_arg0":Landroid/graphics/Rect;
    goto :goto_e3

    .line 3913
    .end local v157    # "_arg0":Landroid/graphics/Rect;
    :cond_e4
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Landroid/graphics/Rect;
    goto :goto_e4

    .line 3921
    .end local v46    # "_arg1":Landroid/graphics/Rect;
    :sswitch_10a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e5

    .line 3924
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    .line 3929
    :goto_e5
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v247

    .line 3930
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3931
    if-eqz v247, :cond_e6

    const/4 v6, 0x1

    :goto_e6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3932
    const/4 v6, 0x1

    return v6

    .line 3927
    .end local v247    # "_result":Z
    :cond_e5
    const/16 v58, 0x0

    .restart local v58    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e5

    .line 3931
    .end local v58    # "_arg0":Landroid/content/ComponentName;
    .restart local v247    # "_result":Z
    :cond_e6
    const/4 v6, 0x0

    goto :goto_e6

    .line 3936
    .end local v247    # "_result":Z
    :sswitch_10b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3937
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->swapDockedAndFullscreenStack()V

    .line 3938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3939
    const/4 v6, 0x1

    return v6

    .line 3943
    :sswitch_10c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 3946
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    .line 3947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3948
    const/4 v6, 0x1

    return v6

    .line 3952
    .end local v78    # "_arg0":I
    :sswitch_10d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e7

    .line 3955
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/content/Intent;

    .line 3961
    :goto_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e8

    .line 3962
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    .line 3967
    :goto_e8
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 3968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3969
    const/4 v6, 0x1

    return v6

    .line 3958
    :cond_e7
    const/16 v121, 0x0

    .restart local v121    # "_arg0":Landroid/content/Intent;
    goto :goto_e7

    .line 3965
    .end local v121    # "_arg0":Landroid/content/Intent;
    :cond_e8
    const/16 v105, 0x0

    .restart local v105    # "_arg1":Landroid/os/Bundle;
    goto :goto_e8

    .line 3973
    .end local v105    # "_arg1":Landroid/os/Bundle;
    :sswitch_10e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3974
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    .line 3975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3976
    const/4 v6, 0x1

    return v6

    .line 3980
    :sswitch_10f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v163

    .line 3984
    .restart local v163    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    .line 3986
    .restart local v51    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 3988
    .restart local v60    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e9

    .line 3989
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    .line 3995
    :goto_e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 3997
    .restart local v22    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v168

    .line 3999
    .local v168, "_arg5":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 4001
    .restart local v56    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ea

    .line 4002
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v170

    check-cast v170, Landroid/os/Bundle;

    :goto_ea
    move-object/from16 v162, p0

    move-object/from16 v164, v51

    move/from16 v165, v60

    move-object/from16 v166, v102

    move-object/from16 v167, v22

    move-object/from16 v169, v56

    .line 4007
    invoke-virtual/range {v162 .. v170}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v216

    .line 4008
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4009
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4010
    const/4 v6, 0x1

    return v6

    .line 3992
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v56    # "_arg6":Ljava/lang/String;
    .end local v168    # "_arg5":Landroid/content/IIntentReceiver;
    .end local v216    # "_result":I
    :cond_e9
    const/16 v102, 0x0

    .restart local v102    # "_arg3":Landroid/content/Intent;
    goto :goto_e9

    .line 4005
    .end local v102    # "_arg3":Landroid/content/Intent;
    .restart local v22    # "_arg4":Ljava/lang/String;
    .restart local v56    # "_arg6":Ljava/lang/String;
    .restart local v168    # "_arg5":Landroid/content/IIntentReceiver;
    :cond_ea
    const/16 v170, 0x0

    .local v170, "_arg7":Landroid/os/Bundle;
    goto :goto_ea

    .line 4014
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v51    # "_arg1":Landroid/os/IBinder;
    .end local v56    # "_arg6":Ljava/lang/String;
    .end local v60    # "_arg2":I
    .end local v163    # "_arg0":Landroid/content/IIntentSender;
    .end local v168    # "_arg5":Landroid/content/IIntentReceiver;
    .end local v170    # "_arg7":Landroid/os/Bundle;
    :sswitch_110
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4017
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setVrThread(I)V

    .line 4018
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4019
    const/4 v6, 0x1

    return v6

    .line 4023
    .end local v78    # "_arg0":I
    :sswitch_111
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4026
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    .line 4027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4028
    const/4 v6, 0x1

    return v6

    .line 4032
    .end local v78    # "_arg0":I
    :sswitch_112
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_eb

    const/16 v190, 0x1

    .line 4035
    .restart local v190    # "_arg0":Z
    :goto_eb
    move-object/from16 v0, p0

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    .line 4036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4037
    const/4 v6, 0x1

    return v6

    .line 4034
    .end local v190    # "_arg0":Z
    :cond_eb
    const/16 v190, 0x0

    .restart local v190    # "_arg0":Z
    goto :goto_eb

    .line 4041
    .end local v190    # "_arg0":Z
    :sswitch_113
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 4044
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestActivityRelaunch(Landroid/os/IBinder;)V

    .line 4045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4046
    const/4 v6, 0x1

    return v6

    .line 4050
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_114
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ec

    .line 4053
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v183

    check-cast v183, Landroid/content/res/Configuration;

    .line 4059
    :goto_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 4060
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v247

    .line 4061
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4062
    if-eqz v247, :cond_ed

    const/4 v6, 0x1

    :goto_ed
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4063
    const/4 v6, 0x1

    return v6

    .line 4056
    .end local v40    # "_arg1":I
    .end local v247    # "_result":Z
    :cond_ec
    const/16 v183, 0x0

    .restart local v183    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_ec

    .line 4062
    .end local v183    # "_arg0":Landroid/content/res/Configuration;
    .restart local v40    # "_arg1":I
    .restart local v247    # "_result":Z
    :cond_ed
    const/4 v6, 0x0

    goto :goto_ed

    .line 4067
    .end local v40    # "_arg1":I
    .end local v247    # "_result":Z
    :sswitch_115
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v178

    .line 4070
    .restart local v178    # "_arg0":Landroid/app/ITaskStackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v178

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4072
    const/4 v6, 0x1

    return v6

    .line 4076
    .end local v178    # "_arg0":Landroid/app/ITaskStackListener;
    :sswitch_116
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4080
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 4081
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveStackToDisplay(II)V

    .line 4082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4083
    const/4 v6, 0x1

    return v6

    .line 4087
    .end local v40    # "_arg1":I
    .end local v78    # "_arg0":I
    :sswitch_117
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v187

    .line 4091
    .local v187, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ee

    .line 4092
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    .line 4098
    :goto_ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    .line 4100
    .restart local v80    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 4101
    .restart local v70    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v187

    move-object/from16 v2, v105

    move-object/from16 v3, v80

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->requestAutofillData(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v247

    .line 4102
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4103
    if-eqz v247, :cond_ef

    const/4 v6, 0x1

    :goto_ef
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4104
    const/4 v6, 0x1

    return v6

    .line 4095
    .end local v70    # "_arg3":I
    .end local v80    # "_arg2":Landroid/os/IBinder;
    .end local v247    # "_result":Z
    :cond_ee
    const/16 v105, 0x0

    .restart local v105    # "_arg1":Landroid/os/Bundle;
    goto :goto_ee

    .line 4103
    .end local v105    # "_arg1":Landroid/os/Bundle;
    .restart local v70    # "_arg3":I
    .restart local v80    # "_arg2":Landroid/os/IBinder;
    .restart local v247    # "_result":Z
    :cond_ef
    const/4 v6, 0x0

    goto :goto_ef

    .line 4108
    .end local v70    # "_arg3":I
    .end local v80    # "_arg2":Landroid/os/IBinder;
    .end local v187    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v247    # "_result":Z
    :sswitch_118
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 4112
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v198

    .line 4113
    .local v198, "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v198

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 4114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4115
    const/4 v6, 0x1

    return v6

    .line 4119
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v198    # "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    :sswitch_119
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4122
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(I)I

    move-result v216

    .line 4123
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4124
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4125
    const/4 v6, 0x1

    return v6

    .line 4129
    .end local v78    # "_arg0":I
    .end local v216    # "_result":I
    :sswitch_11a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4132
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    .line 4133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4134
    const/4 v6, 0x1

    return v6

    .line 4138
    .end local v78    # "_arg0":I
    :sswitch_11b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4141
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelTaskThumbnailTransition(I)V

    .line 4142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4143
    const/4 v6, 0x1

    return v6

    .line 4147
    .end local v78    # "_arg0":I
    :sswitch_11c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4151
    .restart local v78    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f0

    const/16 v200, 0x1

    .line 4152
    .restart local v200    # "_arg1":Z
    :goto_f0
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v221

    .line 4153
    .local v221, "_result":Landroid/app/ActivityManager$TaskSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4154
    if-eqz v221, :cond_f1

    .line 4155
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4156
    const/4 v6, 0x1

    move-object/from16 v0, v221

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4161
    :goto_f1
    const/4 v6, 0x1

    return v6

    .line 4151
    .end local v200    # "_arg1":Z
    .end local v221    # "_result":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_f0
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_f0

    .line 4159
    .restart local v221    # "_result":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_f1
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f1

    .line 4165
    .end local v78    # "_arg0":I
    .end local v200    # "_arg1":Z
    .end local v221    # "_result":Landroid/app/ActivityManager$TaskSnapshot;
    :sswitch_11d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v189

    .line 4169
    .local v189, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 4170
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v189

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 4171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4172
    const/4 v6, 0x1

    return v6

    .line 4176
    .end local v40    # "_arg1":I
    .end local v189    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_11e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4179
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    .line 4180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4181
    const/4 v6, 0x1

    return v6

    .line 4185
    .end local v78    # "_arg0":I
    :sswitch_11f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v172

    .line 4188
    .local v172, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v172

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    .line 4189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4190
    const/4 v6, 0x1

    return v6

    .line 4194
    .end local v172    # "_arg0":J
    :sswitch_120
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 4198
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f2

    const/16 v200, 0x1

    .line 4199
    .restart local v200    # "_arg1":Z
    :goto_f2
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V

    .line 4200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4201
    const/4 v6, 0x1

    return v6

    .line 4198
    .end local v200    # "_arg1":Z
    :cond_f2
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_f2

    .line 4205
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    :sswitch_121
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4206
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLastResumedActivityUserId()I

    move-result v216

    .line 4207
    .restart local v216    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4208
    move-object/from16 v0, p3

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4209
    const/4 v6, 0x1

    return v6

    .line 4213
    .end local v216    # "_result":I
    :sswitch_122
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4216
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->backgroundWhitelistUid(I)V

    .line 4217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4218
    const/4 v6, 0x1

    return v6

    .line 4222
    .end local v78    # "_arg0":I
    :sswitch_123
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 4226
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f3

    const/16 v200, 0x1

    .line 4227
    .restart local v200    # "_arg1":Z
    :goto_f3
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 4228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4229
    const/4 v6, 0x1

    return v6

    .line 4226
    .end local v200    # "_arg1":Z
    :cond_f3
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_f3

    .line 4233
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    :sswitch_124
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 4237
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f4

    const/16 v200, 0x1

    .line 4238
    .restart local v200    # "_arg1":Z
    :goto_f4
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 4239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4240
    const/4 v6, 0x1

    return v6

    .line 4237
    .end local v200    # "_arg1":Z
    :cond_f4
    const/16 v200, 0x0

    .restart local v200    # "_arg1":Z
    goto :goto_f4

    .line 4244
    .end local v39    # "_arg0":Landroid/os/IBinder;
    .end local v200    # "_arg1":Z
    :sswitch_125
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f5

    const/16 v190, 0x1

    .line 4247
    .restart local v190    # "_arg0":Z
    :goto_f5
    move-object/from16 v0, p0

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setKeyguardDone(Z)V

    .line 4248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4249
    const/4 v6, 0x1

    return v6

    .line 4246
    .end local v190    # "_arg0":Z
    :cond_f5
    const/16 v190, 0x0

    .restart local v190    # "_arg0":Z
    goto :goto_f5

    .line 4253
    .end local v190    # "_arg0":Z
    :sswitch_126
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 4257
    .restart local v94    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 4258
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->isAppLocked(Ljava/lang/String;I)Z

    move-result v247

    .line 4259
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4260
    if-eqz v247, :cond_f6

    const/4 v6, 0x1

    :goto_f6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4261
    const/4 v6, 0x1

    return v6

    .line 4260
    :cond_f6
    const/4 v6, 0x0

    goto :goto_f6

    .line 4265
    .end local v40    # "_arg1":I
    .end local v94    # "_arg0":Ljava/lang/String;
    .end local v247    # "_result":Z
    :sswitch_127
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4266
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isKeyguardDone()Z

    move-result v247

    .line 4267
    .restart local v247    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4268
    if-eqz v247, :cond_f7

    const/4 v6, 0x1

    :goto_f7
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4269
    const/4 v6, 0x1

    return v6

    .line 4268
    :cond_f7
    const/4 v6, 0x0

    goto :goto_f7

    .line 4273
    .end local v247    # "_result":Z
    :sswitch_128
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 4276
    .restart local v78    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->initialAllPackages(I)V

    .line 4277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4278
    const/4 v6, 0x1

    return v6

    .line 44
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
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0xc8 -> :sswitch_c8
        0xc9 -> :sswitch_c9
        0xca -> :sswitch_ca
        0xcb -> :sswitch_cb
        0xcc -> :sswitch_cc
        0xcd -> :sswitch_cd
        0xce -> :sswitch_ce
        0xcf -> :sswitch_cf
        0xd0 -> :sswitch_d0
        0xd1 -> :sswitch_d1
        0xd2 -> :sswitch_d2
        0xd3 -> :sswitch_d3
        0xd4 -> :sswitch_d4
        0xd5 -> :sswitch_d5
        0xd6 -> :sswitch_d6
        0xd7 -> :sswitch_d7
        0xd8 -> :sswitch_d8
        0xd9 -> :sswitch_d9
        0xda -> :sswitch_da
        0xdb -> :sswitch_db
        0xdc -> :sswitch_dc
        0xdd -> :sswitch_dd
        0xde -> :sswitch_de
        0xdf -> :sswitch_df
        0xe0 -> :sswitch_e0
        0xe1 -> :sswitch_e1
        0xe2 -> :sswitch_e2
        0xe3 -> :sswitch_e3
        0xe4 -> :sswitch_e4
        0xe5 -> :sswitch_e5
        0xe6 -> :sswitch_e6
        0xe7 -> :sswitch_e7
        0xe8 -> :sswitch_e8
        0xe9 -> :sswitch_e9
        0xea -> :sswitch_ea
        0xeb -> :sswitch_eb
        0xec -> :sswitch_ec
        0xed -> :sswitch_ed
        0xee -> :sswitch_ee
        0xef -> :sswitch_ef
        0xf0 -> :sswitch_f0
        0xf1 -> :sswitch_f1
        0xf2 -> :sswitch_f2
        0xf3 -> :sswitch_f3
        0xf4 -> :sswitch_f4
        0xf5 -> :sswitch_f5
        0xf6 -> :sswitch_f6
        0xf7 -> :sswitch_f7
        0xf8 -> :sswitch_f8
        0xf9 -> :sswitch_f9
        0xfa -> :sswitch_fa
        0xfb -> :sswitch_fb
        0xfc -> :sswitch_fc
        0xfd -> :sswitch_fd
        0xfe -> :sswitch_fe
        0xff -> :sswitch_ff
        0x100 -> :sswitch_100
        0x101 -> :sswitch_101
        0x102 -> :sswitch_102
        0x103 -> :sswitch_103
        0x104 -> :sswitch_104
        0x105 -> :sswitch_105
        0x106 -> :sswitch_106
        0x107 -> :sswitch_107
        0x108 -> :sswitch_108
        0x109 -> :sswitch_109
        0x10a -> :sswitch_10a
        0x10b -> :sswitch_10b
        0x10c -> :sswitch_10c
        0x10d -> :sswitch_10d
        0x10e -> :sswitch_10e
        0x10f -> :sswitch_10f
        0x110 -> :sswitch_110
        0x111 -> :sswitch_111
        0x112 -> :sswitch_112
        0x113 -> :sswitch_113
        0x114 -> :sswitch_114
        0x115 -> :sswitch_115
        0x116 -> :sswitch_116
        0x117 -> :sswitch_117
        0x118 -> :sswitch_118
        0x119 -> :sswitch_119
        0x11a -> :sswitch_11a
        0x11b -> :sswitch_11b
        0x11c -> :sswitch_11c
        0x11d -> :sswitch_11d
        0x11e -> :sswitch_11e
        0x11f -> :sswitch_11f
        0x120 -> :sswitch_120
        0x121 -> :sswitch_121
        0x122 -> :sswitch_122
        0x123 -> :sswitch_123
        0x124 -> :sswitch_124
        0x125 -> :sswitch_125
        0x126 -> :sswitch_126
        0x127 -> :sswitch_127
        0x128 -> :sswitch_128
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
