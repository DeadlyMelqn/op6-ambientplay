.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_activitySupportsIntent:I = 0xf

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x4c

.field static final TRANSACTION_addOnPermissionsChangeListener:I = 0x9e

.field static final TRANSACTION_addPermission:I = 0x15

.field static final TRANSACTION_addPermissionAsync:I = 0x81

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x4a

.field static final TRANSACTION_addPreferredActivity:I = 0x46

.field static final TRANSACTION_canForwardTo:I = 0x2c

.field static final TRANSACTION_canRequestPackageInstalls:I = 0xb2

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x8

.field static final TRANSACTION_checkPackageStartable:I = 0x1

.field static final TRANSACTION_checkPermission:I = 0x13

.field static final TRANSACTION_checkSignatures:I = 0x1f

.field static final TRANSACTION_checkUidPermission:I = 0x14

.field static final TRANSACTION_checkUidSignatures:I = 0x20

.field static final TRANSACTION_clearApplicationProfileData:I = 0x66

.field static final TRANSACTION_clearApplicationUserData:I = 0x65

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x4d

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x4b

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x48

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x7

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x63

.field static final TRANSACTION_deleteApplicationCacheFilesAsUser:I = 0x64

.field static final TRANSACTION_deletePackageAsUser:I = 0x40

.field static final TRANSACTION_deletePackageVersioned:I = 0x41

.field static final TRANSACTION_deletePreloadsFileCache:I = 0xb3

.field static final TRANSACTION_dumpProfiles:I = 0x76

.field static final TRANSACTION_enterSafeMode:I = 0x6b

.field static final TRANSACTION_extendVerificationTimeout:I = 0x86

.field static final TRANSACTION_findPersistentPreferredActivity:I = 0x2b

.field static final TRANSACTION_finishPackageInstall:I = 0x3d

.field static final TRANSACTION_flushPackageRestrictionsAsUser:I = 0x5f

.field static final TRANSACTION_forceDexOpt:I = 0x77

.field static final TRANSACTION_freeStorage:I = 0x62

.field static final TRANSACTION_freeStorageAndNotify:I = 0x61

.field static final TRANSACTION_getActivityInfo:I = 0xe

.field static final TRANSACTION_getAllIntentFilters:I = 0x8b

.field static final TRANSACTION_getAllPackages:I = 0x21

.field static final TRANSACTION_getAllPermissionGroups:I = 0xc

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x29

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x5d

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x96

.field static final TRANSACTION_getApplicationInfo:I = 0xd

.field static final TRANSACTION_getBlockUninstallForUser:I = 0x99

.field static final TRANSACTION_getChangedPackages:I = 0xad

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x5b

.field static final TRANSACTION_getDefaultAppsBackup:I = 0x52

.field static final TRANSACTION_getDefaultBrowserPackageName:I = 0x8d

.field static final TRANSACTION_getFlagsForUid:I = 0x26

.field static final TRANSACTION_getHomeActivities:I = 0x58

.field static final TRANSACTION_getInstallLocation:I = 0x83

.field static final TRANSACTION_getInstallReason:I = 0xb0

.field static final TRANSACTION_getInstalledApplications:I = 0x35

.field static final TRANSACTION_getInstalledPackages:I = 0x33

.field static final TRANSACTION_getInstallerPackageName:I = 0x42

.field static final TRANSACTION_getInstantAppAndroidId:I = 0xb7

.field static final TRANSACTION_getInstantAppCookie:I = 0xa5

.field static final TRANSACTION_getInstantAppIcon:I = 0xa7

.field static final TRANSACTION_getInstantAppInstallerComponent:I = 0xb6

.field static final TRANSACTION_getInstantAppResolverComponent:I = 0xb4

.field static final TRANSACTION_getInstantAppResolverSettingsComponent:I = 0xb5

.field static final TRANSACTION_getInstantApps:I = 0xa4

.field static final TRANSACTION_getInstrumentationInfo:I = 0x3a

.field static final TRANSACTION_getIntentFilterVerificationBackup:I = 0x54

.field static final TRANSACTION_getIntentFilterVerifications:I = 0x8a

.field static final TRANSACTION_getIntentVerificationStatus:I = 0x88

.field static final TRANSACTION_getKeySetByAlias:I = 0x9a

.field static final TRANSACTION_getLastChosenActivity:I = 0x44

.field static final TRANSACTION_getMoveStatus:I = 0x7c

.field static final TRANSACTION_getNameForUid:I = 0x23

.field static final TRANSACTION_getNamesForUids:I = 0x24

.field static final TRANSACTION_getPackageGids:I = 0x6

.field static final TRANSACTION_getPackageInfo:I = 0x3

.field static final TRANSACTION_getPackageInfoVersioned:I = 0x4

.field static final TRANSACTION_getPackageInstaller:I = 0x97

.field static final TRANSACTION_getPackageSizeInfo:I = 0x67

.field static final TRANSACTION_getPackageUid:I = 0x5

.field static final TRANSACTION_getPackagesForUid:I = 0x22

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x34

.field static final TRANSACTION_getPermissionControllerPackageName:I = 0xa3

.field static final TRANSACTION_getPermissionFlags:I = 0x1a

.field static final TRANSACTION_getPermissionGrantBackup:I = 0x56

.field static final TRANSACTION_getPermissionGroupInfo:I = 0xb

.field static final TRANSACTION_getPermissionInfo:I = 0x9

.field static final TRANSACTION_getPersistentApplications:I = 0x36

.field static final TRANSACTION_getPreferredActivities:I = 0x49

.field static final TRANSACTION_getPreferredActivityBackup:I = 0x50

.field static final TRANSACTION_getPreviousCodePaths:I = 0xaf

.field static final TRANSACTION_getPrivateFlagsForUid:I = 0x27

.field static final TRANSACTION_getProviderInfo:I = 0x12

.field static final TRANSACTION_getReceiverInfo:I = 0x10

.field static final TRANSACTION_getServiceInfo:I = 0x11

.field static final TRANSACTION_getServicesSystemSharedLibraryPackageName:I = 0xab

.field static final TRANSACTION_getSharedLibraries:I = 0xb1

.field static final TRANSACTION_getSharedSystemSharedLibraryPackageName:I = 0xac

.field static final TRANSACTION_getSigningKeySet:I = 0x9b

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x69

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x68

.field static final TRANSACTION_getUidForSharedUser:I = 0x25

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x8e

.field static final TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0xa0

.field static final TRANSACTION_grantDefaultPermissionsToEnabledImsServices:I = 0xa1

.field static final TRANSACTION_grantRuntimePermission:I = 0x17

.field static final TRANSACTION_grantSystemAppPermissions:I = 0xb8

.field static final TRANSACTION_hasSystemFeature:I = 0x6a

.field static final TRANSACTION_hasSystemUidErrors:I = 0x6e

.field static final TRANSACTION_inCompatConfigList:I = 0xba

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x84

.field static final TRANSACTION_installPackageAsUser:I = 0x3c

.field static final TRANSACTION_isFirstBoot:I = 0x8f

.field static final TRANSACTION_isInstantApp:I = 0xa8

.field static final TRANSACTION_isOnlyCoreApps:I = 0x90

.field static final TRANSACTION_isPackageAvailable:I = 0x2

.field static final TRANSACTION_isPackageDeviceAdminOnAnyUser:I = 0xae

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0x9c

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0x9d

.field static final TRANSACTION_isPackageSuspendedForUser:I = 0x4f

.field static final TRANSACTION_isPermissionEnforced:I = 0x93

.field static final TRANSACTION_isPermissionRevokedByPolicy:I = 0xa2

.field static final TRANSACTION_isProtectedBroadcast:I = 0x1e

.field static final TRANSACTION_isSafeMode:I = 0x6c

.field static final TRANSACTION_isStorageLow:I = 0x94

.field static final TRANSACTION_isUidPrivileged:I = 0x28

.field static final TRANSACTION_isUpgrade:I = 0x91

.field static final TRANSACTION_logAppProcessStartIfNeeded:I = 0x5e

.field static final TRANSACTION_movePackage:I = 0x7f

.field static final TRANSACTION_movePrimaryStorage:I = 0x80

.field static final TRANSACTION_nextPackageToClean:I = 0x7b

.field static final TRANSACTION_notifyDexLoad:I = 0x72

.field static final TRANSACTION_notifyPackageUse:I = 0x71

.field static final TRANSACTION_performDexOptMode:I = 0x74

.field static final TRANSACTION_performDexOptSecondary:I = 0x75

.field static final TRANSACTION_performFstrimIfNeeded:I = 0x6f

.field static final TRANSACTION_queryContentProviders:I = 0x39

.field static final TRANSACTION_queryInstrumentation:I = 0x3b

.field static final TRANSACTION_queryIntentActivities:I = 0x2d

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x2e

.field static final TRANSACTION_queryIntentContentProviders:I = 0x32

.field static final TRANSACTION_queryIntentReceivers:I = 0x2f

.field static final TRANSACTION_queryIntentServices:I = 0x31

.field static final TRANSACTION_queryPermissionsByGroup:I = 0xa

.field static final TRANSACTION_querySyncProviders:I = 0x38

.field static final TRANSACTION_reconcileSecondaryDexFiles:I = 0x79

.field static final TRANSACTION_registerDexModule:I = 0x73

.field static final TRANSACTION_registerMoveCallback:I = 0x7d

.field static final TRANSACTION_removeOnPermissionsChangeListener:I = 0x9f

.field static final TRANSACTION_removePermission:I = 0x16

.field static final TRANSACTION_replacePreferredActivity:I = 0x47

.field static final TRANSACTION_resetApplicationPermissions:I = 0xb9

.field static final TRANSACTION_resetApplicationPreferences:I = 0x43

.field static final TRANSACTION_resetRuntimePermissions:I = 0x19

.field static final TRANSACTION_resolveContentProvider:I = 0x37

.field static final TRANSACTION_resolveIntent:I = 0x2a

.field static final TRANSACTION_resolveService:I = 0x30

.field static final TRANSACTION_restoreDefaultApps:I = 0x53

.field static final TRANSACTION_restoreIntentFilterVerification:I = 0x55

.field static final TRANSACTION_restorePermissionGrants:I = 0x57

.field static final TRANSACTION_restorePreferredActivities:I = 0x51

.field static final TRANSACTION_revokeRuntimePermission:I = 0x18

.field static final TRANSACTION_runBackgroundDexoptJob:I = 0x78

.field static final TRANSACTION_setApplicationCategoryHint:I = 0x3f

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x5c

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x95

.field static final TRANSACTION_setBackupRestoreState:I = 0xbb

.field static final TRANSACTION_setBlockUninstallForUser:I = 0x98

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x5a

.field static final TRANSACTION_setDefaultBrowserPackageName:I = 0x8c

.field static final TRANSACTION_setHomeActivity:I = 0x59

.field static final TRANSACTION_setInstallLocation:I = 0x82

.field static final TRANSACTION_setInstallerPackageName:I = 0x3e

.field static final TRANSACTION_setInstantAppCookie:I = 0xa6

.field static final TRANSACTION_setLastChosenActivity:I = 0x45

.field static final TRANSACTION_setPackageStoppedState:I = 0x60

.field static final TRANSACTION_setPackagesSuspendedAsUser:I = 0x4e

.field static final TRANSACTION_setPermissionEnforced:I = 0x92

.field static final TRANSACTION_setRequiredForSystemUser:I = 0xa9

.field static final TRANSACTION_setUpdateAvailable:I = 0xaa

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x1d

.field static final TRANSACTION_systemReady:I = 0x6d

.field static final TRANSACTION_unregisterMoveCallback:I = 0x7e

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x7a

.field static final TRANSACTION_updateIntentVerificationStatus:I = 0x89

.field static final TRANSACTION_updatePackagesIfNeeded:I = 0x70

.field static final TRANSACTION_updatePermissionFlags:I = 0x1b

.field static final TRANSACTION_updatePermissionFlagsForAllApps:I = 0x1c

.field static final TRANSACTION_verifyIntentFilter:I = 0x87

.field static final TRANSACTION_verifyPendingInstall:I = 0x85


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
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
    const-string/jumbo v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 111
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

    .line 2698
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 48
    :sswitch_0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v6, 0x1

    return v6

    .line 53
    :sswitch_1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 58
    .local v27, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->checkPackageStartable(Ljava/lang/String;I)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v6, 0x1

    return v6

    .line 64
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    :sswitch_2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 68
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 69
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v107

    .line 70
    .local v107, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v107, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v6, 0x1

    return v6

    .line 71
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 76
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 80
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 82
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 83
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v96

    .line 84
    .local v96, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v96, :cond_1

    .line 86
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v6, 0x1

    move-object/from16 v0, v96

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 90
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 96
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v96    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 99
    sget-object v6, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/pm/VersionedPackage;

    .line 105
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 107
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 108
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;II)Landroid/content/pm/PackageInfo;

    move-result-object v96

    .line 109
    .restart local v96    # "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v96, :cond_3

    .line 111
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v6, 0x1

    move-object/from16 v0, v96

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    :goto_3
    const/4 v6, 0x1

    return v6

    .line 102
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v96    # "_result":Landroid/content/pm/PackageInfo;
    :cond_2
    const/16 v63, 0x0

    .local v63, "_arg0":Landroid/content/pm/VersionedPackage;
    goto :goto_2

    .line 115
    .end local v63    # "_arg0":Landroid/content/pm/VersionedPackage;
    .restart local v9    # "_arg2":I
    .restart local v27    # "_arg1":I
    .restart local v96    # "_result":Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 121
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v96    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 125
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 127
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 128
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;II)I

    move-result v87

    .line 129
    .local v87, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v6, 0x1

    return v6

    .line 135
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v87    # "_result":I
    :sswitch_6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 139
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 141
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 142
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v109

    .line 143
    .local v109, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    move-object/from16 v1, v109

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 145
    const/4 v6, 0x1

    return v6

    .line 149
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v109    # "_result":[I
    :sswitch_7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v70

    .line 152
    .local v70, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v110

    .line 153
    .local v110, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 155
    const/4 v6, 0x1

    return v6

    .line 159
    .end local v70    # "_arg0":[Ljava/lang/String;
    .end local v110    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v70

    .line 162
    .restart local v70    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v110

    .line 163
    .restart local v110    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 165
    const/4 v6, 0x1

    return v6

    .line 169
    .end local v70    # "_arg0":[Ljava/lang/String;
    .end local v110    # "_result":[Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 173
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 176
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v99

    .line 177
    .local v99, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v99, :cond_4

    .line 179
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v6, 0x1

    move-object/from16 v0, v99

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    :goto_4
    const/4 v6, 0x1

    return v6

    .line 183
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 189
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v99    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 193
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 194
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 195
    .local v97, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v97, :cond_5

    .line 197
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 203
    :goto_5
    const/4 v6, 0x1

    return v6

    .line 201
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 207
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 211
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 212
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v98

    .line 213
    .local v98, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v98, :cond_6

    .line 215
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v6, 0x1

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 221
    :goto_6
    const/4 v6, 0x1

    return v6

    .line 219
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 225
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v98    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 228
    .local v58, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 229
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v97, :cond_7

    .line 231
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 237
    :goto_7
    const/4 v6, 0x1

    return v6

    .line 235
    :cond_7
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 241
    .end local v58    # "_arg0":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 245
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 247
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 248
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v90

    .line 249
    .local v90, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v90, :cond_8

    .line 251
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v6, 0x1

    move-object/from16 v0, v90

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 257
    :goto_8
    const/4 v6, 0x1

    return v6

    .line 255
    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 261
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v90    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 264
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 270
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 272
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 273
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v89

    .line 274
    .local v89, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v89, :cond_a

    .line 276
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v6, 0x1

    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 282
    :goto_a
    const/4 v6, 0x1

    return v6

    .line 267
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v89    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_9
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 280
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v27    # "_arg1":I
    .restart local v89    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 286
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v89    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 289
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 295
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 296
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/Intent;

    .line 302
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 303
    .local v44, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v44

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v107

    .line 304
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v107, :cond_d

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v6, 0x1

    return v6

    .line 292
    .end local v44    # "_arg2":Ljava/lang/String;
    .end local v107    # "_result":Z
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 299
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :cond_c
    const/16 v72, 0x0

    .local v72, "_arg1":Landroid/content/Intent;
    goto :goto_c

    .line 305
    .end local v72    # "_arg1":Landroid/content/Intent;
    .restart local v44    # "_arg2":Ljava/lang/String;
    .restart local v107    # "_result":Z
    :cond_d
    const/4 v6, 0x0

    goto :goto_d

    .line 310
    .end local v44    # "_arg2":Ljava/lang/String;
    .end local v107    # "_result":Z
    :sswitch_10
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 313
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 319
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 321
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 322
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v89

    .line 323
    .restart local v89    # "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v89, :cond_f

    .line 325
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v6, 0x1

    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 331
    :goto_f
    const/4 v6, 0x1

    return v6

    .line 316
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v89    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_e
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 329
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v27    # "_arg1":I
    .restart local v89    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 335
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v89    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_11
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 338
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 344
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 346
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 347
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v102

    .line 348
    .local v102, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v102, :cond_11

    .line 350
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v6, 0x1

    move-object/from16 v0, v102

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 356
    :goto_11
    const/4 v6, 0x1

    return v6

    .line 341
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v102    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 354
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v27    # "_arg1":I
    .restart local v102    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_11
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 360
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v102    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_12
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 363
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 369
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 371
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 372
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v100

    .line 373
    .local v100, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v100, :cond_13

    .line 375
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v6, 0x1

    move-object/from16 v0, v100

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 381
    :goto_13
    const/4 v6, 0x1

    return v6

    .line 366
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v100    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_12
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 379
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v27    # "_arg1":I
    .restart local v100    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 385
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v100    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_13
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 389
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 391
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 392
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v87

    .line 393
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v6, 0x1

    return v6

    .line 399
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v87    # "_result":I
    :sswitch_14
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 403
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 404
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v87

    .line 405
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v6, 0x1

    return v6

    .line 411
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v87    # "_result":I
    :sswitch_15
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 414
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/content/pm/PermissionInfo;

    .line 419
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v107

    .line 420
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v107, :cond_15

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v6, 0x1

    return v6

    .line 417
    .end local v107    # "_result":Z
    :cond_14
    const/16 v62, 0x0

    .local v62, "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_14

    .line 421
    .end local v62    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v107    # "_result":Z
    :cond_15
    const/4 v6, 0x0

    goto :goto_15

    .line 426
    .end local v107    # "_result":Z
    :sswitch_16
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 429
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v6, 0x1

    return v6

    .line 435
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 439
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 441
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 442
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v6, 0x1

    return v6

    .line 448
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_18
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 452
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 454
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 455
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v6, 0x1

    return v6

    .line 461
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_19
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->resetRuntimePermissions()V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v6, 0x1

    return v6

    .line 468
    :sswitch_1a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 472
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 474
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 475
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v87

    .line 476
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v6, 0x1

    return v6

    .line 482
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v87    # "_result":I
    :sswitch_1b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 486
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 488
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 490
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 492
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v6, p0

    .line 493
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v6, 0x1

    return v6

    .line 499
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_1c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 503
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 505
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 506
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlagsForAllApps(III)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    const/4 v6, 0x1

    return v6

    .line 512
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v58    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 516
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 518
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 519
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v107

    .line 520
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    if-eqz v107, :cond_16

    const/4 v6, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v6, 0x1

    return v6

    .line 521
    :cond_16
    const/4 v6, 0x0

    goto :goto_16

    .line 526
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v107    # "_result":Z
    :sswitch_1e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 529
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v107

    .line 530
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v107, :cond_17

    const/4 v6, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v6, 0x1

    return v6

    .line 531
    :cond_17
    const/4 v6, 0x0

    goto :goto_17

    .line 536
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v107    # "_result":Z
    :sswitch_1f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 540
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 541
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v87

    .line 542
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    const/4 v6, 0x1

    return v6

    .line 548
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v87    # "_result":I
    :sswitch_20
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 552
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 553
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v87

    .line 554
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    const/4 v6, 0x1

    return v6

    .line 560
    .end local v27    # "_arg1":I
    .end local v58    # "_arg0":I
    .end local v87    # "_result":I
    :sswitch_21
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getAllPackages()Ljava/util/List;

    move-result-object v106

    .line 562
    .local v106, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    move-object/from16 v0, p3

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 564
    const/4 v6, 0x1

    return v6

    .line 568
    .end local v106    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_22
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 571
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v110

    .line 572
    .restart local v110    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 574
    const/4 v6, 0x1

    return v6

    .line 578
    .end local v58    # "_arg0":I
    .end local v110    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 581
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v105

    .line 582
    .local v105, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    const/4 v6, 0x1

    return v6

    .line 588
    .end local v58    # "_arg0":I
    .end local v105    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v69

    .line 591
    .local v69, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v110

    .line 592
    .restart local v110    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 594
    const/4 v6, 0x1

    return v6

    .line 598
    .end local v69    # "_arg0":[I
    .end local v110    # "_result":[Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 601
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v87

    .line 602
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v6, 0x1

    return v6

    .line 608
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v87    # "_result":I
    :sswitch_26
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 611
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v87

    .line 612
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v6, 0x1

    return v6

    .line 618
    .end local v58    # "_arg0":I
    .end local v87    # "_result":I
    :sswitch_27
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 621
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v87

    .line 622
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    const/4 v6, 0x1

    return v6

    .line 628
    .end local v58    # "_arg0":I
    .end local v87    # "_result":I
    :sswitch_28
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 631
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v107

    .line 632
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v107, :cond_18

    const/4 v6, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v6, 0x1

    return v6

    .line 633
    :cond_18
    const/4 v6, 0x0

    goto :goto_18

    .line 638
    .end local v58    # "_arg0":I
    .end local v107    # "_result":Z
    :sswitch_29
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 641
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v110

    .line 642
    .restart local v110    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 644
    const/4 v6, 0x1

    return v6

    .line 648
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v110    # "_result":[Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    .line 651
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 657
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 659
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 661
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 662
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v101

    .line 663
    .local v101, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    if-eqz v101, :cond_1a

    .line 665
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v6, 0x1

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 671
    :goto_1a
    const/4 v6, 0x1

    return v6

    .line 654
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_19
    const/16 v30, 0x0

    .local v30, "_arg0":Landroid/content/Intent;
    goto :goto_19

    .line 669
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 675
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_2b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 678
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 684
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 685
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v101

    .line 686
    .restart local v101    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    if-eqz v101, :cond_1c

    .line 688
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v6, 0x1

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 694
    :goto_1c
    const/4 v6, 0x1

    return v6

    .line 681
    .end local v27    # "_arg1":I
    .end local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1b
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Landroid/content/Intent;
    goto :goto_1b

    .line 692
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v27    # "_arg1":I
    .restart local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 698
    .end local v27    # "_arg1":I
    .end local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_2c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 701
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 707
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 709
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 711
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 712
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v107

    .line 713
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    if-eqz v107, :cond_1e

    const/4 v6, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v6, 0x1

    return v6

    .line 704
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v107    # "_result":Z
    :cond_1d
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Landroid/content/Intent;
    goto :goto_1d

    .line 714
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v107    # "_result":Z
    :cond_1e
    const/4 v6, 0x0

    goto :goto_1e

    .line 719
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v107    # "_result":Z
    :sswitch_2d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    .line 722
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 728
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 730
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 732
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 733
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 734
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    if-eqz v97, :cond_20

    .line 736
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 742
    :goto_20
    const/4 v6, 0x1

    return v6

    .line 725
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1f
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Landroid/content/Intent;
    goto :goto_1f

    .line 740
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_20
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 746
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    .line 749
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 755
    :goto_21
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/Intent;

    .line 757
    .local v14, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 759
    .local v15, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    .line 760
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Intent;

    .line 766
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 768
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 770
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v12, p0

    .line 771
    invoke-virtual/range {v12 .. v19}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 772
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    if-eqz v97, :cond_23

    .line 774
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 780
    :goto_23
    const/4 v6, 0x1

    return v6

    .line 752
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_21
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_21

    .line 763
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v14    # "_arg1":[Landroid/content/Intent;
    .restart local v15    # "_arg2":[Ljava/lang/String;
    :cond_22
    const/16 v16, 0x0

    .local v16, "_arg3":Landroid/content/Intent;
    goto :goto_22

    .line 778
    .end local v16    # "_arg3":Landroid/content/Intent;
    .restart local v17    # "_arg4":Ljava/lang/String;
    .restart local v18    # "_arg5":I
    .restart local v19    # "_arg6":I
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_23
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 784
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    .line 787
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 793
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 795
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 797
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 798
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 799
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    if-eqz v97, :cond_25

    .line 801
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 807
    :goto_25
    const/4 v6, 0x1

    return v6

    .line 790
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_24
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Landroid/content/Intent;
    goto :goto_24

    .line 805
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_25
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 811
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_30
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26

    .line 814
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 820
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 822
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 824
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 825
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v101

    .line 826
    .restart local v101    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    if-eqz v101, :cond_27

    .line 828
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v6, 0x1

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 834
    :goto_27
    const/4 v6, 0x1

    return v6

    .line 817
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_26
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Landroid/content/Intent;
    goto :goto_26

    .line 832
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_27
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 838
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_31
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    .line 841
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 847
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 849
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 851
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 852
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 853
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    if-eqz v97, :cond_29

    .line 855
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 861
    :goto_29
    const/4 v6, 0x1

    return v6

    .line 844
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_28
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Landroid/content/Intent;
    goto :goto_28

    .line 859
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_29
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 865
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_32
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    .line 868
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 874
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 876
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 878
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 879
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 880
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    if-eqz v97, :cond_2b

    .line 882
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 888
    :goto_2b
    const/4 v6, 0x1

    return v6

    .line 871
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_2a
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Landroid/content/Intent;
    goto :goto_2a

    .line 886
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_2b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 892
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_33
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 896
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 897
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 898
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    if-eqz v97, :cond_2c

    .line 900
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 906
    :goto_2c
    const/4 v6, 0x1

    return v6

    .line 904
    :cond_2c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 910
    .end local v27    # "_arg1":I
    .end local v58    # "_arg0":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_34
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v70

    .line 914
    .restart local v70    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 916
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 917
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 918
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    if-eqz v97, :cond_2d

    .line 920
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 926
    :goto_2d
    const/4 v6, 0x1

    return v6

    .line 924
    :cond_2d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 930
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v70    # "_arg0":[Ljava/lang/String;
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_35
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 934
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 935
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 936
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    if-eqz v97, :cond_2e

    .line 938
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 944
    :goto_2e
    const/4 v6, 0x1

    return v6

    .line 942
    :cond_2e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 948
    .end local v27    # "_arg1":I
    .end local v58    # "_arg0":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_36
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 951
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 952
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    if-eqz v97, :cond_2f

    .line 954
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 960
    :goto_2f
    const/4 v6, 0x1

    return v6

    .line 958
    :cond_2f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 964
    .end local v58    # "_arg0":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_37
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 968
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 970
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 971
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v100

    .line 972
    .restart local v100    # "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    if-eqz v100, :cond_30

    .line 974
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v6, 0x1

    move-object/from16 v0, v100

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 980
    :goto_30
    const/4 v6, 0x1

    return v6

    .line 978
    :cond_30
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 984
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v100    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_38
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v66

    .line 988
    .local v66, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v77

    .line 989
    .local v77, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    move-object/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 990
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 992
    move-object/from16 v0, p3

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 993
    const/4 v6, 0x1

    return v6

    .line 997
    .end local v66    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v77    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_39
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1001
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1003
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1005
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1006
    .local v24, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v7, v1, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 1007
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    if-eqz v97, :cond_31

    .line 1009
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1015
    :goto_31
    const/4 v6, 0x1

    return v6

    .line 1013
    :cond_31
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 1019
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_3a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    .line 1022
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1028
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1029
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v93

    .line 1030
    .local v93, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    if-eqz v93, :cond_33

    .line 1032
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    const/4 v6, 0x1

    move-object/from16 v0, v93

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1038
    :goto_33
    const/4 v6, 0x1

    return v6

    .line 1025
    .end local v27    # "_arg1":I
    .end local v93    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_32
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_32

    .line 1036
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v27    # "_arg1":I
    .restart local v93    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_33
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 1042
    .end local v27    # "_arg1":I
    .end local v93    # "_result":Landroid/content/pm/InstrumentationInfo;
    :sswitch_3b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1046
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1047
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 1048
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    if-eqz v97, :cond_34

    .line 1050
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1056
    :goto_34
    const/4 v6, 0x1

    return v6

    .line 1054
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 1060
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_3c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1064
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v22

    .line 1066
    .local v22, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1068
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1070
    .restart local v24    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v20, p0

    move-object/from16 v21, v7

    move/from16 v23, v9

    move/from16 v25, v11

    .line 1071
    invoke-virtual/range {v20 .. v25}, Landroid/content/pm/IPackageManager$Stub;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    .line 1072
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    const/4 v6, 0x1

    return v6

    .line 1077
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    .end local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v24    # "_arg3":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1081
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v43, 0x1

    .line 1082
    .local v43, "_arg1":Z
    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(IZ)V

    .line 1083
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    const/4 v6, 0x1

    return v6

    .line 1081
    .end local v43    # "_arg1":Z
    :cond_35
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_35

    .line 1088
    .end local v43    # "_arg1":Z
    .end local v58    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1092
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1093
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    const/4 v6, 0x1

    return v6

    .line 1099
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1103
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1105
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 1106
    .restart local v44    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v44

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    const/4 v6, 0x1

    return v6

    .line 1112
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v44    # "_arg2":Ljava/lang/String;
    :sswitch_40
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1116
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1118
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v28

    .line 1120
    .local v28, "_arg2":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1122
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v25, p0

    move-object/from16 v26, v7

    move/from16 v29, v10

    move/from16 v30, v11

    .line 1123
    invoke-virtual/range {v25 .. v30}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 1124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    const/4 v6, 0x1

    return v6

    .line 1129
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v27    # "_arg1":I
    .end local v28    # "_arg2":Landroid/content/pm/IPackageDeleteObserver;
    :sswitch_41
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    .line 1132
    sget-object v6, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/pm/VersionedPackage;

    .line 1138
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v74

    .line 1140
    .local v74, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1142
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1143
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v74

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 1144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    const/4 v6, 0x1

    return v6

    .line 1135
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v74    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    :cond_36
    const/16 v63, 0x0

    .restart local v63    # "_arg0":Landroid/content/pm/VersionedPackage;
    goto :goto_36

    .line 1149
    .end local v63    # "_arg0":Landroid/content/pm/VersionedPackage;
    :sswitch_42
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1152
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 1153
    .restart local v105    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1155
    const/4 v6, 0x1

    return v6

    .line 1159
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v105    # "_result":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1162
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    .line 1163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    const/4 v6, 0x1

    return v6

    .line 1168
    .end local v58    # "_arg0":I
    :sswitch_44
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    .line 1171
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 1177
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1179
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1180
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v101

    .line 1181
    .restart local v101    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    if-eqz v101, :cond_38

    .line 1183
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    const/4 v6, 0x1

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1189
    :goto_38
    const/4 v6, 0x1

    return v6

    .line 1174
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_37
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Landroid/content/Intent;
    goto :goto_37

    .line 1187
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_38
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 1193
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v101    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_45
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    .line 1196
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    .line 1202
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1204
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1206
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    .line 1207
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/IntentFilter;

    .line 1213
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1215
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 1216
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/ComponentName;

    :goto_3b
    move-object/from16 v29, p0

    move-object/from16 v31, v8

    move/from16 v32, v9

    move/from16 v34, v11

    .line 1221
    invoke-virtual/range {v29 .. v35}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 1222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    const/4 v6, 0x1

    return v6

    .line 1199
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    :cond_39
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Landroid/content/Intent;
    goto :goto_39

    .line 1210
    .end local v30    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    :cond_3a
    const/16 v33, 0x0

    .local v33, "_arg3":Landroid/content/IntentFilter;
    goto :goto_3a

    .line 1219
    .end local v33    # "_arg3":Landroid/content/IntentFilter;
    .restart local v11    # "_arg4":I
    :cond_3b
    const/16 v35, 0x0

    .local v35, "_arg5":Landroid/content/ComponentName;
    goto :goto_3b

    .line 1227
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    .end local v35    # "_arg5":Landroid/content/ComponentName;
    :sswitch_46
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    .line 1230
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/IntentFilter;

    .line 1236
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1238
    .restart local v27    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [Landroid/content/ComponentName;

    .line 1240
    .local v39, "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    .line 1241
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/ComponentName;

    .line 1247
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v36, p0

    move/from16 v38, v27

    move/from16 v41, v11

    .line 1248
    invoke-virtual/range {v36 .. v41}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    const/4 v6, 0x1

    return v6

    .line 1233
    .end local v11    # "_arg4":I
    .end local v27    # "_arg1":I
    .end local v39    # "_arg2":[Landroid/content/ComponentName;
    :cond_3c
    const/16 v37, 0x0

    .local v37, "_arg0":Landroid/content/IntentFilter;
    goto :goto_3c

    .line 1244
    .end local v37    # "_arg0":Landroid/content/IntentFilter;
    .restart local v27    # "_arg1":I
    .restart local v39    # "_arg2":[Landroid/content/ComponentName;
    :cond_3d
    const/16 v40, 0x0

    .local v40, "_arg3":Landroid/content/ComponentName;
    goto :goto_3d

    .line 1254
    .end local v27    # "_arg1":I
    .end local v39    # "_arg2":[Landroid/content/ComponentName;
    .end local v40    # "_arg3":Landroid/content/ComponentName;
    :sswitch_47
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 1257
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/IntentFilter;

    .line 1263
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1265
    .restart local v27    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [Landroid/content/ComponentName;

    .line 1267
    .restart local v39    # "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    .line 1268
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/ComponentName;

    .line 1274
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v36, p0

    move/from16 v38, v27

    move/from16 v41, v11

    .line 1275
    invoke-virtual/range {v36 .. v41}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    const/4 v6, 0x1

    return v6

    .line 1260
    .end local v11    # "_arg4":I
    .end local v27    # "_arg1":I
    .end local v39    # "_arg2":[Landroid/content/ComponentName;
    :cond_3e
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_3e

    .line 1271
    .end local v37    # "_arg0":Landroid/content/IntentFilter;
    .restart local v27    # "_arg1":I
    .restart local v39    # "_arg2":[Landroid/content/ComponentName;
    :cond_3f
    const/16 v40, 0x0

    .restart local v40    # "_arg3":Landroid/content/ComponentName;
    goto :goto_3f

    .line 1281
    .end local v27    # "_arg1":I
    .end local v39    # "_arg2":[Landroid/content/ComponentName;
    .end local v40    # "_arg3":Landroid/content/ComponentName;
    :sswitch_48
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1284
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    const/4 v6, 0x1

    return v6

    .line 1290
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_49
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    new-instance v64, Ljava/util/ArrayList;

    invoke-direct/range {v64 .. v64}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v64, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v76, Ljava/util/ArrayList;

    invoke-direct/range {v76 .. v76}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    .local v76, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 1297
    .restart local v44    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-object/from16 v2, v76

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v87

    .line 1298
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1301
    move-object/from16 v0, p3

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1302
    const/4 v6, 0x1

    return v6

    .line 1306
    .end local v44    # "_arg2":Ljava/lang/String;
    .end local v64    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v76    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v87    # "_result":I
    :sswitch_4a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    .line 1309
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/IntentFilter;

    .line 1315
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    .line 1316
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Landroid/content/ComponentName;

    .line 1322
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1323
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v71

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 1324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    const/4 v6, 0x1

    return v6

    .line 1312
    .end local v9    # "_arg2":I
    :cond_40
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_40

    .line 1319
    .end local v37    # "_arg0":Landroid/content/IntentFilter;
    :cond_41
    const/16 v71, 0x0

    .local v71, "_arg1":Landroid/content/ComponentName;
    goto :goto_41

    .line 1329
    .end local v71    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1333
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1334
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    const/4 v6, 0x1

    return v6

    .line 1340
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    :sswitch_4c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    .line 1343
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/IntentFilter;

    .line 1349
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1351
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1353
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1355
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v41, p0

    move-object/from16 v42, v37

    move-object/from16 v43, v8

    move/from16 v44, v9

    move/from16 v45, v10

    move/from16 v46, v11

    .line 1356
    invoke-virtual/range {v41 .. v46}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 1357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    const/4 v6, 0x1

    return v6

    .line 1346
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :cond_42
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_42

    .line 1362
    .end local v37    # "_arg0":Landroid/content/IntentFilter;
    :sswitch_4d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1366
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1367
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    const/4 v6, 0x1

    return v6

    .line 1373
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v58    # "_arg0":I
    :sswitch_4e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v70

    .line 1377
    .restart local v70    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    const/16 v43, 0x1

    .line 1379
    .restart local v43    # "_arg1":Z
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1380
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;

    move-result-object v110

    .line 1381
    .restart local v110    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1383
    const/4 v6, 0x1

    return v6

    .line 1377
    .end local v9    # "_arg2":I
    .end local v43    # "_arg1":Z
    .end local v110    # "_result":[Ljava/lang/String;
    :cond_43
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_43

    .line 1387
    .end local v43    # "_arg1":Z
    .end local v70    # "_arg0":[Ljava/lang/String;
    :sswitch_4f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1391
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1392
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v107

    .line 1393
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    if-eqz v107, :cond_44

    const/4 v6, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    const/4 v6, 0x1

    return v6

    .line 1394
    :cond_44
    const/4 v6, 0x0

    goto :goto_44

    .line 1399
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_50
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1402
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v108

    .line 1403
    .local v108, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    move-object/from16 v0, p3

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1405
    const/4 v6, 0x1

    return v6

    .line 1409
    .end local v58    # "_arg0":I
    .end local v108    # "_result":[B
    :sswitch_51
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v68

    .line 1413
    .local v68, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1414
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    .line 1415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    const/4 v6, 0x1

    return v6

    .line 1420
    .end local v27    # "_arg1":I
    .end local v68    # "_arg0":[B
    :sswitch_52
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1423
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v108

    .line 1424
    .restart local v108    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    move-object/from16 v0, p3

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1426
    const/4 v6, 0x1

    return v6

    .line 1430
    .end local v58    # "_arg0":I
    .end local v108    # "_result":[B
    :sswitch_53
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v68

    .line 1434
    .restart local v68    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1435
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    .line 1436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    const/4 v6, 0x1

    return v6

    .line 1441
    .end local v27    # "_arg1":I
    .end local v68    # "_arg0":[B
    :sswitch_54
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1444
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerificationBackup(I)[B

    move-result-object v108

    .line 1445
    .restart local v108    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    move-object/from16 v0, p3

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1447
    const/4 v6, 0x1

    return v6

    .line 1451
    .end local v58    # "_arg0":I
    .end local v108    # "_result":[B
    :sswitch_55
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v68

    .line 1455
    .restart local v68    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1456
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreIntentFilterVerification([BI)V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    const/4 v6, 0x1

    return v6

    .line 1462
    .end local v27    # "_arg1":I
    .end local v68    # "_arg0":[B
    :sswitch_56
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1465
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGrantBackup(I)[B

    move-result-object v108

    .line 1466
    .restart local v108    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    move-object/from16 v0, p3

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1468
    const/4 v6, 0x1

    return v6

    .line 1472
    .end local v58    # "_arg0":I
    .end local v108    # "_result":[B
    :sswitch_57
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v68

    .line 1476
    .restart local v68    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1477
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePermissionGrants([BI)V

    .line 1478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    const/4 v6, 0x1

    return v6

    .line 1483
    .end local v27    # "_arg1":I
    .end local v68    # "_arg0":[B
    :sswitch_58
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    .local v65, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v88

    .line 1487
    .local v88, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    if-eqz v88, :cond_45

    .line 1489
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    const/4 v6, 0x1

    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1495
    :goto_45
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1496
    const/4 v6, 0x1

    return v6

    .line 1493
    :cond_45
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 1500
    .end local v65    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v88    # "_result":Landroid/content/ComponentName;
    :sswitch_59
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    .line 1503
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1509
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1510
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    const/4 v6, 0x1

    return v6

    .line 1506
    .end local v27    # "_arg1":I
    :cond_46
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_46

    .line 1516
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    .line 1519
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1525
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1527
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1529
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1530
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    const/4 v6, 0x1

    return v6

    .line 1522
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v27    # "_arg1":I
    :cond_47
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_47

    .line 1536
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    .line 1539
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1545
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1546
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v87

    .line 1547
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1549
    const/4 v6, 0x1

    return v6

    .line 1542
    .end local v27    # "_arg1":I
    .end local v87    # "_result":I
    :cond_48
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    .line 1553
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1557
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1559
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1561
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1563
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg4":Ljava/lang/String;
    move-object/from16 v41, p0

    move-object/from16 v42, v7

    move/from16 v43, v27

    move/from16 v44, v9

    move/from16 v45, v10

    move-object/from16 v46, v17

    .line 1564
    invoke-virtual/range {v41 .. v46}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    const/4 v6, 0x1

    return v6

    .line 1570
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v27    # "_arg1":I
    :sswitch_5d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1574
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1575
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v87

    .line 1576
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    const/4 v6, 0x1

    return v6

    .line 1582
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v87    # "_result":I
    :sswitch_5e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1586
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1588
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 1590
    .restart local v44    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1592
    .restart local v24    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v41, p0

    move-object/from16 v42, v7

    move/from16 v43, v27

    move-object/from16 v45, v24

    move/from16 v46, v11

    .line 1593
    invoke-virtual/range {v41 .. v46}, Landroid/content/pm/IPackageManager$Stub;->logAppProcessStartIfNeeded(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1595
    const/4 v6, 0x1

    return v6

    .line 1599
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v44    # "_arg2":Ljava/lang/String;
    :sswitch_5f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1602
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->flushPackageRestrictionsAsUser(I)V

    .line 1603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    const/4 v6, 0x1

    return v6

    .line 1608
    .end local v58    # "_arg0":I
    :sswitch_60
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1612
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v43, 0x1

    .line 1614
    .restart local v43    # "_arg1":Z
    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1615
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 1616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    const/4 v6, 0x1

    return v6

    .line 1612
    .end local v9    # "_arg2":I
    .end local v43    # "_arg1":Z
    :cond_49
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_49

    .line 1621
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v43    # "_arg1":Z
    :sswitch_61
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1625
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v48

    .line 1627
    .local v48, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1629
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v51

    .local v51, "_arg3":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v46, p0

    move-object/from16 v47, v7

    move/from16 v50, v9

    .line 1630
    invoke-virtual/range {v46 .. v51}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 1631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    const/4 v6, 0x1

    return v6

    .line 1636
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v48    # "_arg1":J
    .end local v51    # "_arg3":Landroid/content/pm/IPackageDataObserver;
    :sswitch_62
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1640
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v48

    .line 1642
    .restart local v48    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1644
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    .line 1645
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/IntentSender;

    :goto_4a
    move-object/from16 v52, p0

    move-object/from16 v53, v7

    move-wide/from16 v54, v48

    move/from16 v56, v9

    .line 1650
    invoke-virtual/range {v52 .. v57}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V

    .line 1651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    const/4 v6, 0x1

    return v6

    .line 1648
    :cond_4a
    const/16 v57, 0x0

    .local v57, "_arg3":Landroid/content/IntentSender;
    goto :goto_4a

    .line 1656
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v48    # "_arg1":J
    .end local v57    # "_arg3":Landroid/content/IntentSender;
    :sswitch_63
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1660
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v73

    .line 1661
    .local v73, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    const/4 v6, 0x1

    return v6

    .line 1667
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v73    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_64
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1671
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1673
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v82

    .line 1674
    .local v82, "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v82

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 1675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    const/4 v6, 0x1

    return v6

    .line 1680
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v82    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :sswitch_65
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1684
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v73

    .line 1686
    .restart local v73    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1687
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 1688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    const/4 v6, 0x1

    return v6

    .line 1693
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v73    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_66
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1696
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationProfileData(Ljava/lang/String;)V

    .line 1697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    const/4 v6, 0x1

    return v6

    .line 1702
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_67
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1706
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1708
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v83

    .line 1709
    .local v83, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v83

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    const/4 v6, 0x1

    return v6

    .line 1715
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v83    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :sswitch_68
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1716
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v110

    .line 1717
    .restart local v110    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1719
    const/4 v6, 0x1

    return v6

    .line 1723
    .end local v110    # "_result":[Ljava/lang/String;
    :sswitch_69
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1724
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 1725
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    if-eqz v97, :cond_4b

    .line 1727
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1733
    :goto_4b
    const/4 v6, 0x1

    return v6

    .line 1731
    :cond_4b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4b

    .line 1737
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_6a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1741
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1742
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v107

    .line 1743
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    if-eqz v107, :cond_4c

    const/4 v6, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1745
    const/4 v6, 0x1

    return v6

    .line 1744
    :cond_4c
    const/4 v6, 0x0

    goto :goto_4c

    .line 1749
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_6b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1750
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 1751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    const/4 v6, 0x1

    return v6

    .line 1756
    :sswitch_6c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v107

    .line 1758
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    if-eqz v107, :cond_4d

    const/4 v6, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    const/4 v6, 0x1

    return v6

    .line 1759
    :cond_4d
    const/4 v6, 0x0

    goto :goto_4d

    .line 1764
    .end local v107    # "_result":Z
    :sswitch_6d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    const/4 v6, 0x1

    return v6

    .line 1771
    :sswitch_6e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v107

    .line 1773
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    if-eqz v107, :cond_4e

    const/4 v6, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    const/4 v6, 0x1

    return v6

    .line 1774
    :cond_4e
    const/4 v6, 0x0

    goto :goto_4e

    .line 1779
    .end local v107    # "_result":Z
    :sswitch_6f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performFstrimIfNeeded()V

    .line 1781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1782
    const/4 v6, 0x1

    return v6

    .line 1786
    :sswitch_70
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->updatePackagesIfNeeded()V

    .line 1788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    const/4 v6, 0x1

    return v6

    .line 1793
    :sswitch_71
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1797
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1798
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->notifyPackageUse(Ljava/lang/String;I)V

    .line 1799
    const/4 v6, 0x1

    return v6

    .line 1803
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    :sswitch_72
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1807
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v78

    .line 1809
    .local v78, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v84

    .line 1811
    .local v84, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1812
    .restart local v24    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v84

    move-object/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->notifyDexLoad(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1813
    const/4 v6, 0x1

    return v6

    .line 1817
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v78    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v84    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_73
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1821
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1823
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/16 v85, 0x1

    .line 1825
    .local v85, "_arg2":Z
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IDexModuleRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDexModuleRegisterCallback;

    move-result-object v86

    .line 1826
    .local v86, "_arg3":Landroid/content/pm/IDexModuleRegisterCallback;
    move-object/from16 v0, p0

    move/from16 v1, v85

    move-object/from16 v2, v86

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V

    .line 1827
    const/4 v6, 0x1

    return v6

    .line 1823
    .end local v85    # "_arg2":Z
    .end local v86    # "_arg3":Landroid/content/pm/IDexModuleRegisterCallback;
    :cond_4f
    const/16 v85, 0x0

    .restart local v85    # "_arg2":Z
    goto :goto_4f

    .line 1831
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v85    # "_arg2":Z
    :sswitch_74
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1835
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/16 v43, 0x1

    .line 1837
    .restart local v43    # "_arg1":Z
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 1839
    .restart local v44    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/16 v45, 0x1

    .line 1841
    .local v45, "_arg3":Z
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    const/16 v46, 0x1

    .line 1843
    .local v46, "_arg4":Z
    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .local v47, "_arg5":Ljava/lang/String;
    move-object/from16 v41, p0

    move-object/from16 v42, v7

    .line 1844
    invoke-virtual/range {v41 .. v47}, Landroid/content/pm/IPackageManager$Stub;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v107

    .line 1845
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    if-eqz v107, :cond_53

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    const/4 v6, 0x1

    return v6

    .line 1835
    .end local v43    # "_arg1":Z
    .end local v44    # "_arg2":Ljava/lang/String;
    .end local v45    # "_arg3":Z
    .end local v46    # "_arg4":Z
    .end local v47    # "_arg5":Ljava/lang/String;
    .end local v107    # "_result":Z
    :cond_50
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_50

    .line 1839
    .restart local v44    # "_arg2":Ljava/lang/String;
    :cond_51
    const/16 v45, 0x0

    .restart local v45    # "_arg3":Z
    goto :goto_51

    .line 1841
    :cond_52
    const/16 v46, 0x0

    .restart local v46    # "_arg4":Z
    goto :goto_52

    .line 1846
    .restart local v47    # "_arg5":Ljava/lang/String;
    .restart local v107    # "_result":Z
    :cond_53
    const/4 v6, 0x0

    goto :goto_53

    .line 1851
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v43    # "_arg1":Z
    .end local v44    # "_arg2":Ljava/lang/String;
    .end local v45    # "_arg3":Z
    .end local v46    # "_arg4":Z
    .end local v47    # "_arg5":Ljava/lang/String;
    .end local v107    # "_result":Z
    :sswitch_75
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1855
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1857
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/16 v85, 0x1

    .line 1858
    .restart local v85    # "_arg2":Z
    :goto_54
    move-object/from16 v0, p0

    move/from16 v1, v85

    invoke-virtual {v0, v7, v8, v1}, Landroid/content/pm/IPackageManager$Stub;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v107

    .line 1859
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1860
    if-eqz v107, :cond_55

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    const/4 v6, 0x1

    return v6

    .line 1857
    .end local v85    # "_arg2":Z
    .end local v107    # "_result":Z
    :cond_54
    const/16 v85, 0x0

    .restart local v85    # "_arg2":Z
    goto :goto_54

    .line 1860
    .restart local v107    # "_result":Z
    :cond_55
    const/4 v6, 0x0

    goto :goto_55

    .line 1865
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v85    # "_arg2":Z
    .end local v107    # "_result":Z
    :sswitch_76
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1868
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->dumpProfiles(Ljava/lang/String;)V

    .line 1869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1870
    const/4 v6, 0x1

    return v6

    .line 1874
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_77
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1877
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    const/4 v6, 0x1

    return v6

    .line 1883
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_78
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->runBackgroundDexoptJob()Z

    move-result v107

    .line 1885
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1886
    if-eqz v107, :cond_56

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1887
    const/4 v6, 0x1

    return v6

    .line 1886
    :cond_56
    const/4 v6, 0x0

    goto :goto_56

    .line 1891
    .end local v107    # "_result":Z
    :sswitch_79
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1894
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 1895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1896
    const/4 v6, 0x1

    return v6

    .line 1900
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_7a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    const/16 v67, 0x1

    .line 1904
    .local v67, "_arg0":Z
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v43, 0x1

    .line 1905
    .restart local v43    # "_arg1":Z
    :goto_58
    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 1906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1907
    const/4 v6, 0x1

    return v6

    .line 1902
    .end local v43    # "_arg1":Z
    .end local v67    # "_arg0":Z
    :cond_57
    const/16 v67, 0x0

    .restart local v67    # "_arg0":Z
    goto :goto_57

    .line 1904
    :cond_58
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_58

    .line 1911
    .end local v43    # "_arg1":Z
    .end local v67    # "_arg0":Z
    :sswitch_7b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    .line 1914
    sget-object v6, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/content/pm/PackageCleanItem;

    .line 1919
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v95

    .line 1920
    .local v95, "_result":Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    if-eqz v95, :cond_5a

    .line 1922
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    const/4 v6, 0x1

    move-object/from16 v0, v95

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1928
    :goto_5a
    const/4 v6, 0x1

    return v6

    .line 1917
    .end local v95    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_59
    const/16 v61, 0x0

    .local v61, "_arg0":Landroid/content/pm/PackageCleanItem;
    goto :goto_59

    .line 1926
    .end local v61    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .restart local v95    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_5a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5a

    .line 1932
    .end local v95    # "_result":Landroid/content/pm/PackageCleanItem;
    :sswitch_7c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1935
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v87

    .line 1936
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1937
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    const/4 v6, 0x1

    return v6

    .line 1942
    .end local v58    # "_arg0":I
    .end local v87    # "_result":I
    :sswitch_7d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v60

    .line 1945
    .local v60, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1946
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1947
    const/4 v6, 0x1

    return v6

    .line 1951
    .end local v60    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_7e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v60

    .line 1954
    .restart local v60    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1956
    const/4 v6, 0x1

    return v6

    .line 1960
    .end local v60    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_7f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1964
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1965
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v87

    .line 1966
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    const/4 v6, 0x1

    return v6

    .line 1972
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v87    # "_result":I
    :sswitch_80
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1975
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v87

    .line 1976
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1977
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1978
    const/4 v6, 0x1

    return v6

    .line 1982
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v87    # "_result":I
    :sswitch_81
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5b

    .line 1985
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/content/pm/PermissionInfo;

    .line 1990
    :goto_5b
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v107

    .line 1991
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1992
    if-eqz v107, :cond_5c

    const/4 v6, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1993
    const/4 v6, 0x1

    return v6

    .line 1988
    .end local v107    # "_result":Z
    :cond_5b
    const/16 v62, 0x0

    .restart local v62    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_5b

    .line 1992
    .end local v62    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v107    # "_result":Z
    :cond_5c
    const/4 v6, 0x0

    goto :goto_5c

    .line 1997
    .end local v107    # "_result":Z
    :sswitch_82
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2000
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v107

    .line 2001
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    if-eqz v107, :cond_5d

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2003
    const/4 v6, 0x1

    return v6

    .line 2002
    :cond_5d
    const/4 v6, 0x0

    goto :goto_5d

    .line 2007
    .end local v58    # "_arg0":I
    .end local v107    # "_result":Z
    :sswitch_83
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v87

    .line 2009
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2010
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2011
    const/4 v6, 0x1

    return v6

    .line 2015
    .end local v87    # "_result":I
    :sswitch_84
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2019
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2021
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2023
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2024
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;III)I

    move-result v87

    .line 2025
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2026
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2027
    const/4 v6, 0x1

    return v6

    .line 2031
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v27    # "_arg1":I
    .end local v87    # "_result":I
    :sswitch_85
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2035
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2036
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 2037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2038
    const/4 v6, 0x1

    return v6

    .line 2042
    .end local v27    # "_arg1":I
    .end local v58    # "_arg0":I
    :sswitch_86
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2046
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2048
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v80

    .line 2049
    .local v80, "_arg2":J
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v27

    move-wide/from16 v3, v80

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    .line 2050
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2051
    const/4 v6, 0x1

    return v6

    .line 2055
    .end local v27    # "_arg1":I
    .end local v58    # "_arg0":I
    .end local v80    # "_arg2":J
    :sswitch_87
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2059
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2061
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v84

    .line 2062
    .restart local v84    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v27

    move-object/from16 v3, v84

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    .line 2063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2064
    const/4 v6, 0x1

    return v6

    .line 2068
    .end local v27    # "_arg1":I
    .end local v58    # "_arg0":I
    .end local v84    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_88
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2072
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2073
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v87

    .line 2074
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2075
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2076
    const/4 v6, 0x1

    return v6

    .line 2080
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v87    # "_result":I
    :sswitch_89
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2084
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2086
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2087
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v107

    .line 2088
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    if-eqz v107, :cond_5e

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    const/4 v6, 0x1

    return v6

    .line 2089
    :cond_5e
    const/4 v6, 0x0

    goto :goto_5e

    .line 2094
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_8a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2097
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 2098
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2099
    if-eqz v97, :cond_5f

    .line 2100
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2101
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2106
    :goto_5f
    const/4 v6, 0x1

    return v6

    .line 2104
    :cond_5f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5f

    .line 2110
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_8b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2113
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 2114
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    if-eqz v97, :cond_60

    .line 2116
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2117
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2122
    :goto_60
    const/4 v6, 0x1

    return v6

    .line 2120
    :cond_60
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_60

    .line 2126
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_8c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2130
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2131
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v107

    .line 2132
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2133
    if-eqz v107, :cond_61

    const/4 v6, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    const/4 v6, 0x1

    return v6

    .line 2133
    :cond_61
    const/4 v6, 0x0

    goto :goto_61

    .line 2138
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_8d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2141
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v105

    .line 2142
    .restart local v105    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2144
    const/4 v6, 0x1

    return v6

    .line 2148
    .end local v58    # "_arg0":I
    .end local v105    # "_result":Ljava/lang/String;
    :sswitch_8e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2149
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v103

    .line 2150
    .local v103, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2151
    if-eqz v103, :cond_62

    .line 2152
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    const/4 v6, 0x1

    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2158
    :goto_62
    const/4 v6, 0x1

    return v6

    .line 2156
    :cond_62
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_62

    .line 2162
    .end local v103    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_8f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2163
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v107

    .line 2164
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2165
    if-eqz v107, :cond_63

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    const/4 v6, 0x1

    return v6

    .line 2165
    :cond_63
    const/4 v6, 0x0

    goto :goto_63

    .line 2170
    .end local v107    # "_result":Z
    :sswitch_90
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2171
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    move-result v107

    .line 2172
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2173
    if-eqz v107, :cond_64

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    const/4 v6, 0x1

    return v6

    .line 2173
    :cond_64
    const/4 v6, 0x0

    goto :goto_64

    .line 2178
    .end local v107    # "_result":Z
    :sswitch_91
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2179
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isUpgrade()Z

    move-result v107

    .line 2180
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    if-eqz v107, :cond_65

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2182
    const/4 v6, 0x1

    return v6

    .line 2181
    :cond_65
    const/4 v6, 0x0

    goto :goto_65

    .line 2186
    .end local v107    # "_result":Z
    :sswitch_92
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2190
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    const/16 v43, 0x1

    .line 2191
    .restart local v43    # "_arg1":Z
    :goto_66
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 2192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2193
    const/4 v6, 0x1

    return v6

    .line 2190
    .end local v43    # "_arg1":Z
    :cond_66
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_66

    .line 2197
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v43    # "_arg1":Z
    :sswitch_93
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2200
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v107

    .line 2201
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2202
    if-eqz v107, :cond_67

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2203
    const/4 v6, 0x1

    return v6

    .line 2202
    :cond_67
    const/4 v6, 0x0

    goto :goto_67

    .line 2207
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v107    # "_result":Z
    :sswitch_94
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2208
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v107

    .line 2209
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2210
    if-eqz v107, :cond_68

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    const/4 v6, 0x1

    return v6

    .line 2210
    :cond_68
    const/4 v6, 0x0

    goto :goto_68

    .line 2215
    .end local v107    # "_result":Z
    :sswitch_95
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2219
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    const/16 v43, 0x1

    .line 2221
    .restart local v43    # "_arg1":Z
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2222
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v107

    .line 2223
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2224
    if-eqz v107, :cond_6a

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2225
    const/4 v6, 0x1

    return v6

    .line 2219
    .end local v9    # "_arg2":I
    .end local v43    # "_arg1":Z
    .end local v107    # "_result":Z
    :cond_69
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_69

    .line 2224
    .restart local v9    # "_arg2":I
    .restart local v107    # "_result":Z
    :cond_6a
    const/4 v6, 0x0

    goto :goto_6a

    .line 2229
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v43    # "_arg1":Z
    .end local v107    # "_result":Z
    :sswitch_96
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2233
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2234
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v107

    .line 2235
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2236
    if-eqz v107, :cond_6b

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2237
    const/4 v6, 0x1

    return v6

    .line 2236
    :cond_6b
    const/4 v6, 0x0

    goto :goto_6b

    .line 2241
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_97
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2242
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v92

    .line 2243
    .local v92, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2244
    if-eqz v92, :cond_6c

    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2245
    const/4 v6, 0x1

    return v6

    .line 2244
    :cond_6c
    const/4 v6, 0x0

    goto :goto_6c

    .line 2249
    .end local v92    # "_result":Landroid/content/pm/IPackageInstaller;
    :sswitch_98
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2253
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    const/16 v43, 0x1

    .line 2255
    .restart local v43    # "_arg1":Z
    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2256
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v107

    .line 2257
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2258
    if-eqz v107, :cond_6e

    const/4 v6, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2259
    const/4 v6, 0x1

    return v6

    .line 2253
    .end local v9    # "_arg2":I
    .end local v43    # "_arg1":Z
    .end local v107    # "_result":Z
    :cond_6d
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_6d

    .line 2258
    .restart local v9    # "_arg2":I
    .restart local v107    # "_result":Z
    :cond_6e
    const/4 v6, 0x0

    goto :goto_6e

    .line 2263
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v43    # "_arg1":Z
    .end local v107    # "_result":Z
    :sswitch_99
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2267
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2268
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v107

    .line 2269
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2270
    if-eqz v107, :cond_6f

    const/4 v6, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2271
    const/4 v6, 0x1

    return v6

    .line 2270
    :cond_6f
    const/4 v6, 0x0

    goto :goto_6f

    .line 2275
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_9a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2279
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2280
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v94

    .line 2281
    .local v94, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2282
    if-eqz v94, :cond_70

    .line 2283
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2284
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2289
    :goto_70
    const/4 v6, 0x1

    return v6

    .line 2287
    :cond_70
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_70

    .line 2293
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v94    # "_result":Landroid/content/pm/KeySet;
    :sswitch_9b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2296
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v94

    .line 2297
    .restart local v94    # "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2298
    if-eqz v94, :cond_71

    .line 2299
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2300
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2305
    :goto_71
    const/4 v6, 0x1

    return v6

    .line 2303
    :cond_71
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_71

    .line 2309
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v94    # "_result":Landroid/content/pm/KeySet;
    :sswitch_9c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2313
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    .line 2314
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/content/pm/KeySet;

    .line 2319
    :goto_72
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v107

    .line 2320
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2321
    if-eqz v107, :cond_73

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    const/4 v6, 0x1

    return v6

    .line 2317
    .end local v107    # "_result":Z
    :cond_72
    const/16 v75, 0x0

    .local v75, "_arg1":Landroid/content/pm/KeySet;
    goto :goto_72

    .line 2321
    .end local v75    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v107    # "_result":Z
    :cond_73
    const/4 v6, 0x0

    goto :goto_73

    .line 2326
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v107    # "_result":Z
    :sswitch_9d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2330
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_74

    .line 2331
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/content/pm/KeySet;

    .line 2336
    :goto_74
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v107

    .line 2337
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    if-eqz v107, :cond_75

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2339
    const/4 v6, 0x1

    return v6

    .line 2334
    .end local v107    # "_result":Z
    :cond_74
    const/16 v75, 0x0

    .restart local v75    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_74

    .line 2338
    .end local v75    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v107    # "_result":Z
    :cond_75
    const/4 v6, 0x0

    goto :goto_75

    .line 2343
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v107    # "_result":Z
    :sswitch_9e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v59

    .line 2346
    .local v59, "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2348
    const/4 v6, 0x1

    return v6

    .line 2352
    .end local v59    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_9f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v59

    .line 2355
    .restart local v59    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2357
    const/4 v6, 0x1

    return v6

    .line 2361
    .end local v59    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_a0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v70

    .line 2365
    .restart local v70    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2366
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 2367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    const/4 v6, 0x1

    return v6

    .line 2372
    .end local v27    # "_arg1":I
    .end local v70    # "_arg0":[Ljava/lang/String;
    :sswitch_a1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v70

    .line 2376
    .restart local v70    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2377
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 2378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2379
    const/4 v6, 0x1

    return v6

    .line 2383
    .end local v27    # "_arg1":I
    .end local v70    # "_arg0":[Ljava/lang/String;
    :sswitch_a2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2387
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2389
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2390
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v107

    .line 2391
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2392
    if-eqz v107, :cond_76

    const/4 v6, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2393
    const/4 v6, 0x1

    return v6

    .line 2392
    :cond_76
    const/4 v6, 0x0

    goto :goto_76

    .line 2397
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v107    # "_result":Z
    :sswitch_a3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2398
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v105

    .line 2399
    .restart local v105    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2401
    const/4 v6, 0x1

    return v6

    .line 2405
    .end local v105    # "_result":Ljava/lang/String;
    :sswitch_a4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2408
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantApps(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 2409
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2410
    if-eqz v97, :cond_77

    .line 2411
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2412
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2417
    :goto_77
    const/4 v6, 0x1

    return v6

    .line 2415
    :cond_77
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_77

    .line 2421
    .end local v58    # "_arg0":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_a5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2425
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2426
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppCookie(Ljava/lang/String;I)[B

    move-result-object v108

    .line 2427
    .restart local v108    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2428
    move-object/from16 v0, p3

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2429
    const/4 v6, 0x1

    return v6

    .line 2433
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v108    # "_result":[B
    :sswitch_a6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2437
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v79

    .line 2439
    .local v79, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2440
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setInstantAppCookie(Ljava/lang/String;[BI)Z

    move-result v107

    .line 2441
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2442
    if-eqz v107, :cond_78

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2443
    const/4 v6, 0x1

    return v6

    .line 2442
    :cond_78
    const/4 v6, 0x0

    goto :goto_78

    .line 2447
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v79    # "_arg1":[B
    .end local v107    # "_result":Z
    :sswitch_a7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2451
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2452
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v104

    .line 2453
    .local v104, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    if-eqz v104, :cond_79

    .line 2455
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2456
    const/4 v6, 0x1

    move-object/from16 v0, v104

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2461
    :goto_79
    const/4 v6, 0x1

    return v6

    .line 2459
    :cond_79
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_79

    .line 2465
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v104    # "_result":Landroid/graphics/Bitmap;
    :sswitch_a8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2469
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2470
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isInstantApp(Ljava/lang/String;I)Z

    move-result v107

    .line 2471
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2472
    if-eqz v107, :cond_7a

    const/4 v6, 0x1

    :goto_7a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2473
    const/4 v6, 0x1

    return v6

    .line 2472
    :cond_7a
    const/4 v6, 0x0

    goto :goto_7a

    .line 2477
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_a9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2481
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v43, 0x1

    .line 2482
    .restart local v43    # "_arg1":Z
    :goto_7b
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setRequiredForSystemUser(Ljava/lang/String;Z)Z

    move-result v107

    .line 2483
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2484
    if-eqz v107, :cond_7c

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    const/4 v6, 0x1

    return v6

    .line 2481
    .end local v43    # "_arg1":Z
    .end local v107    # "_result":Z
    :cond_7b
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_7b

    .line 2484
    .restart local v107    # "_result":Z
    :cond_7c
    const/4 v6, 0x0

    goto :goto_7c

    .line 2489
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v43    # "_arg1":Z
    .end local v107    # "_result":Z
    :sswitch_aa
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2493
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7d

    const/16 v43, 0x1

    .line 2494
    .restart local v43    # "_arg1":Z
    :goto_7d
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setUpdateAvailable(Ljava/lang/String;Z)V

    .line 2495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2496
    const/4 v6, 0x1

    return v6

    .line 2493
    .end local v43    # "_arg1":Z
    :cond_7d
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Z
    goto :goto_7d

    .line 2500
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v43    # "_arg1":Z
    :sswitch_ab
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v105

    .line 2502
    .restart local v105    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2503
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2504
    const/4 v6, 0x1

    return v6

    .line 2508
    .end local v105    # "_result":Ljava/lang/String;
    :sswitch_ac
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2509
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v105

    .line 2510
    .restart local v105    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2511
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2512
    const/4 v6, 0x1

    return v6

    .line 2516
    .end local v105    # "_result":Ljava/lang/String;
    :sswitch_ad
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2520
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2521
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    move-result-object v91

    .line 2522
    .local v91, "_result":Landroid/content/pm/ChangedPackages;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2523
    if-eqz v91, :cond_7e

    .line 2524
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2525
    const/4 v6, 0x1

    move-object/from16 v0, v91

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ChangedPackages;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2530
    :goto_7e
    const/4 v6, 0x1

    return v6

    .line 2528
    :cond_7e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7e

    .line 2534
    .end local v27    # "_arg1":I
    .end local v58    # "_arg0":I
    .end local v91    # "_result":Landroid/content/pm/ChangedPackages;
    :sswitch_ae
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2537
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    move-result v107

    .line 2538
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2539
    if-eqz v107, :cond_7f

    const/4 v6, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2540
    const/4 v6, 0x1

    return v6

    .line 2539
    :cond_7f
    const/4 v6, 0x0

    goto :goto_7f

    .line 2544
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v107    # "_result":Z
    :sswitch_af
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2547
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getPreviousCodePaths(Ljava/lang/String;)Ljava/util/List;

    move-result-object v106

    .line 2548
    .restart local v106    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2549
    move-object/from16 v0, p3

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2550
    const/4 v6, 0x1

    return v6

    .line 2554
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v106    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2558
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2559
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstallReason(Ljava/lang/String;I)I

    move-result v87

    .line 2560
    .restart local v87    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2561
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2562
    const/4 v6, 0x1

    return v6

    .line 2566
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v87    # "_result":I
    :sswitch_b1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2570
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2572
    .restart local v27    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2573
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getSharedLibraries(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v97

    .line 2574
    .restart local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2575
    if-eqz v97, :cond_80

    .line 2576
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2577
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2582
    :goto_80
    const/4 v6, 0x1

    return v6

    .line 2580
    :cond_80
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_80

    .line 2586
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v27    # "_arg1":I
    .end local v97    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_b2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2590
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2591
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->canRequestPackageInstalls(Ljava/lang/String;I)Z

    move-result v107

    .line 2592
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2593
    if-eqz v107, :cond_81

    const/4 v6, 0x1

    :goto_81
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2594
    const/4 v6, 0x1

    return v6

    .line 2593
    :cond_81
    const/4 v6, 0x0

    goto :goto_81

    .line 2598
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_b3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2599
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->deletePreloadsFileCache()V

    .line 2600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2601
    const/4 v6, 0x1

    return v6

    .line 2605
    :sswitch_b4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2606
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v88

    .line 2607
    .restart local v88    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    if-eqz v88, :cond_82

    .line 2609
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2610
    const/4 v6, 0x1

    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2615
    :goto_82
    const/4 v6, 0x1

    return v6

    .line 2613
    :cond_82
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_82

    .line 2619
    .end local v88    # "_result":Landroid/content/ComponentName;
    :sswitch_b5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2620
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v88

    .line 2621
    .restart local v88    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2622
    if-eqz v88, :cond_83

    .line 2623
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2624
    const/4 v6, 0x1

    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2629
    :goto_83
    const/4 v6, 0x1

    return v6

    .line 2627
    :cond_83
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_83

    .line 2633
    .end local v88    # "_result":Landroid/content/ComponentName;
    :sswitch_b6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2634
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v88

    .line 2635
    .restart local v88    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2636
    if-eqz v88, :cond_84

    .line 2637
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2638
    const/4 v6, 0x1

    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2643
    :goto_84
    const/4 v6, 0x1

    return v6

    .line 2641
    :cond_84
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_84

    .line 2647
    .end local v88    # "_result":Landroid/content/ComponentName;
    :sswitch_b7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2651
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2652
    .restart local v27    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v105

    .line 2653
    .restart local v105    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2654
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2655
    const/4 v6, 0x1

    return v6

    .line 2659
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":I
    .end local v105    # "_result":Ljava/lang/String;
    :sswitch_b8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2662
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->grantSystemAppPermissions(I)V

    .line 2663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2664
    const/4 v6, 0x1

    return v6

    .line 2668
    .end local v58    # "_arg0":I
    :sswitch_b9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2671
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPermissions(I)V

    .line 2672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2673
    const/4 v6, 0x1

    return v6

    .line 2677
    .end local v58    # "_arg0":I
    :sswitch_ba
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2681
    .restart local v58    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2682
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/IPackageManager$Stub;->inCompatConfigList(ILjava/lang/String;)Z

    move-result v107

    .line 2683
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2684
    if-eqz v107, :cond_85

    const/4 v6, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2685
    const/4 v6, 0x1

    return v6

    .line 2684
    :cond_85
    const/4 v6, 0x0

    goto :goto_85

    .line 2689
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v58    # "_arg0":I
    .end local v107    # "_result":Z
    :sswitch_bb
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 2692
    .restart local v58    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setBackupRestoreState(I)Z

    move-result v107

    .line 2693
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2694
    if-eqz v107, :cond_86

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2695
    const/4 v6, 0x1

    return v6

    .line 2694
    :cond_86
    const/4 v6, 0x0

    goto :goto_86

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
